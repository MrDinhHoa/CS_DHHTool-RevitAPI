﻿using Autodesk.Revit.DB;
using DHHTools.Object;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Shapes;
using Line = Autodesk.Revit.DB.Line;

namespace DHHTools.Method
{
     public static class FoundationRebarPlanMethod
    {
        public static void InsertBreakDetailItem(Document Document,ViewPlan viewPlan, FamilySymbol familySymbol, FoundationInfor element)
        {
            List<XYZ> xYZs = new List<XYZ>();
            List<Face> orderSideFace = new List<Face>();
            List<Element> orderElement = new List<Element>();
            BoundingBoxXYZ bBoxFoun = element.Foundation.get_BoundingBox(viewPlan);
            BoundingBoxXYZ bBoxView = new BoundingBoxXYZ();
            bBoxView.Min = bBoxFoun.Min.Add(new XYZ(DhhUnitUtils.MmToFeet(-200), DhhUnitUtils.MmToFeet(-200), 0));
            bBoxView.Max = bBoxFoun.Max.Add(new XYZ(DhhUnitUtils.MmToFeet(200), DhhUnitUtils.MmToFeet(200), 0));
            Outline outline = new Outline(new XYZ(bBoxView.Min.X, bBoxView.Min.Y, -100), new XYZ(bBoxView.Max.X, bBoxView.Max.Y, 100));
            BoundingBoxIntersectsFilter filter = new BoundingBoxIntersectsFilter(outline);
            #region Lấy vị trí đặt break vào 100 so với View Boudary
            BoundingBoxXYZ bBoxTemp = new BoundingBoxXYZ();
            bBoxTemp.Min = bBoxFoun.Min.Add(new XYZ(DhhUnitUtils.MmToFeet(-150), DhhUnitUtils.MmToFeet(-150), 0));
            bBoxTemp.Max = bBoxFoun.Max.Add(new XYZ(DhhUnitUtils.MmToFeet(150), DhhUnitUtils.MmToFeet(150), 0));
            Outline outlineTemp = new Outline(new XYZ(bBoxTemp.Min.X, bBoxTemp.Min.Y, -100), new XYZ(bBoxTemp.Max.X, bBoxTemp.Max.Y, 100));
            BoundingBoxXYZ boundingBoxXYZTemp = new BoundingBoxXYZ();
            boundingBoxXYZTemp.Min = outlineTemp.MinimumPoint;
            boundingBoxXYZTemp.Max = outlineTemp.MaximumPoint;
            Solid OutlineSolidTemp = DhhGeometryUtils.CreateSolidFromBoundingBox(boundingBoxXYZTemp);
            List<Face> sideFace = DhhGeometryUtils.GetSideFaceFromSolid(OutlineSolidTemp);
            #endregion
            List<Element> beaminView = new FilteredElementCollector(Document, viewPlan.Id)
               .OfCategory(BuiltInCategory.OST_StructuralFraming)
               .WherePasses(filter)
               .Cast<Element>()
               .ToList();
            #region Kiểm tra Dầm có cắt solid của view hay không
            //Đoạn này chỉ dùng được cho dầm thẳng, dầm cong chưa biết làm.
            foreach (Element eBeam in beaminView)
            {
                LocationCurve locationCurve = eBeam.Location as LocationCurve;

                Curve beamCurve = locationCurve.Curve;
                Autodesk.Revit.DB.Line beamLocationLine = beamCurve as Autodesk.Revit.DB.Line;
                XYZ startPoint = beamLocationLine.GetEndPoint(0);
                XYZ endPoint = beamLocationLine.GetEndPoint(1);
                XYZ MidPoint = (startPoint + endPoint) / 2;

                Solid eBeamSolid = DhhGeometryUtils.GetSolids(eBeam);
                BoundingBoxXYZ eBeamBBox = eBeam.get_BoundingBox(viewPlan);
                XYZ xYZeBeam = eBeamSolid.ComputeCentroid();
                ////Chuyển đường beamCurve về tâm của dầm để lấy điểm chèn giữa dầm)
                Transform transform = Transform.CreateTranslation(xYZeBeam - MidPoint);
                Curve beamCenterLine = beamLocationLine.CreateTransformed(transform);

                foreach (Face eSideFace in sideFace)
                {
                    SetComparisonResult intersects = (SetComparisonResult)eSideFace.Intersect(beamCenterLine, out var intersections);
                    if (intersects == SetComparisonResult.Disjoint)
                    {
                        continue;
                    }
                    else
                    {
                        // Get the first intersection point
                        var intersection = intersections.Cast<IntersectionResult>().First();
                        var intersectionPoint = intersection.XYZPoint;
                        xYZs.Add(intersectionPoint);
                        orderSideFace.Add(eSideFace);
                        orderElement.Add(eBeam);
                    }
                }
            }
            #endregion
            #region Đặt break Detail Item
            for (int i = 0; i < xYZs.Count; i++)
            {
                FamilyInstance BreakDetailIns = Document.Create.NewFamilyInstance(new XYZ(xYZs[i].X, xYZs[i].Y, viewPlan.Origin.Z), familySymbol, viewPlan);
                Line axis = Line.CreateUnbound(new XYZ(xYZs[i].X, xYZs[i].Y, viewPlan.Origin.Z), XYZ.BasisZ);
                double angleRotation1 = 0;
                double angleRotation2 = 0;
                LocationCurve locationCurve = (LocationCurve)(orderElement[i].Location as Location);
                ElementType BeamType = Document.GetElement(orderElement[i].GetTypeId()) as ElementType;
                Parameter BPara_Beam = BeamType.LookupParameter("b");
                Parameter Left_Para = BreakDetailIns.LookupParameter("left");
                Parameter Right_Para = BreakDetailIns.LookupParameter("right");
                Parameter Depth_Para = BreakDetailIns.LookupParameter("Masking depth");
                Left_Para.Set(BPara_Beam.AsDouble() / 2 + DhhUnitUtils.MmToFeet(25));
                Right_Para.Set(BPara_Beam.AsDouble() / 2 + DhhUnitUtils.MmToFeet(25));
                Depth_Para.Set(DhhUnitUtils.MmToFeet(1000));
                Curve curve = locationCurve.Curve;
                Line lineBeam = curve as Line;
                angleRotation1 = XYZ.BasisY.AngleOnPlaneTo((orderSideFace[i] as PlanarFace).FaceNormal, XYZ.BasisZ);
                ElementTransformUtils.RotateElement(Document, BreakDetailIns.Id, axis, angleRotation1);
                angleRotation2 = (orderSideFace[i] as PlanarFace).FaceNormal.AngleOnPlaneTo(lineBeam.Direction, XYZ.BasisZ);
                if (angleRotation2 < DhhUnitUtils.DegreesToRadians(45) || angleRotation2 > DhhUnitUtils.DegreesToRadians(270))
                { ElementTransformUtils.RotateElement(Document, BreakDetailIns.Id, axis, angleRotation2); }
                else ElementTransformUtils.RotateElement(Document, BreakDetailIns.Id, axis, angleRotation2 + DhhUnitUtils.DegreesToRadians(180));
            }
            #endregion
        }

        public static void InSertDimention(Document document, ViewPlan viewPlan, FoundationInfor element)
        {
            ReferenceArray referenceArrayX = new ReferenceArray();
            ReferenceArray referenceArrayY = new ReferenceArray();
            Element Foudation = element.Foundation;
            BoundingBoxXYZ bBoxFoun = Foudation.get_BoundingBox(viewPlan);
            Solid FouSolid = DhhGeometryUtils.GetSolids(Foudation);
            List<Face> SideFace = DhhGeometryUtils.GetSideFaceFromSolid(FouSolid);
            Transform transform = (Foudation as FamilyInstance).GetTransform();
            XYZ basisX = transform.BasisX;
            XYZ basisY = transform.BasisY;
            foreach (Face sideFace in SideFace) 
            {
                if (Math.Round(basisX.DotProduct((sideFace as PlanarFace).FaceNormal)) == 1||
                    Math.Round(basisX.DotProduct((sideFace as PlanarFace).FaceNormal)) == -1)
                {
                    Reference reference = sideFace.Reference; 
                    referenceArrayX.Append(reference);
                }
                else if (Math.Round(basisY.DotProduct((sideFace as PlanarFace).FaceNormal)) == 1 ||
                    Math.Round(basisY.DotProduct((sideFace as PlanarFace).FaceNormal)) == -1)
                {
                    Reference reference = sideFace.Reference;
                    referenceArrayY.Append(reference);  
                }
            }
            Transform transform1 = Transform.CreateRotationAtPoint(transform.BasisZ, XYZ.BasisX.AngleOnPlaneTo(basisX, XYZ.BasisZ), (bBoxFoun.Min + bBoxFoun.Max)/2);
            XYZ start;
            Line lineX;
            Line lineY;
            double dotPro = Math.Round(basisX.DotProduct(XYZ.BasisX));
            if (dotPro == 1|| dotPro == -1 || dotPro == 0) 
            {
                start = new XYZ(bBoxFoun.Min.X, bBoxFoun.Min.Y + DhhUnitUtils.MmToFeet(-300), bBoxFoun.Min.Z);
                lineX = Line.CreateUnbound(start , XYZ.BasisX);
                lineY = Line.CreateUnbound(start + new XYZ(DhhUnitUtils.MmToFeet(-300), 0, 0), XYZ.BasisY);
            }
            else 
            {
                start = transform1.OfPoint(bBoxFoun.Min);
                lineX = Line.CreateUnbound(start, basisX);
                lineY = Line.CreateUnbound(start, basisY);
            }
            document.Create.NewDimension(viewPlan, lineX, referenceArrayX);
            document.Create.NewDimension(viewPlan, lineY, referenceArrayY);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _02_02_DrawDetailBeam_Detail2D.MVVM.View;
using Autodesk.Revit.Attributes;
using Autodesk.Revit.DB;
using Autodesk.Revit.UI;
using static _02_02_DrawDetailBeam_Detail2D.MVVM.ViewModel.vmMainDrawDetailBeam;

namespace _02_02_DrawDetailBeam_Detail2D
{
    [Transaction(TransactionMode.Manual)]
    public class DrawDetailBeam: IExternalCommand
    {
        public Result Execute(ExternalCommandData commandData, ref string message, ElementSet elements)
        {
            UIApplication uIApplication = commandData.Application;
            RevitApp = uIApplication;
            UIDocument uIDocument = RevitApp.ActiveUIDocument;
            Document document = uIDocument.Document;
            using (TransactionGroup transGroup = new TransactionGroup(document))
            {
                transGroup.Start("Vẽ chi tiết dầm");
                vMainDrawDetailBeam win = new vMainDrawDetailBeam();
                bool? dialog = win.ShowDialog();
                if (dialog != false)
                    return Result.Succeeded;
                transGroup.Commit();
            }

            return Result.Succeeded;
        }
    }
}

   M S B A M L   `   `   `  ����X  T02_02_DrawDetailBeam_Detail2D, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullc6clr-namespace:_02_02_DrawDetailBeam_Detail2D.MVVM.View(_02_02_DrawDetailBeam_Detail2D.MVVM.View  5      B    <_02_02_DrawDetailBeam_Detail2D.MVVM.View.vMainDrawDetailBeam   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Hlocal6clr-namespace:_02_02_DrawDetailBeam_Detail2D.MVVM.View     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      -   5          �Name$  DetailBeam2D��5       � Title$ Vẽ mặt cắt dầm��5	      $
��1400��5
      $	��700��5       � 
ResizeMode$ NoResize=�5       � WindowStartupLocation$ CenterScreen=�5       � 	Resources 5       �� Source�� 5   
   $4 ./DHHLibrary;component/WPF/Resource/Styles.xaml?�6   %    .��5      �  � RowDefinitions 5   
   �� 5      �� 5      $	��200 �6   �� 5      $��52 �6   .+�5   
   ��  �� TabStripPlacement$
 Left=�6   .@�5      �� ��5      �� 5      $��30��6!   $
��Left=�6-    �� Orientation$ 
Horizontal=�6H   .+�5      �� $��Normal$�5      $��DemiBold"�5      $��
Vẽ nhanh��5      5       5"      �� 5#      ��5$      �� 5%      $��30��6!   $
��Left=�6-   $ 
Horizontal=�6H   .+�5&      �� $��Normal$�5'      $��DemiBold"�5(      $��Vẽ chi tiết��5)      5*      5,      5-      �� 5.   
   -   5        	 ��Name$	 
viewCanvas��5.      
�������$��1��50      $��5q�6   51      ]� 52   
   $��2��6   ��. $��Right=�66   .+�53      �� $	��140��54      $��40��6   $��3q�55      $��Chọn dầm��58      $��Arial)�6$      ButtonStyle#���   59      ��56      �� *
BtnChonDam+��57      �� 
 �� ElementName$
 DetailBeam2D��59      �� 5:      $	��140��5;      $��40��6   $��3q�5<      $��
Vẽ thép��5?      $��Arial)�6#   #���   5@      ��5=      �� *BtnOK+��5>      �� $
 DetailBeam2D��5@      �� 5A      $	��140��5B      $��40��6   $��3q�5C      $��
Hủy bỏ��5F      $��Arial)�6"   #���   5G      ��5D      �� *	BtnCancel+��5E      �� $
 DetailBeam2D��5G      5H      5I      5J      
   M S B A M L   `   `   `  ����\  XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   ComboBoxNormalBorderBrush  �� Color ! ComboBoxNormalBackgroundBrush # ComboBoxDisabledForegroundBrush # ComboBoxDisabledBackgroundBrush  ComboBoxDisabledBorderBrush �� 
TargetType   ComboBoxToggleButtonTemplate � ColumnDefinitions �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName �� Property	 �� Value  ComboBoxStyle
 �� 
TargetType �� 	ClickMode d� 	IsChecked �� Path �� RelativeSource �� Mode J� IsHitTestVisible �� SelectionBoxItem �� SelectionBoxItemTemplate �� 
IsReadOnly �� 
IsReadOnly � AllowsTransparency �� IsDropDownOpen J� SnapsToDevicePixels � ActualWidth �� MaxDropDownHeight-    'System.Windows.Input.KeyboardNavigation    DirectionalNavigation�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      5      %�  &	        &	 #     &	 A     &	 _     &	 }     &	 �     7   7  7  7  7  7  7  &	     7  7   7  �� 5      $  	LightGray��68   �� 5      $
  #fff��6<   �� 5      $
  #888��6>   �� 5      $
  #eee��6>   �� 5      $
  #888��6:   �� 5
      " d�6   .R�5   
   �  5      �� 5      �� 5      $��20 �6#   .+�5      �� $��Border��6)   $��2��6   8��  $ 0��5      $��
1, 1, 1, 1q�6    8�� 5      �� 5      $��ButtonBorder��6L   $��1��6   $��
1, 1, 1, 1q�6%   ���#444$ 
0, 0, 0, 0��5      $��
0, 0, 0, 0q�6)   8�� 5      F� 5      $��Arrow��6   $��1��6    =����        �    �� � 	= ��[ � z �� � z     � 	=  	= 	$��Center=�5      ���#444$��Center=�5      5       5   
   P� 5       �@J�IsMouseOver . . �5      �� $ ButtonBorder��65    � ��
	 �����6O   5       P� 5!       �@d�	IsChecked$
 TrueY�68   . �5"      �� $ ButtonBorder��65    � ��
	 �����6O   �� 5#      $ Arrow��6/    � ��	 �	#FF8D979E6B   5$      P� 5%       � {� .  . �5&      �� $ Border��65   8	   � ��6I   �� 5'      $ ButtonBorder��65   8	   � ��6O   �� 5(      $ ButtonBorder��67   8	   � ��6Q   �� 5)      8	   � ��6;   �� 5*      $ Arrow��6/    � ��	 �#9996B   5+      5-      �� 5/      "
 ��6#   .�50   
   ��  �@J�SnapsToDevicePixels	 . 60   �� 51   
    �@�OverridesDefaultStyle	 . 62   �� 52   
    � ��$
	 Auto=�6G   �� 53   
    � ��$
	 Auto=�6E   �� 54   
    � ��	 . 6:   �� 55   
    � ��
	 �   �63   �� 56   
    �@�FocusVisualStyle	 6-   Z� �� 57   
    � ��$	 4q�6#   �� 58   
    � ��$	 Center=�65   �� 59   
    � ��$
	 Left=�67   �� 5:   
    � ��	 5;      �� 5<      " ��6"   .R�5=      � .+�5>      d� $��ToggleButton��6'   $��2��6;   $ Press=�5?      |�.  8��   5@      �� $ IsDropDownOpen� �� *TemplatedParent+$ TwoWay=�5A      �� 5C      $��ContentSite��6+   $��5, 3, 23, 3q�6>    .  $
��Left=�5D      $��Center=�6:   #��z 5E      #��z 5F      #��z��5G      �� 5H      $��PART_EditableTextBox��6"   $��3, 3, 23, 3q�6>   # z 5I      $y�Hidden=�5J      
������ $
��Left=�5K      $��Center=�61   |�. .��5L   (   ��5M      �� 5N   "   " ��62   .R�5O   &   �� $��PART_ContentHost��6-   |�.  6E   5P   #   .��5Q   0   5R      � 5T      $��Popup��6    $��Bottom=�6-   |�.   . #��z 5V      $��Slide=�5W      .��5X      � $��DropDown��6#    . #��z 5Y      #��z 5Z      .+�5[   "   �� $��DropDownBorder��6)   
�������$��
0, 1, 0, 0q�6R   $ 0��5\      $��1,1,1,1q�6*   8�� 5]      �� 5^   "   $��4q�6/    . .��5_   &   �� $ 	Contained=�65   5`   #   5a      5b      5c       5d      P� 5e       �@��HasItems .  . �5f      �� $ DropDownBorder��6K    � ��$	 95��6g   5g      P� 5h       � {� .  . �5i      �� 8	   � ��6G   5j      P� 5k       �@��
IsGrouping . . �5l      ��  � ��	 .  6N   5m      P� 5n       �@��
IsEditable . . �5o      ��  �@  	IsTabStop	 .  6M   �� 5p      $ PART_EditableTextBox��6E    � y�$	 Visible=�6g   �� 5q      $ ContentSite��6E    � y�$	 Hidden=�6^   5r      5t      5v      5w      5{      
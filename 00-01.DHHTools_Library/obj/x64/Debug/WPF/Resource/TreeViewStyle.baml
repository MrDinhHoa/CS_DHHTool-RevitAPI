   M S B A M L   `   `   `  ����E  ADHHLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:DHHToolsDHHTools  5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089 .  *TreeViewItem.TreeArrow.Static.Checked.Fill  �� Color 0 ,TreeViewItem.TreeArrow.Static.Checked.Stroke + 'TreeViewItem.TreeArrow.MouseOver.Stroke ) %TreeViewItem.TreeArrow.MouseOver.Fill 3 /TreeViewItem.TreeArrow.MouseOver.Checked.Stroke 1 -TreeViewItem.TreeArrow.MouseOver.Checked.Fill  	TreeArrow & "TreeViewItem.TreeArrow.Static.Fill ( $TreeViewItem.TreeArrow.Static.Stroke 	 TreeViewItemFocusVisual �� Property �� Value 
 ExpandCollapseToggleStyle �� 
TargetType �� 
TargetType �� Padding F�Name �� Angle �� CenterX	 �� CenterY
 �� Triggers P� Property P� Value �� 
TargetName ]� 
Conditions �� Property �� Value  TreeViewStyle �� RelativeSource �� AncestorType � ColumnDefinitions � RowDefinitions d�Name �� 	ClickMode d� 	IsChecked ��Name J� SnapsToDevicePixels ��Name ��Name    DHHTools.CustomTreeView �� Triggers�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     5       localclr-namespace:DHHTools  5      %�  &	        &	 #     &	 F     &	 i     &	 �     &	 �     &	 �     &	 �     &	 #    &		 F    &	
 �    7  7  7  7   7  7  7  7  7  &	 6    7 	 7 
 �� 5      $  	#FF595959��6I   �� 5      $  	#FF262626��6K   �� 5      $  	#FF1BBBFA��6F   �� 5	      $  Transparent��6D   �� 5
      $  	#FF262626��6N   �� 5      $  	#FF595959��6L   B� 5      $��M0,0 L0,6 L6,0 zC�6%   �� 5      $  Transparent��6A   �� 5      $  	#FF989898��6C   �� 5      .�5   
   ��  � �� 5      �� 5      .R�5      �� 5      5      5      �� 5      " d�6.   .�5   
   ��  � |� .  6&   �� 5   
    � ��$ 16��6"   �� 5   
    � ��$ 16��6#   �� 5   
    � �� 5      �� 5       " d�6"   .R�5!      �� $��16��5"      $��16��5#      $ 5,5,5,5q�5$      
������ ._�5&      F� $ 
ExpandPath��5'      8��  8�� 8�� z�5+      �� 5,   "   $	 135Q�62   $ 3Q�6>   $	 3Q�6J   5.      5/      
 50      P� 51       �@d�	IsChecked$
 TrueY�67   . �52      �� $ 
ExpandPath��6%    � z� 53   "   �� 54   &   $	 180Q�66   $ 3Q�6B   $	 3Q�6N   56      �� 57      $ 
ExpandPath��6%   8   � ��6M   �� 58      $ 
ExpandPath��6%   8   � ��6O   59      P� 5:       �@J�IsMouseOver . . �5;      �� $ 
ExpandPath��6%   8   � ��6O   �� 5<      $ 
ExpandPath��6%   8   � ��6M   5=      ]� 5>       5?      �� 5@   "    �@J�IsMouseOver . 6C   �� 5A   "    �@d�	IsChecked$
 TrueY�6A   ./�5C      �� $ 
ExpandPath��6%   8   � ��6O   �� 5D      $ 
ExpandPath��6%   8   � ��6M   5E      5G      5I      5J      �� 5L      " Q�6"   .�5M   
   ��  � ��
 ���� 6'   �� 5N   
    � ��
 �����6(   �� 5O   
    � �� 67   �� *HorizontalContentAlignment+ �� " ���� 5P   
    � �� 65   �� *VerticalContentAlignment+ �� " ���� 5Q   
    � ��$ 1,0,0,0q�6$   �� 5R   
    �@Q�
IsExpanded . 6'   �� 5S   
    � ��# � ��6'   �� 5T   
    �@�FocusVisualStyle8   6-   �� 5V   
    � �� 5W      �� 5X      " Q�6"   .R�5Y      �  5Z      �� 5[      $
��Auto �6/   $��19��6<   �� 5\      $
��Auto �6/   �� 5]      $��* �6/    5_      �� 5`      $
��Auto �6,   �� 5a      .+�5c      d� $ Expander��5d      $ Press=�5e      8��  5f      �� *
IsExpanded+ �� *TemplatedParent+5g      �� 5h      $ Bd��5i      $��1��5j      # z��5k      #��z��5l      #��z��5m      #��z��5n       . ._�5p      �� $ PART_Header��5q   !   #��z��5r   !   $��Header��5s   !   # z 5t   !   5u      �� 5v      $ 	ItemsHost��5w      $��1��5x      $��1��5y      $��2��5z      5{      
 5|      P� 5}       �@Q�
IsExpanded .  . �5~      �� $ 	ItemsHost��6%    � y�$ 	Collapsed=�6R   5      P� 5�       �@��HasItems .  . �5�      �� $ Expander��6%    � y�$ Hidden=�6Q   5�      P� 5�       �@  
IsSelected . . �5�      �� $ Bd��6%   # � ��6K    � ���� 5�      # � ��6;    � ��5�      ]� 5�       5�      �� 5�   "    �@  
IsSelected . 6W   �� 5�   "    �@Q�IsSelectionActive .  6I   ./�5�      �� $ Bd��6%   # � /�6K    � ���� 5�      # � .�6;    � ��5�      P� 5�       � {� .  . �5�      �� # � ��6;    � ��5�      5�      5�       5�   
   P� 5�       �@%�IsVirtualizing . . �5�      ��  � �� 5�      �� 5�      .R�5�      $� 5�      5�      5�      5�      5�      
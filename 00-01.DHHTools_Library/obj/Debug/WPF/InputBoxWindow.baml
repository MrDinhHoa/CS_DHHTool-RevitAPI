   M S B A M L   `   `   `  ����  QApps_Lib2020    QApps.InputBoxWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -   5          �Name$  
MainWindow��5   	    � Title$ 	Input Box��5   	    � 
ResizeMode$ NoResize=�6    � ShowInTaskbar .  � WindowStartupLocation$ CenterScreen=�5
      $��150.09��5   	   $��432.093��6    � 	Resources 5       �� Source�� 5   
   $2 ,/QAppWPFLib;component/z.Resource/Styles.xaml?�6   %    .��5      ]� -   5         ]�Name$ 	DockPanel��5   %   ��. .+�5   
   � $	��Top=�6    � RowDefinitions 5      �� 5      $��35 �6    �� 5      $��35 �6    .+�5      �� $��0��5       $��0��5!      ��5      �� *
TextPrompt+5!      �� 5$      -   5        	 ��Name$	 InputBox��5%      $��1��5$      $��0��6#   $��Center=�5&         TextBoxStyle#���   5'      ��5(      �� *
InputValue+5)      ]� 5+   
   $��40��6   .+�5,      �� -   5        $��Right=�5,      $��Right=�5-      $��OK��5.      
 �� 	IsDefault
 . $	��100��50        ButtonStyle#���  52      53      54      56      
   M S B A M L   `   `   `  ����G  COnline-Store, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Online_StoreOnline_Store  5   	       Online_Store.EditWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   &localclr-namespace:Online_Store  5   	   -   5          � Title$  
EditWindow��5	   	   $	��350��6   $	��250��6)   
������  � WindowStartupLocation$ CenterScreen=�6�   .��5      � $��15q�6   
������  � RowDefinitions 5   
   �� 5      $��5* �6   6*   �� 5      $��4* �6   6*   .+�5   
   ��  �� CornerRadius$ 10��6   $��2q�6#   
�������._�5      � ���#72DDF7.+�5      �� -   5        $��image��5      ��5      �� *Product.ImagePath+5      5      5      � 5   
   $��1��6   ���#A070FF 5      �� 5      �� 5      �� 5      .+�5       � .+�5!      �� $��2q�6   
�������._�5"      ��  �� Orientation$ 
Horizontal=�6!   .+�5#      �� $��Name: ��6    $��14(�61   $��Center=�6?   �� 5$      -   5        $��
txtBoxName��5$   U   $	��140��6"   
������ $��14(�6G   $��Center=�6�   $��0q�6�   ��6g   �� *Product.Name+ �� UpdateSourceTrigger$ PropertyChanged=�6�   5%      5&      5'      � 5(      $��1��6   .+�5)      �� $��2q�6   
�������._�5*      �� $ 
Horizontal=�6!   .+�5+      �� $��Price: ��6    $��14(�62   $��Center=�6@   �� 5,      -   5        $��txtBoxPrice��5,   U   $	��140��6"   
������ $��14(�6G   $��Center=�6�   $��0q�6�   ��6h   �� *Product.Price+$ PropertyChanged=�6�   5-      5.      5/      � 50      $��2��6   $	��140��51      .+�52      �� -   5        $��ChangeImage��59         MaterialDesignRaisedButton#��[  53      3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   Value$ -1Q�54         IsIndicatorVisible .    IsIndeterminate . $��Change Image��57      $	��2,0q�58      {�5;      �� *DataContext.ControlsEnabled+	 �� RelativeSource	 �� *FindAncestor+
 �� AncestorType$
 WindowL�5<      �� 5=      -   5         ��Name$	 btn��5=   '   $��	Image Add��64   $��7(�6H   $
��Left=�6U   $��125,-156,0,0q�6p   $	��Top=�6�   $��75��6�   $��25��6�   5>      5A      5C      
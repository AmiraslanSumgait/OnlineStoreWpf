   M S B A M L   `   `   `  ���� G  COnline-Store, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Online_StoreOnline_Store      Online_Store.EditWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  &localclr-namespace:Online_Store  -     � Title$  
EditWindow��$	��350��$	��250��
������  � WindowStartupLocation$ CenterScreen=�.��� $��15q�
������  � RowDefinitions �� $��5* ��� $��4* �.+���  �� CornerRadius$ 10��$��2q�
�������._�� ���#72DDF7.+��� -   $��image������ *Product.ImagePath+� $��1�����#A070FF �� �� �� .+�� .+��� $��2q�
�������._���  �� Orientation$ 
Horizontal=�.+��� $��Name: ��$��14(�$��Center=��� -   $��
txtBoxName��$	��140��
������ $��14(�$��Center=�$��0q����� *Product.Name+ �� UpdateSourceTrigger$ PropertyChanged=�� $��1��.+��� $��2q�
�������._��� $ 
Horizontal=�.+��� $��Price: ��$��14(�$��Center=��� -   $��txtBoxPrice��$	��140��
������ $��14(�$��Center=�$��0q����� *Product.Price+$ PropertyChanged=�� $��2��$	��140��.+��� -   $��ChangeImage��   MaterialDesignRaisedButton#��[  3  -MaterialDesignThemes.Wpf.ButtonProgressAssist   Value$ -1Q�   IsIndicatorVisible .    IsIndeterminate . $��Change Image��$	��2,0q�{��� *DataContext.ControlsEnabled+	 �� RelativeSource	 �� *FindAncestor+
 �� AncestorType$
 WindowL��� -    ��Name$	 btn��$��	Image Add��$��7(�$
��Left=�$��125,-156,0,0q�$	��Top=�$��75��$��25��
   M S B A M L   `   `   `  ���� G  COnline-Store, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:Online_StoreOnline_Store  9!clr-namespace:Online_Store.ModelsOnline_Store.Models      Online_Store.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     _ [MaterialDesignThemes.Wpf, Version=4.2.1.2, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  :d2http://schemas.microsoft.com/expression/blend/2008  Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  &localclr-namespace:Online_Store  .models!clr-namespace:Online_Store.Models  -     � Title$  
MainWindow��$	��700��$	��700�� � WindowStyle$
 None=� � WindowStartupLocation$ CenterOwner=� � AllowsTransparency . 
������ .����  �� CornerRadius$ 30��$��10q����	#FF9067F8._�� ���	#FF9067F8 � RowDefinitions �� $
��0.5* ��� $
��1.5* ��� $
��7.5* �.+�� .+��� $��Images/battery.png��$��35��$	��Top=� J� RenderTransformOrigin$ 
0.56,0.545&�$��290,-2,-290,0q��� $��Images/wifi.png��$��35��$��Bottom=�$��200,-2,-268,3q�$ 0.502,1.062&��� $��Images/signal.png��$��34��$	��Top=�$��180,0,-180,0q�$ 0.502,1.062&��� -   $��lblTime��$
��Bold"�$��13(�.��09:48� $��1��.+��� $
��200 ��$��40��$ 30��$��10q�
���   �$��75,34,405,33q�._�� .+��� -   $��txb_main��$��40��$	��240��
���   �
�������$��0q�$��12(�$��10,2,0,0q��� -   $��txb_watermark��$��40��$	��240��
���   �
�������$��0q�$��15(�$��10,2,0,0q�$��	Search...��'  !MaterialDesignThemes.Wpf.PopupBox   3  /MaterialDesignMultiFloatingActionAccentPopupBox#��[     PlacementMode$ BottomAndAlignCentres=�+   $ToggleCheckedContentCommandParameter$ wowsers��	 � ToolTip$	 Shut Down and Add product��$��580,10,0,41q����	#FF14150F$
��Bold"����	#DD906794"
   ToggleCheckedContentCommand
 �� *FloatingActionDemoCommand+{��� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType$ WindowL�   ToggleCheckedContent '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Pencil=�$��24��$��24��   PopupContent. �� .+��� -    ��Name$ ShutDown��$	 	Shut Down��$��1��$��25��$��30������  �� ImageSource$# Images/icons8-shutdown-96.png���� -   $��AddPhone��$��	ExtraBold"�$��25��$��30��$	 	Add Phone��$	��Add���� -   $��ProductListBox��$��2��$��32(�$��0q�$	��505��$��Bottom=����	#FF9067F8���� *
Products+���� .R�� ���� .R�!   Online_Store.ProductControl  �� $
��Left=�$	��100��$��-20,-15,0,0q�$��2��$	��Top=�$	��700�����	#FF0C0909
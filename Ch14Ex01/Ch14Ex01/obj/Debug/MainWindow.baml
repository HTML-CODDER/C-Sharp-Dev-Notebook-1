   M S B A M L   `   `   `  ����C  ?Ch14Ex01, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:Ch14Ex01Ch14Ex01  5   	       Ch14Ex01.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:Ch14Ex01     5   	   -   5          � Title$  
MainWindow��5   	   $	��400��6   $	��475��6)   .��5
      � -   5         � RowDefinitions 5   
   �� 5      $
��100* �6   �� 5      $
��200* �6    � ColumnDefinitions 5   
   �� 5      $
��100* �6   �� 5      $
��200* �6   .+�5   
   �� -   5         ��Name$ button1��5      $��
Press Me 1��6"   $
��Left=�67   $��27,4,0,0q�5      $	��Top=�6   $��75��67   $��20��6B   $��0��6N   $��0��5      6   �� 5   
   -   5        $ button2��5      $��
Press Me 2��6"   $
��Left=�67   $��	27,74,0,0q�5      $	��Top=�6    $��75��68   $��20��6C   $��0��6O   $��0��5      6   �� 5   
   $��2��6   $��3��6(   $��2q�62   
���   �5      �� 5   
   -   5        $ rotatedButton1��5      $��
Press Me 3��6)   $��75��6>   $��22��6I   $
��Bold"�5       J� RenderTransformOrigin$ 0.5,0.5&�6   $��1��5   ;   $��1��5      $��0,0,152,129q�6/   $��Bottom=�6D   $��Right=�6_   z�5       V� 5!      .~�5"      �� �� 5#      �� 5$       �� Angle$ -23.896Q�6&   T� 5%      5&      5(      �� 5)   
   -   5        $ rotatedButton2��5)      $��
Press Me 4��6)   $��75��6>   $��22��6I   $
��Bold"�5*      $ 0.5,0.5&�6   $��1��5,   ;   $��1��5-      $��
0,0,142,67q�6/   $��Bottom=�6C   $��Right=�6^   z�5.      V� 5/      .~�50      �� �� 51      �� 52      $ -23.896Q�6&   T� 53      54      56      57      58      
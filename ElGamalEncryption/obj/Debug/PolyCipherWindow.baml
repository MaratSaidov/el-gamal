   M S B A M L   `   `   `  ����L  HElGamalEncryption, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:ElGamalEncryptionElGamalEncryption  5   	   F BWpfMath, Version=0.3.1.14187, Culture=neutral, PublicKeyToken=nullD/clr-namespace:WpfMath.Controls;assembly=WpfMathWpfMath.Controls 5   	   (    "ElGamalEncryption.PolyCipherWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:ElGamalEncryption     5   	   Dcontrols/clr-namespace:WpfMath.Controls;assembly=WpfMath     5   	   -   5        $	��700��5	   	   $	��500��5
   	     � Title$4  .КРИПТОСИСТЕМА ЭЛЬ-ГАМАЛЯ��5   	   $��Times New Roman)�6*    � Icon$ Images/Lock-icon.png��5   	    � WindowState$ 	Maximized=�5   	   ���#00184f.��5      �  � RowDefinitions 5   
   �� 5      $��1* �6   �� 5      $	��90* �6   �� 5      $	��10* �6   �� 5      $��1* �6    � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $	��33* �6   �� 5      $	��33* �6   �� 5      $	��33* �6   �� 5      $��1* �6   .+�5   
   �� $��1��6   $��1��6$   $��3��64   $
��Auto=�5       
�������$��15q�5!   +   
�������.��5"      �  5#      �� 5$      $��2* �6$   �� 5%      $��4* �6$   �� 5&      $��3* �6$   �� 5'      $��3* �6$   �� 5(      $��3* �6$    5*      �� 5+      $��1* �6'   �� 5,      $��1* �6'   �� 5-      $��1* �6'   .+�5/      �� $��0��6   $��2��6*   .+�50      �� $��Center=�6      
LatexStyle#��[  69   ���#1c0963.��6r   -+Шифрование. Алиса и Боб:6�   �� 51      #��[  6   $��35(�6@   ���#e90828$+��%Информация об Алисе:��6c   �� 52       �� Orientation$ 
Horizontal=�6!   .+�53      �� $��20(�6    #��[  6.   .��6R   MKПоказатель степени Алисы (закрытый ключ):6}   %  WpfMath.Controls.FormulaControl  54      $��35(�6N   $
��30,9q�6]      Formula 62   ��  �� Path$ A�6]   55      �� 56      $ 
Horizontal=�6!   .+�57      �� $��20(�6    #��[  6.   .��6R   '%Открытый ключ Алисы:6h     58      $��35(�6O   $
��30,3q�6^    62   �� $ Ga�6^   59      �� 5:      $ 
Horizontal=�6!   .+�5;      �� $��20(�6    #��[  6.   .��6R   ,*Вычисление многочлена:6j     5<      $��35(�6T   $
��30,5q�6c    62   �� $ GaPower�6c   5=      �� 5>      -   5        $��AliceStackPanel��5>   !   $��5,0,0,0q�68   .+�5?      �� #��[  6    $��20(�6D   $��	-15,0,0,0q�6R   .��6e   hfРезультат генерации открытого ключа (многочлена) Алисы:6�   5@      �� 5A      #��[  6   $��35(�6@   ���#083cb8$'��!Информация о Бобе:��6c   �� 5B      $ 
Horizontal=�6!   .+�5C      �� $��20(�6    #��[  6.   .��6R   KIПоказатель степени Боба (закрытый ключ):6|     5D      $��35(�6N   $
��30,9q�6]    62   �� $ B�6]   5E      �� 5F      $ 
Horizontal=�6!   .+�5G      �� $��20(�6    #��[  6.   .��6R   %#Открытый ключ Боба:6g     5H      $��35(�6O   $
��30,3q�6^    62   �� $ Gb�6^   5I      �� 5J      $ 
Horizontal=�6!   .+�5K      �� $��20(�6    #��[  6.   .��6R   ,*Вычисление многочлена:6j     5L      $��35(�6T   $
��30,5q�6c    62   �� $ GbPower�6c   5M      �� 5N      -   5        $��BobStackPanel��5N   !   $��5,0,0,0q�66   .+�5O      �� #��[  6    $��20(�6D   $��	-15,0,0,0q�6R   .��6e   fdРезультат генерации открытого ключа (многочлена) Боба:6�   5P      �� 5Q      #��[  6   $��35(�6@   .��6N   Кодировка:6Z   &   System.Windows.Controls.DataGrid  5R      -   5          Name$ DGrid��5R      $
��Left=�6.   $	��205��6I   $��2q�6U   	   AutoGenerateColumns	 .  
   
IsReadOnly
 .    RowBackground
 �����   AlternatingRowBackground
 �����   HorizontalGridLinesBrush
 �����   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$	 100 5U         FrozenColumnCount$ 2��61   $��15(�6G    J� SnapsToDevicePixels .  � BindingGroup 5S   =   �� *
collection+   Columns 5V      0  *System.Windows.Controls.DataGridTextColumn  5W      ,  &System.Windows.Controls.DataGridColumn   Header$ Символы��61      
IsReadOnly .    Width$	 100 6p   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6T   �� *Symbol+6p     5X      $ Кодировка��61    . $	 100 6p    6W   �� *Code+6p   5Z      �� 5[      $ 
Horizontal=�6!   .+�5\      �� #��[  6    $��35(�6D   .��6R   -+Общий ключ Алисы и Боба:6l     5]      $��35(�6P   $��30,15q�6_    62   �� $	 Gab�6_   5^      5_      5`      5a      �� 5b   
   $��2��6   $��2��6!   $��4��62   ��5c      �� 5d       �� 
StartPoint$	 0,0&�6&    �� EndPoint$	 1,1&�67   .��5e      �  � Color$ #2d27b1��6#    � Offset$	 1.0Q�63   � 5f      $ #00184f��6#   $	 0.5Q�63   � 5g      $ #2d27b1��6#   $
 0.25Q�63   5h      5j      �� 5k   
   -   5         ��Name$ CipherCloseButton��5k   5     
MainButton#��[ 6   $��2��5l      $��2��6   $��Stretch=�6.   $
��Left=�5m      $	��100��5n      $
��ОК��5o      5p      �� 5q   
   -   5        $ SaveFileButton��5q   5   #��[ 6   $��2��5r      $��2��6   $��Stretch=�6.   $��Right=�5s      $	��100��5t      $��Сохранить��5u      5v      �� 5w   
   -   5        $ 
BackButton��5w   5   #��[ 6   $��2��5x      $��3��6   $��Stretch=�6.   $��Right=�5y      $	��100��5z      $��В меню��5{      5|      �� 5}   
   -   5        $ ReturnButton��5}   5   #��[ 6   $��2��5~      $��1��6   $��Stretch=�6.   $
��Left=�5      $	��100��5�      $��
Назад��5�      5�      5�      5�      
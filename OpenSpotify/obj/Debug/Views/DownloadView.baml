   M S B A M L   `   `   `  ����  OpenSpotify$    OpenSpotify.Views.DownloadView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5      -   5          >�Name$  UserControl��5      .��5	      � .+�5
   
   �� $��	48,10,0,0q�5       w� TextPath$
 Name��6%    �� IsTextSearchEnabled . ��5
      �� *!ApplicationModel.SongCollection+��5      �� 5      .R�5      �  � ColumnDefinitions 5      �� 5      $
��0.1* �6/   �� 5      $��1* �6/   �� 5      $
��0.2* �6/   .+�5      �� $��0��6    $��UniformToFill=�6N   $��80��6f   $��80��6r   $
��Left=�6}   ��60   �� *
CoverImage+6}   � 5      $��1��6   $��2��6/    � RowDefinitions 5      �� 5   "   �� 5   "   �� 5   "   �� 5   "   .+�5      �� $��0��6)    �� Orientation$ Vertical=�66   $��5,0,0,0q�6M    � 	Resources 5    "    �� 
TargetType �� Property	 �� Value��%W   '��       �� 5!   &   " ��6,   .�5"   *   ��  � ��$	 0,1,0,0q�6C   5#   '   5$   #   .+�5%   "   �� 
�������$��16(�6Y   $��Calibri Light)�6g   ��6?   �� *
SongName+6g   �� 5&   "   ���	#FFB8B8B8$��15(�6_   $��Calibri Light)�6m   ��6C   �� *
ArtistName+6m   �� 5'   "   ���	#FF838383$��14(�6_   $��Calibri Light)�6m   ��6,   �� *
YouTubeUri+.  (System.Windows.Interactivity.Interaction
   Triggers
 5(   *   /  )System.Windows.Interactivity.EventTrigger  5)   *      	EventName$  PreviewMouseLeftButtonDown��69   .  (System.Windows.Interactivity.TriggerBase   Actions. 5*   .   6  0System.Windows.Interactivity.InvokeCommandAction     Command 6D   ��  �� ElementName$ UserControl�� �� Path$$ DataContext.OpenYoutubeCommand�   CommandParameter 6�   �� 5+   +   5-   #   5.      �� 50      $��0��6)   $��Right=�66   $	��Top=�6R   $ 
Horizontal=�6j   .+�51   "   �� $��../Assets/Play.png��6(   $��3q�6D   $��15��6O   $��15��6Z   
 52   &     53   *   $  PreviewMouseLeftButtonDown��69   . 54   .      6D   �� $ UserControl��$! DataContext.PlaySongCommand� 6�   �� 55   +   57   #   �� 58   "   $��../Assets/Open.png��6(   $��3q�6D   $��15��6O   $��15��6Z   
 59   &     5:   *   $  PreviewMouseLeftButtonDown��69   . 5;   .      6D   �� $ UserControl��$, &DataContext.OpenFileInDirectoryCommand� 6�   �� 5<   +   5>   #   �� 5?   "   $��../Assets/Remove.png��6(   $��3q�6F   $��15��6Q   $��15��6\   
 5@   &     5A   *   $  PreviewMouseLeftButtonDown��69   . 5B   .      6D   �� $ UserControl��$# DataContext.RemoveSongCommand� 6�   �� 5C   +   5E   #   5F      5G      5H      5I      5K      5L      5M      
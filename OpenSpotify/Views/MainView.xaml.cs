﻿using OpenSpotify.Models;
using OpenSpotify.ViewModels;

namespace OpenSpotify.Views {
    /// <summary>
    /// Interaktionslogik für MainWindow.xaml
    /// </summary>
    public partial class MainView {

        public MainView(ApplicationModel applicationModel) {
            InitializeComponent();
            DataContext = new MainViewModel(applicationModel);
        }
    }
}

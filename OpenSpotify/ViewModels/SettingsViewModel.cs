﻿using System;
using System.Collections.ObjectModel;
using Microsoft.Win32;
using OpenSpotify.Models;
using OpenSpotify.Services;

namespace OpenSpotify.ViewModels {

    public class SettingsViewModel : BaseViewModel {

        private ApplicationModel _applicationModel;
        private BitrateModel _selectedBitrate;

        public SettingsViewModel(ApplicationModel applicationModel) {
            ApplicationModel = applicationModel;
            Initialize();
        }

        public ApplicationModel ApplicationModel {
            get { return _applicationModel; }
            set {
                _applicationModel = value; 
                OnPropertyChanged(nameof(SettingsViewModel));
            }
        }

        public ObservableCollection<BitrateModel> BitrateCollection { get; set; }

        public CommandHandler<object> FFmpegPathCommand {
            get {
                return new CommandHandler<object>(o => {
                    var openFileDialog = new OpenFileDialog {
                        Filter = "Executable Files |*.exe;",
                        InitialDirectory =
                            Environment.GetFolderPath(Environment.SpecialFolder.DesktopDirectory)
                    };
                    if (openFileDialog.ShowDialog() == true) {
                        ApplicationModel.Settings.FFmpegPath = openFileDialog.FileName;
                    }
                });
            }
        }

        private void Initialize() {
            BitrateCollection = new ObservableCollection<BitrateModel> {
                new BitrateModel { BitrateName = "320 kBit/s", Bitrate = "320K"},
                new BitrateModel { BitrateName = "256 kBit/s", Bitrate = "256K"},
                new BitrateModel { BitrateName = "192 kBit/s", Bitrate = "192K"},
                new BitrateModel { BitrateName = "128 kBit/s", Bitrate = "128K"},
            };
            ApplicationModel.Settings.SelectedBitrate = BitrateCollection[0];
        }
    }
}

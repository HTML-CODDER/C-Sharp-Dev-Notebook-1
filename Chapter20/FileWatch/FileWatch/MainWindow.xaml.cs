﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.Win32;
using System.IO;

namespace FileWatch
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        // File System Watcher object.
        private readonly FileSystemWatcher watcher; // made watcher readonly which does NOT create a temporary file, where as author did not specify in 2017 book. New 2019 feature?
        // I also did NOT create the temp directory as mentioned on page 668 before or after changing the above variable type declaration

        public MainWindow()
        {
            InitializeComponent();

            watcher = new FileSystemWatcher();
            watcher.Deleted += (s, e) =>
               AddMessage(message: $"File: {e.FullPath} Deleted"); // added message
            watcher.Renamed += (s, e) =>
               AddMessage(message: $"File renamed from {e.OldName} to {e.FullPath}"); // added message:
            watcher.Changed += (s, e) =>
               AddMessage(message: $"File: {e.FullPath} {e.ChangeType}");  // removed .ToString() from e.ChangeType, added message:
            watcher.Created += (s, e) =>
               AddMessage($"File: {e.FullPath} Created");
        }

        private void AddMessage(string message)
        {
            Dispatcher.BeginInvoke(new Action(
               () => WatchOutput.Items.Insert(
                  0, message)));
        }

        private void BrowseButton_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog();
            if (dialog.ShowDialog(this) == true)
            {
                LocationBox.Text = dialog.FileName;
            }
        }

        private void LocationBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            WatchButton.IsEnabled = !string.IsNullOrEmpty(LocationBox.Text);
        }

        private void WatchButton_Click(object sender, RoutedEventArgs e)
        {
            watcher.Path = System.IO.Path.GetDirectoryName(LocationBox.Text);
            watcher.Filter = System.IO.Path.GetFileName(LocationBox.Text);
            watcher.NotifyFilter = NotifyFilters.LastWrite |
               NotifyFilters.FileName | NotifyFilters.Size;
            AddMessage("Watching " + LocationBox.Text);

            // Begin watching.
            watcher.EnableRaisingEvents = true;
        }
    }
}
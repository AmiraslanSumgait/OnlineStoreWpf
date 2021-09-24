using Microsoft.Win32;
using Online_Store.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace Online_Store
{
    /// <summary>
    /// Interaction logic for EditWindow.xaml
    /// </summary>
    public partial class EditWindow : Window, INotifyPropertyChanged
    {
        private Product product;

        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyRaised([CallerMemberName] string propertyname = null)
        {
            if (PropertyChanged != null)
            {
                PropertyChanged(this, new PropertyChangedEventArgs(propertyname));
            }
        }

        public Product Product
        {
            get { return product; }
            set { product = value; OnPropertyRaised(); }
        }
        public EditWindow()
        {
            DataContext = this;
            InitializeComponent();
        }

        private void Window_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            try
            {
                DragMove();
            }
            catch (Exception)
            {
            }
        }

        private void ChangeImage_Click(object sender, RoutedEventArgs e)
        {
            if ((ChangeImage.Content).Equals("Change Image")) 
            {
                OpenFileDialog openFile = new OpenFileDialog();
                openFile.Title = "Select a picture";
                openFile.Multiselect = false;
                openFile.Filter = "PNG Files (*.png)|*.png|JPEG Files (*.jpeg)|*.jpeg|JPG Files (*.jpg)|*.jpg";
                if (openFile.ShowDialog() == true)
                {
                    image.Source = new BitmapImage(new Uri(openFile.FileName));
                    if (Product == null)
                    {
                        Product = new Product()
                        {
                            Name = txtBoxName.Text,
                            Price = double.Parse(txtBoxPrice.Text)
                        };
                    }
                    Product.ImagePath = openFile.FileName;
                }
            }
        }

        private void btn_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFile = new OpenFileDialog();

            openFile.Multiselect = false;
            openFile.Filter = "PNG Files (*.png)|*.png|JPEG Files (*.jpeg)|*.jpeg|JPG Files (*.jpg)|*.jpg";
            openFile.FilterIndex = 2;

            if (openFile.ShowDialog() == true)
            {
                image.Source = new BitmapImage(new Uri(openFile.FileName));
            }
        }
    }
}

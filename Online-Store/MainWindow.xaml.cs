using Online_Store.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace Online_Store
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ObservableCollection<Product> Products { get; set; }
        public ObservableCollection<Product> ProductsCopy { get; set; }
        private EditWindow editWindow = new EditWindow();
        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
            Products = new ObservableCollection<Product>()
            {
            new Product
            {
                Name="Sony Xperia",
                Price=150,
                ImagePath="Images/soxyxperiaZ.png",
            },
            new Product
            {
                Name="Galaxy S7",
                Price=240,
                ImagePath="Images/galaxys7.png",
            },
            new Product
            {
                Name="Xiaomi Redmi 9",
                 Price=440,
                  ImagePath="Images/xiaomi.png",
            },
            new Product

            {
                Name="Iphone 11 pro",
                 Price=2400,
                  ImagePath="Images/iphone11pro.png",
            },
             new Product
            {
                Name="SonyXperiaL",
                 Price=230,
                  ImagePath="Images/SonyXperiaL.png",
            },
              new Product
            {
                Name="Iphone 8",
                 Price=890,
                  ImagePath="Images/iphone8.png",

            }
          };
            ProductsCopy = Products;
        }
        private void dragMe(object sender, MouseButtonEventArgs e)
        {
            try
            {
                DragMove();
            }
            catch (Exception)
            {
            }
        }

        private void txb_watermark_GotFocus(object sender, RoutedEventArgs e)
        {
            txb_watermark.Visibility = System.Windows.Visibility.Collapsed;
            txb_main.Visibility = System.Windows.Visibility.Visible;
        }

        private void txb_main_LostFocus(object sender, RoutedEventArgs e)
        {
            if (string.IsNullOrEmpty(txb_main.Text))
            {
                txb_watermark.Visibility = System.Windows.Visibility.Visible;
                txb_main.Visibility = System.Windows.Visibility.Collapsed;
            }
        }

        private void ShutDown_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void ProductListBox_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
           var  editWindow = new EditWindow();
           editWindow.Product = (sender as ListBox).SelectedItem as Product;
            editWindow.btn.Visibility = Visibility.Hidden;
           editWindow.ShowDialog();
        }

        private void AddPhone_Click(object sender, RoutedEventArgs e)
        {
            
            editWindow.ChangeImage.Content = "Add";
            editWindow.Show();
         
            editWindow.ChangeImage.Click += ChangeImage_Click;
        }

        private void ChangeImage_Click(object sender, RoutedEventArgs e)
        {

            if (editWindow.txtBoxName.Text == null || editWindow.txtBoxPrice.Text == null || editWindow.image.Source == null)
            {
                MessageBox.Show("Fill All cridentials !");
            }
            else
            {
                Product product = new Product()
                {
                    Name = editWindow.txtBoxName.Text,
                    Price = Convert.ToDouble(editWindow.txtBoxPrice.Text),
                    ImagePath = editWindow.image.Source.ToString()
                };

                Products.Add(product);
            }
        }

        private void txb_main_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (txb_main.Text.Length != 0 && txb_main.Text != "Search")
            {
                var searchText = txb_main.Text.ToLower();
                List<Product> productsList = new List<Product>();
                productsList = ProductsCopy.Where(p => p.Name.ToLower().StartsWith(searchText)).ToList();
                ObservableCollection<Product> newList = new ObservableCollection<Product>(productsList);
                Products = newList;
                ProductListBox.ItemsSource = newList;

            }
            else if (txb_main.Text.Length == 0)
            {
                Products = ProductsCopy;
                ProductListBox.ItemsSource = Products;
            }
        }
    }
}

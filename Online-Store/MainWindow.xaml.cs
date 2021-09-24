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
                Name="Iphone X",
                 Price=1100,
                  ImagePath="Images/iphoneX.png",
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
    }
}

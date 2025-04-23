using DokonApp.service;
using DokonApp.product;




namespace DokonApp
{
    public partial class MainPage : ContentPage
    {
       
        private FirebaseService _firebaseService = new();

        public MainPage()
        {
            InitializeComponent();
            LoadProducts();
        }

        private async void LoadProducts()
        {
            var products = await _firebaseService.GetProductsAsync();
            productList.ItemsSource = products;
        }

        private async void OnAddClicked(object sender, EventArgs e)
        {
            string name = nameEntry.Text;
            double.TryParse(priceEntry.Text, out double price);

            if (string.IsNullOrWhiteSpace(name) || price <= 0)
            {
                await DisplayAlert("Xatolik", "To'g'ri nom va narx kiriting", "OK");
                return;
            }

            var newProduct = new Product { Name = name, Price = price };
            await _firebaseService.AddProductAsync(newProduct);

            nameEntry.Text = "";
            priceEntry.Text = "";
            LoadProducts();
        }
    }

}

namespace dokonApp3;
using dokonApp3.Services;
using dokonApp3.Products_model;

public partial class AdminPage : ContentPage
{
    private readonly FirebaseService _firebaseService = new FirebaseService();
    private List<Product> _products = new List<Product>();

    public AdminPage()
	{
		InitializeComponent();
        LoadProducts();
    }


    private async void LoadProducts()
    {
        _products = await _firebaseService.GetProductsAsync();
        productsCollectionView.ItemsSource = _products;
    }

    private async void OnAddProductClicked(object sender, EventArgs e)
    {
        string name = await DisplayPromptAsync("New Product", "Enter product name:");
        string description = await DisplayPromptAsync("New Product", "Enter product description:");
        string priceText = await DisplayPromptAsync("New Product", "Enter product price:");
        if (decimal.TryParse(priceText, out decimal price))
        {
            var newProduct = new Product
            {
                Name = name,
                Description = description,
                Price = price
            };
            await _firebaseService.AddProductAsync(newProduct);
            LoadProducts(); // Mahsulotlarni qaytadan yuklash
        }
        else
        {
            await DisplayAlert("Error", "Invalid price!", "OK");
        }
    }

    private async void OnDeleteClicked(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var product = (Product)button.BindingContext;

        bool confirm = await DisplayAlert("Confirm", $"Delete {product.Name}?", "Yes", "No");
        if (confirm)
        {
            await _firebaseService.DeleteProductAsync(product.Id);
            LoadProducts(); // Mahsulotlarni qaytadan yuklash
        }
    }

    private async void OnEditClicked(object sender, EventArgs e)
    {
        var button = (Button)sender;
        var product = (Product)button.BindingContext;

        string newName = await DisplayPromptAsync("Edit Product", "Enter new product name:", initialValue: product.Name);
        string newDescription = await DisplayPromptAsync("Edit Product", "Enter new description:", initialValue: product.Description);
        string newPriceText = await DisplayPromptAsync("Edit Product", "Enter new price:", initialValue: product.Price.ToString());

        if (decimal.TryParse(newPriceText, out decimal newPrice))
        {
            var updatedProduct = new Product
            {
                Name = newName,
                Description = newDescription,
                Price = newPrice
            };
            await _firebaseService.UpdateProductAsync(product.Id, updatedProduct);
            LoadProducts(); // Mahsulotlarni qaytadan yuklash
        }
        else
        {
            await DisplayAlert("Error", "Invalid price!", "OK");
        }
    }
}
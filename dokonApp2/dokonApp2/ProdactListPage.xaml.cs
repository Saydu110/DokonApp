using dokonApp2.Services;
using dokonApp2.Products_model;

namespace dokonApp2;


public partial class ProdactListPage : ContentPage
{

	private readonly FirebaseService _firebaseService = new();

    public ProdactListPage()
		{
			InitializeComponent();
			LoadProducts();
    }

    private async void LoadProducts()
    {
        var products = await _firebaseService.GetProductsAsync();
        ProductsListView.ItemsSource = products;
    }
}

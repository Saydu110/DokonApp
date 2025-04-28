namespace dokonApp2;
using dokonApp2.Services;
using dokonApp2.Products_model;

public partial class UserPage : ContentPage
{
    private FirebaseService _firebaseService = new FirebaseService();
    private List<Product> _products;

    public UserPage()
	{
		InitializeComponent();
        LoadProducts();
    }

    private async void LoadProducts()
    {
        _products = await _firebaseService.GetProductsAsync();
        userProductListView.ItemsSource = _products;
    }

    private async void OnLogoutClicked(object sender, EventArgs e)
    {
        SessionService.Logout();
        await Navigation.PushAsync(new MainPage());
        Navigation.RemovePage(this);
    }

}
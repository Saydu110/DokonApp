namespace dokonApp2;
using dokonApp2.Services;
using dokonApp2.Products_model;

public partial class AdminPage : ContentPage
{

    private FirebaseService _firebaseService = new FirebaseService();
    private List<Product> _products;

    public AdminPage()
	{
		InitializeComponent();
	}

    private async void LoadProducts()
    {
        _products = await _firebaseService.GetProductsAsync();
        productListView.ItemsSource = _products;
    }

    private async void OnUpdateClicked(object sender, EventArgs e)
    {
        var button = sender as Button;
        var product = button.BindingContext as Product;

        // Mana bu yerda Update sahifasiga yoki modal oynaga o'tsa bo'ladi
        await DisplayAlert("Update", $"Update qilmoqchi: {product.Name}", "OK");

        // To'liq update qilish logikasini keyin yozamiz
    }

    private async void OnDeleteClicked(object sender, EventArgs e)
    {
        var button = sender as Button;
        var product = button.BindingContext as Product;

        bool answer = await DisplayAlert("O'chirish", $"{product.Name} ni o'chirmoqchimisiz?", "Ha", "Yo'q");
        if (answer)
        {
            await _firebaseService.DeleteProductAsync(product.Id); // FirebaseService da Delete qilish
            LoadProducts(); // Qayta yuklash
        }
    }

    private async void OnLogoutClicked(object sender, EventArgs e)
    {
        SessionService.Logout();
        await Navigation.PushAsync(new MainPage());
        Navigation.RemovePage(this);
    }
}
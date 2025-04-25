using dokonApp2.Products_model;
using dokonApp2.Services;

namespace dokonApp2;

public partial class AddProductPage : ContentPage
{

    private readonly FirebaseService _firebaseService = new();

    public AddProductPage()
	{
		InitializeComponent();
	}

    private async void OnAddProductClicked(object sender, EventArgs e)
    {
        string name = NameEntry.Text;
        string priceText = PriceEntry.Text;

        if (string.IsNullOrWhiteSpace(name) || string.IsNullOrWhiteSpace(priceText))
        {
            await DisplayAlert("Xatolik", "Iltimos, barcha maydonlarni to‘ldiring", "OK");
            return;
        }

        if (!decimal.TryParse(priceText, out decimal price))
        {
            await DisplayAlert("Xatolik", "Narx noto‘g‘ri kiritilgan", "OK");
            return;
        }

        var product = new Product
        {
            Name = name,
            Price = (double)price
        };

        await _firebaseService.AddProductAsync(product);

        await DisplayAlert("Muvaffaqiyatli", "Mahsulot qo‘shildi", "OK");
        await Navigation.PopAsync();
    }
}
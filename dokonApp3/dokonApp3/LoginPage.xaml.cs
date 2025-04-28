namespace dokonApp3;
using dokonApp3.Services;
using dokonApp3.Products_model;

public partial class LoginPage : ContentPage
{
    private readonly FirebaseService _firebaseService = new();

    public LoginPage()
	{
		InitializeComponent();
	}

    private async void OnLoginClicked(object sender, EventArgs e)
    {
        string username = usernameEntry.Text;
        string password = passwordEntry.Text;

        var users = await _firebaseService.GetUsersAsync();

        var user = users.Values.FirstOrDefault(u => u.Username == username && u.Password == password);

        if (user != null)
        {
            SessionService.IsLoggedIn = true;
            if (user.Role == "admin")
            {
                await DisplayAlert("Xush kelibsiz", "Admin sifatida kirdingiz!", "OK");
                await Navigation.PushAsync(new AdminPage());
            }
            else
            {
                await DisplayAlert("Xush kelibsiz", "Foydalanuvchi sifatida kirdingiz!", "OK");
                await Navigation.PushAsync(new UserPage());
            }
            Navigation.RemovePage(this);
        }
        else
        {
            await DisplayAlert("Xatolik", "Login yoki parol xato!", "OK");
        }
    }

    private async void OnRegisterClicked(object sender, EventArgs e)
    {
        string username = usernameEntry.Text;
        string password = passwordEntry.Text;

        if (string.IsNullOrWhiteSpace(username) || string.IsNullOrWhiteSpace(password))
        {
            await DisplayAlert("Xatolik", "Iltimos, hamma maydonlarni to'ldiring.", "OK");
            return;
        }

        var users = await _firebaseService.GetUsersAsync();

        if (users.Values.Any(u => u.Username == username))
        {
            await DisplayAlert("Xatolik", "Bu login band.", "OK");
            return;
        }

        var newUser = new User
        {
            Username = username,
            Password = password,
            Role = "user"
        };

        await _firebaseService.AddUserAsync(newUser);

        await DisplayAlert("Muvaffaqiyat", "Foydalanuvchi ro'yxatdan o'tdi!", "OK");
    }
}
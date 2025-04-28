namespace dokonApp2;

public partial class LoginPages : ContentPage
{
	public LoginPages()
	{
		InitializeComponent();
	}

    private async void OnLoginClicked(object sender, EventArgs e)
	{
        string username = usernameEntry.Text;
        string password = passwordEntry.Text;

        if (username == "admin" && password == "1234")
        {
            SessionService.IsLoggedIn = true;
            SessionService.UserType = "admin";
            await Navigation.PushAsync(new AdminPage());
            Navigation.RemovePage(this);
        }
        else if (username == "user" && password == "1234")
        {
            SessionService.IsLoggedIn = true;
            SessionService.UserType = "user";
            await Navigation.PushAsync(new UserPage());
            Navigation.RemovePage(this);
        }
        else
        {
            await DisplayAlert("Xatolik", "Login yoki parol noto'g'ri!", "OK");
        }
    }
}
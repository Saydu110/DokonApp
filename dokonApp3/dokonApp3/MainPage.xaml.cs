using dokonApp3.Services;

namespace dokonApp3
{
    public partial class MainPage : ContentPage
    {
        int count = 0;

        public MainPage()
        {
            InitializeComponent();
            CheckLoginStatus();
        }

        private async void CheckLoginStatus()
        {
            await Task.Delay(1000); // Loading effekti uchun

            if (SessionService.IsLoggedIn())
            {
                string role = SessionService.GetUserRole();
                if (role == "admin")
                    await Navigation.PushAsync(new AdminPage());
                else
                    await Navigation.PushAsync(new UserPage());
            }
            else
            {
                await Navigation.PushAsync(new LoginPage());
            }

            Navigation.RemovePage(this); // MainPage'ni stackdan olib tashlash
        }

        private async void OnContinueClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new LoginPage());
        }
    }

}

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

            if (SessionService.IsLoggedIn)
            {
                if (SessionService.UserType == "admin")
                    await Navigation.PushAsync(new AdminPage());
                else
                    await Navigation.PushAsync(new UserPage());
            }
            else
            {
                await Navigation.PushAsync(new LoginPage());
            }
            Navigation.RemovePage(this); // StartupPage'ni stackdan olib tashlaymiz
        }

        private async void OnContinueClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new LoginPage());
        }
    }

}

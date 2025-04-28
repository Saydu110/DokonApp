namespace dokonApp2
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            if (SessionService.IsLoggedIn)
            {
                if (SessionService.UserType == "admin")
                    MainPage = new NavigationPage(new AdminPage());
                else
                    MainPage = new NavigationPage(new UserPage());
            }
            else
            {
                MainPage = new NavigationPage(new MainPage());
            }
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            return new Window(new AppShell());
        }
    }
}
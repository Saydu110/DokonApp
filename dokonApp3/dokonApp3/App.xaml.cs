using dokonApp3.Services;

namespace dokonApp3
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            Routing.RegisterRoute("admin", typeof(AdminPage));
            Routing.RegisterRoute("user", typeof(UserPage));
            Routing.RegisterRoute("login", typeof(LoginPage));
        }

        protected override Window CreateWindow(IActivationState? activationState)
        {
            var shell = new AppShell();

            if (SessionService.IsLoggedIn())
            {
                string role = SessionService.GetUserRole();
                shell.GoToAsync($"//{(role == "admin" ? "admin" : "user")}");
            }
            else
            {
                shell.GoToAsync("//login");
            }

            return new Window(shell);
        }
    }
}
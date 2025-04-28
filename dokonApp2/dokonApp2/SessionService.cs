using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dokonApp2
{
    class SessionService
    {
        private const string IsLoggedInKey = "IsLoggedIn";
        private const string UserTypeKey = "UserType"; // yangi qo‘shildi

        public static bool IsLoggedIn
        {
            get => Preferences.Get(IsLoggedInKey, false);
            set => Preferences.Set(IsLoggedInKey, value);
        }

        public static string UserType
        {
            get => Preferences.Get(UserTypeKey, "");
            set => Preferences.Set(UserTypeKey, value);
        }

        public static void Logout()
        {
            Preferences.Set(IsLoggedInKey, false);
            Preferences.Set(UserTypeKey, "");
        }
    }
}

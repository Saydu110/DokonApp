using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dokonApp3.Products_model
{
    public class Product
    {
        public string Id { get; set; }  // Firebase'ning key'si sifatida ishlatiladi
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Price { get; set; }
    }

    public class User
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Role { get; set; } // "admin" yoki "user"
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dokonApp3.Products_model;
using Newtonsoft.Json;


namespace dokonApp3.Services
{
    public class FirebaseService
    {
        private readonly HttpClient _client = new();
        private readonly string _baseUrl = "https://dokonapp-c5c17-default-rtdb.firebaseio.com/";

        //read
        public async Task<List<Product>> GetProductsAsync()
        {
            var response = await _client.GetStringAsync(_baseUrl + "products.json");
            var productsData = JsonConvert.DeserializeObject<Dictionary<string, Product>>(response);

            var products = new List<Product>();
            if (productsData != null)
            {
                foreach (var item in productsData)
                {
                    item.Value.Id = item.Key; // <-- MUHIM: Firebase'dagi id ni o'zimizning modelga yozib olamiz
                    products.Add(item.Value);
                }
            }
            return products;
        }

        //read
        public async Task AddProductAsync(Product product)
        {
            var json = JsonConvert.SerializeObject(product);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            await _client.PostAsync(_baseUrl + "products.json", content);
        }

        //delete
        public async Task DeleteProductAsync(string id)
        {
            await _client.DeleteAsync($"{_baseUrl}products/{id}.json");
        }

        //update
        public async Task UpdateProductAsync(string id, Product updatedProduct)
        {
            var json = JsonConvert.SerializeObject(updatedProduct);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            await _client.PutAsync($"{_baseUrl}products/{id}.json", content);
        }
        //login
        public async Task<Dictionary<string, User>> GetUsersAsync()
        {
            var response = await _client.GetStringAsync(_baseUrl + "users.json");
            var users = JsonConvert.DeserializeObject<Dictionary<string, User>>(response);
            return users ?? new Dictionary<string, User>();
        }

        //register
        public async Task AddUserAsync(User user)
        {
            var json = JsonConvert.SerializeObject(user);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            await _client.PostAsync(_baseUrl + "users.json", content);
        }
    }

    public static class SessionService
    {
        public static bool IsLoggedIn { get; set; } = false;

        public static string UserType { get; set; } = string.Empty; // "admin" yoki "user"

        public static void Logout()
        {
            IsLoggedIn = false;
            UserType = string.Empty;
        }


    }

    
}

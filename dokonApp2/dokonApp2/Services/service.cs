using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dokonApp2.Products_model;

namespace dokonApp2.Services
{
    public class FirebaseService
    {
        private readonly HttpClient _client = new();
        private readonly string _baseUrl = "https://do-konapp.firebaseio.com/";

        public async Task<List<Product>> GetProductsAsync()
        {
            var response = await _client.GetStringAsync(_baseUrl + "products.json");
            var products = JsonConvert.DeserializeObject<Dictionary<string, Product>>(response);
            return products?.Values.ToList() ?? new List<Product>();
        }

        public async Task AddProductAsync(Product product)
        {
            var json = JsonConvert.SerializeObject(product);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            await _client.PostAsync(_baseUrl + "products.json", content);
        }
    }
}

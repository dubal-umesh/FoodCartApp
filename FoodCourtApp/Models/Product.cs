using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodCourtApp.Models
{
    public class Product
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string ProductDescription { get; set; }
        public float Rate { get; set; }
        public string ProductLogoPath { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodCourtApp.Models
{
    public class OrderDetails
    {
        public int Id { get; set; }
        public int OrderId { get; set; }
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public int Qty { get; set; }
        public float Rate { get; set; }
        public float Amount { get; set; }

    }
}
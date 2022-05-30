using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodCourtApp.Models
{
    public class Order
    {
        public int OrderId { get; set; }
        public string OrderNumber { get; set; }

        public string OrderDate { get; set; }
        public int CustomerId { get; set; }
        public string CustomerName { get; set; }
        public string Address { get; set; }
        public string ContactNo { get; set; }
        public List<OrderDetails> Details { get; set; }


    }
}
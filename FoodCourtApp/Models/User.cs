using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FoodCourtApp.Models
{
    public class User
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string ContactNo { get; set; }
        public string Email { get; set; }
        public string PinCode { get; set; }
        public int RoleId { get; set; }
        public string RoleName { get; set; }
    }
}
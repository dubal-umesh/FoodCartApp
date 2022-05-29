using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodCourtApp.DAL;
using FoodCourtApp.Models;

namespace FoodCourtApp
{
    public partial class Register : System.Web.UI.Page
    {
        private UserDAL objUserDAL = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            objUserDAL = new UserDAL();
             
            if(!Page.IsPostBack)
            {
                Lblreg.Visible = false;
            }
        }

        protected void Buttonreg_Click(object sender, EventArgs e)
        {
            User user = new User();
            user.UserName = TextBoxUserName.Text.Trim();
            user.Password = TextBoxpass.Text.Trim();
            user.FirstName = TextBoxfname.Text.Trim();
            user.LastName = TextBoxlname.Text.Trim();
            user.Address = TextBoxadd.Text.Trim();
            user.City = TextBoxcity.Text.Trim();
            user.PinCode = TextBoxpin.Text.Trim();
            user.ContactNo = TextBoxmobile.Text.Trim();
            user.Email = TextBoxemail.Text.Trim();
            user.RoleId = 2;   //for Customer
            string result = objUserDAL.registerUser(user);
            Lblreg.Visible = true;
            Lblreg.Text = result;

            //Response.Redirect("Login.aspx");
        }
    }
}
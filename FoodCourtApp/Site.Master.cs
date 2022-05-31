using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodCourtApp.Models;

namespace FoodCourtApp
{
    public partial class SiteMaster : MasterPage
    {
        public static User LoggedInUser { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["UserData"] != null)
            {
                string message = "";
                lnkLogin.Visible = false;
                divLoginuser.Visible = true;
                User user = (User)Session["UserData"];
                if (user != null)
                {
                    LoggedInUser = user;
                    menuGuest.Visible = false;
                    message = "Welcome " + user.UserName +" | " + user.RoleName;
                    if(user.RoleId==1)
                    {
                        menuAdmin.Visible = true;
                        menuCustomer.Visible = false;
                    }
                    if (user.RoleId == 2)
                    {
                        menuAdmin.Visible = false;
                        menuCustomer.Visible = true;
                    }

                }
                else
                {
                    menuGuest.Visible = true;
                }

                lblLoginUser.Text = message;
            }
            else
            {
                lnkLogin.Visible = true;
                divLoginuser.Visible = false;
            }
        }
    }
}
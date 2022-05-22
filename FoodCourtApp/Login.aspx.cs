using FoodCourtApp.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodCourtApp
{
    public partial class Login : System.Web.UI.Page
    {
        private UserDAL objUserDAL=null;
        protected void Page_Load(object sender, EventArgs e)
        {
           
                objUserDAL = new UserDAL();
            if(!Page.IsPostBack)
            {
                lblErrorMessage.Text = "";
            }
           

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userName=txtUserName.Text.Trim();
            string password=txtPassword.Text.Trim();    
            if(userName !="" && password !="")
            {
                DataTable dt=  objUserDAL.validateUser(userName,password);
                if(dt!=null)
                {
                    if(dt.Rows.Count>0)
                    {
                        Session["UserData"] = dt;
                        Response.Redirect("Default.aspx");
                    }
                    else
                    {
                        lblErrorMessage.Text = "Please enter correct UserName and Password.";
                    }
                }
                else
                {
                    lblErrorMessage.Text = "Please enter correct UserName and Password.";
                }
            }

        }
    }
}
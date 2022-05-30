using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodCourtApp
{
    public partial class OrderComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (SiteMaster.LoggedInUser != null)
                {
                    string orderNumber = Convert.ToString(Request.QueryString["OrderNumber"]);
                    if (orderNumber == "")
                    {
                        divError.Visible = true;
                        divSuccess.Visible = false;
                        spanErrorMessage.InnerText = "Order is missing.";

                    }
                    else
                    {
                        divError.Visible = false;
                        divSuccess.Visible = true;
                        spnOrderNo.InnerText = orderNumber;
                        if (Session["Order"] != null)
                        {
                            Session["Order"] = null;
                        }
                    }
                }else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}
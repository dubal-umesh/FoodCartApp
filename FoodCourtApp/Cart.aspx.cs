using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using FoodCourtApp.Models;
using System.Web.UI.WebControls;

namespace FoodCourtApp
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            { 
                if(Session["Order"]!=null)
                {
                    Order order = (Order)Session["Order"];
                    lblCustomerName.Text = order.CustomerName;
                    lblAddress.Text = order.Address;
                    lblContactNo.Text = order.ContactNo;
                    lblOrderNo.Text = order.OrderNumber;
                    lblOrderDate.Text = order.OrderDate;
                    grdOrderDetails.DataSource = order.Details;
                    grdOrderDetails.DataBind();
                }

            }

        }
    }
}
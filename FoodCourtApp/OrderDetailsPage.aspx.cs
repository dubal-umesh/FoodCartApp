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
    public partial class OrderDetailsPage : System.Web.UI.Page
    {
        private ProductDAL objProductDAL = null;
        private Order order = null;
        private OrderDAL objOrderDAL = null;


        protected void Page_Load(object sender, EventArgs e)
        {
            objOrderDAL = new OrderDAL();
            if (!Page.IsPostBack)
            {
                if (SiteMaster.LoggedInUser != null)
                {
                    int orderId = Convert.ToInt32(Request.QueryString["OrderId"]);
                    Order order = objOrderDAL.getOrder(orderId);
                    if (order != null)
                    {
                        order.Details = objOrderDAL.GetOrderDetails(order.OrderId);
                        OrderBind(order, "");
                    }

                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }

        private void OrderBind(Order order, string message)
        {
            float Sum = 0;
            lblCustomerName.Text = order.CustomerName;
            lblAddress.Text = order.Address;
            lblContactNo.Text = order.ContactNo;
            lblOrderNo.Text = order.OrderNumber;
            lblOrderDate.Text = order.OrderDate;
            if (order.Details.Count > 0)
            {

                Sum = order.Details.Sum(x => x.Amount);
                lblTotalAmount.Text = Convert.ToString(Sum);
            }
            grdOrderDetails.DataSource = order.Details;
            grdOrderDetails.DataBind();
        }
    }
}
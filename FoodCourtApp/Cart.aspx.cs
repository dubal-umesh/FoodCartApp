using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using FoodCourtApp.Models;
using System.Web.UI.WebControls;
using FoodCourtApp.DAL;

namespace FoodCourtApp
{
    public partial class Cart : System.Web.UI.Page
    {
        private Order order = null;
        private OrderDAL objOrderDAL = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            objOrderDAL = new OrderDAL();
            if (!Page.IsPostBack)
            {
                if (SiteMaster.LoggedInUser != null)
                {

                    if (Session["Order"] != null)
                    {
                        order = (Order)Session["Order"];
                        OrderBind(order, "");
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }

            }

        }



        protected void grdOrderDetails_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[0].Text;
                foreach (Button button in e.Row.Cells[4].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm(' Do you want to remove/delete  " + item + " item from Cart?')){ return false; };";
                    }
                }
            }

        }

        protected void grdOrderDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Id = Convert.ToInt32(e.Keys["Id"]);
            int OrderId = Convert.ToInt32(e.Keys["OrderId"]);
            string result = objOrderDAL.RemoveCartItem(Id, OrderId);
            Order order = objOrderDAL.GetInprogressOrder(SiteMaster.LoggedInUser.Id);
            if (order != null)
            {
                order.Details = objOrderDAL.GetOrderDetails(order.OrderId);
                Session["Order"] = order;

            }
            OrderBind(order, result);
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
                btnPlaceOrder.Enabled = true;
                Sum= order.Details.Sum(x => x.Amount);
                lblTotalAmount.Text = Convert.ToString(Sum);
            }
            grdOrderDetails.DataSource = order.Details;
            grdOrderDetails.DataBind();
        }

        protected void btnMoreitems_Click(object sender, EventArgs e)
        {
            Response.Redirect("ProductsCatalog.aspx");
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            order = (Order)Session["Order"];
            string orderNumber = objOrderDAL.PlaceOrder(order.OrderId, order.OrderNumber);
            Response.Redirect("OrderComplete.aspx?OrderNumber=" + orderNumber);
        }
    }
}
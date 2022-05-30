using FoodCourtApp.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodCourtApp.Models;

namespace FoodCourtApp
{
    public partial class ProductsCatalog : System.Web.UI.Page
    {
        private ProductDAL objProductDAL = null;
        private Order order = null;
        private OrderDAL objOrderDAL = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            objProductDAL
                = new ProductDAL();
            objOrderDAL = new OrderDAL();
            if (!Page.IsPostBack)
            {
                BindProductDataList();
            }

        }
        private void BindProductDataList()
        {
            var products = objProductDAL.GetProducts();
            dlProducts.DataSource = products;
            dlProducts.DataBind();

        }

        protected void dlProducts_ItemCommand(object source, DataListCommandEventArgs e)
        {
            HiddenField hdnProduct = (HiddenField)e.Item.FindControl("hdnProductId");
            HiddenField hdnRate = (HiddenField)e.Item.FindControl("hdnRate");
            HiddenField hdnProductName = (HiddenField)e.Item.FindControl("hdnProductName");
            TextBox TxtQty = (TextBox)e.Item.FindControl("txtQty");            
            if (SiteMaster.LoggedInUser != null)
            {
                int CustomerId = SiteMaster.LoggedInUser.Id;
                if (Session["Order"] == null)
                {
                    order = objOrderDAL.OrderInitiate(CustomerId);
                    OrderDetails orderDetails = new OrderDetails();
                    orderDetails.ProductId = Convert.ToInt32(hdnProduct.Value);
                    orderDetails.ProductName = Convert.ToString(hdnProductName.Value);
                    orderDetails.Qty = Convert.ToInt32(TxtQty.Text.Trim());
                    orderDetails.Rate= Convert.ToInt32(hdnRate.Value);
                    orderDetails.Amount = (float)(orderDetails.Qty * orderDetails.Rate);
                    orderDetails.OrderId = order.OrderId;
                    order.Details = objOrderDAL.AddNewProductToCart(orderDetails);
                }
                else
                {
                    order = (Order)Session["Order"];
                    int ProductId = Convert.ToInt32(hdnProduct.Value);
                    OrderDetails orderDetails = order.Details.Where(o => o.ProductId == ProductId && o.OrderId == order.OrderId).FirstOrDefault();
                    if(orderDetails !=null)
                    {
                        orderDetails.Qty = orderDetails.Qty + Convert.ToInt32(TxtQty.Text.Trim());
                        orderDetails.ProductName = Convert.ToString(hdnProductName.Value);
                        orderDetails.Rate = Convert.ToInt32(hdnRate.Value);
                        orderDetails.Amount = (float)(orderDetails.Qty * orderDetails.Rate);
                        order.Details = objOrderDAL.AddNewProductToCart(orderDetails);
                    }
                    else
                    {
                        orderDetails = new OrderDetails();
                        orderDetails.ProductId = Convert.ToInt32(hdnProduct.Value);
                        orderDetails.ProductName = Convert.ToString(hdnProductName.Value);
                        orderDetails.Qty = Convert.ToInt32(TxtQty.Text.Trim());
                        orderDetails.Rate = Convert.ToInt32(hdnRate.Value);
                        orderDetails.Amount = (float)(orderDetails.Qty * orderDetails.Rate);
                        orderDetails.OrderId = order.OrderId;
                        order.Details = objOrderDAL.AddNewProductToCart(orderDetails);
                    }
                }
                Session["Order"] = order;

                Response.Redirect("Cart.aspx");
            }


        }
    }
}
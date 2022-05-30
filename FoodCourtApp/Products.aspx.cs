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
    public partial class Products : System.Web.UI.Page
    {
        private ProductDAL objProductDAL = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (SiteMaster.LoggedInUser != null)
            {
                if (SiteMaster.LoggedInUser.RoleId != 1)
                {
                    objProductDAL = new ProductDAL();
                    if (!Page.IsPostBack)
                    {
                        ProductGridBind();
                    }
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        private void ProductGridBind()
        {
            var products = objProductDAL.GetProducts();
            if (products.Count > 0)
            {
                DivNoRecords.Visible = false;
                divProductGrid.Visible = true;
                grdProducts.DataSource = products;
                grdProducts.DataBind();
            }
            else
            {
                DivNoRecords.Visible = true;
                divProductGrid.Visible = false;

            }
        }

        protected void grdProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int productId = Convert.ToInt32(e.Keys["ProductId"]);
            string result = objProductDAL.deleteProduct(productId);
            ProductGridBind();
        }

        protected void grdProducts_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                string item = e.Row.Cells[0].Text;
                foreach (Button button in e.Row.Cells[4].Controls.OfType<Button>())
                {
                    if (button.CommandName == "Delete")
                    {
                        button.Attributes["onclick"] = "if(!confirm('Do you want to delete " + item + "?')){ return false; };";
                    }
                }
            }

        }
    }
}
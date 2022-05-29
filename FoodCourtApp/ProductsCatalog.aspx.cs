using FoodCourtApp.DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodCourtApp
{
    public partial class ProductsCatalog : System.Web.UI.Page
    {
        private ProductDAL objProductDAL = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            objProductDAL 
                = new ProductDAL();
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
            HiddenField hdnProductId = (HiddenField)e.Item.FindControl("hdnProductId");

        }
    }
}
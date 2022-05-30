using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FoodCourtApp.DAL;
using FoodCourtApp.Models;
using System.IO;

namespace FoodCourtApp
{
    public partial class EditProduct : System.Web.UI.Page
    {
        private ProductDAL objProductDAL = null;
        protected void Page_Load(object sender, EventArgs e)
        {

            objProductDAL = new ProductDAL();
            if (!Page.IsPostBack)
            {
                if (SiteMaster.LoggedInUser != null)
                {
                    if (SiteMaster.LoggedInUser.RoleId == 1)
                    {
                        lblMessage.Visible = false;
                        int productId = Convert.ToInt32(Request.QueryString["Id"]);
                        loadProduct(productId);
                    }else
                    {
                        Response.Redirect("Login.aspx");
                    }
                }else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        private void loadProduct(int productId)
        {
            Product product = new Product();
            product = objProductDAL.getProduct(productId);
            hdnProductId.Value = Convert.ToString(product.ProductId);
            txtProductName.Text = Convert.ToString(product.ProductName);
            txtProdDescription.Text = Convert.ToString(product.ProductDescription);
            txtRate.Text = Convert.ToString(product.Rate);
            imgProductLogo.ImageUrl = Convert.ToString(product.ProductLogoPath);
        }
        protected void UploadButton_Click(object sender, EventArgs e)
        {
            if (FileUploadControl.HasFile)
            {
                try
                {
                    if (FileUploadControl.PostedFile.ContentType == "image/jpeg")
                    {
                        if (FileUploadControl.PostedFile.ContentLength < 10240000)
                        {
                            string filename = Path.GetFileName(FileUploadControl.FileName);
                            FileUploadControl.SaveAs(Server.MapPath("~/ProductLogos/") + filename);
                            hdnProductLogo.Value = "~/ProductLogos/" + filename;
                            imgProductLogo.ImageUrl = hdnProductLogo.Value;
                            StatusLabel.Text = "Upload status: File uploaded!";
                        }
                        else
                            StatusLabel.Text = "Upload status: The file has to be less than 100 kb!";
                    }
                    else
                        StatusLabel.Text = "Upload status: Only JPEG files are accepted!";
                }
                catch (Exception ex)
                {
                    StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Product product = new Product();
            product.ProductName = txtProductName.Text.Trim();
            product.ProductDescription = txtProdDescription.Text.Trim();
            product.Rate = float.Parse(txtRate.Text.Trim());
            product.ProductId = Convert.ToInt32(hdnProductId.Value);
            product.ProductLogoPath = hdnProductLogo.Value;


            lblMessage.Visible = true;
            lblMessage.Text = objProductDAL.updateProduct(product);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }
    }
}
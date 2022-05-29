using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using FoodCourtApp.Models;

namespace FoodCourtApp.DAL
{
    public class ProductDAL
    {
        private string connectionString = null;
        public ProductDAL()
        {
            connectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["FoodCourtDbConnectionString"]);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns>Products</returns>
        public IList<Product> GetProducts()
        {
            IList<Product> Products = new List<Product>();
            Product product = null;
            SqlDataReader dr = null;
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("sp_GetProducts", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        product = new Product();
                        product.ProductId = Convert.ToInt32(dr["Id"]);
                        product.ProductName = Convert.ToString(dr["ProductName"]);
                        product.ProductDescription = Convert.ToString(dr["ProductDescription"]);
                        product.Rate = float.Parse(Convert.ToString(dr["Rate"]));
                        product.ProductLogoPath = Convert.ToString(dr["ImagePath"]).Replace("~","");
                        Products.Add(product);
                    }
                    conn.Close();

                }
            }
            catch (Exception ex)
            {
                return null;
            }

            return Products;

        }

        public string insertProduct(Product product)
        {
            string result = "Product Added Successfully.";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("sp_InsertProduct", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProductName", product.ProductName);
                    cmd.Parameters.AddWithValue("@ProductDescription", product.ProductDescription);
                    cmd.Parameters.AddWithValue("@Rate", product.Rate);
                    cmd.Parameters.AddWithValue("@ImagePath", product.ProductLogoPath);

                    int i = cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    result = "Error while Adding Product. " + ex.Message;
                }
            }

            return result;
        }

        public string updateProduct(Product product)
        {
            string result = "Product Updated Successfully.";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("sp_UpdateProduct", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProductId", product.ProductId);
                    cmd.Parameters.AddWithValue("@ProductName", product.ProductName);
                    cmd.Parameters.AddWithValue("@ProductDescription", product.ProductDescription);
                    cmd.Parameters.AddWithValue("@Rate", product.Rate);
                    cmd.Parameters.AddWithValue("@ImagePath", product.ProductLogoPath);

                    int i = cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    result = "Error while Updating Product. " + ex.Message;
                }
            }

            return result;
        }

        public string deleteProduct(int productId)
        {
            string result = "Product Deleted Successfully.";
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("sp_DeleteProduct", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProductId", productId);
                    int i = cmd.ExecuteNonQuery();
                    conn.Close();
                }
                catch (Exception ex)
                {
                    result = "Error while Deleting Product. " + ex.Message;
                }
            }

            return result;
        }

        public Product getProduct(int productId)
        {
            Product product = null;
            SqlDataReader dr = null;
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("sp_GetProduct", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ProductId", productId);
                    dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        product = new Product();
                        product.ProductId = Convert.ToInt32(dr["Id"]);
                        product.ProductName = Convert.ToString(dr["ProductName"]);
                        product.ProductDescription = Convert.ToString(dr["ProductDescription"]);
                        product.Rate = float.Parse(Convert.ToString(dr["Rate"]));
                        product.ProductLogoPath = Convert.ToString(dr["ImagePath"]);
                       
                    }
                    conn.Close();

                }
            }
            catch (Exception ex)
            {
                return null;
            }

            return product;

        }


    }
}
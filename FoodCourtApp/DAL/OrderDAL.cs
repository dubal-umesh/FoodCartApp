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
    public class OrderDAL
    {
        private string connectionString = null;
        public OrderDAL()
        {
            connectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["FoodCourtDbConnectionString"]);
        }

        public Order OrderInitiate(int CustomerId)
        {
            SqlDataReader dr = null;
            Order order = null;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_InsertOrder", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CustomerId", CustomerId);

                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    order = new Order();
                    order.OrderId = Convert.ToInt32(dr["ID"]);
                    order.OrderNumber = Convert.ToString(dr["OrderNumber"]);
                    order.OrderDate = Convert.ToString(dr["OrderDate"]);
                    order.CustomerId = Convert.ToInt32(dr["CustomerId"]);
                    order.CustomerName = Convert.ToString(dr["CustomerName"]);
                    order.Address = Convert.ToString(dr["Address"]);
                    order.ContactNo = Convert.ToString(dr["ContactNo"]);

                }
                conn.Close();
                conn.Close();
            }
            return order;
        }

        public List<OrderDetails> AddNewProductToCart(OrderDetails orderDetail)
        {
            SqlDataReader dr = null;
            List<OrderDetails> orderDetails = null;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_InsertOrderDetails", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@OrderId", orderDetail.OrderId);
                cmd.Parameters.AddWithValue("@ProductId", orderDetail.ProductId);
                cmd.Parameters.AddWithValue("@Rate", orderDetail.Rate);
                cmd.Parameters.AddWithValue("@Qty", orderDetail.Qty);
                cmd.Parameters.AddWithValue("@Amount", orderDetail.Amount);              
                dr = cmd.ExecuteReader();
                orderDetails = new List<OrderDetails>();
                while (dr.Read())
                {
                    orderDetail = new OrderDetails();
                    orderDetail.Id = Convert.ToInt32(dr["Id"]);
                    orderDetail.OrderId = Convert.ToInt32(dr["OrderId"]);
                    orderDetail.ProductId = Convert.ToInt32(dr["OrderNumber"]);
                    orderDetail.Rate = float.Parse(Convert.ToString(dr["OrderDate"]));
                    orderDetail.Qty = Convert.ToInt32(dr["Qty"]);
                    orderDetail.Amount = float.Parse(Convert.ToString(dr["Amount"]));
                    orderDetail.ProductName = Convert.ToString(dr["productName"]);
                    orderDetails.Add(orderDetail);
                }
               
                conn.Close();
            }
            return orderDetails;

        }

    }
}
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
    public class UserDAL
    {

        private string connectionString = null;
        public UserDAL()
        {
            connectionString = Convert.ToString(ConfigurationManager.ConnectionStrings["FoodCourtDbConnectionString"]);
        }

        public DataTable validateUser(string userName, string password)
        {
            SqlDataAdapter sda = new SqlDataAdapter();
            DataTable dt = new DataTable();
            DataSet ds = new DataSet();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_ValidateUser", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userName", userName);
                cmd.Parameters.AddWithValue("@password", password);
                sda.SelectCommand = cmd;
                sda.Fill(ds, "UserData");
                dt=ds.Tables[0];
                conn.Close();
            }

            return dt;
        }

        public string registerUser(User user)
        {
            string result = "User Registered Succefully.";
            

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("SpRegisterUser", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@userName", user.UserName);
                    cmd.Parameters.AddWithValue("@password", user.Password);
                    cmd.Parameters.AddWithValue("@FirstName", user.FirstName);
                    cmd.Parameters.AddWithValue("@LastName", user.LastName);
                    cmd.Parameters.AddWithValue("@Address", user.Address);
                    cmd.Parameters.AddWithValue("@City", user.City);
                    cmd.Parameters.AddWithValue("@ContactNo", user.ContactNo);
                    cmd.Parameters.AddWithValue("@Email", user.Email);
                    cmd.Parameters.AddWithValue("@RoleId", user.RoleId);
                    cmd.Parameters.AddWithValue("@PinCode", user.PinCode);
                    int i = cmd.ExecuteNonQuery();
                    conn.Close();
                }catch (Exception ex)
                {
                     result = "Unable to register user, Please contact your Admin.";
                }
            }

            return result;
        }
    }
}
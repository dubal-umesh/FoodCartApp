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

        
        public User validateUser(string userName, string password)
        {
            SqlDataReader dr = null;
            User user = null;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("sp_ValidateUser", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@userName", userName);
                cmd.Parameters.AddWithValue("@password", password);
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    user = new User();
                    user.Id = Convert.ToInt32(dr["ID"]);
                    user.FirstName = Convert.ToString(dr["FirstName"]);
                    user.LastName = Convert.ToString(dr["LastName"]);
                    user.UserName = Convert.ToString(dr["UserName"]);
                    user.RoleName = Convert.ToString(dr["RoleName"]);
                    user.RoleId = Convert.ToInt32(dr["RoleId"]);
                }
                conn.Close();
                conn.Close();
            }

            return user;
        }

        public string registerUser(User user)
        {
            string result = "User Registered Succefully.";
            

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("sp_RegisterUser", conn);
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
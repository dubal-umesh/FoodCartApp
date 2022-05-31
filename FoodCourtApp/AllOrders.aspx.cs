using FoodCourtApp.DAL;
using FoodCourtApp.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodCourtApp
{
    public partial class AllOrders : System.Web.UI.Page
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

                    var orders = objOrderDAL.GetAllOrders();
                    grdOrders.DataSource = orders;
                    grdOrders.DataBind();
                }
            }

        }
    }
}
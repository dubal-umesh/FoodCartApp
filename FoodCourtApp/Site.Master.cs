using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodCourtApp
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserData"]!=null)
            {
                string message = "";
                lnkLogin.Visible = false;
                divLoginuser.Visible = true;
                DataTable userDt = (DataTable)Session["UserData"];
                if(userDt!=null)
                {
                    if(userDt.Rows.Count>0)
                    {
                        message = "Welcome " + Convert.ToString(userDt.Rows[0]["UserName"]);
                    }
                }

                lblLoginUser.Text = message;
            }
            else
            {
                lnkLogin.Visible = true;
                divLoginuser.Visible = false;
            }
        }
    }
}
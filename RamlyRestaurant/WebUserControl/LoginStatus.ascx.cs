using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamlyRestaurant.WebUserControl
{
    public partial class LoginStatus : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cust_name"] != null && Session["role"] != null)
            {
                LabelLoginStatus.Text = "Welcome "
                + Session["cust_name"].ToString();
            }
            else
            {
                ButtonLogout.Visible = false;
                LabelLoginStatus.Text = "You are not logged in.";
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("default.aspx");
        }
    }
}
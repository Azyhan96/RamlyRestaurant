using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RamlyRestaurant.WebUserControl
{
    public partial class SearchBox : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            if (TextBoxSearch.Text.Trim() != "")
            {
                string searchtext = TextBoxSearch.Text.ToLower(); // optional
                searchtext = searchtext.Replace(' ', '+'); // optional
                Response.Redirect("~/Search.aspx?search=" +
                TextBoxSearch.Text);
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace RamlyRestaurant.WebUserControl
{
    public partial class Login : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM Customer WHERE cust_name=@cust_name";
            SqlConnection conn = new SqlConnection(ConfigurationManager.
            ConnectionStrings["ConnStringStoreDB"].ConnectionString);
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@cust_name", TextBoxUsernameLogin.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Object objpasswordhash = dt.Rows[0]["passwordhash"];
                Object objrole = dt.Rows[0]["role"];
                Object objenabled = dt.Rows[0]["enabled"];
                string password = TextBoxPasswordLogin.Text;
                string storedpasswordhash = objpasswordhash.ToString();
                PBKDF2Hash PwdHash = new PBKDF2Hash(password, storedpasswordhash);
                bool passwordcheck = PwdHash.PasswordCheck;
                bool enabled = Convert.ToBoolean(objenabled);

                if (passwordcheck == true && enabled == true)
                {
                    Session["cust_name"] = TextBoxUsernameLogin.Text;
                    Session["role"] = objrole;
                    if (Session["role"].ToString() == "admin")
                        Response.Redirect("AddProduct.aspx");
                    else if (Session["role"].ToString() == "user")
                        Response.Redirect("CustomerHomepage.aspx");
                    else
                        Response.Redirect("CustomerHomepage.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    LabelStatus.Text = "Your username or password is incorrect";
                    LabelStatus.ForeColor = System.Drawing.Color.Red;
                }



                Session.RemoveAll();
            }
            else
            {
                LabelStatus.Text = "You're username or password is incorrect";
                LabelStatus.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            TextBoxUsernameLogin.Text = String.Empty;
            TextBoxPasswordLogin.Text = String.Empty;
        }
    }
}
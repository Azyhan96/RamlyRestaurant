using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace RamlyRestaurant
{
    public partial class UpdateDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringStoreDB"].ConnectionString))
                using (SqlCommand cmd = new SqlCommand("select * from Customer where cust_name = @username", con))
                {
                    cmd.Parameters.AddWithValue("@username", Session["cust_name"]);
                    cmd.CommandType = CommandType.Text;

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.CloseConnection | CommandBehavior.SingleResult | CommandBehavior.SingleRow))
                    {
                        if (reader.Read())
                        {
                            TextBoxUsername.Text = reader.GetString(1);
                            TextBoxEmail.Text = reader.GetString(5);
                            TextBoxPhoneNo.Text = reader.GetString(4);
                            TextBoxAddress.Text = reader.GetString(3);
                        }
                    }
                }
            }
        }

        protected void ButtonUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnStringStoreDB"].ConnectionString))
            using (SqlCommand cmd = new SqlCommand("Update Customer set email = @email, telephone = @phoneNo, address = @address where cust_name = @username", con))
            {
                cmd.Parameters.AddWithValue("@email", TextBoxEmail.Text);
                cmd.Parameters.AddWithValue("@phoneNo", TextBoxPhoneNo.Text);
                cmd.Parameters.AddWithValue("@address", TextBoxAddress.Text);
                cmd.Parameters.AddWithValue("@username", Session["cust_name"]);
                cmd.CommandType = CommandType.Text;

                con.Open();
                cmd.ExecuteNonQuery();
            }

            LabelStatus.Text = "Profile Successfully updated";
            LabelStatus.ForeColor = System.Drawing.Color.Green;
        }
    }
}
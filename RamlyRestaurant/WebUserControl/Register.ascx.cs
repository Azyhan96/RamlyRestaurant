using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data.SqlClient;
using System.Configuration;

namespace RamlyRestaurant.WebUserControl
{
    public partial class Register : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string password = TextBoxPasswordReg.Text;
            PBKDF2Hash PwdHash = new PBKDF2Hash(password);
            string passwordhash = PwdHash.HashedPassword;
            bool enabled = true;
            SqlConnection conn = new SqlConnection(ConfigurationManager.
            ConnectionStrings["ConnStringStoreDB"].ConnectionString);
            string sql = @"INSERT INTO Customer VALUES(@cust_name, @gender, @address, @telephone, @email, @passwordhash, @role, @enabled)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@cust_name", TextBoxNameReg.Text);
            cmd.Parameters.AddWithValue("@gender", TextBoxGenderReg.Text);
            cmd.Parameters.AddWithValue("@address", TextBoxAddressReg.Text);
            cmd.Parameters.AddWithValue("@telephone", TextBoxTelephoneReg.Text);
            cmd.Parameters.AddWithValue("@email", TextBoxEmailReg.Text);
            cmd.Parameters.AddWithValue("@passwordhash", passwordhash);
            cmd.Parameters.AddWithValue("@role", "user");
            cmd.Parameters.AddWithValue("@enabled", enabled);
            try
            {
                conn.Open();
                cmd.ExecuteNonQuery();
                LabelStatus.Text = "Data saved";
            }
            catch (SqlException ex)
            {
                LabelStatus.Text = ex.Message;
            }
            finally
            {
                conn.Close();
            }
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            TextBoxNameReg.Text = String.Empty;
            TextBoxGenderReg.Text = String.Empty;
            TextBoxAddressReg.Text = String.Empty;
            TextBoxTelephoneReg.Text = String.Empty;
            TextBoxEmailReg.Text = String.Empty;
            TextBoxPasswordReg.Text = String.Empty;
            TextBoxConPassReg.Text = String.Empty;
        }
    }
}
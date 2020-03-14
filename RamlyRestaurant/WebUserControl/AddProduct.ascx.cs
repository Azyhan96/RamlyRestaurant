using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

namespace RamlyRestaurant
{
    public partial class AddProduct : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void ButtonUpload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                //Save files to images folder
                FileUpload1.SaveAs(Server.MapPath("~/images/Menu" + filename));
                this.Image1.ImageUrl = "~/images/Menu" + filename;
                TextBoxAdminImage.Text = filename;
                SqlConnection conn = new SqlConnection(ConfigurationManager.
                ConnectionStrings["ConnStringStoreDB"].ConnectionString);
                string sql = @"INSERT INTO Product VALUES
                (@cat_id, @prod_name, @prod_price, @prod_desc, @prod_image, @prod_promotion)";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@cat_id", int.Parse(TextBoxAdminCategory.Text));
                cmd.Parameters.AddWithValue("@prod_name", TextBoxAdminProductName.Text);
                cmd.Parameters.AddWithValue("@prod_price", TextBoxAdminProductPrice.Text);
                cmd.Parameters.AddWithValue("@prod_desc", TextBoxAdminProductDescription.Text);
                cmd.Parameters.AddWithValue("@prod_image", TextBoxAdminImage.Text);
                cmd.Parameters.AddWithValue("@prod_promotion", chkItemPromotion.Checked);
                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    lblStatus.Text = "Status: Data successfully saved.";
                }
                catch (SqlException ex)
                {
                    lblStatus.Text = ex.Message;
                }
                finally
                {
                    conn.Close();
                }
            }
        }


    }
}

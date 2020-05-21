using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Text;
using System.IO;

namespace RamlyRestaurant.WebUserControl
{
    public partial class PlaceOrder : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("prod_id");
                dt.Columns.Add("prod_name");
                dt.Columns.Add("quantity");
                dt.Columns.Add("prod_price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("prod_image");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\StoreDatabase.mdf;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where prod_id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        dr["prod_id"] = ds.Tables[0].Rows[0]["prod_id"].ToString();
                        dr["prod_name"] = ds.Tables[0].Rows[0]["prod_name"].ToString();
                        dr["prod_image"] = ds.Tables[0].Rows[0]["prod_image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["prod_price"] = ds.Tables[0].Rows[0]["prod_price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["prod_price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");
                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\StoreDatabase.mdf;Integrated Security=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where prod_id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        dr["prod_id"] = ds.Tables[0].Rows[0]["prod_id"].ToString();
                        dr["prod_name"] = ds.Tables[0].Rows[0]["prod_name"].ToString();
                        dr["prod_image"] = ds.Tables[0].Rows[0]["prod_image"].ToString();
                        dr["quantity"] = Request.QueryString["quantity"];
                        dr["prod_price"] = ds.Tables[0].Rows[0]["prod_price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["prod_price"].ToString());
                        int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = grandtotal().ToString();
                        Response.Redirect("AddToCart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[5].Text = "Total Amount";
                        GridView1.FooterRow.Cells[6].Text = " RM " + grandtotal().ToString();
                    }
                }
                // Label2.Text = GridView1.Rows.Count.ToString();
            }
            Label3.Text = DateTime.Now.ToShortDateString();
            findorderid();

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
                            TextBox1.Text = reader.GetString(3);
                            TextBox2.Text = reader.GetString(5);
                            TextBox3.Text = reader.GetString(1);
                        }
                    }
                }
            }
            Session["totalAmount"] = grandtotal().ToString(); //paypal coding to call grand total and  paypal
        }

        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }

        public void findorderid()
        {
            String pass = "abcdefghijklmnopqrstuvwxyz123456789";
            Random r = new Random();
            char[] mypass = new char[5];
            for (int i = 0; i < 5; i++)
            {
                mypass[i] = pass[(int)(35 * r.NextDouble())];
            }
            String orderid;
            orderid = "Order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString() + new string(mypass);

            Label2.Text = orderid;
        }

        public void saveaddress()
        {
            String updatepass = "insert into orderaddress(orderid,address,email) values('" + Label2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "')";
            String mycon1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\StoreDatabase.mdf;Integrated Security=True";
            SqlConnection s = new SqlConnection(mycon1);
            s.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = updatepass;
            cmd1.Connection = s;
            cmd1.ExecuteNonQuery();
            s.Close();
        }

        public string GetGridviewData(GridView gv)
        {
            StringBuilder strBuilder = new StringBuilder();
            StringWriter strWriter = new StringWriter(strBuilder);
            HtmlTextWriter htw = new HtmlTextWriter(strWriter);
            gv.RenderControl(htw);
            return strBuilder.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into orderdetails(orderid,customername,sno,prod_id,prod_name,prod_price,quantity,dateoforder) values('" + Label2.Text + "','" + TextBox3.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["prod_id"] + ",'" + dt.Rows[i]["prod_name"] + "'," + dt.Rows[i]["prod_price"] + "," + dt.Rows[i]["quantity"] + ",'" + Label3.Text + "')";
                String mycon1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\StoreDatabase.mdf;Integrated Security=True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();
            }

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("admiiiineshop@gmail.com", "admin_1234");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Thank You For Purchase at Ramly online shop";
            msg.Body = "Here is you order details .  " + "Order ID :  " + Label2.Text +
            " , Date : " + Label3.Text + "\n" + GetGridviewData(GridView1);
            msg.IsBodyHtml = true;
            string toaddress = (TextBox2.Text);
            msg.To.Add(toaddress);
            string fromaddress = "admiiiineshop@gmail.com";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }
            saveaddress();
            Response.Redirect("placedsuccessfully.aspx?orderid=" + Label2.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt;
            dt = (DataTable)Session["buyitems"];

            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                String updatepass = "insert into orderdetails(orderid,customername,sno,prod_id,prod_name,prod_price,quantity,dateoforder) values('" + Label2.Text + "','" + TextBox3.Text + "'," + dt.Rows[i]["sno"] + "," + dt.Rows[i]["prod_id"] + ",'" + dt.Rows[i]["prod_name"] + "'," + dt.Rows[i]["prod_price"] + "," + dt.Rows[i]["quantity"] + ",'" + Label3.Text + "')";
                String mycon1 = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\StoreDatabase.mdf;Integrated Security=True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                s.Close();
            }

            Session["Address"] = TextBox1.Text;
            Session["Email"] = TextBox2.Text;
            int totalAmount = Convert.ToInt32(Session["totalAmount"].ToString());

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("admiiiineshop@gmail.com", "admin_1234");
            smtp.EnableSsl = true;
            MailMessage msg = new MailMessage();
            msg.Subject = "Thank You For Purchase at Eshop";
            msg.Body = "Here is you order details . " + "Order ID : " + Label2.Text +
            " , Date :" + Label3.Text + "\n" + GetGridviewData(GridView1);
            msg.IsBodyHtml = true;
            string toaddress = (TextBox2.Text);
            msg.To.Add(toaddress);
            string fromaddress = "admiiiineshop@gmail.com";
            msg.From = new MailAddress(fromaddress);
            try
            {
                smtp.Send(msg);
            }
            catch
            {
                throw;
            }
            saveaddress();
            Response.Redirect("https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=sb-ppzei960484@business.example.com&amount=" + totalAmount + "&return=http://localhost:52089/CustomerHomepage.aspx" + (Session["BuyItems"] = null));
        }
    }
}


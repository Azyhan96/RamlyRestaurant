﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using iTextSharp.text;
using System.IO;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;

namespace RamlyRestaurant
{
    public partial class placedsuccessfully : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Request.QueryString["orderid"];
            Label3.Text = Label2.Text;
            findorderdate(Label3.Text);
            findaddress(Label3.Text);
            showgrid(Label3.Text);
            Session["BuyItems"] = null;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            exportpdf();
        }
        private void exportpdf()
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=OrderInvoice.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            Panel1.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
        private void findorderdate(String Orderid)
        {
            String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\StoreDatabase.mdf;Integrated Security=True";
            String myquery = "SELECT * FROM OrderDetails WHERE orderid='" + Orderid + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label4.Text = ds.Tables[0].Rows[0]["dateoforder"].ToString();
            }
            con.Close();
        }
        private void findaddress(String Orderid)
        {
            String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\StoreDatabase.mdf;Integrated Security=True";
            String myquery = "SELECT * FROM OrderAddress WHERE orderid='" + Orderid + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label5.Text = ds.Tables[0].Rows[0]["address"].ToString();
            }
            con.Close();
        }
        private void showgrid(String orderid)
        {
            DataTable dt = new DataTable();
            DataRow dr;

            dt.Columns.Add("sno");
            dt.Columns.Add("prod_id");
            dt.Columns.Add("prod_name");
            dt.Columns.Add("quantity");
            dt.Columns.Add("prod_price");
            dt.Columns.Add("totalprice");
            String mycon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\StoreDatabase.mdf;Integrated Security=True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "SELECT * FROM OrderDetails where orderid='" + orderid + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int totalrows = ds.Tables[0].Rows.Count;
            int i = 0;
            int grandtotal = 0;
            while (i < totalrows)
            {
                dr = dt.NewRow();
                dr["sno"] = ds.Tables[0].Rows[i]["sno"].ToString();
                dr["prod_id"] = ds.Tables[0].Rows[i]["prod_id"].ToString();
                dr["prod_name"] = ds.Tables[0].Rows[i]["prod_name"].ToString();
                dr["quantity"] = ds.Tables[0].Rows[i]["quantity"].ToString();
                dr["prod_price"] = ds.Tables[0].Rows[i]["prod_price"].ToString();
                int price = Convert.ToInt16(ds.Tables[0].Rows[i]["prod_price"].ToString());
                int quantity = Convert.ToInt16(ds.Tables[0].Rows[i]["quantity"].ToString());
                int totalprice = price * quantity;
                dr["totalprice"] = totalprice;
                grandtotal = grandtotal + totalprice;
                dt.Rows.Add(dr);
                i = i + 1;
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

            Label7.Text = " RM " + grandtotal.ToString();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Verifies that the control is rendered */
        }

    }
}
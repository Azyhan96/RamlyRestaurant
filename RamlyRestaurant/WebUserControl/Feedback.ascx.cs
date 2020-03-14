using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace RamlyRestaurant
{
    public partial class Feedback1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(TextBoxFrom.Text);
                msg.To.Add(TextBoxEmailTo.Text);
                msg.Subject = TextBoxSubject.Text;
                msg.Body = TextBoxMessage.Text;
                SmtpClient sc = new SmtpClient("smtp.gmail.com")
                {
                    Port = 587,
                    Credentials = new NetworkCredential(TextBoxFrom.Text, TextBoxEmailPassword.Text),
                    EnableSsl = true
                };
                sc.Send(msg);
                Response.Write("mail send");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Message has been send succesfully');", true);
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            TextBoxEmailTo.Text = String.Empty;
            TextBoxSubject.Text = String.Empty;
            TextBoxMessage.Text = String.Empty;
            TextBoxFrom.Text = String.Empty;
            TextBoxEmailPassword.Text = String.Empty;
        }
    }
}
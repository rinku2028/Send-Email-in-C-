using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace email
{
    public partial class sendemail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //Send mail using SMTP CLIENT
                MailMessage mail1 = new MailMessage();
                SmtpClient client = new SmtpClient("serveradd");
                mail1.From = new MailAddress(txtmailfrom.Text.ToString()); // ADDRESS OF SENDER EMAIL
                mail1.To.Add(txtmailto.Text.ToString()); //ADDRESS OF RECEIVER EMAIL
                mail1.To.Add(txtmailto1.Text.ToString()); //ADDRESS OF RECEIVER EMAIL
                mail1.CC.Add(txtmailcc.Text.ToString()); //ADDRESS OF CC EMAIL
                mail1.Subject = "Test mail";
                mail1.Body = TextArea1.Value;
                client.Send(mail1);
                lblmessage.Text = "Email send successfully!";
            }
            catch (Exception ex)
            {
                lblmessage.Text = "Email could not send!";
                lblmessage.ForeColor = System.Drawing.Color.Red;
            }


        }
    }
}
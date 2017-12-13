using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using Newtonsoft.Json;
using System.Net.Http;
using System.IO;

namespace Comp229_Assign04
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string filePath = @"D:\Fall2017\COMP229-009\Comp229-Assign04\Comp229-Assign04\Comp229-Assign04\Assign04.json";
            string records = File.ReadAllText(filePath);
            var collection = JsonConvert.DeserializeObject<List<Startup>>(records);
            myModelLsRepeater.DataSource = collection;
            myModelLsRepeater.DataBind();

        }
        protected void SendEmail()
        {
            //SmtpClient client = new SmtpClient();
            //MailMessage message = new MailMessage();
            //try
            //{
                //MailAddress from = new MailAddress("cc-comp229f2016@outlook.com", "from me");
                //MailAddress to = new MailAddress("to@outlook.com", "to you");
                //message.From = from; message.To.Add(to);
                //message.Subject = "hello!";
                ////just sending the basic json due to time constraints
                //System.Net.Mail.Attachment attachment;
                //attachment = new System.Net.Mail.Attachment("~/Assign04.json");
                //message.Attachments.Add(attachment);
                //client.Host = "mailserver.example.com";
                //client.Credentials = new System.Net.NetworkCredential("username", "password");
                //client.Send(message);


                //lbStats.Text = "The message has been sent";

            //}
            //catch (Exception )
            //{
            //    lbStats.Text = "message not sent";
            //}
        }

        protected void myModelLsRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
           // SendEmail();
        }
    }
}
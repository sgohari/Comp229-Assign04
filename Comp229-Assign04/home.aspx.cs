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
using System.Data;
using Comp229_Assign04.Models;
using Newtonsoft.Json.Linq;

namespace Comp229_Assign04
{
    public partial class home : System.Web.UI.Page
    {
        List<Mini> itemList;
        string filePath = HttpContext.Current.Server.MapPath("~/Asset/Assign04.json");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            repeaterModilLs();
            visibilityfalse();
        }
        public List<Mini> getNames()
        {
            var jsonString = File.ReadAllText(filePath);
            using (StreamReader file = File.OpenText(filePath))
            {
                // deserialize JSON directly from a file
                JsonSerializer serializer = new JsonSerializer();
                itemList = JsonConvert.DeserializeObject<List<Mini>>(jsonString);
            }
            return itemList;
        }
        public void repeaterModilLs()
        {
            
            modelLsRepeater.DataSource = getNames();
            modelLsRepeater.DataBind();
        }


        protected void myModelLsRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
           // SendEmail();
        }

        protected void SaveContains_Click(object sender, EventArgs e)
        {

        }

        protected void addNewModel_Click(object sender, EventArgs e)
        {
            addNewModelDiv.Visible = true;
            sentEmailDiv.Visible = true;
            visibilityTrue();
            
        }

        protected void sentEmail_Click(object sender, EventArgs e)
        {
            sentEmailDiv.Visible = true;
            addNewModelDiv.Visible = false;
            visibilityfalse();
            visibilityTrue();
            
        }
        public void visibilityfalse()
        {
            lbAddName.Visible = false;
            txtbxName.Visible = false;
            lbAddFaction.Visible = false;
            txtbxFaction.Visible = false;
            lbAddRank.Visible = false;
            txtbxRank.Visible = false;
            lbAddSize.Visible = false;
            txtbxSize.Visible = false;
            lbAddDeployment.Visible = false;
            txtbxDeployment.Visible = false;
            lbAddBase.Visible = false;
            txtbxBase.Visible = false;
            txtbxDeploymentRqv.Visible = false;
            txtbxFactionRqv.Visible = false;
            txtbxNameRqv.Visible = false;
            txtbxRankRqv.Visible = false;
            txtbxSizeRqv.Visible = false;
            txtbxBaseRqv.Visible = false;
            HomePageTable.Visible = false;
            lbEmail.Visible = false;
            lbMessage.Visible = false;
            lbSubject.Visible = false;
            txtbxEmail.Visible = false;
            txtbxSubject.Visible = false;
            txtbxMessage.Visible = false;

        }
        public void visibilityTrue()
        {
            lbAddName.Visible = true;
            txtbxName.Visible = true;
            lbAddFaction.Visible = true;
            txtbxFaction.Visible = true;
            lbAddRank.Visible = true;
            txtbxRank.Visible = true;
            lbAddSize.Visible = true;
            txtbxSize.Visible = true;
            lbAddBase.Visible = true;
            txtbxBase.Visible = true;
            lbAddDeployment.Visible = true;
            txtbxDeployment.Visible = true;
            txtbxDeploymentRqv.Visible = true;
            txtbxFactionRqv.Visible = true;
            txtbxNameRqv.Visible = true;
            txtbxRankRqv.Visible = true;
            txtbxSizeRqv.Visible = true;
            txtbxBaseRqv.Visible = true;
            HomePageTable.Visible = true;

            lbEmail.Visible = true;
            lbMessage.Visible = true;
            lbSubject.Visible = true;
            txtbxEmail.Visible = true;
            txtbxMessage.Visible = true;
            txtbxSubject.Visible = true;
        }

        protected void btnSaveModel_Click(object sender, EventArgs e)
        {
            SerializationJsn();
        }
        public void SerializationJsn()
        {
            //Storing the txtboxes values to mini here
            // this method was easir for my undrestanding to do the serialization and 
            //saving it to jason file.
           Mini mini = new Mini();
            mini.name = txtbxName.Text;
            mini.faction = txtbxFaction.Text;
            mini.size = Convert.ToInt32(txtbxSize.Text);
            mini.rank = Convert.ToInt32(txtbxRank.Text);
            mini.deploymentZone = txtbxDeployment.Text;
            mini._base = Convert.ToInt32(txtbxBase.Text);

            filePath = System.Web.Hosting.HostingEnvironment.MapPath("~/Asset/Assign04.json");
            if (File.Exists(filePath))
            {
               
                var converToJsonRecord = JsonConvert.DeserializeObject<List<Mini>>(File.ReadAllText(filePath));
                converToJsonRecord.Add(mini);
                File.WriteAllText(filePath, JsonConvert.SerializeObject(converToJsonRecord));
                this.sentEmails();
                Response.Redirect("~/home.aspx");
               
            }
        }


        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtbxBase.Text = "";
            txtbxName.Text = "";
            txtbxRank.Text = "";
            txtbxSize.Text = "";
            txtbxFaction.Text = "";
            txtbxDeployment.Text = "";
            txtbxBaseRqv.Text = "";
            txtbxDeploymentRqv.Text = "";
            txtbxFactionRqv.Text = "";
            txtbxNameRqv.Text = "";
            txtbxRankRqv.Text = "";
            txtbxSizeRqv.Text = "";

            Response.Redirect("home.aspx");
        }

        protected void btnSentEmails_Click(object sender, EventArgs e)
        {
            sentEmails();
        }
        protected void sentEmails()
        {
            SmtpClient smtpClient = new SmtpClient("smtp-mail.outlook.com", 587);
            MailMessage message = new MailMessage();
            try
            {
                // These values are probably set by the client.
                message.Subject = "Testing!";
                message.Body = "This is the body of a sample message";

                // These could be static, or dynamic, depending on situation.
                MailAddress toAddress = new MailAddress("cc-comp229f2016@outlook.com", "You");
                MailAddress fromAddress = new MailAddress("cc-comp229f2016@outlook.com", "Comp229");
                message.From = fromAddress;
                message.To.Add(toAddress);
                smtpClient.Host = "smtp-mail.outlook.com";

                // Note that EnableSsl must be true, and we need to turn of default credentials BEFORE adding the new ones
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new System.Net.NetworkCredential("cc-comp229f2016@outlook.com", "password");

                smtpClient.Send(message);
                lbStates.Text = "Email has been sent.";
            }
            catch (Exception ex)
            {
                lbStates.Text = "Message Was not sent!";
            }
        }
        
    
        //taken from Week9 code Demos. Thanks for help Proff 

           
    }
}
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


namespace Comp229_Assign04
{
    public partial class home : System.Web.UI.Page
    {
        DataTable itemList;
        string filePath = HttpContext.Current.Server.MapPath("~/Asset/Assign04.json");
        //bool disply = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            repeaterModilLs();
            visibilityfalse();
        }
        public DataTable getNames()
        {
            var jsonString = File.ReadAllText(filePath);
            using (StreamReader file = File.OpenText(filePath))
            {
                // deserialize JSON directly from a file
                JsonSerializer serializer = new JsonSerializer();
                itemList = JsonConvert.DeserializeObject<DataTable>(jsonString);
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
        }
    }
}
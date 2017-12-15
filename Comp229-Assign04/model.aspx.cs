using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.IO;
using System.Data;
using Comp229_Assign04.Models;

namespace Comp229_Assign04
{
    public partial class model : System.Web.UI.Page
    {
        List<Mini> itemList;
        string filePath = HttpContext.Current.Server.MapPath("~/Asset/Assign04.json");
        protected void Page_Load(object sender, EventArgs e)
        {
            displyOneObjectModel();
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
        public void displyOneObjectModel()
        {
            List<Mini> test = getNames();
            var name = Request.QueryString["name"];
            var faction = Request.QueryString["faction"];

            var oneItem = (from item in test
                           where item.name == name
                           select item);

            modelPageGrv.DataSource = oneItem;
            modelPageGrv.DataBind();
        }

        protected void Update_Click(object sender, EventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {

            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnAddModel_Click(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }
    }
}
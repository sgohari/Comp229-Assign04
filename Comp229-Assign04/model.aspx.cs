using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Comp229_Assign04
{
    public partial class model : System.Web.UI.Page
    {
        private models.BaseStats basestats;
        protected string vName;
        protected string vFaction;
        protected void Page_Load(object sender, EventArgs e)
        {
            vName = Request.QueryString["name"];
            vFaction = Request.QueryString["faction"];

            if (name != null && faction != null)
            {
                basestats = Global.models.FirstOrDefault(tModel => tModel.name == vName && tModel.faction == vFaction);
                selectedModel();
            }
            else
            {
                Response.Redirect("home.aspx");
            }
        }
        private void selectedModel()
        {
            imageModel.ImageUrl = basestats.imageUrl;
            lbName.Text = basestats.name;
            lbFaction.Text = basestats.faction;
            lbRank.Text = basestats.rank.ToString();
            lb_Base.Text = basestats._base.ToString();
            lb_Size.Text = basestats.size.ToString();
            lbDeployment.Text = basestats.deploymentZone;
            lb_Traitsrep.DataSource = basestats.traits;
            lb_Traitsrep.DataBind();
            typerep.DataSource = basestats.defenseChart;
            typerep.DataBind();
            mobility.Text = basestats.mobility.ToString();
            willpower.Text = basestats.willpower.ToString();
            resiliance.Text = basestats.resiliance.ToString();
            wounds.Text = basestats.wounds.ToString();


        }
        protected void Update_Click(object sender, EventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {

            
        }
    }
}
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
        private models.BaseStats baseStatus;
        protected string vName;
        protected string Vfaction;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (vName != null && Vfaction != null)
            {
                baseStatus.actions.
                selectedModel();
            }

        }
        private void selectedModel()
        {
            imageModel.ImageUrl = baseStatus.imageUrl;
            lbName.Text = baseStatus.name;
            lbFaction.Text = baseStatus.faction;
            lbRank.Text = baseStatus.rank.ToString();
            lb_Base.Text = baseStatus._base.ToString();
            lb_Size.Text = baseStatus.size.ToString();
            lbDeployment.Text = baseStatus.deploymentZone;
            lb_Traitsrep.DataSource = baseStatus.traits;
            lb_Traitsrep.DataBind();
            typerep.DataSource = baseStatus.defenseChart;
            typerep.DataBind();
            mobility.Text = baseStatus.mobility.ToString();
            willpower.Text = baseStatus.willpower.ToString();
            resiliance.Text = baseStatus.resiliance.ToString();
            wounds.Text = baseStatus.wounds.ToString();


        }
        protected void Update_Click(object sender, EventArgs e)
        {

        }

        protected void Delete_Click(object sender, EventArgs e)
        {

            
        }
    }
}
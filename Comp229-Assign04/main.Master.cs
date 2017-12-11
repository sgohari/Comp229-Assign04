using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TitlePage();
        }
        private void TitlePage()
        {
            switch (Page.Title)
            {
                case "HomePage":
                    
                    Page.Title = string.Format("Home Page");
                    break;
                case "ModelPage":

                    Page.Title = string.Format("Model Page");
                    break;
                case "UpdatePage":

                    Page.Title = string.Format("Update Page");
                    break;
            }
        }
    }
}
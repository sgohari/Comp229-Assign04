using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Assign04
{
    public partial class survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submitt_Click(object sender, EventArgs e)
        {
            if (UsernameTxtBox.Text == "")
            {
                UserTxtBox_RequiredFieldValidator1.Text = "Please fill the Box";
            }
            if (txtForAge.Text == "")
            {
                RequiredFieldValidator1.Text = "You must enter your age";
            }
            if (Page.IsValid)
            {
                Session["copyFirstName"] = UsernameTxtBox.Text;
                Session["copyLastName"] = Lastnames.Text;
                Response.Redirect("thanks.aspx");
            }
        }

        protected void rdM_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void rdF_CheckedChanged(object sender, EventArgs e)
        {

        }
    }

    internal class LastNameTxt
    {
        public static object Text { get; internal set; }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Comp229_Assign04
{
    public class Global : System.Web.HttpApplication
    {
        public static object models { get; internal set; }

        protected void Application_Start(object sender, EventArgs e)
        {
        }
    }
}
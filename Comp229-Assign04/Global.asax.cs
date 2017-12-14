using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;
using System.Data;
using System.IO;

namespace Comp229_Assign04
{
    public class Global :HttpApplication
    {
        public static object models { get; internal set; }
        DataTable itemLists;
        protected void Application_Start(object sender, EventArgs e)
        {
            
        }

    }
}
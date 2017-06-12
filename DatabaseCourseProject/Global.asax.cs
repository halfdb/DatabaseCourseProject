using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace DatabaseCourseProject
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition(
           "jquery",
           new ScriptResourceDefinition
           {
               Path = "/js/jquery-3.2.1.min.js",
               DebugPath = "/js/jquery-3.2.1.js",
               LoadSuccessExpression = "jQuery"
           });
        }
    }
}
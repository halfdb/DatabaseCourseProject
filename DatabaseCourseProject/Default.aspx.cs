using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Database;

namespace DatabaseCourseProject
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            var query = @"select username, password from [Admin]";
            using (var command = new SqlCommand(query))
            {
                var reader = DatabaseInstance.Execute(command);
                while (reader.Read())
                {
                    if ((string)reader[0] == Login.UserName && (string)reader[1] == Login.Password)
                    {
                        e.Authenticated = true;
                        Session["login"] = true;
                        return;
                    }
                }
                reader.Close();
            }
        }

        protected void Login_LoggedIn(object sender, EventArgs e)
        {
            Response.Redirect(Request.QueryString["Redirect"]);
        }
    }
}
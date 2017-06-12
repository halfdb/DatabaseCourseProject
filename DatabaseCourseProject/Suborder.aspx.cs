using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseCourseProject
{
    public partial class Suborder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string sid = Request.QueryString["OrderID"];
            if (sid != null)
            {
                SuborderGridView.DataSourceID = null;
                SuborderGridView.DataSource = PartSuborderSource;
            }
        }
    }
}
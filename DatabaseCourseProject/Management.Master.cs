﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DatabaseCourseProject
{
    public partial class Management : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool? login = (bool?)Session["login"];
            if (login != true)
            {
                Response.Redirect("/?Redirect="+Request.Url);
            }
        }
    }
}
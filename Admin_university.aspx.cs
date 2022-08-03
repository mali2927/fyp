using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication11
{
    public partial class Admin_university : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_uni_1_Click(object sender, EventArgs e)
        {
            Response.Redirect("data_crawling.aspx");
        }
    }
}
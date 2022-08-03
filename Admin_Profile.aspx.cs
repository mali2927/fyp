using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication11
{
    public partial class Admin_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void ad_username_TextChanged(object sender, EventArgs e)
        {

        }

        

        protected void stdreg_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_student.aspx");
        }

        protected void unmang_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_university.aspx");
        }
    }
}
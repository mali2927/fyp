using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication11
{
    public partial class Sign_in : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_std_sign_Click(object sender, EventArgs e)
        {
            Response.Redirect("student_signin.aspx");
        }

        protected void btn_admin_sign_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }
    }
}
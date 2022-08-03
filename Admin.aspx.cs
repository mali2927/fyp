using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Drawing;
using System.Text;

namespace WebApplication11
{
    public partial class Admin : System.Web.UI.Page
    {
        readonly string constring = "Data Source=.;Initial Catalog=stdb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
        }
        protected void btnreg_Click(object sender, EventArgs e)
        {

            using (SqlConnection sqlCon = new SqlConnection(constring))
            {
                sqlCon.Open();
                string query = "SELECT COUNT(1) FROM Admin WHERE ad_username=@username AND ad_password=@password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", ad_username.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", ad_password.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["username"] = ad_username.Text.Trim();
                    Response.Redirect("Admin_Profile.aspx");
                }
                else
                {
                    lblErrorMessage.Visible = true;
                }
            }


        }

        
    }
}
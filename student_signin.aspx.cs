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

    public partial class student_signin : System.Web.UI.Page
    {
        readonly string constring = "Data Source=.;Initial Catalog=stdb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
            Label1.Visible = false;
            
        }
        protected void reg_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(constring))
                {
                    sqlCon.Open();
                    string query = "SELECT COUNT(1) FROM Student WHERE st_username=@username AND st_password=@password";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@username", st_username.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@password", st_password.Text.Trim());
                    int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                    if (count == 1)
                    {
                        Session["UserName"] = st_username.Text.ToString();
                        Session["id"] = 1;
                        Response.Redirect("studentprofile.aspx");
                    }
                    else
                    {
                        lblErrorMessage.Visible = true;
                    }
                    sqlCon.Close();
                }
            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
            }

         //   Response.Redirect("studentprofile.aspx");
        }

       

        protected void btnreg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        

        protected void st_username_TextChanged(object sender, EventArgs e)
        {
            
        }

       
    }
}  

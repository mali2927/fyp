using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication11
{
    public partial class password_change : System.Web.UI.Page
    {
        readonly string constring = "Data Source=.;Initial Catalog=stdb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
       
        protected void Page_Load(object sender, EventArgs e)
            
        {
          
            form2.Visible = false;
            Button1.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            try
            {
                if (Session["UserName"] != null && Session["UserName"] != "")
                {
                    Label1.Text = Session["UserName"].ToString();

                }
                if (Session["UserName"] == null)
                {
                    Response.Redirect("student_signin.aspx");
                }
            }
            catch(Exception ex)
            {
                Label2.Text = ex.Message;
                Label2.Visible = true;
            }
        }

        protected void Button1_Click (object sender, EventArgs e)
        {

            string pass = confnewtxt.Text;
            string user= Label1.Text.Trim();
            try
            {
                using (SqlConnection con = new SqlConnection(constring))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();

                        SqlCommand sqlda = new SqlCommand("update Student set st_password = '" + pass + "'where st_id ='" + user + "'", con);



                        int k = sqlda.ExecuteNonQuery();

                        if (k != 0)
                        {
                            Label2.Text = "Password Change Sussessfully";

                        }



                        else
                        {
                            Label2.Text = "Password Not change";
                            newtxt.Visible = false;
                            confnewtxt.Visible = false;

                        }


                        con.Close();
                    }
                    else
                    {
                        Label2.Text = "Not Possible";
                        Label2.Visible = true;
                    }
                }
            }
            catch(Exception ex)
            {
                Label2.Text = ex.Message;
                Label2.Visible = true;
            }
        }

        protected void oldtxt_TextChanged(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constring))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();

                        SqlCommand sqlda = new SqlCommand("SELECT * from Student where st_username = @username and st_password = @password ", con);

                        sqlda.Parameters.AddWithValue("@password", oldtxt.Text.Trim());
                        sqlda.Parameters.AddWithValue("@username", Label1.Text.Trim());
                        int k = sqlda.ExecuteNonQuery();

                        if (k != 0)
                        {
                            Label2.Text = "Enter New Password";
                            Label2.Visible = true;
                            Button1.Visible = true;
                        }



                        else
                        {
                            Label2.Text = "Password Does not Match";
                            newtxt.Visible = false;
                            confnewtxt.Visible = false;

                        }


                        con.Close();
                    }
                }
            }
            catch(Exception ex)
            {
                Label2.Text = ex.Message;
                Label2.Visible = false;
            }
        }

        protected void confnewtxt_TextChanged(object sender, EventArgs e)
        {
            if(newtxt.Text!= confnewtxt.Text)
            {
                Label2.Text = "Password Does not Match";
                Label2.Visible = true;
                Button1.Visible = false;
            }
            if(newtxt.Text == confnewtxt.Text)
            {
                Button1.Visible = true;
            }
        }

        protected void profile_Click(object sender, EventArgs e)
            
        {
            string username = Label1.Text;
            form1.Visible = false;
            form2.Visible = true;
            try { 
            SqlDataSource1.SelectCommand = "SELECT st_name AS Student_Name, st_fname AS Father_Name, st_address AS Address, matric_marks AS Matric_Marks, inter_marks AS Inter_Marks FROM Student where st_username =  '" + username + "'";
            }
            catch(Exception ex)
            {
                Label2.Text = ex.Message;
                Label2.Visible = true;
            }
            }
        protected void GVbind()
        {
            string username = Label1.Text;
            try { 
            
                using (SqlConnection con = new SqlConnection(constring))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("SELECT st_name AS Student_Name, st_fname AS Father_Name, st_address AS Address, matric_marks AS Matric_Marks, inter_marks AS Inter_Marks FROM Student where st_username =  '" + username + "'", con);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows == true)
                        {
                            GridView1.DataSource = dr;
                            GridView1.DataBind();
                        }
                        con.Close();
                    }
                }

            }
            catch(Exception ex)
            {
                Label2.Text = ex.Message;
                Label2.Visible = true;
            }
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
          

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                GridView1.EditIndex = e.NewEditIndex;
                GVbind();
            }
            catch(Exception ex)
            {
                Label2.Text = ex.Message;
                Label2.Visible = true;
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                GridView1.EditIndex = -1;
                GVbind();
            }
            catch(Exception ex)
            {
                Label2.Text = ex.Message;
                Label2.Visible = true;
            }
        }
    }
}
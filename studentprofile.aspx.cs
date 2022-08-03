using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication11
{
    public partial class studentprofile : System.Web.UI.Page
    {
        readonly string constring = "Data Source=.;Initial Catalog=stdb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";


        protected void Page_Load(object sender, EventArgs e)
        {
            editdd.Visible = false;
            Label5.Visible = false;


            Label1.Visible = false;
            if (Session["UserName"] != null && Session["UserName"] != "")
            {
                Label1.Text = Session["UserName"].ToString();

            }
            if (Session["UserName"] == null)
            {
                Response.Redirect("student_signin.aspx");
            }

            lbluni.Visible = true;
            ListView1.Visible = true;
            try
            {
                using (SqlConnection con = new SqlConnection(constring))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();

                        SqlCommand cmd = new SqlCommand("SELECT [st_name] AS Name , [st_cnic] AS CNIC, [inter_marks] AS Inter_Marks, [matric_marks] AS Matric_Marks, [interest] AS Interest, [skills] AS Skill, [st_aggregate] AS Aggregate, [st_address] AS Address FROM [Student] WHERE ([st_username] = @st_username)", con);
                        cmd.Parameters.AddWithValue("@st_username", Label1.Text.Trim());
                        SqlDataReader dr = cmd.ExecuteReader();
                        dr.Read();

                        con.Close();
                    }

                }
            }
            catch (Exception ex)
            {
                Label5.Text = ex.Message;
                Label5.Visible = true;
            }

        }


        protected void unlist_click(object sender, EventArgs e)
        {
            Response.Redirect("Universities List.aspx");
        }

        protected void logout_btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("student_signin.aspx");
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void threedots_Click(object sender, ImageClickEventArgs e)
        {
            Editdd_SelectedIndexChanged(sender, e);
        }

        protected void Editdd_SelectedIndexChanged(object sender, EventArgs e)
        {
            threedots.Visible = false;
            editdd.Visible = true;

            if (editdd.SelectedValue == "0")
            {
                Response.Redirect("password_change.aspx");
            }
            else if (editdd.SelectedValue == "1")
            {
                Response.Redirect("Sign_in.aspx");
            }
        }
        string name;
        protected void GridView1_Load(object sender, EventArgs e)
        {
            float aggregate;
            string interest, skills, field;
            try
            {
                foreach (GridViewRow gr in GridView1.Rows)
                {
                    aggregate = float.Parse(gr.Cells[8].Text.Trim());
                    interest = gr.Cells[4].Text.Trim();
                    skills = gr.Cells[7].Text.Trim();
                    field = gr.Cells[5].Text.Trim();
                    try
                    {
                        SqlDataSource2.SelectCommand = "SELECT University.un_name AS University_Name, University.un_address AS University_Address,Program_offering.pg_field, Program_offering.pg_name AS Program_Offering, Program_offering.pg_category, Program_offering.pg_criteria AS Program_Criteria FROM Program_offering INNER JOIN University ON Program_offering.un_id = University.un_id where Program_offering.pg_criteria < '" + aggregate + "' and  Program_offering.pg_category like '%" + interest + "%' and  Program_offering.pg_field like '%" + field + "%' order by  Program_offering.pg_criteria ";
                        SqlDataSource3.SelectCommand = "SELECT University.un_name AS University_Name, University.un_id, University.un_address AS University_address, scholarship.ss_type AS ScholarShip_Type, scholarship.ss_percentage AS ScholarShip_Percentage, scholarship.ss_criteria as ScholarShip_Criteria,  scholarship.ss_id , scholarship.ss_conti_criteria AS SS_Continouing FROM scholarship INNER JOIN University ON scholarship.un_id = University.un_id where scholarship.ss_criteria < '" + aggregate + "' order by scholarship.ss_criteria ";
                    }
                    catch (Exception ex)
                    {
                        Label5.Text = ex.Message;
                        Label5.Visible = true;
                    }
                }
            }
            catch (Exception ex)
            {
                Label5.Text = ex.Message;
                Label5.Visible = true;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://cust.edu.pk/fee-structure/");
        }
    }
}
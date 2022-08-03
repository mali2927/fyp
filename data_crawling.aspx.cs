using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Threading.Tasks;

namespace WebApplication11
{
    public partial class data_crawling : System.Web.UI.Page
    {
        readonly string constring = "Data Source=.;Initial Catalog=stdb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            nodisplay.Visible = false;
            delete.Visible = false;
            pg.Visible = false;
            H1.Visible = false;

            Label1.Visible = false;
        }

        protected void cust_crawl_Click(object sender, EventArgs e)
        {

            

            try
            {
                
                filldatagridview();
                pg.Visible = true;
                filldatagridview_cust_ss();
                H1.Visible = true;
            }
            catch (Exception ex)
            {
                nodisplay.Text = ex.Message;
                nodisplay.Visible = true;
            }
            finally
            {
                
            }
        }

        void filldatagridview_cust_ss()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constring))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();

                        SqlCommand sqlda = new SqlCommand("SELECT ss_type AS Scholarship_Type, ss_criteria AS Scholarship_Criteria, ss_id , ss_percentage AS Scholarship_Percentage, ss_conti_criteria AS Scholarship_Countinouing_Criteria FROM scholarship  WHERE (un_id = 1)", con);
                        // sqlda.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

                        //sqlda.SelectCommand.Parameters.AddWithValue("@contactname", txtsearch.Text.Trim());
                        //sqlda.Parameters.AddWithValue("@contactname", txtsearch.Text.Trim());
                        SqlDataReader dr = sqlda.ExecuteReader();

                        if (dr.HasRows == true)
                        {
                            cust_grid_ss.DataSource = dr;
                            cust_grid_ss.DataBind();

                        }
                        //DataTable dtbl = new DataTable();
                        // sqlda.Fill(dtbl);
                        // dgvContacts.DataSource = dtbl;

                        con.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
            }
        }
        void filldatagridview()
        {
            try { 
            using (SqlConnection con = new SqlConnection(constring))
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                    SqlCommand sqlda = new SqlCommand("SELECT pg_name AS Program_Name, pg_id, pg_criteria AS Program_Criteria from Program_offering  WHERE (un_id = 1)", con);
                    // sqlda.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

                    //sqlda.SelectCommand.Parameters.AddWithValue("@contactname", txtsearch.Text.Trim());
                    //sqlda.Parameters.AddWithValue("@contactname", txtsearch.Text.Trim());
                    SqlDataReader dr = sqlda.ExecuteReader();

                    if (dr.HasRows == true)
                    {
                        cust_grid.DataSource = dr;
                        cust_grid.DataBind();

                    }
                    //DataTable dtbl = new DataTable();
                    // sqlda.Fill(dtbl);
                    // dgvContacts.DataSource = dtbl;

                    con.Close();
                }
            }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
            }
        }

        void filldatagridviewqau()
        {
            try { 
            using (SqlConnection con = new SqlConnection(constring))
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                    SqlCommand sqlda = new SqlCommand("SELECT  Program_offering.pg_name AS Program_Name, Program_offering.pg_criteria AS Program_Criteria, scholarship.ss_type AS Scholarship_Type, scholarship.ss_criteria AS Scholarship_Criteria, scholarship.ss_percentage AS Scholarship_Percentage, scholarship.ss_conti_criteria AS Scholarship_Countinouing_Criteria,University.un_name as University_Name,University.un_address as University_Address  FROM scholarship FULL OUTER JOIN Program_offering ON scholarship.un_id = Program_offering.un_id full outer join University on University.un_id=Program_offering.un_id WHERE (scholarship.un_id) = 2", con);
                    // sqlda.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

                    //sqlda.SelectCommand.Parameters.AddWithValue("@contactname", txtsearch.Text.Trim());
                    //sqlda.Parameters.AddWithValue("@contactname", txtsearch.Text.Trim());
                    SqlDataReader dr = sqlda.ExecuteReader();

                    if (dr.HasRows == true)
                    {
                        qau_grid.DataSource = dr;
                        qau_grid.DataBind();

                    }
                    //DataTable dtbl = new DataTable();
                    // sqlda.Fill(dtbl);
                    // dgvContacts.DataSource = dtbl;

                    con.Close();
                }
            }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
            }
        }
        void crawling ()
        {
            var client = new WebClient();
            var text = client.DownloadString("https://cust.edu.pk/scholarship/");
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

        

        protected void cust_grid_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            
        }

        protected void Qau_click(object sender, EventArgs e)
        {
            
           try
           {

             filldatagridviewqau();
            }
           catch (Exception ex)
            {
             nodisplay.Text = ex.Message;
               nodisplay.Visible = true;
            }
              finally
            {

            }
        }

   

        protected void cust_grid_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            float Program_criteria= float.Parse(((TextBox)cust_grid.Rows[e.RowIndex].Cells[0].Controls[0]).Text);
               
          
            string program_name = ((TextBox)cust_grid.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            try { 
            using (SqlConnection con = new SqlConnection(constring))
            {
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                    //SqlCommand cmd = new SqlCommand("update Student set st_name = @stname, st_cnic=@stcnic,inter_marks=@inter_marks,matric_marks=@matric_marks,interest=@interest,skills=@skills,st_address=@st_address,Ecat_marks=@Ecat_marks,inter_total_marks=@inter_total_marks,matric_total_marks=@matric_total_marks where st_id = @id", con);
                    SqlCommand cmd = new SqlCommand("update Program_offereing set pg_name = '" + program_name + "',pg_criteria = '" + Program_criteria + "'where pg_id = @id", con);
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(cust_grid.DataKeys[e.RowIndex].Value.ToString()));


                   
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        delete.Visible = true;
                        cust_grid.EditIndex = -1;
                        filldatagridview();
                    }
                    con.Close();
                }

            }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
            }
        }

        protected void cust_grid_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try { 
            cust_grid.EditIndex = -1;
            filldatagridview();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
            }
        }

        protected void cust_grid_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try { 
            cust_grid.EditIndex = e.NewEditIndex;
            filldatagridview();
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
            }
        }
    }
}
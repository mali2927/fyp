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

    public partial class admin_student : System.Web.UI.Page
    {
        readonly string constring = "Data Source=.;Initial Catalog=stdb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        int m;
        int m1;
        int i;
        int i1;
        protected void Page_Load(object sender, EventArgs e)
        {
            nosave.Visible = false;
            save.Visible = false;
            lblmat.Visible = false;
            checkusername.Visible = false;
           
            delete.Visible = false;



       


        }



        protected void btnsave_Click(object sender, EventArgs e)
        {
            
            
            if (m1 < m || i1 < i)
            {

                lblmat.Visible = true;


            }
            Random r = new Random();
            int rand_username = r.Next();
           
             Response.Write(rand_username.ToString());


            Random r1 = new Random();
            int rand_password = r1.Next();

            Response.Write(rand_password.ToString());

            
            SqlConnection con = new SqlConnection(constring);
            try
            {
                m = Convert.ToInt32(matric_id.Text);
                m1 = Convert.ToInt32(matric_total_id.Text);
                i = Convert.ToInt32(inter_id.Text);
                i1 = Convert.ToInt32(Inter_total_id.Text);
                float agg = cal_aggregate();


                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                    SqlCommand sqlcmd = new SqlCommand("GetSt_data", con);
                    sqlcmd.CommandType = System.Data.CommandType.StoredProcedure;
                    sqlcmd.Parameters.AddWithValue("@mode", "Add");
                    sqlcmd.Parameters.AddWithValue("@st_name", nameid.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@st_cnic", cnic_id.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@inter_marks", i);
                    sqlcmd.Parameters.AddWithValue("@matric_marks", m);
                    sqlcmd.Parameters.AddWithValue("@interest", interest_id.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@Skills", skills_id.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@st_addreess", address_id.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@ecat_mdcat_marks", Ecat_id.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@st_username", rand_username);
                    sqlcmd.Parameters.AddWithValue("@st_password", rand_password);
                    sqlcmd.Parameters.AddWithValue("@st_gender", gender_id.Text.Trim());

                    sqlcmd.Parameters.AddWithValue("@st_dob", dob_id.Text.Trim());
                   
                    
                   
                    sqlcmd.Parameters.AddWithValue("@st_fname", fname_id.Text.Trim());
                    sqlcmd.Parameters.AddWithValue("@matric_total_marks",m1);
                    sqlcmd.Parameters.AddWithValue("@inter_total_marks", i1);
                    sqlcmd.Parameters.AddWithValue("@st_aggregate", agg);








                    sqlcmd.ExecuteNonQuery();
                    save.Visible = true;
                    Clear();

                }
                

            }
            catch (Exception ex)
            {
               
                nosave.Text = ex.Message;
                nosave.Visible = true;
            }
            finally
            {
                con.Close();
            }

        }
        void Clear()
        {
           nameid.Text = cnic_id.Text = address_id.Text = interest_id.Text = skills_id.Text = " ";
            matric_id.Text = inter_id.Text = Ecat_id.Text = matric_total_id.Text=Inter_total_id.Text= "";

        }
        public float cal_aggregate()
        {
            float mat, inter;
            mat = (m / m1) * 100;
            inter = (i / i1) * 100;
            float Aggregate = (mat + inter) / 2;
            return Aggregate;

        }
       /* void checkusername1(string userdata)
        {

            if (!string.IsNullOrEmpty(st_username.Text))
            {
                SqlConnection con = new SqlConnection(constring);

                SqlCommand cmd = new SqlCommand("select * from Student where st_username=@st_username", con);

                cmd.Parameters.AddWithValue("username", st_username.Text);
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.HasRows)
                {
                    checkusername.Visible = true;
                    checkusername.Text = " UserName Already Exists";
                    btnsave.Enabled = false;


                }
                else
                {
                    checkusername.Visible = false;
                   btnsave.Enabled = true;
                }
            }
            else
            {
                checkusername.Visible = false;
            }
        }
       */
        void filldatagridview()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constring))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();

                        SqlCommand sqlda = new SqlCommand("SELECT * from Student where st_name like @contactname+'%' ", con);
                        // sqlda.SelectCommand.CommandType = System.Data.CommandType.StoredProcedure;

                        //sqlda.SelectCommand.Parameters.AddWithValue("@contactname", txtsearch.Text.Trim());
                        sqlda.Parameters.AddWithValue("@contactname", txtsearch.Text.Trim());
                        SqlDataReader dr = sqlda.ExecuteReader();

                        if (dr.HasRows == true)
                        {
                            dgvContacts.DataSource = dr;
                            dgvContacts.DataBind();

                        }
                        //DataTable dtbl = new DataTable();
                        // sqlda.Fill(dtbl);
                        // dgvContacts.DataSource = dtbl;

                        con.Close();
                    }
                }
            }
            catch(Exception ex)
            {
                lblmat.Text = ex.Message;
                lblmat.Visible = true;
            }
           

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                filldatagridview();
                div_body.Visible = false;
                dgvdiv.Visible = true;
              
            }
            catch (Exception ex)
            {
                nosave.Text = ex.Message;
                nosave.Visible = true;
            }
            
        }

        protected void dgvContacts_SelectedIndexChanged(object sender, EventArgs e)
        {
            


        }

        protected void txtsearch_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            
            
        }

        
        protected void GVbind()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(constring))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("Select * from Student", con);
                        SqlDataReader dr = cmd.ExecuteReader();
                        if (dr.HasRows == true)
                        {
                            dgvContacts.DataSource = dr;
                            dgvContacts.DataBind();
                        }
                        con.Close();
                    }


                }
            }catch(Exception ex)
            {
                lblmat.Text = ex.Message;
                lblmat.Visible = true;
            }
        }

        protected void dgvContacts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // int id = Convert.ToInt32(dgvContacts.DataKeys[e.RowIndex].Value.ToString());
            try
            {
                using (SqlConnection con = new SqlConnection(constring))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();

                        SqlCommand cmd = new SqlCommand("Delete from Student where st_id = @id", con);
                        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(dgvContacts.DataKeys[e.RowIndex].Value.ToString()));
                        int t = cmd.ExecuteNonQuery();
                        if (t > 0)
                        {
                            delete.Visible = true;
                            dgvContacts.EditIndex = -1;
                            GVbind();
                        }
                        con.Close();
                    }

                }
            }
            catch(Exception ex)
            {
                lblmat.Text = ex.Message;
                lblmat.Visible = true;

            }
        }

        protected void dgvContacts_RowEditing(object sender, GridViewEditEventArgs e)
        {
            try
            {
                dgvContacts.EditIndex = e.NewEditIndex;
                GVbind();
            }
            catch(Exception ex)
            {
                lblmat.Text = ex.Message;
                lblmat.Visible = true;
            }
        }
        protected void dgvContacts_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            try
            {
                dgvContacts.EditIndex = -1;
                GVbind();
            }
            catch(Exception ex)
            {
                lblmat.Text = ex.Message;
                lblmat.Visible = true;
            }
        }

        protected void dgvContacts_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
           

                string st_name = ((TextBox)dgvContacts.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
                string st_cnic = ((TextBox)dgvContacts.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
                int inter_marks = Convert.ToInt32(((TextBox)dgvContacts.Rows[e.RowIndex].Cells[5].Controls[0]).Text);
                int matric_marks = Convert.ToInt32(((TextBox)dgvContacts.Rows[e.RowIndex].Cells[6].Controls[0]).Text);
                string interest = ((TextBox)dgvContacts.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
                string skills = ((TextBox)dgvContacts.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
                string st_address = ((TextBox)dgvContacts.Rows[e.RowIndex].Cells[9].Controls[0]).Text;
                int Ecat_marks = Convert.ToInt32(((TextBox)dgvContacts.Rows[e.RowIndex].Cells[10].Controls[0]).Text);
                int inter_total = 0;//Convert.ToInt32(((TextBox)dgvContacts.Rows[e.RowIndex].Cells[18].Controls[0]).Text);
                int matric_total = 0;// Convert.ToInt32(((TextBox)dgvContacts.Rows[e.RowIndex].Cells[17].Controls[0]).Text);
           
                
           
            try
            {

                using (SqlConnection con = new SqlConnection(constring))
                {
                    if (con.State == System.Data.ConnectionState.Closed)
                    {
                        con.Open();
                        //SqlCommand cmd = new SqlCommand("update Student set st_name = @stname, st_cnic=@stcnic,inter_marks=@inter_marks,matric_marks=@matric_marks,interest=@interest,skills=@skills,st_address=@st_address,Ecat_marks=@Ecat_marks,inter_total_marks=@inter_total_marks,matric_total_marks=@matric_total_marks where st_id = @id", con);
                        SqlCommand cmd = new SqlCommand("update Student set st_name = '" + st_name + "',st_cnic = '" + st_cnic + "',inter_marks = '" + inter_marks + "',matric_marks = '" + matric_marks + "',interest = '" + interest + "',skills = '" + skills + "',st_address ='" + st_address + "',Ecat_marks='" + Ecat_marks + "',inter_total_marks='" + inter_total + "',matric_total_marks='" + matric_total + "'where st_id = @id", con);
                        cmd.Parameters.AddWithValue("@id", Convert.ToInt32(dgvContacts.DataKeys[e.RowIndex].Value.ToString()));


                        /*cmd.Parameters.AddWithValue("@stname", (dgvContacts.Rows[e.RowIndex].FindControl("st_name") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@stcnic", (dgvContacts.Rows[e.RowIndex].FindControl("st_cnic") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@inter_marks", (dgvContacts.Rows[e.RowIndex].FindControl("inter_marks") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@matric_marks", (dgvContacts.Rows[e.RowIndex].FindControl("matric_marks") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@interest", (dgvContacts.Rows[e.RowIndex].FindControl("interest") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@st_address", (dgvContacts.Rows[e.RowIndex].FindControl("skills") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@Ecat_marks", (dgvContacts.Rows[e.RowIndex].FindControl("Ecat_marks") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@inter_total_marks", (dgvContacts.Rows[e.RowIndex].FindControl("inter_total_marks") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@matric_total_marks", (dgvContacts.Rows[e.RowIndex].FindControl("matric_total_marks") as TextBox).Text.Trim());
                    cmd.Parameters.AddWithValue("@id", Convert.ToInt32(dgvContacts.DataKeys[e.RowIndex].Value.ToString()));
                   */
                        int t = cmd.ExecuteNonQuery();
                        if (t > 0)
                        {
                            delete.Visible = true;
                            dgvContacts.EditIndex = -1;
                            GVbind();
                        }
                        con.Close();
                    }

                }
            }
            catch(Exception ex)
            {
                lblmat.Text = ex.Message;
                lblmat.Visible = true;
            }
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_Profile.aspx");
           
        }

        protected void interest_id_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}
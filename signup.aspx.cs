﻿using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace WebApplication11
{
    public partial class signup : System.Web.UI.Page
    {
        readonly string constring = "Data Source=.;Initial Catalog=stdb;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        int x = 0, y = 0;
        float m;
        float m1;
        float i;
        float i1;
        float agg;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMessage.Visible = false;
            lblSuccessMessage.Visible = false;
            lblmat.Visible = false;
            lblint.Visible = false;
            lblincorrect.Visible = false;
            lblcorrect.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            checkusername.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;


            if (!IsPostBack)
            {
                form2.Visible = false;
            }


        }

        protected void Reg_Click(object sender, EventArgs e)
        {
            try {
                if (Convert.ToInt32(matric_drop.Text) <= Convert.ToInt32(matric_marks.Text) || Convert.ToInt32(inter_drop.Text) <= Convert.ToInt32(inter_marks.Text))
                {
                    lblmat.Visible = true;
                    lblint.Visible = true;


                }
            
            else
            {
                if (std_password.Text != st_password.Text)
                {

                    lblErrorMessage.Text = "Password does not match";
                    lblErrorMessage.Visible = true;
                }

                else
                {

                    try
                    {

                        if (!string.IsNullOrEmpty(st_username.Text))
                        {
                            SqlConnection con = new SqlConnection(constring);

                            SqlCommand cmd = new SqlCommand("select * from Student where st_username=@st_username", con);
                            cmd.Parameters.AddWithValue("st_username", st_username.Text);
                            con.Open();
                            SqlDataReader sdr = cmd.ExecuteReader();
                            if (sdr.HasRows)
                            {
                                checkusername.Visible = true;
                                Label1.Text = " UserName Already Exists";
                                Label1.Visible = true;
                                reg.Enabled = false;


                            }
                            else
                            {
                                checkusername.Visible = false;
                                reg.Enabled = true;
                            }
                            con.Close();
                        }


                        else
                        {
                            checkusername.Visible = false;

                        }

                    }
                    catch (Exception ex)
                    {
                        lblmat.Text = ex.Message;
                        lblmat.Visible = true;
                    }






                    try
                    {
                        if (matric_marks.Text != " " && matric_drop.Text != "" && inter_marks.Text != "" && inter_drop.Text != "")
                        {
                            m = Convert.ToInt32(matric_marks.Text);
                            m1 = Convert.ToInt32(matric_drop.Text);
                            i = Convert.ToInt32(inter_marks.Text);
                            i1 = Convert.ToInt32(inter_drop.Text);
                            agg = Cal_aggregate();
                        }
                        else
                        {
                            Label2.Text = "Enter Necassary feilds First";
                            Label2.Visible = true;
                            return;
                        }
                    }
                    catch (Exception ex)
                    {
                        lblmat.Text = ex.Message;
                        lblmat.Visible = true;
                    }

                    using (SqlConnection con = new SqlConnection(constring))
                    {


                        try
                        {

                            



                                if (con.State == System.Data.ConnectionState.Closed)
                                {

                                    con.Open();
                                    SqlCommand cmd = new SqlCommand("GetSt_data", con);
                                    cmd.CommandType = CommandType.StoredProcedure;
                                    cmd.Parameters.AddWithValue("@mode", "Add");
                                    cmd.Parameters.AddWithValue("@st_Name", nameid.Text.Trim());
                                    cmd.Parameters.AddWithValue("@st_cnic", cnic_id.Text.Trim());

                                    cmd.Parameters.AddWithValue("@inter_marks", i);

                                    cmd.Parameters.AddWithValue("@matric_marks", m);
                                    cmd.Parameters.AddWithValue("@Interest", Interest_dropdown.SelectedItem.Text.Trim());
                                    cmd.Parameters.AddWithValue("@Skills", Skills_drop_down.Text.Trim());
                                    cmd.Parameters.AddWithValue("@st_Addreess", address_id.Text.Trim());
                                    cmd.Parameters.AddWithValue("@ecat_mdcat_marks", ecat_marks.Text.Trim());
                                    cmd.Parameters.AddWithValue("@st_username", st_username.Text.Trim());
                                    cmd.Parameters.AddWithValue("@st_password", st_password.Text.Trim());
                                    cmd.Parameters.AddWithValue("@st_gender", gender_id.Text.Trim());
                                    cmd.Parameters.AddWithValue("@st_dob", dob.Text.Trim());
                                    cmd.Parameters.AddWithValue("@st_fname", fname_id.Text.Trim());
                                    cmd.Parameters.AddWithValue("@matric_total_marks", m1);
                                    cmd.Parameters.AddWithValue("@inter_total_marks", i1);
                                    cmd.Parameters.AddWithValue("@st_aggregate", agg);
                                    cmd.Parameters.AddWithValue("@matric_feild", matric_feild.Text.Trim());
                                    cmd.Parameters.AddWithValue("@inter_feild", inter_feild.Text.Trim());




                                    int k = cmd.ExecuteNonQuery();
                                    Clear();
                                    if (k != 0)
                                    {
                                        Session["id"] = st_username.Text;
                                        lblSuccessMessage.Text = "Submitted Successfully";
                                        Response.Redirect("studentprofile.aspx");
                                    }
                                    con.Close();
                                }

                            
                        }
                        catch (Exception ex)
                        {
                            lblmat.Text = ex.Message;
                            lblmat.Visible = true;
                        }


                        //Response.Redirect("studentprofile.aspx");
                    }

                }
                lblmat.Visible = true;
            }
            }
            catch (Exception ex)
            {
                Label4.Text = ex.Message;
                Label4.Visible = true;
            }
        }

        protected void Interest_dropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                //Response.Redirect("home.html");

                // Skills_drop_down.Items.Clear();
              /*  try
                {
                    if (Interest_dropdown.SelectedValue == "0")
                    {
                        Skills_drop_down.Items.Insert(0, new ListItem("Programming"));
                        Skills_drop_down.Items.Insert(1, new ListItem("Networking"));
                        Skills_drop_down.Items.Insert(2, new ListItem("Data Sceince"));
                        Skills_drop_down.Items.Insert(3, new ListItem("Software Engineering"));
                        Skills_drop_down.Items.Insert(4, new ListItem("Artificial Intelligence"));


                    }
                    else if (Interest_dropdown.SelectedItem.Equals("Management"))
                    {

                        Skills_drop_down.Items.Insert(0, new ListItem("HR Management"));
                        Skills_drop_down.Items.Insert(1, new ListItem("Accounting"));
                        Skills_drop_down.Items.Insert(2, new ListItem("Finance"));
                        Skills_drop_down.Items.Insert(3, new ListItem("Business"));

                    }
                    else if (Interest_dropdown.SelectedItem.Equals("Sports"))

                    {
                        Skills_drop_down.Items.Insert(0, new ListItem("Volleyball"));
                        Skills_drop_down.Items.Insert(1, new ListItem("Kabaddi"));
                        Skills_drop_down.Items.Insert(2, new ListItem("Football"));
                        Skills_drop_down.Items.Insert(3, new ListItem("Cricket"));
                        Skills_drop_down.Items.Insert(4, new ListItem("Badminton"));

                    }
                    else if (Interest_dropdown.SelectedItem.Equals("Math"))

                    {
                        Skills_drop_down.Items.Insert(0, new ListItem("Number Theory"));
                        Skills_drop_down.Items.Insert(1, new ListItem("Algebra"));
                        Skills_drop_down.Items.Insert(2, new ListItem("Geometry"));
                        Skills_drop_down.Items.Insert(3, new ListItem("Topology"));
                        Skills_drop_down.Items.Insert(4, new ListItem("Applied Mathematics"));

                    }
                    else if (Interest_dropdown.SelectedItem.Equals("Medical"))

                    {
                        Skills_drop_down.Items.Insert(0, new ListItem("MBBS"));
                        Skills_drop_down.Items.Insert(1, new ListItem("BioTechnology"));
                        Skills_drop_down.Items.Insert(2, new ListItem("MicroBiology"));
                        Skills_drop_down.Items.Insert(3, new ListItem("DPharmacy"));
                        Skills_drop_down.Items.Insert(4, new ListItem("Zology"));
                        Skills_drop_down.Items.Insert(5, new ListItem("Botany"));


                    }
                    else if (Interest_dropdown.SelectedItem.Equals("Mechanical Engineering"))

                    {

                        Skills_drop_down.Items.Insert(0, new ListItem("Material & Structure"));
                        Skills_drop_down.Items.Insert(1, new ListItem("Dynamics & Control"));
                        Skills_drop_down.Items.Insert(2, new ListItem("Design and Manufecturing"));
                        Skills_drop_down.Items.Insert(3, new ListItem("Bio Mechanics"));
                    }
                    else if (Interest_dropdown.SelectedItem.Equals("Electrical Engineering"))
                    {

                        Skills_drop_down.Items.Insert(0, new ListItem("Power Engineering"));
                        Skills_drop_down.Items.Insert(1, new ListItem("Control Engineering"));
                        Skills_drop_down.Items.Insert(2, new ListItem("Electronic Engineering"));
                        Skills_drop_down.Items.Insert(3, new ListItem("Signals Processing"));
                        Skills_drop_down.Items.Insert(4, new ListItem("Telecommuncation Engineering"));
                        Skills_drop_down.Items.Insert(5, new ListItem("Instrumentaion Engineering"));


                    }
                    else if (Interest_dropdown.SelectedItem.Equals("Civil Engineering"))

                    {
                        Skills_drop_down.Items.Insert(0, new ListItem("Management & Construction"));
                        Skills_drop_down.Items.Insert(1, new ListItem("Structural Engineering"));
                        Skills_drop_down.Items.Insert(2, new ListItem("Transportational Engineering"));
                        Skills_drop_down.Items.Insert(3, new ListItem("Water Engineering"));
                        Skills_drop_down.Items.Insert(4, new ListItem("Highway Engineering"));
                    }
                }
                catch (Exception ex)
                {
                    lblmat.Text = ex.Message;
                    lblmat.Visible = true;
                }
                finally
                {
                    //Response.Redirect("Registration.aspx");
                }*/


            
        }
        void Clear()
        {
            nameid.Text = cnic_id.Text = address_id.Text = st_username.Text = st_password.Text = std_password.Text  = Skills_drop_down.Text = "";
            matric_marks.Text = inter_marks.Text = ecat_marks.Text = matric_drop.Text = inter_drop.Text = fname_id.Text = "";

        }

        protected void TextBox10_TextChanged(object sender, EventArgs e)
        {

        }

        protected void st_username_TextChanged(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(st_username.Text))
                {
                    SqlConnection con = new SqlConnection(constring);

                    SqlCommand cmd = new SqlCommand("select * from Student where st_username=@st_username", con);
                    cmd.Parameters.AddWithValue("st_username", st_username.Text);
                    con.Open();
                    SqlDataReader sdr = cmd.ExecuteReader();
                    if (sdr.HasRows)
                    {
                        checkusername.Visible = true;
                        Label1.Text = " UserName Already Exists";
                        reg.Enabled = false;


                    }
                    else
                    {
                        checkusername.Visible = false;
                        reg.Enabled = true;
                    }
                    con.Close();
                }
                else
                {
                    checkusername.Visible = false;

                }
            }
            catch (Exception ex)
            {
                lblmat.Text = ex.Message;
                lblmat.Visible = true;
            }
        }
       

        protected void std_password_TextChanged(object sender, EventArgs e)
        {
            if (std_password.Text != st_password.Text)
            {

                lblErrorMessage.Text = "Password does not match";
                lblErrorMessage.Visible = true;

            }
        }

        protected void next_Click(object sender, EventArgs e)
        {
            if (cnic_id.Text != " " || nameid.Text != "" || fname_id.Text != "" || dob.Text != "" || address_id.Text != "" || gender_id.Text != "")

            {
                form1.Visible = false;
                form2.Visible = true;
            }
            else
            {

                Label1.Text = "Please Fill Required Feilds First";

                form1.Visible = true;
              
                Label1.Visible = true;
            }
        }

        protected void dob_TextChanged(object sender, EventArgs e)
        {

        }

        public float Cal_aggregate()
        {
            
                float mat, inter;
                mat = (m / m1) * 100;
                inter = (i / i1) * 100;
                float Aggregate = (mat + inter) / 2;
                return Aggregate;
           

        }
    }
}
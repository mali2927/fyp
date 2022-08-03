ss<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_student.aspx.cs" Inherits="WebApplication11.admin_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>University Recomendation System</title>
    <link rel="stylesheet" href="fontawesome-5.5/css/all.min.css" />
    <link rel="stylesheet" href="slick/slick.css"/>
    <link rel="stylesheet" href="slick/slick-theme.css"/>
    <link rel="stylesheet" href="magnific-popup/magnific-popup.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css" />
    <style>
    body{
            background-image:url("images/bg2.jpg");
            background-size:cover;

        }
 
 
    

        </style>
</head>
<body>
    <form id="form1" runat="server">
        <section id="main-content">
            <section id="wrapper">
                <div class="row"></div>
                    <div class="col-lg-12">
                        <section class="panel"></section>
                            <header class="panel-heading">
                                <div class=" col-md-4 col-md-offset-4">
                                    <h1>Admin Panel</h1>
                                </div>

                            </header>

                            <asp:TextBox ID="txtsearch" runat="server" OnTextChanged="txtsearch_TextChanged"></asp:TextBox>

                                <asp:Button ID="btnsearch" runat="server" Text="Search" BorderWidth="5px" OnClick="btnsearch_Click" />
                                <div runat="server" id="dgvdiv" visible="false" style = "overflow:scroll; width: 100%" >
                                    <asp:GridView ID="dgvContacts" runat="server" Height="2px" Width="100%" DataKeyNames="st_id" 
                                        OnSelectedIndexChanged="dgvContacts_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="dgvContacts_RowDeleting" OnRowEditing="dgvContacts_RowEditing" OnRowUpdating="dgvContacts_RowUpdating" OnRowCancelingEdit="dgvContacts_RowCancelingEdit">
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        <Columns>
                                            <asp:CommandField ButtonType="Button" ShowDeleteButton="True">
                                                <ControlStyle BackColor="Red" BorderStyle="Solid" />
                                                <FooterStyle ForeColor="Red" />
                                            </asp:CommandField>
                                           
                                            <asp:CommandField ButtonType="Button" ShowEditButton="True">
                                            <ControlStyle BackColor="Lime" />
                                            </asp:CommandField>
                                           
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                    </asp:GridView>
                                </div>
                            <div runat ="server" id="div_body">
                                <h1>ADD Student</h1>

                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="Student Name" runat="server" />
                                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Student Name" ID="nameid" />

                                            </div>

                                        </div>

                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="Father Name" runat="server" />
                                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Father Name" ID="fname_id" />

                                            </div>

                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="CNIC" runat="server" />
                                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="CNIC" ID="cnic_id" />

                                            </div>

                                        </div>

                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="Interest" runat="server" />
                                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Interest" ID="interest_id" OnTextChanged="interest_id_TextChanged" />

                                            </div>

                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="Skills" runat="server" />
                                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Skills" ID="skills_id" />

                                            </div>

                                        </div>

                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="DOB" runat="server" />
                                                <asp:TextBox runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder="dob" ID="dob_id" />

                                            </div>

                                        </div>

                                    </div>


                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="Address" runat="server" />
                                                <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Address" ID="address_id" />

                                            </div>

                                        </div>
                                    </div>

                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="row">
                                            <asp:Label Text="Matric Total Marks" runat="server" />
                                            <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Matric Total Marks" ID="matric_total_id" />

                                        </div>

                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="Matric Marks" runat="server" />
                                                <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Matric Marks" ID="matric_id" />

                                            </div>

                                        </div>

                                    </div>
                                    <div class="col-md-4 col-md-offset-1">
                                        <div class="form-group">
                                            <asp:Label Text="Inter total marks" runat="server" />
                                            <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Inter Total Marks" ID="Inter_total_id" />

                                        </div>
                                        <div class="row">
                                            <div class="col-md-4 col-md-offset-1">
                                                <div class="form-group">
                                                    <asp:Label Text="Inter Marks" runat="server" />
                                                    <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Inter Marks" ID="inter_id" />

                                                </div>

                                            </div>



                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="Ecat marks" runat="server" />
                                                <asp:TextBox runat="server" Enabled="true" TextMode="Number" CssClass="form-control input-sm" placeholder="Ecat Marks" ID="Ecat_id" />

                                            </div>

                                        </div>

                                        <div class="col-md-4 col-md-offset-1">
                                            <div class="form-group">
                                                <asp:Label Text="Gender" runat="server" />

                                                <asp:DropDownList runat="server" CssClass="form-control input-sm" ID="gender_id">
                                                    <asp:ListItem Text=" Male" />
                                                    <asp:ListItem Text=" Female" />


                                                </asp:DropDownList>
                                            </div>

                                        </div>



                                        
                                       





                                    </div>

                                </div>
                                <div>
                                <asp:Button ID="btnsave" runat="server" Text="Save" BorderWidth="5px" OnClick="btnsave_Click" />



                                

                                <br />

                            </div>
                            </div>





                            
                            <asp:Label ID="lblmat" runat="server" Text="Obtained Marks cannot be more than Total marks" ForeColor="Red"></asp:Label>




                            <br />
                            <asp:Label ID="checkusername" runat="server" ForeColor="Red" Text="Username Already Exist"></asp:Label>


                            <br />
                                <asp:Label ID="delete" runat="server" ForeColor="#FF3300" Text="Student is Deleted"></asp:Label>
                            </div>

                            <asp:Label ID="nosave" runat="server" ForeColor="Red" Text="Data not saved successfuly"></asp:Label>
                            <asp:Label ID="save" runat="server" ForeColor="Green" Text="Data saved Successfuly"></asp:Label>

                            <asp:Button ID="back" runat="server" BackColor="Red" EnableTheming="False" OnClick="back_Click" Text="Back to Home Page" />
                            <br />

                        </section>



                        <br />
            



                  
            </section>
       
    </form>
    
</body>
</html>

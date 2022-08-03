<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_add_student.aspx.cs" Inherits="WebApplication11.Admin_add_student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>The Town HTML CSS Template</title>
    <link rel="stylesheet" href="fontawesome-5.5/css/all.min.css" />
    <link rel="stylesheet" href="slick/slick.css"/>
    <link rel="stylesheet" href="slick/slick-theme.css"/>
    <link rel="stylesheet" href="magnific-popup/magnific-popup.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css" />
</head>
<body>
    <form id="form1" runat="server">
        
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="Student Name" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder ="Student Name" ID="nameid" />

                                    </div>

                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="Father Name" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder ="Father Name" ID="fname_id" />

                                    </div>

                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="CNIC" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder ="CNIC" ID="cnic_id" />

                                    </div>

                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="Interest" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder ="Interest" ID="interest_id" />

                                    </div>

                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="Skills" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder ="Skills" ID="skills_id" />

                                    </div>

                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="DOB" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" TextMode="Date" CssClass="form-control input-sm" placeholder ="dob" ID="dob_id" />

                                    </div>

                                </div>

                            </div>


                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="Address" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder ="Address" ID="address_id" />

                                    </div>

                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="Matric Marks" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" Textmode="Number" CssClass="form-control input-sm" placeholder ="Matric Marks" ID="matric_id" />

                                    </div>

                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="Inter Marks" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" Textmode="Number" CssClass="form-control input-sm" placeholder ="Inter Marks" ID="inter_id" />

                                    </div>

                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="Matric Marks" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" Textmode="Number" CssClass="form-control input-sm" placeholder ="Matric Marks" />

                                    </div>

                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                      <asp:Label Text="Ecat marks" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" Textmode="Number" CssClass="form-control input-sm" placeholder ="Ecat Marks" ID="Ecat_id" />

                                    </div>

                                </div>

                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group">
                                        rrrrra<asp:Label Text="Gender" runat="server" />

                                        <asp:DropDownList runat= "server" CssClass="form-control input-sm" ID="gender_id">
                                            <asp:ListItem Text =" Male"/>
                                                 <asp:ListItem Text =" Female"/>

                                           
                                        </asp:DropDownList>
                                     </div>

                                    </div>

                                </div>

                            </div>
        <div style="text-align:center">
        <asp:Button ID="btnsave" runat="server"  Text="Save" BorderWidth="5px" OnClick="btnsave_Click"  />
        
        <asp:Button ID="btndelete" runat="server" Text="Delete" BorderWidth="5px"/>
       
            <asp:Button ID="btnreset" runat="server"  Text="Reset" BorderWidth="5px"/>
        
            <br />
        
            </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication11.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>University Recomendation System</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="ak/fonts/material-icon/css/material-design-iconic-font.min.css"/>

    <!-- Main css -->
    <link rel="stylesheet" href="ak/css/style.css"/>
    <style>
        body {
            background-image: url('images/background.jpg');
            background-repeat: no-repeat;
            background-attachment: fixed;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        </style>
</head>
    <body>
      
        <form id="form1" runat="server">
            <section id="main-content">
                <section id ="wrapper" runat="server">
                    <div class="row" runat="server">
                        <div class ="col-lg-12" runat="server">
                            <section class ="panel" runat="server">
                                <div class="header-middle" runat="server" >



                                    <h1 runat="server"> 
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="42px" OnClick="ImageButton1_Click" Width="38px" ImageUrl="images/back.png" BorderStyle="None" />
                                    </h1>
                                    <h1 runat="server"> <strong> <a href= "Registration.aspx">Registration</a></strong></h1>
    </div>
                           
            <div class="main" runat="server">

        <div class="container" runat="server">
            <div class="booking-content" runat="server">
                <div class="booking-image" runat="server">
                    </div>
                <div class="booking-form" runat="server">
                    
                        <h2>Personal Information
                        </h2>
                         <div class="panel-body" runat="server">
                            <div class="row" runat="server">
                                <div class="col-md-4 col-md-offset-1" runat="server">
                                    <div class  ="form-group" runat="server">
                                      <asp:Label Text="Student Name" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder ="Student Name" ID="nameid" />
<%--                                    <asp:RequiredFieldValidator ID="Name_validator" runat="server" ControlToValidate="nameid" ErrorMessage="Enter Name Please! "></asp:RequiredFieldValidator>--%>

                                    </div>
                                    
                                </div>
                               
                             
                    <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group" runat="server">
                                      <asp:Label Text="Father Name" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder ="Father Name" ID="fname_id" />
<%--                                        <asp:RequiredFieldValidator ID="Fname_validator" runat="server" ControlToValidate="fname_id" ErrorMessage="Enter Father Name!"></asp:RequiredFieldValidator>--%>
                                    </div>

                                </div>
                             </div>
						
						
  <div class="row">
                                <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group" runat="server">
                                      <asp:Label Text="CNIC" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true"  CssClass="form-control input-sm" placeholder ="CNIC" ID="cnic_id" />
<%--                                        <asp:RequiredFieldValidator ID="Cnic_validator" runat="server" ControlToValidate="cnic_id" ErrorMessage="Enter your CNIC!"></asp:RequiredFieldValidator>--%>
                                    </div>

                                </div>
                               
                             
                    <div class="col-md-4 col-md-offset-1">
                                    <div class ="form-group" runat="server">
                                      <asp:Label Text="Address" runat="server" />
                                       <asp:TextBox runat="server" Enabled="true" CssClass="form-control input-sm" placeholder ="Address" ID="address_id" />
<%--                                        <asp:RequiredFieldValidator ID="Address_validator" runat="server" ControlToValidate="address_id" ErrorMessage="Enter Your Address!"></asp:RequiredFieldValidator>--%>
                                    </div>

                                </div>
                             </div>
						
						
						 <div class ="form-group" runat="server">
                                      <asp:Label Text="Gender" runat="server" />

                                        <asp:DropDownList BackColor="Black" runat= "server" CssClass="form-control input-sm" ID="gender_id">
                                            <asp:ListItem Text =" Male"/>
                                                 <asp:ListItem Text =" Female"/>

                                           
                                        </asp:DropDownList>
                                     </div>  
                             <div class="form-group form-input" runat="server">
                            <asp:Textbox type="Date" name="DOB" id="dob" value="" runat="server" />
                            <label runat="server" for="DOB" class="form-label">dob</label>
<%--                                 <asp:RequiredFieldValidator ID="dob_validator" runat="server" ControlToValidate="dob" ErrorMessage="Enter DOB!"></asp:RequiredFieldValidator>--%>
                        </div>
                   
						
                           

                        <div class="form-submit">
                            <asp:Button ID="next" runat="server" Text="NEXT" OnClick="Next_page" />
                            
                        </div>
                    
                </div>
            </div>
        </div>
                
                
             

                <div id="checkusername" runat ="server" visible="false">  
                        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#FF5050"></asp:Label>  
                        </div> 
    </div>
            <div class="text-center p-t-90">
						<a class="txt1" runat="server" href="Registration.aspx">
							Dont have an account? Create Account
						</a>
					</div>

        </div>
                        <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
         <asp:Label ID="lblSuccessMessage" runat="server" Text="correct User Credentials" ForeColor="Green"></asp:Label>
            <br />
            <br />
     </section>



                </div>
            </div>
        </section>
    </section>
            </form>
         <form id="form2" runat="server">
         
   
         <section id="main-content1">
        <section id ="wrapper1" runat="server">
            <div class="row" >
                <div class="col-lg-12" >
                    <section class="panel" runat="server">
                        <header class="panel-heading" runat="server">
                            <div class=" col-md-4 col-md-offset-4" runat="server">
                            </div>
                        </header>


                        <asp:ImageButton ID="ImageButton2" runat="server" Height="51px" Width="51px" Imageurl="images/back.png" OnClick="ImageButton2_Click" />
                  
                            <div class="main" runat="server">

                                <div class="container" runat="server">
                                    <div class="booking-content" runat="server">
                                        <div class="booking-image" runat="server">
                                            <img class="booking-img" src="images/form-img.png" alt="Booking Image" runat="server" />
                                        </div>
                                        <div class="booking-form" runat="server">

                                            <h2 runat="server">Academic Information </h2>
                                            <div class="panel-body" runat="server">
                                                <div class="row" runat="server" id="int">


                                                    <div class ="form-group" runat="server">
                                      <asp:Label Text="Matric Feilds" runat="server" />

                                        <asp:DropDownList BackColor="Black" runat= "server" CssClass="" ID="matric_feild">
                                            <asp:ListItem  Text =" Sceince" />
                                                 <asp:ListItem Text =" Arts"/>

                                           
                                        </asp:DropDownList>
                                     </div>

                                                     <div class ="form-group" runat="server">
                                      <asp:Label Text="Matric Total Marks" runat="server" />
                                                    <asp:DropDownList ID="matric_drop" BackColor="Black" runat="server">
                                                        <asp:ListItem>Select Total Marks</asp:ListItem>
                                                        <asp:ListItem>1100</asp:ListItem>
                                                        <asp:ListItem>1050</asp:ListItem>
                                                        <asp:ListItem>850</asp:ListItem>
                                                    </asp:DropDownList>
                                                         </div>

                                                   
                                                    
                                                    <div class="form-group form-input" runat="server">
                                                        <asp:TextBox type="number" name="matric_marks" ID="matric_marks" value="" runat="server" />
                                                        <label for="matric_marks" class="form-label">Your Matric/A-Levels Marks</label>
                                                        <%--                            <asp:RequiredFieldValidator ID="matric_validtor" runat="server" ControlToValidate="matric_marks" ErrorMessage="Enter Matric Marks!"></asp:RequiredFieldValidator>--%>
                                                    </div>
                                                     <div class ="form-group" runat="server">
                                      <asp:Label Text="Inter Feilds" runat="server" />

                                        <asp:DropDownList BackColor="Black" runat= "server" CssClass="form-control input-sm" ID="inter_feild">
                                            <asp:ListItem Text =" General Sceince"/>
                                                 <asp:ListItem Text =" Commerce"/> <asp:ListItem Text =" FSC Pre Medical"/><asp:ListItem Text =" FSC Pre Engineering"/><asp:ListItem Text =" Intermediate in Computer Sceince"/>

                                           
                                        </asp:DropDownList>
                                                         </div>





                                                    <div class ="form-group" runat="server">
                                      <asp:Label Text="Inter Total Marks" runat="server" />
                                                    <asp:DropDownList ID="inter_drop" BackColor="Black" runat="server">
                                                          <asp:ListItem>Select Total Marks</asp:ListItem>
                                                        <asp:ListItem>1100</asp:ListItem>
                                                        <asp:ListItem>1050</asp:ListItem>
                                                        
                                                    </asp:DropDownList>
                                                         </div>
                                                    <div class="form-group form-input" runat="server">
                                                        <asp:TextBox type="number" name="inter_marks" ID="inter_marks" value="" runat="server" />
                                                        <label for="inter_marks" runat="server" class="form-label">Your Inter/O-Levels Marks</label>
                                                        <%--                        <asp:RequiredFieldValidator ID="inter_validator" runat="server" ControlToValidate="inter_marks" ErrorMessage="Enter your Inter MArks!"></asp:RequiredFieldValidator>--%>
                                                    </div>



                                                    <div class="form-group form-input" runat="server">
                                                        <asp:TextBox type="number" name="matric_marks" ID="ecat_marks" value="" runat="server" />
                                                        <label runat="server" for="inter_marks" class="form-label">Ecat/Mdcat Marks</label>
                                                        <%--                            <asp:RequiredFieldValidator ID="ecat_validator" runat="server" ControlToValidate="ecat_marks" ErrorMessage="Enter ecat/mdcat Marks!"></asp:RequiredFieldValidator>--%>
                                                    </div>
                                                    
                                                       
                                                      <asp:DropDownList ForeColor="#CC9900" ID="Interest_dropdown" OnSelectedIndexChanged="Interest_IndexChanged"  EnableViewState="true" runat="server">
                                                      <asp:ListItem Text="Select Interest" Value=""></asp:ListItem>
                                                          <asp:ListItem Text="Computer Science" Value="0"></asp:ListItem>
                                                            <asp:ListItem Text="Management" Value="1" ></asp:ListItem>
                                                            <asp:ListItem Text="Sports" Value="2"></asp:ListItem>
                                                            <asp:ListItem Text="Math" Value="3"></asp:ListItem>
                                                            <asp:ListItem Text="Medical" Value="4"></asp:ListItem>
                                                            <asp:ListItem Text="Mechanical Engineering" Value="5"></asp:ListItem>
                                                            <asp:ListItem Text="Electrical Engineeing" Value="6"></asp:ListItem>
                                                            <asp:ListItem Text="Civil Engineering" Value="7"></asp:ListItem>
                                                              <asp:ListItem Text="Arts" Value="8"></asp:ListItem>
                                                            <asp:ListItem Text="Social Science" Value="9"></asp:ListItem>
                                                        </asp:DropDownList>
                                                   
                                                        <label for="St_interest" runat="server" class="form-label">Your interest</label>
                                                    </div>


                                                    <div class="form-group form-input" runat="server">
                                                        <asp:TextBox class="input100" type="text" name="st_skills" ID="st_skills" value="" runat="server" CausesValidation="True" />
                                                        <asp:DropDownList ForeColor="#CC9900" ID="Skills_drop_down" runat="server" OnSelectedIndexChanged="Skills_drop_down_SelectedIndexChanged">
                                                           
                                                        </asp:DropDownList>
                                                         
                                                        
                                                        <label runat="server" for="St_skill" class="form-label">Your skills</label>
                                                    </div>

                                                    <div class="form-group form-input" runat="server">
                                                        <asp:TextBox class="input100" type="text" name="st_username" AutoPostBack="false" ID="st_username" value="" runat="server" OnTextChanged="St_username_TextChanged" />
                                                        <label runat="server" for="St_username" class="form-label">username</label>
                                                        <%--                             <asp:RequiredFieldValidator ID="Username_validator" runat="server" ControlToValidate="st_username" ErrorMessage="Enter Username!"></asp:RequiredFieldValidator>--%>
                                                    </div>

                                                    <div class="form-group form-input" runat="server">
                                                        <asp:TextBox class="input100" type="password" name="st_password" ID="st_password" value="" runat="server" />
                                                        <label runat="server" for="St_password" class="form-label">password</label>
                                                        <%--                             <asp:RequiredFieldValidator ID="password_validator" runat="server" ControlToValidate="st_password" ErrorMessage="Enter Password!"></asp:RequiredFieldValidator>--%>
                                                    </div>

                                                    <div class="form-group form-input" runat="server">
                                                        <asp:TextBox class="input100" type="password" name="std_password" ID="std_password" value="" runat="server" />
                                                        <label runat="server" for="St_password" class="form-label">password</label>
                                                        <%--                             <asp:RequiredFieldValidator ID="std_password_validator" runat="server" ControlToValidate="std_password" ErrorMessage="Retype Password!"></asp:RequiredFieldValidator>--%>
                                                    </div>
                                                    <script>
                                                        $(document).ready(function () {

                                                        })
                                                        function validate() {

                                                        }
                                                    </script>

                                                    <div class="form-submit">
                                                        <asp:Button ID="reg" runat="server" Text="Register" OnClick="Reg_Click" OnClientClick="return userValid();" />

                                                    </div>

                                                </div>
                                            </div>
                                        </div>


                                        <script type="text/javascript">    
                                            function userValid() {
                                                var Name, fname, cnic, Address, emailExp, Gender1, dob, Matric_marks, Matric_total, inter_marks, inter_total, st_username, st_password, std_password;
                                                Name = document.getElementById("name_id").value;
                                                fname = document.getElementById("fname_id").value;
                                                cnic = document.getElementById("cnic_id").value;
                                                EmailId = document.getElementById("txtmail").value;

                                                Address = document.getElementById("address_id").value;
                                                Gender1 = document.getElementById("gender_id").value;
                                                dob = document.getElementById("dob").value;
                                                EmailId = document.getElementById("txtmail").value;
                                                Matric_marks = document.getElementById("matric_marks").value;
                                                Matric_total = document.getElementById("matric_total").value;

                                                inter_total = document.getElementById("inter_total").value;
                                                inter_marks = document.getElementById("inter_total").value;
                                                st_username = document.getElementById("st_username").value;
                                                st_password = document.getElementById("st_password").value;
                                                std_password = document.getElementById("std_password").value;


                                                emailExp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id    
                                                if (Name == '' && fname == 0 && cnic == '' && Address == '' && Gender1 == '' && dob == '' && Matric_marks == '' && Matric_total == '' && inter_total == '' && inter_marks == '' && st_username == '' && st_password == '' && std_password == '') {
                                                    alert("Enter All Fields");
                                                    return false;
                                                }
                                                if (Name == '') {
                                                    alert("Please Enter Login ID");
                                                    return false;
                                                }
                                                if (Gender1 == 0) {
                                                    alert("Please Select gender");
                                                    return false;
                                                }
                                                if (st_password == '') {
                                                    alert("Please Enter password");
                                                    return false;
                                                }
                                                if (std_password != st_password) {
                                                    alert("Please Confirm Password");
                                                    return false;
                                                }
                                                if (inter_marks == 0) {
                                                    alert("Enter inter Marks");
                                                    return false;
                                                }
                                                if (inter_total == 0) {
                                                    alert("Enter Inter Total Marks");
                                                    return false;
                                                }
                                                if (matric_marks == 0) {
                                                    alert("Enter Matric Marks");
                                                    return false;
                                                }
                                                if (matric_total == 0) {
                                                    alert("Enter Matric Total Marks");
                                                    return false;
                                                }
                                                if ($("[id*=matric_marks]").val() > ($("[id*=Matric_total]").val()) || $("[id*=inter_marks]").val() > ($("[id*=Inter_total]"))) {
                                                    alert("Obtained Marks cannot be more than Total Marks");
                                                    return false;
                                                }

                                                if (EmailId != '') {
                                                    if (!EmailId.match(emailExp)    
    {
                                                        alert("Invalid Email Id");
                                                        return false;
                                                    }
                                                }
                                                return true;
                                            }
                                        </script>





                                        <div id="Div1" runat="server" visible="false">
                                            <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#FF5050"></asp:Label>
                                        </div>
                                    </div>
                                    <div class="text-center p-t-90">
                                        <a class="txt1" href="Registration.aspx">Dont have an account? Create Account
                                        </a>
                                    </div>

                                </div>
                                <asp:Label ID="lblincorrect" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
                                <asp:Label ID="lblcorrect" runat="server" Text="correct User Credentials" ForeColor="Green"></asp:Label>
                                <br />
                                <asp:Label ID="lblmat" runat="server" ForeColor="Red" Text="Matric Obtained Marks can't be more than Total marks"></asp:Label>
                                <br />
                                <asp:Label ID="lblint" runat="server" ForeColor="Red" Text="Inter Obtained Marks can't be more than Total marks"></asp:Label>
                                <br />
                    </section>



                </div>
            </div>
        </section>
    </section>
    </form>

</body>
</html>

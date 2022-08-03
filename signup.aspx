<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication11.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image:url("images/bg2.jpg");
            background-size:cover;

        }
        #form1{
            height:660px;
            width:573px;
            background-color: lightblue;
            margin-left:auto;
            margin-right:auto;
            opacity:0.8;


        }
         #form2{
            height:660px;
            width:573px;
            background-color: lightblue;
            margin-left:auto;
            margin-right:auto;
            opacity:0.8;


        }
        .container{
            margin-left:140px;
        }
         .container1{
            margin-left:10px;
        }
        .h1{
             margin-left:120px;
        }
        .txtbox{
            border:1px solid blue;
            border-radius:5px;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <img src="images/sign_up.png" style="width: 220px; height: 68px; margin-left: 162px" />
            <br />

            <h1>&nbsp;Personal Information</h1>
        </div>
        <div class="container">

            <asp:TextBox ID="nameid" required="true" CssClass="txtbox" placeholder="Enter Name" runat="server" Height="30px" Width="267px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="fname_id" required="true" CssClass="txtbox" placeholder="Father Name" runat="server" Height="30px" Width="267px"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="cnic_id" required="true" CssClass="txtbox" placeholder="Enter CNIC" runat="server" Height="30px" Width="267px"></asp:TextBox>
           
            <br />
            <br />
            <asp:TextBox ID="address_id" required="true" CssClass="txtbox" placeholder="Enter Address" runat="server" Height="30px" Width="267px"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Date of Birth"></asp:Label>
            <br />
           
            <asp:TextBox ID="dob" type="Date"  CssClass="txtbox" placeholder="Date of Birth" runat="server" Height="30px" Width="267px" OnTextChanged="dob_TextChanged"></asp:TextBox>


&nbsp;
            <br />
            <br />
&nbsp;
            <br />
            <asp:DropDownList ID="gender_id" CssClass="txtbox"  runat="server" style="margin-left: 0px; margin-top: 0px;" Width="267px" Height="36px">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem> 
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList>
            <br />
&nbsp;
            <br />
            <br />
&nbsp;<asp:Button ID="next" CssClass="btn" runat="server" style="margin-left: 44px" Text="Next" Width="157px" OnClick="next_Click" />

            <br />
            <br />
            <br />
            <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblSuccessMessage" runat="server" Text="correct User Credentials" ForeColor="Green"></asp:Label>
            <br />

        </div>   
    </form>






    <form id="form2" runat="server" >

        <div>
            <img src="images/sign_up.png" style="width: 220px; height: 68px; margin-left: 162px" />
            <br />

            <h1>&nbsp;Acadamic Information</h1>

        </div>
        <div class="container1">
        <br />
          Matric / O levels
            <br />

           <asp:DropDownList ID="matric_feild" CssClass="txtbox"  runat="server" style="margin-left: 0px; margin-top: 0px;" Width="267px" Height="36px">
                <asp:ListItem>Select Matric Feild</asp:ListItem>
                <asp:ListItem>Science</asp:ListItem> 
                <asp:ListItem>Arts</asp:ListItem>
                      <asp:ListItem>O-Levels</asp:ListItem>
            </asp:DropDownList>

 <asp:DropDownList ID="matric_drop" CssClass="txtbox"  runat="server" style="margin-left: 0px; margin-top: 0px;" Width="267px" Height="36px">
                <asp:ListItem>Select Matric Total Marks</asp:ListItem>
                <asp:ListItem>1100</asp:ListItem> 
                <asp:ListItem>1050</asp:ListItem>
                <asp:ListItem>850</asp:ListItem>

            </asp:DropDownList>
            <br />
            <br />
            <asp:TextBox ID="matric_marks" type="number" required="true"  CssClass="txtbox" placeholder="Enter Matric Total Marks" runat="server" Height="30px" Width="530px"></asp:TextBox>
            <br />
            <br />
            Intermediate / A levels
            <br />

           <asp:DropDownList ID="inter_feild"  CssClass="txtbox"  runat="server" style="margin-left: 0px; margin-top: 0px;" Width="267px" Height="36px">
                <asp:ListItem>Select Inter Feild</asp:ListItem>
                <asp:ListItem>InterMediate in Computer Science</asp:ListItem> 
                <asp:ListItem>FSC Pre Medical</asp:ListItem>
                <asp:ListItem>FSC Pre Engineering</asp:ListItem>
                <asp:ListItem>Commerce</asp:ListItem>
               <asp:ListItem>A-Levels</asp:ListItem>


            </asp:DropDownList>
            A
 <asp:DropDownList ID="inter_drop" CssClass="txtbox" runat="server" style="margin-left: 0px; margin-top: 0px;" Width="267px" Height="36px">
                <asp:ListItem>Select Inter Total Marks</asp:ListItem>
                <asp:ListItem>1100</asp:ListItem> 
                <asp:ListItem>1050</asp:ListItem>
              

            </asp:DropDownList>
            <br />
            <br />
            <asp:TextBox ID="inter_marks" type="number" required="true" CssClass="txtbox" placeholder="Enter Inter Total Marks" runat="server" Height="30px" Width="524px"></asp:TextBox>
            <br />
         
            <br />

           <asp:DropDownList ID="Interest_dropdown" AutoPostBack="false" CssClass="txtbox" runat="server" style="margin-left: 0px; margin-top: 0px;" Width="267px" Height="36px" OnSelectedIndexChanged="Interest_dropdown_SelectedIndexChanged">
                <asp:ListItem>Select Interest</asp:ListItem>
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

            <asp:TextBox ID="Skills_drop_down" placeholders="Enter Skills" CssClass="txtbox" Height="30px" Width="267px"  runat="server"></asp:TextBox>

            <br />

            <br />
            <asp:TextBox ID="ecat_marks" required="true" type="number" CssClass="txtbox" placeholder="Ecat/Mdcat Marks" runat="server" Height="30px" Width="267px"></asp:TextBox>

            <br />
            <br />
            <asp:TextBox ID="st_username" required="true" CssClass="txtbox" placeholder="Username" runat="server" Height="30px" Width="267px" OnTextChanged="st_username_TextChanged"></asp:TextBox>
            <asp:TextBox ID="st_password" required="true" type="password" CssClass="txtbox" placeholder="Password" runat="server" Height="30px" Width="267px"></asp:TextBox>
            <br />
            <asp:TextBox ID="std_password" required="true" type="password" CssClass="txtbox" placeholder="Confirm Password" runat="server" Height="30px" Width="267px" OnTextChanged="std_password_TextChanged"></asp:TextBox>
            <br />
             
            <br />
            <asp:Button ID="reg" OnClientClick="AgeValidation(sender, args)" CssClass="btn" runat="server" style="margin-left: 200px" Text="Submit" Width="157px" OnClick="Reg_Click" />
            <br />
            <br />
          
            <br />
           
&nbsp;
            
&nbsp;
            
&nbsp;

            <asp:Label ID="Label3" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
            <asp:Label ID="Label4" runat="server" Text="correct User Credentials" ForeColor="Green"></asp:Label>
            <br />

        </div>
        <asp:Label ID="lblincorrect" runat="server"  Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>
                                <asp:Label ID="lblcorrect" runat="server" Text="correct User Credentials" ForeColor="Green"></asp:Label>
                                <br />
                                <asp:Label ID="lblmat" runat="server" ForeColor="Red" Text="Matric Obtained Marks can't be more than Total marks"></asp:Label>
                                <br />
        <asp:Label ID="checkusername"  runat="server" Text="Label"></asp:Label>
                                <asp:Label ID="lblint" runat="server" ForeColor="Red" Text="Inter Obtained Marks can't be more than Total marks"></asp:Label>
         <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#FF5050"></asp:Label>
                 
        
        
        
        <br />





         <script type="text/javascript">
        $(function () {
            SetDatePicker();
            $('#txtDobDate').change(function () {
                var age = CalculateAge();
                if (age < 18) {
                    alert("Age must be Greater than equal to 18");
                } 
            });
        });

        function CalculateAge() {
            var dob = $("#txtDobDate").val();
            dob = new Date(dob);
            var today = new Date();
            var age = Math.floor((today - dob) / (365.25 * 24 * 60 * 60 * 1000));
            return age;
        }

        function AgeValidation(sender, args) {
            var age = CalculateAge();
            if (age >= 18) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }

        function SetDatePicker() {
            $("#datepicker").datepicker();
            if ($("#txtDobDate").val() == "") {
                var dateNow = new Date();
                $('#datepicker').datepicker("setDate", dateNow);
            }
        }         
         </script>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_signin.aspx.cs" Inherits="WebApplication11.student_signin" %>

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
         #form1{
            height:660px;
            width:573px;
            background-color: lightblue;
            margin-left:auto;
            margin-right:auto;
            opacity:0.8;


        }
         body{
              background-image:url("images/bg2.jpg");
            background-size:cover;
         }
           .container1{
               margin-top:100px;
            margin-left:150px;
        }
           .container{
             
            margin-left:150px;
        }
            .container2{
             
            margin-left:220px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">

     <section id="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class ="col-lg-12">
                    <section class ="panel">
                        <header class ="panel-heading">
                            <div class=" container">
                                <h1>Student Panel</h1>
                            </div>


                        </header>



                       

                        <div class="container1">
                            
                                      
                                       <asp:TextBox runat="server" Enabled="true"  CssClass="form-control input-sm" ID="st_username" placeholder ="username" OnTextChanged="st_username_TextChanged" Width="300px" />

                                     

                                  

                               <br />
                            <br />

                               
                                  
                                     
                                       <asp:TextBox runat="server" Enabled="true"  Textmode="password" CssClass="form-control input-sm" ID="st_password" placeholder ="password" Width="300px" />
                              <br />
                        <asp:Button ID="Btn_login" runat="server" Width="300px" OnClick="reg_Click" Text="Sign In" />
                            </div>
                                
                            

                      <div class="row">
                          <div class="col-md-8 col-md-offset-2">
                              </div>





                        </div>
                          <asp:Label ID="lblErrorMessage" runat="server" Text="Incorrect User Credentials" ForeColor="Red"></asp:Label>

                      

                      

                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

                      

                      

                    </section>



                </div>
            </div>
        </section>
    </section>
        
                        <table>
					   <tr>
           
            <td colspan="1">
                &nbsp;</td>
        </tr>
        

    </table>
           
        <div class="container2">
						<input class="input-checkbox100" id="ckb2" type="checkbox" name="remember-me"/>
						<label class="label-checkbox100" for="ckb2">
							Remember me
						</label>
					</div>
         <div class="text-center p-t-90">
						<div class="conatiner1">
                            <asp:Button ID="reg" runat="server" Text="Dont have an account? create one" href="sinup.aspx" OnClick="btnreg_Click" />
                            
                        </div>
					</div>
    </form>
</body>
</html>

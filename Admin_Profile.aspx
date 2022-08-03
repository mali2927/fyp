<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Profile.aspx.cs" Inherits="WebApplication11.Admin_Profile" %>

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
         #form1{
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
                            <div ">
                                <h1>Admin Panel</h1>
                            </div>


                        </header>



                       



                    </section>



                </div>
            </div>
        </section>
    </section>
        <div class="container">
       
             <asp:Button ID="St_mang" runat="server" Height="64px" Text="Students Managment" Width="248px" OnClick="stdreg_Click" />
       
           
         
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
       
           
         
             <asp:Button ID="un_mang" runat="server" Height="64px" Text="University Managment" Width="256px" OnClick="unmang_Click" />
         
            </div>
    </form>
</body>
</html>

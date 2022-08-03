ss<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_university.aspx.cs" Inherits="WebApplication11.Admin_university" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><meta http-equiv="X-UA-Compatible" conThe Town HTML CSS Template</title><link rel="stylesheet" href="fontawesome-5.5/css/all.min.css" /><link rel="stylesheet" href="slick/slick.css"><link rel="stylesheet" href="slick/slick-theme.css"><link rel="stylesheet" href="magnific-popup/magnific-popup.css"><link rel="stylesheet" href="css/bootstrap.min.css" /><link rel="stylesheet" href="css/templatemo-style.css" /><!--
    The Town
    https://templatemo.com/tm-525-the-town
    --><style>
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
         .container1{
            margin-top:200px;
            margin-left:140px;
        }
        </style></head><body><form id="form1" runat="server">
         <section id="main-content">
        <section id ="wrapper">
            <div class="row">
                <div class ="col-lg-12">
                    <section class ="panel">
                        <header class ="panel-heading">
                            <div class=" container">
                                <h1>Admin Panel</h1>

                            </div>


                        </header>



                       


                           

                    </section>



                </div>
            </div>
        </section>
    </section>
        <div class="container1">
                                         <asp:Button ID="add_uni_1" runat="server" Height="57px" OnClick="add_uni_1_Click" Text="Crawl university Data" Width="219px" />
            </div>

    </form>
</body>
</html>

ss<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_in.aspx.cs" Inherits="WebApplication11.Sign_in" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><meta charset="UTF-8" /><meta name="viewport" content="width=device-width, initial-scale=1.0" /><meta http-equiv="X-UA-Compatible" conThe Town HTML CSS Template</title><link rel="stylesheet" href="fontawesome-5.5/css/all.min.css" /><link rel="stylesheet" href="slick/slick.css"/><link rel="stylesheet" href="slick/slick-theme.css"/><link rel="stylesheet" href="magnific-popup/magnific-popup.css"/><link rel="stylesheet" href="css/bootstrap.min.css" /><link rel="stylesheet" href="css/templatemo-style.css" /><style>
         #form1{
            height:660px;
            width:573px;
            background-color: lightblue;
            margin-left:auto;
            margin-right:auto;
            opacity:0.8;


        }
        body {
            background-image:url("images/bg2.jpg");
            background-size:cover;
        }
        .container{
            margin-left:90px;
        }

    </style></head><body><form id="form1" runat="server">
        <div class="container">
            <asp:ImageButton ID="btn_std_sign" runat="server" Text="Student Sign in" OnClick="btn_std_sign_Click" Height="265px" Width="383px" ImageUrl="images/Student.png" />
        
            <br />
            <br />
            <asp:ImageButton ID="btn_admin_sign" OnClick="btn_admin_sign_Click" Text="Admin Sign in" Height="302px" Width="385px" runat="server" ImageUrl="images/Admin.png" />
           
            i</div>
    </form>
</body>
</html>

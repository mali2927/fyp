<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="data_crawling.aspx.cs" Inherits="WebApplication11.data_crawling" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>The Town HTML CSS Template</title>
    <link rel="stylesheet" href="fontawesome-5.5/css/all.min.css" />
    <link rel="stylesheet" href="slick/slick.css">
    <link rel="stylesheet" href="slick/slick-theme.css">
    <link rel="stylesheet" href="magnific-popup/magnific-popup.css">
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css" />
    <!--
    The Town
    https://templatemo.com/tm-525-the-town
    -->
    <style>
         body{
            background-image:url("images/bg2.jpg");
            background-size:cover;

        }
        #form1{
            height:660px;
            width:573px;
           
           
            opacity:0.8;


        }
         .container{
       
            margin-right:200px;
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
                            <div class=" col-md-4 col-md-offset-4">
                                <h1>Admin Panel</h1>
                            </div>


                        </header>



                       


                           

                    </section>



                </div>
            </div>
        </section>
    </section>
 
         <asp:Button ID="cust_crawl" runat="server" Height="42px" OnClick="cust_crawl_Click" Text="CUST" Width="158px" />
        <h1 id="pg" runat="server" >Program Offerings</h1>
         <asp:GridView DataKeyNames="pg_id" ID="cust_grid"  runat="server" OnRowCancelingEdit="cust_grid_RowCancelingEdit"  OnRowEditing="cust_grid_RowEditing" OnRowUpdating="cust_grid_RowUpdating"  >
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            
             <Columns>
                 <asp:CommandField ButtonType="Button" ShowEditButton="True">
                 <ControlStyle BackColor="#00CC00" />
                 </asp:CommandField>
                 <asp:BoundField DataField="Program_Criteria" HeaderText="Program_Criteria" SortExpression="Program_Criteria" />

           
              
                 <asp:BoundField DataField="Program_Name" HeaderText="Program_Name" SortExpression="Program_Name" />

           
              
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
         <h1 id="H1" runat="server" >ScholarShips</h1>
        <div class="container">
         <p runat="server" >
           
             <asp:GridView ID="cust_grid_ss" runat="server" DataKeyNames="ss_id" CellPadding="4" ForeColor="#333333" GridLines="None" Width="30px">
                  <Columns>
                      <asp:CommandField ButtonType="Button" ShowEditButton="True">
                      <ControlStyle BackColor="#00CC00" />
                      </asp:CommandField>
                 <asp:BoundField DataField="Scholarship_Type" HeaderText="Scholarship_Type" SortExpression="Scholarship_Type" />
                 <asp:BoundField DataField="Scholarship_Criteria" HeaderText="Scholarship_Criteria" SortExpression="Scholarship_Criteria" />
                 <asp:BoundField DataField="Scholarship_Percentage" HeaderText="Scholarship_Percentage" SortExpression="Scholarship_Percentage" />
                 <asp:BoundField DataField="Scholarship_Countinouing_Criteria" HeaderText="Scholarship_Countinouing_Criteria" SortExpression="Scholarship_Countinouing_Criteria" />
                
                 
           
              
             </Columns>
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
         </p>
 </div>
 
         <asp:Label ID="nodisplay" runat="server" ForeColor="Red" Text="Data not retirived successfully"></asp:Label>
 
         <br />
         <asp:Label ID="delete" runat="server" BackColor="Red" Text="Data not deleted"></asp:Label>
 
         <br />
         <asp:Button ID="qau_click" runat="server" OnClick="Qau_click" Text="QAU" Width="162px" />
         <br />
         <asp:GridView ID="qau_grid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" >
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:BoundField DataField="Program_Name" HeaderText="Program_Name" SortExpression="Program_Name" />
                 <asp:BoundField DataField="Program_Criteria" HeaderText="Program_Criteria" SortExpression="Program_Criteria" />
                 <asp:BoundField DataField="ScholarShip_Type" HeaderText="ScholarShip_Type" SortExpression="ScholarShip_Type" />
                 <asp:BoundField DataField="Scholarship_Criteria" HeaderText="Scholarship_Criteria" SortExpression="Scholarship_Criteria" />
                 <asp:BoundField DataField="ScholarShip_Percentage" HeaderText="ScholarShip_Percentage" SortExpression="ScholarShip_Percentage" />
                 <asp:BoundField DataField="Scholarship_Countinouing_Criteria" HeaderText="Scholarship_Countinouing_Criteria" SortExpression="Scholarship_Countinouing_Criteria" />
                 <asp:BoundField DataField="University_Name" HeaderText="University_Name" SortExpression="University_Name" />
                 <asp:BoundField DataField="University_Address" HeaderText="University_Address" SortExpression="University_Address" />
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
         
         <br />
 
         <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
 
    </form>
    </body>
</html>
 
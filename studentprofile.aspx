<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentprofile.aspx.cs" Inherits="WebApplication11.studentprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Student Registration</title>
    <link rel="stylesheet" href="fontawesome-5.5/css/all.min.css" />
    <link rel="stylesheet" href="slick/slick.css"/>
    <link rel="stylesheet" href="slick/slick-theme.css"/>
    <link rel="stylesheet" href="magnific-popup/magnific-popup.css"/>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/templatemo-style.css" />
    <style>
        
         body {
            background-image:url("images/bg2.jpg");
            background-size:cover;
        }
          .container1{
            margin-left:50px;
        }
          .btn{
              margin-left:800px;
          }

   

        </style>
    </head>

    

<body>
    <form id="form1" runat="server">
     <!-- Hero section -->
    <section >
        <section id="main-content">
        <section id ="wrapper">

            <div class="row">
                <div class ="col-lg-12">
                    <section class ="panel">    </section>
                        <header class ="panel-heading">
                            <div class=" col-md-4 col-md-offset-4">
                                <h1 colour="black">Student Profile </h1>
                                 <div class="nav-tabs" align="right" >
                                     <br />
                                <asp:ImageButton ID="threedots" runat="server" Height="21px" ImageUrl="images\three.png" Width="22px" OnClick="threedots_Click" />
                                     <asp:DropDownList ID="editdd" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Editdd_SelectedIndexChanged">
                                                    <asp:ListItem Text="Select" value=""> </asp:ListItem>
                                         <asp:ListItem Text="Edit Profile" Value="0"> </asp:ListItem>
                                         
                                     </asp:DropDownList>
                                     
                                 </div>
                                  


                               
 
                                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" CellPadding="4" CssClass="alert-heading" DataSourceID="SqlDataSource1" OnLoad="GridView1_Load" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" Width="618px">
                                    <Columns>
                                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                        <asp:BoundField DataField="CNIC" HeaderText="CNIC" SortExpression="CNIC" />
                                        <asp:BoundField DataField="Inter_Marks" HeaderText="Inter_Marks" SortExpression="Inter_Marks" />
                                        <asp:BoundField DataField="Matric_Marks" HeaderText="Matric_Marks" SortExpression="Matric_Marks" />
                                        <asp:BoundField DataField="Interest" HeaderText="Interest" SortExpression="Interest" />
                                        <asp:BoundField DataField="inter_feild" HeaderText="inter_feild" SortExpression="inter_feild" />
                                        <asp:BoundField DataField="matric_feild" HeaderText="matric_feild" SortExpression="matric_feild" />
                                        <asp:BoundField DataField="Skill" HeaderText="Skill" SortExpression="Skill" />
                                        <asp:BoundField DataField="Aggregate" HeaderText="Aggregate" SortExpression="Aggregate" />
                                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stdbConnectionString %>" SelectCommand="SELECT st_name AS Name, st_cnic AS CNIC, inter_marks AS Inter_Marks, matric_marks AS Matric_Marks, interest AS Interest, inter_feild, matric_feild, skills AS Skill, st_aggregate AS Aggregate, st_address AS Address FROM Student WHERE (st_username = @st_username)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="st_username" SessionField="UserName" Type="String" />
                                    </SelectParameters>
                                </asp:SqlDataSource>

                    <br />
                                 
                                <asp:Label ID="lbluni" runat="server" CssClass="align-bottom" Text="We Recommend you University Programs and Scholarships" BorderColor="#00CC66" ForeColor="#339966"></asp:Label>
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="Program Offerings"></asp:Label>
                                <div class="container">
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
                                    <AlternatingItemTemplate>
                                        <li style="background-color: #FFF8DC;">University_Name:
                                            <asp:Label ID="University_NameLabel" runat="server" Text='<%# Eval("University_Name") %>' />
                                            <br />
                                            University_Address:
                                            <asp:Label ID="University_AddressLabel" runat="server" Text='<%# Eval("University_Address") %>' />
                                            <br />
                                            Program_Offering:
                                            <asp:Label ID="Program_OfferingLabel" runat="server" Text='<%# Eval("Program_Offering") %>' />
                                            <br />
                                            Program_Criteria:
                                            <asp:Label ID="Program_CriteriaLabel" runat="server" Text='<%# Eval("Program_Criteria") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="background-color: #008A8C;color: #FFFFFF;">University_Name:
                                            <asp:TextBox ID="University_NameTextBox" runat="server" Text='<%# Bind("University_Name") %>' />
                                            <br />
                                            University_Address:
                                            <asp:TextBox ID="University_AddressTextBox" runat="server" Text='<%# Bind("University_Address") %>' />
                                            <br />
                                            Program_Offering:
                                            <asp:TextBox ID="Program_OfferingTextBox" runat="server" Text='<%# Bind("Program_Offering") %>' />
                                            <br />
                                            Program_Criteria:
                                            <asp:TextBox ID="Program_CriteriaTextBox" runat="server" Text='<%# Bind("Program_Criteria") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">University_Name:
                                            <asp:TextBox ID="University_NameTextBox" runat="server" Text='<%# Bind("University_Name") %>' />
                                            <br />
                                            University_Address:
                                            <asp:TextBox ID="University_AddressTextBox" runat="server" Text='<%# Bind("University_Address") %>' />
                                            <br />
                                            Program_Offering:
                                            <asp:TextBox ID="Program_OfferingTextBox" runat="server" Text='<%# Bind("Program_Offering") %>' />
                                            <br />
                                            Program_Criteria:
                                            <asp:TextBox ID="Program_CriteriaTextBox" runat="server" Text='<%# Bind("Program_Criteria") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="background-color: #DCDCDC;color: #000000;">University_Name:
                                            <asp:Label ID="University_NameLabel" runat="server" Text='<%# Eval("University_Name") %>' />
                                            <br />
                                            University_Address:
                                            <asp:Label ID="University_AddressLabel" runat="server" Text='<%# Eval("University_Address") %>' />
                                            <br />
                                            Program_Offering:
                                            <asp:Label ID="Program_OfferingLabel" runat="server" Text='<%# Eval("Program_Offering") %>' />
                                            <br />
                                            Program_Criteria:
                                            <asp:Label ID="Program_CriteriaLabel" runat="server" Text='<%# Eval("Program_Criteria") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">University_Name:
                                            <asp:Label ID="University_NameLabel" runat="server" Text='<%# Eval("University_Name") %>' />
                                            <br />
                                            University_Address:
                                            <asp:Label ID="University_AddressLabel" runat="server" Text='<%# Eval("University_Address") %>' />
                                            <br />
                                            Program_Offering:
                                            <asp:Label ID="Program_OfferingLabel" runat="server" Text='<%# Eval("Program_Offering") %>' />
                                            <br />
                                            Program_Criteria:
                                            <asp:Label ID="Program_CriteriaLabel" runat="server" Text='<%# Eval("Program_Criteria") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                                    </div>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:stdbConnectionString %>" SelectCommand=""></asp:SqlDataSource>
                             
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="ScholarShips"></asp:Label>
                                <asp:ListView ID="ListView2" DataTextField="scholarship.ss_criteria" DataValueField="scholarship.ss_id"   runat="server" DataSourceID="SqlDataSource3">
                                    <AlternatingItemTemplate>
                                        <li style="background-color: #FFF8DC;">University_Name:
                                            <asp:Label ID="University_NameLabel" runat="server" Text='<%# Eval("University_Name") %>' />
                                            <br />
                                            University_address:
                                            <asp:Label ID="University_addressLabel" runat="server" Text='<%# Eval("University_address") %>' />
                                            <br />
                                            ScholarShip_Type:
                                            <asp:Label ID="ScholarShip_TypeLabel" runat="server" Text='<%# Eval("ScholarShip_Type") %>' />
                                            <br />
                                            ScholarShip_Percentage:
                                            <asp:Label ID="ScholarShip_PercentageLabel" runat="server" Text='<%# Eval("ScholarShip_Percentage") %>' />
                                            <br />
                                            ss_criteria:
                                               <asp:Label ID="ss_criteriaLabel" runat="server" Text='<%# Eval("ScholarShip_Criteria") %>' />
                                            <br />
                                            SS_Continouing:
                                            <asp:Label ID="SS_ContinouingLabel" runat="server" Text='<%# Eval("SS_Continouing") %>' />
                                            <br />
                                        </li>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <li style="background-color: #008A8C;color: #FFFFFF;">University_Name:
                                            <asp:TextBox ID="University_NameTextBox" runat="server" Text='<%# Bind("University_Name") %>' />
                                            <br />
                                            University_address:
                                            <asp:TextBox ID="University_addressTextBox" runat="server" Text='<%# Bind("University_address") %>' />
                                            <br />
                                            ScholarShip_Type:
                                            <asp:TextBox ID="ScholarShip_TypeTextBox" runat="server" Text='<%# Bind("ScholarShip_Type") %>' />
                                            <br />
                                            ScholarShip_Percentage:
                                            <asp:TextBox ID="ScholarShip_PercentageTextBox" runat="server" Text='<%# Bind("ScholarShip_Percentage") %>' />
                                            <br />
                                            ss_criteria:
                                            <asp:TextBox ID="ss_criteriaTextBox" runat="server" Text='<%# Bind("ScholarShip_Criteria") %>' />
                                            <br />
                                            SS_Continouing:
                                            <asp:TextBox ID="SS_ContinouingTextBox" runat="server" Text='<%# Bind("SS_Continouing") %>' />
                                            <br />
                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        </li>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No data was returned.
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <li style="">University_Name:
                                            <asp:TextBox ID="University_NameTextBox" runat="server" Text='<%# Bind("University_Name") %>' />
                                            <br />
                                            University_address:
                                            <asp:TextBox ID="University_addressTextBox" runat="server" Text='<%# Bind("University_address") %>' />
                                            <br />
                                            ScholarShip_Type:
                                            <asp:TextBox ID="ScholarShip_TypeTextBox" runat="server" Text='<%# Bind("ScholarShip_Type") %>' />
                                            <br />
                                            ScholarShip_Percentage:
                                            <asp:TextBox ID="ScholarShip_PercentageTextBox" runat="server" Text='<%# Bind("ScholarShip_Percentage") %>' />
                                            <br />
                                            ss_criteria:
                                            <asp:TextBox ID="ss_criteriaTextBox" runat="server" Text='<%# Bind("ScholarShip_Criteria") %>' />
                                            <br />
                                            SS_Continouing:
                                            <asp:TextBox ID="SS_ContinouingTextBox" runat="server" Text='<%# Bind("SS_Continouing") %>' />
                                            <br />
                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                        </li>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <br />
                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <li style="background-color: #DCDCDC;color: #000000;">University_Name:
                                            <asp:Label ID="University_NameLabel" runat="server" Text='<%# Eval("University_Name") %>' />
                                            <br />
                                            University_address:
                                            <asp:Label ID="University_addressLabel" runat="server" Text='<%# Eval("University_address") %>' />
                                            <br />
                                            ScholarShip_Type:
                                            <asp:Label ID="ScholarShip_TypeLabel" runat="server" Text='<%# Eval("ScholarShip_Type") %>' />
                                            <br />
                                            ScholarShip_Percentage:
                                            <asp:Label ID="ScholarShip_PercentageLabel" runat="server" Text='<%# Eval("ScholarShip_Percentage") %>' />
                                            <br />
                                            ss_criteria:
                                          <asp:Label ID="ss_criteriaLabel" runat="server" Text='<%# Eval("ScholarShip_Criteria") %>' /> 
                                            <br />
                                            SS_Continouing:
                                            <asp:Label ID="SS_ContinouingLabel" runat="server" Text='<%# Eval("SS_Continouing") %>' />
                                            <br />
                                        </li>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <li runat="server" id="itemPlaceholder" />
                                        </ul>
                                        <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">University_Name:
                                            <asp:Label ID="University_NameLabel" runat="server" Text='<%# Eval("University_Name") %>' />
                                            <br />
                                            University_address:
                                            <asp:Label ID="University_addressLabel" runat="server" Text='<%# Eval("University_address") %>' />
                                            <br />
                                            ScholarShip_Type:
                                            <asp:Label ID="ScholarShip_TypeLabel" runat="server" Text='<%# Eval("ScholarShip_Type") %>' />
                                            <br />
                                            ScholarShip_Percentage:
                                            <asp:Label ID="ScholarShip_PercentageLabel" runat="server" Text='<%# Eval("ScholarShip_Percentage") %>' />
                                            <br />
                                            ss_criteria:
                                            <asp:Label ID="ss_criteriaLabel" runat="server" Text='<%# Eval("ScholarShip_Criteria") %>' />
                                            <br />
                                            SS_Continouing:
                                            <asp:Label ID="SS_ContinouingLabel" runat="server" Text='<%# Eval("SS_Continouing") %>' />
                                            <br />
                                        </li>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                                <p>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:stdbConnectionString %>" SelectCommand=""></asp:SqlDataSource>
                             
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                             
                </p>
            </div>
           </ header>
                            </div>
            
        </div>
</section>



               
        </section>
    </section>




        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>










        &nbsp;
       










        <br />
&nbsp;<asp:Button ID="logout_btn" runat="server" Text="LogOut" OnClick="logout_btn_Click" />










        <div class="btn">
            <asp:Button ID="Button1" runat="server" Text="Fee Structure" OnClick="Button1_Click" />
        </div>
  
    </form>
</body>
</html>

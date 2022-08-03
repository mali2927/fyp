<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="password_change.aspx.cs" Inherits="WebApplication11.password_change" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
            margin-left:10px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="align-content:center">
            
           
            <asp:TextBox ID="oldtxt" placeholder="old password" runat="server" AutoPostBack="true" OnTextChanged="oldtxt_TextChanged"> </asp:TextBox>
            <br />
           
            <asp:TextBox ID="newtxt" placeholder="new password" runat="server"></asp:TextBox>
            <br />
           
            <asp:TextBox ID="confnewtxt" placeholder="confirm password" runat="server" OnTextChanged="confnewtxt_TextChanged"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Height="55px" style="margin-left: 99px" Text="Chnage Password" Width="194px" OnClick="Button1_Click" />
                <br />
            <asp:Button ID="profile" runat="server" Text="Edit Profile" OnClick="profile_Click" />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" ForeColor="Green" runat="server" Text="Label"></asp:Label>
         
    </form>
    <form id="form2" runat="server">
    <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="343px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdated="GridView1_RowUpdated">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                <asp:BoundField DataField="Father_Name" HeaderText="Father_Name" SortExpression="Father_Name" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Matric_Marks" HeaderText="Matric_Marks" SortExpression="Matric_Marks" />
                <asp:BoundField DataField="Inter_Marks" HeaderText="Inter_Marks" SortExpression="Inter_Marks" />
                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:stdbConnectionString %>" SelectCommand=""></asp:SqlDataSource>
    </div>
    </form>
   
</body>
</html>

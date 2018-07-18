<%@ Page Title="" Language="C#" MasterPageFile="~/Admin1.master" AutoEventWireup="true" CodeBehind="Customer_Details.aspx.cs" Inherits="Presentation_Layer.Account.Admin.Customer_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblWelcome" runat="server"></asp:Label>
    <br /><br />
    <center>
    <h2>Customer Details</h2>
    <asp:GridView ID="gvcus" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
           
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString2 %>" SelectCommand="SELECT UserId, UserName, Pass, FirstName, LastName FROM IPL_MGMT_SYSTEM.Users WHERE (UserId IN (SELECT UserId FROM IPL_MGMT_SYSTEM.UserRoles WHERE (RoleId = 2)))"></asp:SqlDataSource>
        </center>
    </asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Master.Master" AutoEventWireup="true" CodeBehind="Team_Info.aspx.cs" Inherits="Presentation_Layer.Account.Customer.Team_Info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
   <center>
       <asp:GridView ID="gvTeam" runat="server" AutoGenerateColumns="False" DataKeyNames="TeamId" DataSourceID="SqlDataSource1">
           <Columns>
               <asp:BoundField DataField="TeamName" HeaderText="TeamName" SortExpression="TeamName" />
               <asp:BoundField DataField="HomeGround" HeaderText="HomeGround" SortExpression="HomeGround" />
               <asp:BoundField DataField="Owners" HeaderText="Owners" SortExpression="Owners" />
           </Columns>
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString5 %>" SelectCommand="SELECT TeamId, TeamName, HomeGround, Owners, LogoImage FROM IPL_MGMT_SYSTEM.Team"></asp:SqlDataSource>
   </center> 
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Master.Master" AutoEventWireup="true" CodeBehind="Book_Ticket.aspx.cs" Inherits="Presentation_Layer.Account.Customer.Book_Ticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
     <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

   
        <center>
   <div style="height:100%" class="panel panel-default" >
       <div class="panel panel-info">
       <div class="panel-heading"> <h3>Results</h3></div></div>
   
    
       <div class="panel-body">
       <table style="text-align:center">
            <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server" AssociatedControlID="won1"   CssClass="col-md-2 control-label">Match_Name:</asp:Label></td>
      <td><asp:DropDownList ID="won1" CssClass="form-control"  runat="server"   AutoPostBack="true" AppendDataBoundItems="True" OnSelectedIndexChanged="won1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="MatchName" DataValueField="MatchName">
          <asp:ListItem Text="--Select One--" Value="" />   
          </asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString5 %>" SelectCommand="SELECT MatchName FROM IPL_MGMT_SYSTEM.Match"></asp:SqlDataSource>
                </td>
         <td><asp:RequiredFieldValidator runat="server" ControlToValidate="won1"
                    CssClass="text-danger" ErrorMessage="The Match Name field is required." /></td>
     </tr>
           <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" AssociatedControlID="TeamName1" CssClass="col-md-2 control-label">AvailableTickets:</asp:Label></td>
         <td><asp:TextBox runat="server" TextMode="Number" ReadOnly="true" class="col-xs-3" ID="TeamName1" CssClass="form-control" ></asp:TextBox></td>
         <td> &nbsp;</td>
     </tr>
     <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" AssociatedControlID="Played" CssClass="col-md-2 control-label">No_Of_Tickets:</asp:Label></td>
         <td><asp:TextBox runat="server" TextMode="Number"   class="col-xs-3" ID="Played" CssClass="form-control" ></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="Played"
                    CssClass="text-danger" ErrorMessage="The  field is required." /></td>
     </tr>
    
     
     <tr style="height:100%;margin:10%">
          <td><asp:Label runat="server" AssociatedControlID="won1"   CssClass="col-md-2 control-label">Ticket Category:</asp:Label></td>
      <td><asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" DataSourceID="SqlDataSource2" DataTextField="TicketCategoryName" DataValueField="TicketCategoryName" AppendDataBoundItems="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
          <asp:ListItem Text="--Select One--" Value="" />   
          </asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString5 %>" SelectCommand="SELECT TicketCategoryName FROM IPL_MGMT_SYSTEM.TicketCategory"></asp:SqlDataSource>
          </td>
         <td><asp:RequiredFieldValidator runat="server" ControlToValidate="won1"
                    CssClass="text-danger" ErrorMessage="The field is required." /></td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server" AssociatedControlID="Tied" CssClass="col-md-2 control-label">Price:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" ReadOnly="true"   CssClass="form-control" ID="Tied"></asp:TextBox></td>
         <td> &nbsp;</td>
     </tr>
          
           <tr><td><br /></td></tr>
     <tr>
       <td></td>
         <td style="margin:100%"><asp:Button runat="server" class="btn btn-primary" Text="BookTicket" OnClick="Unnamed9_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             
         <asp:Button runat="server"   class="btn btn-primary" Text="Reset" /></td>
     </tr>
            
     
 </table>
   </div>
    
    </div>   

            </center>
</asp:Content>

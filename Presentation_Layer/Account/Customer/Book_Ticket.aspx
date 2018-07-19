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
      <td><asp:DropDownList ID="won1" CssClass="form-control" runat="server">
          </asp:DropDownList></td>
         <td><asp:RequiredFieldValidator runat="server" ControlToValidate="won1"
                    CssClass="text-danger" ErrorMessage="The Last Name field is required." /></td>
     </tr>
           <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" AssociatedControlID="TeamName1" CssClass="col-md-2 control-label">AvailableTickets:</asp:Label></td>
         <td><asp:TextBox runat="server" TextMode="Number" ReadOnly="true" class="col-xs-3" ID="TeamName1" CssClass="form-control" ></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="TeamName1"
                    CssClass="text-danger" ErrorMessage="The FirstName field is required." /></td>
     </tr>
     <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" AssociatedControlID="Played" CssClass="col-md-2 control-label">No_Of_Tickets:</asp:Label></td>
         <td><asp:TextBox runat="server" TextMode="Number"   class="col-xs-3" ID="Played" CssClass="form-control" ></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="Played"
                    CssClass="text-danger" ErrorMessage="The FirstName field is required." /></td>
     </tr>
    
     
     <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"   AssociatedControlID="lost" CssClass="col-md-2 control-label">Ticket_Category:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  TextMode="Number" CssClass="form-control" ID="lost"></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="lost"
                    CssClass="text-danger" ErrorMessage="The password field is required." /></td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server" AssociatedControlID="Tied" CssClass="col-md-2 control-label">Price:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3" ReadOnly="true"   CssClass="form-control" ID="Tied"></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="Tied"
                    CssClass="text-danger" ErrorMessage="The password field is required." /></td>
     </tr>
          
           <tr><td><br /></td></tr>
     <tr>
       <td></td>
         <td style="margin:100%"><asp:Button runat="server" class="btn btn-primary" Text="BookTicket"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
             
         <asp:Button runat="server"   class="btn btn-primary" Text="Reset" /></td>
     </tr>
            
     
 </table>
   </div>
    
    </div>   

            </center>
</asp:Content>

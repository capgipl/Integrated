<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Master.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="Presentation_Layer.Account.Customer.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <br /><br />
      <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

   
        <center>
   <div style="height:100%" class="panel panel-default" >
       <div class="panel panel-info">
       <div class="panel-heading"> <h3>Schedule Info</h3></div></div>
   
    
       <div class="panel-body">
       <table style="text-align:center">
           <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" AssociatedControlID="MatchName" CssClass="col-md-2 control-label">MatchName:</asp:Label></td>
         <td><asp:DropDownList ID="MatchName" CssClass="form-control" runat="server">
          </asp:DropDownList></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="MatchName"
                    CssClass="text-danger" ErrorMessage="The MatchName field is required." /></td>
     </tr>
     <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" Visible="false" AssociatedControlID="TeamOne" CssClass="col-md-2 control-label">TeamOne:</asp:Label></td>
         <td><asp:TextBox runat="server"   Visible="false" ReadOnly="true" class="col-xs-3" ID="TeamOne" CssClass="form-control" ></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="TeamOne"
                    CssClass="text-danger" ErrorMessage="The TeamOne field is required." /></td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server" AssociatedControlID="TeamTwo"  Visible="false" CssClass="col-md-2 control-label">TeamTwo:</asp:Label></td>
         <td><asp:TextBox runat="server"  class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control"  ID="TeamTwo"></asp:TextBox></td>
         <td><asp:RequiredFieldValidator runat="server" ControlToValidate="TeamTwo"
                    CssClass="text-danger" ErrorMessage="The TeamTwo field is required." /></td>
     </tr>
     
     <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Venue" CssClass="col-md-2 control-label">Venue:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" ReadOnly="true"  CssClass="form-control" ID="venue"></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="Venue"
                    CssClass="text-danger" ErrorMessage="The Venue field is required." /></td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Dob" CssClass="col-md-2 control-label">ScheduleDate:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" TextMode="Date" ReadOnly="true" CssClass="form-control" ID="Dob"></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="Dob"
                    CssClass="text-danger" ErrorMessage="The ScheduleDate field is required." /></td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Stime" CssClass="col-md-2 control-label">StartTime:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control" ID="Stime"></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="Stime"
                    CssClass="text-danger" ErrorMessage="The StartTime field is required." /></td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Etime" CssClass="col-md-2 control-label">EndTime:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control" ID="Etime"></asp:TextBox></td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="Etime"
                    CssClass="text-danger" ErrorMessage="The Endtime field is required." /></td>
     </tr>
            
     
 </table>
   </div>
    
    </div>
    

            </center>
</asp:Content>
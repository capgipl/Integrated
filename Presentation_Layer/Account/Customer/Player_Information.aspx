<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Master.Master" AutoEventWireup="true" CodeBehind="Player_Information.aspx.cs" Inherits="Presentation_Layer.Account.Customer.Player_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<br />
    <br />
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

   
        <center>
   <div style="height:100%" class="panel panel-default" >
       <div class="panel panel-info">
       <div class="panel-heading"> <h3>Player Info</h3></div></div>
   
    
       <div class="panel-body">
       <table style="text-align:center">
           <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" AssociatedControlID="PlayerName" CssClass="col-md-2 control-label">PlayerName:</asp:Label></td>
         <td><asp:DropDownList ID="PlayerName" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="PlayerName" DataValueField="PlayerName">
          </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:16MayCHNConnectionString5 %>" SelectCommand="SELECT PlayerName FROM IPL_MGMT_SYSTEM_PLP.Player"></asp:SqlDataSource>
               </td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="PlayerName"
                    CssClass="text-danger" ErrorMessage="The FirstName field is required." /></td>
     </tr>
     <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" Visible="false" AssociatedControlID="PlayerId" CssClass="col-md-2 control-label">PlayerID:</asp:Label></td>
         <td><asp:TextBox runat="server" TextMode="Number"  Visible="false" ReadOnly="true" class="col-xs-3" ID="PlayerId" CssClass="form-control" ></asp:TextBox></td>
         <td> </td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server" AssociatedControlID="TeamName"  Visible="false" CssClass="col-md-2 control-label">TeamName:</asp:Label></td>
         <td><asp:TextBox runat="server"  class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control"  ID="TeamName"></asp:TextBox></td>
         <td></td>
     </tr>
     
     <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Age" CssClass="col-md-2 control-label">Age:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" TextMode="Number" CssClass="form-control" ID="Age"></asp:TextBox></td>
         <td> </td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Dob" CssClass="col-md-2 control-label">BirthPlace:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" TextMode="Date" ReadOnly="true" CssClass="form-control" ID="Dob"></asp:TextBox></td>
         <td> </td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Role" CssClass="col-md-2 control-label">Role:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control" ID="Role"></asp:TextBox></td>
         <td> </td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Battingstyle" CssClass="col-md-2 control-label">BattingStyle:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control" ID="BattingStyle"></asp:TextBox></td>
         <td></td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="BowlingStyle" CssClass="col-md-2 control-label">BowlingStyle:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" CssClass="form-control" ReadOnly="true" ID="BowlingStyle"></asp:TextBox></td>
         <td> </td>
     </tr>
            <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Bowling" CssClass="col-md-2 control-label">Profile:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" CssClass="form-control" ReadOnly="true" ID="Bowling"></asp:TextBox></td>
         <td> </td>
     </tr>
            
     
 </table>
   </div>
    
    </div>
    

            </center>
        
</asp:Content>


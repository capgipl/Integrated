<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Master.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Presentation_Layer.Account.Customer.Results" %>
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
           <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" AssociatedControlID="TeamName" CssClass="col-md-2 control-label">TeamName:</asp:Label></td>
         <td><asp:DropDownList ID="TeamName" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="TeamName" DataValueField="TeamName">
          </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=ndamssql\sqlilearn;Initial Catalog=16MayCHN;User ID=sqluser;Password=sqluser" ProviderName="System.Data.SqlClient" SelectCommand="select TeamName from IPL_MGMT_SYSTEM.Team"></asp:SqlDataSource>
               </td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="TeamName"
                    CssClass="text-danger" ErrorMessage="The FirstName field is required." /></td>
     </tr>
     <tr  style="height:100%;margin:10%">
         <td style="text-align:right"><asp:Label runat="server" Visible="false" AssociatedControlID="Played" CssClass="col-md-2 control-label">Played:</asp:Label></td>
         <td><asp:TextBox runat="server" TextMode="Number"  Visible="false" ReadOnly="true" class="col-xs-3" ID="Played" CssClass="form-control" ></asp:TextBox></td>
         <td> &nbsp;</td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server" AssociatedControlID="won"  Visible="false" CssClass="col-md-2 control-label">Won:</asp:Label></td>
         <td><asp:TextBox runat="server"  class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control"  ID="won"></asp:TextBox></td>
         <td>&nbsp;</td>
     </tr>
     
     <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="lost" CssClass="col-md-2 control-label">Lost:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" TextMode="Number" CssClass="form-control" ID="lost"></asp:TextBox></td>
         <td> &nbsp;</td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="Tied" CssClass="col-md-2 control-label">Tied:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" TextMode="Date" ReadOnly="true" CssClass="form-control" ID="Tied"></asp:TextBox></td>
         <td> &nbsp;</td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="nr" CssClass="col-md-2 control-label">N/R:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control" ID="nr"></asp:TextBox></td>
         <td> &nbsp;</td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="netrr" CssClass="col-md-2 control-label">NetRR:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control" ID="netrr"></asp:TextBox></td>
         <td> &nbsp;</td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="pts" CssClass="col-md-2 control-label">Points:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" CssClass="form-control" ReadOnly="true" ID="pts"></asp:TextBox></td>
         <td> &nbsp;</td>
     </tr>
            <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server"  Visible="false" AssociatedControlID="frompts" CssClass="col-md-2 control-label">FromPoints:</asp:Label></td>
         <td><asp:TextBox runat="server" class="col-xs-3"  Visible="false" CssClass="form-control" ReadOnly="true" ID="frompts"></asp:TextBox></td>
         <td> &nbsp;</td>
     </tr>
            
     
 </table>
   </div>
    
    </div>
    

            </center>
</asp:Content>


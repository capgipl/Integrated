<%@ Page Title="" Language="C#" MasterPageFile="~/Customer_Master.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="Presentation_Layer.Account.Customer.Results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />

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
         <td style="text-align:right"><asp:Label runat="server"  ID="lblname" AssociatedControlID="TeamName" CssClass="col-md-2 control-label">TeamName:</asp:Label></td>
         <td>
             <asp:DropDownList ID="TeamName" AppendDataBoundItems="true" CssClass="form-control"  runat="server"  OnSelectedIndexChanged ="TeamName_SelectedIndexChanged" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="TeamName" DataValueField="TeamName">
            <asp:ListItem Text="--Select One--" Value="" />       
          </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=ndamssql\sqlilearn;Initial Catalog=16MayCHN;User ID=sqluser;Password=sqluser" ProviderName="System.Data.SqlClient" SelectCommand="select TeamName from IPL_MGMT_SYSTEM.Team"></asp:SqlDataSource>
               </td>
         <td> <asp:RequiredFieldValidator runat="server" ControlToValidate="TeamName"
                    CssClass="text-danger" ErrorMessage="The FirstName field is required." /></td>
     </tr>
     <tr  style="height:100%;margin:10%">
         <td style="text-align:right">
         <asp:Label  runat="server" Visible="false" ID="lblplayed" CssClass="col-md-2 control-label">Played:</asp:Label></td>
         <td><asp:Label runat="server" Visible="false" class="col-xs-3" ID="txtPlayed" CssClass="form-control" ></asp:Label></td>
         <td> &nbsp;</td>
     </tr>
     <tr style="height:100%;margin:10%">
         <td><asp:Label runat="server"  ID="lblwon"  Visible="false" CssClass="col-md-2 control-label">Won:</asp:Label></td>
         <td><asp:Label runat="server"  class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control"  ID="txtwon"></asp:Label></td>
         <td>&nbsp;</td>
     </tr>
     
     <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server" ID="lbllost" Visible="false"  CssClass="col-md-2 control-label">Lost:</asp:Label></td>
         <td><asp:Label runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" TextMode="Number" CssClass="form-control" ID="txtlost"></asp:Label></td>
         <td> &nbsp;</td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server" ID="lbltied" Visible="false"  CssClass="col-md-2 control-label">Tied:</asp:Label></td>
         <td><asp:Label runat="server" class="col-xs-3"  Visible="false" TextMode="Date" ReadOnly="true" CssClass="form-control" ID="txtTied"></asp:Label></td>
         <td> &nbsp;</td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server" ID="lblnr" Visible="false"  CssClass="col-md-2 control-label">N/R:</asp:Label></td>
         <td><asp:Label runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control" ID="txtnr"></asp:Label></td>
         <td> &nbsp;</td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server" ID="lblnrr" Visible="false" CssClass="col-md-2 control-label">NetRR:</asp:Label></td>
         <td><asp:Label runat="server" class="col-xs-3"  Visible="false" ReadOnly="true" CssClass="form-control" ID="txtnetrr"></asp:Label></td>
         <td> &nbsp;</td>
     </tr>
             <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server" ID="lblpoints"  Visible="false"  CssClass="col-md-2 control-label">Points:</asp:Label></td>
         <td><asp:Label runat="server" class="col-xs-3"  Visible="false" CssClass="form-control" ReadOnly="true" ID="txtpts"></asp:Label></td>
         <td> &nbsp;</td>
     </tr>
            <tr style="height:100%;margin:10%">
         <td style="width:40%">      <asp:Label runat="server" ID="lblfrmpoints" Visible="false"  CssClass="col-md-2 control-label">FromPoints:</asp:Label></td>
         <td><asp:Label runat="server" class="col-xs-3"  Visible="false" CssClass="form-control" ReadOnly="true" ID="txtfrompts"></asp:Label></td>
         <td> &nbsp;</td>
     </tr>
            
     
 </table>
   </div>
    
    </div>
    

            </center>
</asp:Content>


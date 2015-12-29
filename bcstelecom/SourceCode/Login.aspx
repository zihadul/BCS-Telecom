<%@ Page Language="C#" MasterPageFile="~/MasterPages/Default.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
        <uc:Login ID="login" runat="server" />
    </div>
   
</asp:Content>

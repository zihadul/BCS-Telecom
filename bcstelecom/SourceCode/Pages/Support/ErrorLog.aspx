<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorLog.aspx.cs" Inherits="ErrorLog"
    ValidateRequest="false" MasterPageFile="~/MasterPages/Admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <iframe width="100%" height="800" src="elmah.axd" frameborder="0" scrolling="auto"></iframe>
    

</asp:Content>

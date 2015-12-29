<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AdminMenu.ascx.cs" Inherits="UserControls_AdminMenu" %>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">
            Site Navigation</h3>
    </div>
    <div class="panel-body admin-menu-body">
        <asp:Menu runat="server" ID="AdminNav" Orientation="Vertical" StaticDisplayLevels="3" Width="100%">
            <StaticMenuItemStyle CssClass="StaticMenuItem"></StaticMenuItemStyle>
            <StaticMenuStyle CssClass="StaticMenu"></StaticMenuStyle>
        </asp:Menu>
        <%--<asp:HyperLink CssClass="newsletter-admin-menu" runat="server" ID="hypAdmin" Target="_blank" Text="Newsletter"></asp:HyperLink>--%>
      
    </div>
</div>
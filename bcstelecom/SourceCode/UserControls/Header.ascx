<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Header.ascx.cs" Inherits="UserControls_Header" %>
<div class="header-container clearfix">
    <div>
        <%-- <asp:Repeater runat="server" ID="rptHeader">
            <ItemTemplate>
                <a id="A1" href="~/Default.aspx" runat="server">
                    <asp:Image ID="imgHeader" runat="server" ImageUrl='<%# string.Concat("~/Resources/Images/Header/", Eval("Image").ToString()) %>' /></a>
            </ItemTemplate>
        </asp:Repeater>--%>
        <a id="A1" href="~/Home" runat="server">
            <asp:Image CssClass="header-img" ID="imgHeader" runat="server" /></a>
    </div>
</div>

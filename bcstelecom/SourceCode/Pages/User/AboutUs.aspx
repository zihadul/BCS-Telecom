<%@ Page Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpnhMain" Runat="Server">
   <table cellspacing="0" cellpadding="0" border="0" width="100%">
        <tr>
            <td align="left" class="ContentText">
               <%-- <asp:Label ID="lblContent" runat="server" />--%>
                <asp:Literal ID="LitContent" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>
</asp:Content>


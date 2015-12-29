<%@ Page Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true"
    CodeFile="408.aspx.cs" Inherits="ErrorPages_408" Title="Server Timed Out" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpnhMain" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="100%">
        <tr>
            <td>
                The server timed out waiting for the request. Please stay tuned and try again later.
                <p>
                </p>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Return to the Homepage</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

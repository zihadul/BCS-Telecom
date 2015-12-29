<%@ Page Language="C#" MasterPageFile="~/MasterPages/Site.master" Title="Resources"
    AutoEventWireup="true" CodeFile="Resources.aspx.cs" Inherits="Resources" ValidateRequest="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <div>
        <ul class="resouce-list">
            <asp:Repeater ID="rptResource" DataMember="Id" runat="server">
                <ItemTemplate>
                    <li><span><i class="fa fa-angle-right"></i></span>
                        <asp:LinkButton ID="lnkResource" Text='<%#Eval("Title")%>' runat="server" PostBackUrl='<%# String.Concat("~/ResourceDetails/", Eval("Id").ToString()) %>'></asp:LinkButton>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</asp:Content>

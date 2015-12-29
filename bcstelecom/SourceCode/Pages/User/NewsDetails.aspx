<%@ Page Title="News Details" Language="C#" MasterPageFile="~/MasterPages/Site.master"
    AutoEventWireup="true" CodeFile="NewsDetails.aspx.cs" Inherits="Pages_User_NewsDetails" %>

<asp:Content ID="Content4" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:Repeater runat="server" ID="rptNewsDetails">
        <ItemTemplate>
            <h3 class="news-title">
                <%# Common.Decoding(Eval("news_title").ToString())%>
            </h3>
            <div class="news-date">
                <%# Convert.ToDateTime(Eval("create_date")).ToString("MMM d, yyyy")%>
            </div>
            <p class="news-summary">
                <%# Common.Decoding(Eval("Summary").ToString())%>
            </p>
            <p class="description">
                <%# Common.Decoding(Eval("description").ToString())%>
            </p>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

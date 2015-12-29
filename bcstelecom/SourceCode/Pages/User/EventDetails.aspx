<%@ Page Title="Event Details" Language="C#" MasterPageFile="~/MasterPages/Site.master"
    AutoEventWireup="true" CodeFile="EventDetails.aspx.cs" Inherits="Pages_Admin_EventDetails" %>

<asp:Content ID="Content4" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:Repeater runat="server" ID="rptEventDetails">
        <ItemTemplate>
            <h3 class="news-title">
                <%# Common.Decoding(Eval("Event_title").ToString())%>
            </h3>
            <div class="news-date">
                <%# Convert.ToDateTime(Eval("Event_date")).ToString("MMM d, yyyy")%>
            </div>
            <p class="summary">
                <%# Common.Decoding(Eval("Summary").ToString())%>
            </p>
            <p class="summary" style="text-align: justify;">
                <%# Common.Decoding(Eval("description").ToString())%>
            </p>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

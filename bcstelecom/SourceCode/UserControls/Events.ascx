<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Events.ascx.cs" Inherits="UserControls_Events" %>
<div class="float_left_div posts">
    <h3>
        Recent Events</h3>
    <asp:Repeater runat="server" ID="rptEvent">
        <ItemTemplate>
            <div class="news_wrapper clearfix">
                <div class="news_txt">
                    <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Common.Decoding(Eval("Event_title").ToString()) %>'
                        NavigateUrl='<%# String.Concat("~/EventDetails/", Eval("Event_id")) %>'></asp:HyperLink>
                </div>
                <div class="news-date">
                    <%# Convert.ToDateTime(Eval("Event_date").ToString()).ToString("MMM d, yyyy")%>
                </div>
                <div class="news-summary">
                    <%# Common.Decoding(Eval("Summary").ToString())%>
                </div>
                <div class="div_separator clearfix">
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>

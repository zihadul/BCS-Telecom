<%@ Control Language="C#" AutoEventWireup="true" CodeFile="News.ascx.cs" Inherits="UserControls_News" %>
<div class="float_left_div posts">
    <h3>
        Recent News</h3>
    <asp:Repeater ID="rptNews" runat="server">
        <ItemTemplate>
            <div class="news_wrapper clearfix">
                <div class="news_txt">
                    <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Common.Decoding(Eval("news_title").ToString()) %>'
                        NavigateUrl='<%# String.Concat("~/NewsDetails/", Eval("news_id")) %>'></asp:HyperLink>
                </div>
                <div class="news-date">
                    <%# Convert.ToDateTime(Eval("create_date").ToString()).ToString("MMM d, yyyy")%>
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

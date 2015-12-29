<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true"
    CodeFile="News.aspx.cs" Inherits="Pages_User_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:Repeater ID="rptNews" runat="server">
        <ItemTemplate>
            <div class="news_wrapper mb-40px">
                <div class="news_txt">
                      <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Common.Decoding(Eval("news_title").ToString()) %>'
                        NavigateUrl='<%# String.Concat("~/NewsDetails/", Eval("news_id")) %>'></asp:HyperLink>
                </div>
                <div class="news-date">
                    <%# Convert.ToDateTime(Eval("create_date").ToString()).ToString("MMM d, yyyy")%>
                </div>
                <p>
                   <%# Common.Decoding(Eval("Summary").ToString())%>
                </p>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

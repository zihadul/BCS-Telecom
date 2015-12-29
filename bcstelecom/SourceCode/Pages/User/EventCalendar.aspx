<%@ Page Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true"
    CodeFile="EventCalendar.aspx.cs" Inherits="EventCalendar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="event-btn-container">
                <asp:Button CssClass="btn-event-view" runat="server" ID="btnCalanderView" Text="Calander View" OnClick="btnCalanderView_Click" />
                <asp:Button  CssClass="btn-event-view" runat="server" ID="btnListView" Text="List View" OnClick="btnListView_Click" />
            </div>
            <asp:Panel ID="pnlCalander" runat="server" CssClass="iframe-calander">
                <iframe  runat="server" id="frameCalendar" height="615px" width="100%" src="Calender.aspx"
                    frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
            </asp:Panel>
            <asp:Panel runat="server" ID="pnlListview" Visible="False">
                <asp:Repeater ID="rptEventList" runat="server">
                    <ItemTemplate>
                        <div class="news_wrapper mb-40px">
                            <div class="news_txt">
                                <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Common.Decoding(Eval("Event_title").ToString()) %>' NavigateUrl='<%# String.Concat("~/EventDetails/", Eval("Event_id")) %>'></asp:HyperLink>
                            </div>
                            <div class="news-date">
                                <%# Convert.ToDateTime(Eval("Event_date").ToString()).ToString("MMM d, yyyy")%>
                            </div>
                            <p>
                                <%# Common.Decoding(Eval("Summary").ToString())%>
                            </p>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

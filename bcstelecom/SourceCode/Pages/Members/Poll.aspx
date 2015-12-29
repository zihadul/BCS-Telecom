<%@ Page Title="Poll" Language="C#" MasterPageFile="~/MasterPages/Member.master"
    AutoEventWireup="true" CodeFile="Poll.aspx.cs" Inherits="Poll" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div style="text-align: right">
                <asp:HyperLink runat="server" ID="lnkPrevResult" NavigateUrl="~/PollResults" CssClass="Note2">Previous Results</asp:HyperLink>
            </div>
            <asp:Label runat="server" ID="lblMessage" />
            <asp:Panel runat="server" ID="pnlExecutive" Visible="False">
                <fieldset>
                    <legend>Executive Committee Decision </legend>
                    <asp:GridView ID="gvExecutive" runat="server" DataKeyNames="pollid" AllowPaging="false"
                        SkinID="gvGrid" ShowHeader="false" OnRowDataBound="gvExecutive_RowDataBound">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="panel panel-default">
                                        <div class="panel-heading text-font">
                                            <%# Eval("topics")%>
                                        </div>
                                        <div class="panel-body">
                                            Voted
                                            <%# (Eval("TotalVoted")) %>
                                            person(s)
                                            <asp:Label runat="server" ID="lblResult"></asp:Label>. </span>
                                            <br />
                                            <asp:RadioButtonList runat="server" ID="rdoPoll" DataTextField="optiontext" DataValueField="optionid" />
                                            <br />
                                            <asp:Button ID="btnECVote" runat="server" Text="Vote" OnCommand="btnECVote_Command"
                                                Enabled='<%# Eval("HasVoted").ToString() == "0" ? true : false %>' CommandArgument='<%# Container.DataItemIndex %>' />
                                        </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </fieldset>
                <br />
                &nbsp;
            </asp:Panel>
            <asp:GridView SkinID="gvGrid" ID="gv" runat="server" DataKeyNames="pollid" AllowPaging="false"
                ShowHeader="false" OnRowDataBound="gv_RowDataBound">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="panel panel-default">
                                <div class="panel-heading text-font">
                                    <%# Eval("topics")%>
                                </div>
                                <div class="panel-body">
                                    Voted
                                    <%# Eval("TotalVoted") %>
                                    person(s)
                                    <asp:Label runat="server" ID="lblResult"></asp:Label>. </span>
                                    <br />
                                    <asp:RadioButtonList runat="server" ID="rdoPoll" DataTextField="optiontext" DataValueField="optionid" />
                                    <br />
                                    <asp:Button ID="btnVote" runat="server" Text="Vote" OnCommand="btnVote_Command" Enabled='<%# Eval("HasVoted").ToString() == "0" ? true : false %>'
                                        CommandArgument='<%# Container.DataItemIndex %>' />
                                </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

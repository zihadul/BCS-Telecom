<%@ Page Title="Poll" Language="C#" MasterPageFile="~/MasterPages/Member.master"
    AutoEventWireup="true" CodeFile="PollResults.aspx.cs" Inherits="PollResults" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel runat="server" ID="pnlExecutive" Visible="False">
                <fieldset>
                    <legend>Executive Committee Decision </legend>
                    <asp:GridView ID="gvExecutive" runat="server" DataKeyNames="pollid" AllowPaging="true"
                        ShowHeader="false" PageSize="10" OnRowDataBound="gvExecutive_RowDataBound" OnPageIndexChanging="gvExecutive_PageIndexChanging">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <span class="Note2">
                                        <%# Eval("topics")%>
                                    </span>
                                    <br />
                                    <span class="Note1">Voted
                                        <%# Eval("TotalVoted") %>
                                        person(s). </span>
                                    <asp:Label runat="server" ID="lblNote" CssClass="Note1" />
                                    <ul>
                                        <asp:GridView ID="dlPoll" runat="server" ShowHeader="false" SkinID="sdf" AutoGenerateColumns="false"
                                            GridLines="None" ShowFooter="false" AllowPaging="false" CellPadding="4">
                                            <Columns>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <li>
                                                            <%# Eval("optiontext") %></li>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField>
                                                    <ItemTemplate>
                                                        <b>
                                                            <%# Eval("OptionVote").ToString() == "0" ? "0" : ((int.Parse(Eval("OptionVote").ToString()) * 100) / int.Parse(Eval("TotalVote").ToString())).ToString()%>%</b>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                    </ul>
                                    <div class="spacer2">
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </fieldset>
                <br />
                &nbsp;
            </asp:Panel>
            <asp:GridView ID="gv" runat="server" DataKeyNames="pollid" AllowPaging="true" ShowHeader="false"
                PageSize="10" OnRowDataBound="gv_RowDataBound" OnPageIndexChanging="gv_PageIndexChanging">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <span class="Note2">
                                <%# Eval("topics")%>
                            </span>
                            <br />
                            <span class="Note1">Voted
                                <%# Eval("TotalVoted") %>
                                person(s). </span>
                            <asp:Label runat="server" ID="lblNote" CssClass="Note1" />
                            <ul>
                                <asp:GridView ID="dlPoll" runat="server" ShowHeader="false" SkinID="sdf" AutoGenerateColumns="false"
                                    GridLines="None" ShowFooter="false" AllowPaging="false" CellPadding="4">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <li>
                                                    <%# Eval("optiontext") %></li>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <b>
                                                    <%# Eval("OptionVote").ToString() == "0" ? "0" : ((int.Parse(Eval("OptionVote").ToString()) * 100) / int.Parse(Eval("TotalVote").ToString())).ToString()%>%</b>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </ul>
                            <div class="spacer2">
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

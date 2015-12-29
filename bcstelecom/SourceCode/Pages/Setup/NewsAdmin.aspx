<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="NewsAdmin.aspx.cs" Inherits="Pages_Admin_NewsAdmin" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="mb-10px">
                <asp:Button CssClass="btn btn-primary" ID="btnAddNew" runat="server" Text="Add New"
                    PostBackUrl="AddEditNews.aspx" />
            </div>
            <asp:GridView ID="gv" runat="server" DataKeyNames="news_id" SkinID="skinGridList"
                AutoGenerateColumns="false" AllowPaging="true" PageSize="10" OnPageIndexChanging="gv_PageIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <%# Common.Decoding(Eval("news_title").ToString())%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Summary">
                        <ItemTemplate>
                            <%# Common.Decoding(Eval("Summary").ToString())%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Expiry Date">
                        <ItemTemplate>
                            <%#  Eval("ExpiryDate").ToString() == "" ? "" : Convert.ToDateTime(Eval("ExpiryDate")).ToString("MMM d, yyyy")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" runat="server" ToolTip="Edit" Text="" PostBackUrl='<%# String.Concat("~/Pages/Setup/AddEditNews.aspx?Id=", Eval("news_id").ToString()) %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="40"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" ToolTip="Delete" Text="" OnCommand="btnDelete_Command"
                                OnClientClick=" return confirm('Clicking ok will delete this record permanently.') "
                                CommandArgument='<%# Eval("news_id") %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="40"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

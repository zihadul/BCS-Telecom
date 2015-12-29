<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="ResourceList.aspx.cs" Inherits="Pages_Setup_ResourceList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="clearfix mb-10px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" runat="server" Text="Add New"
                    PostBackUrl="AddEditResource.aspx" />
            </div>
            <asp:GridView SkinID="skinGridList" ID="gv" runat="server" OnPageIndexChanging="gv_PageIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <%# Eval("title")%>
                        </ItemTemplate>
                        <HeaderStyle CssClass="nowrap"></HeaderStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Expire Date">
                        <ItemTemplate>
                            <%# Convert.ToDateTime(Eval("ExpireDate")).ToString("dd-MMM-yyyy")%>
                        </ItemTemplate>
                         <ItemStyle CssClass="ItemStyle" Width="120px" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnDownload" runat="server" Text="Download" OnCommand="btnDownload_Command"
                                CommandArgument='<%# Eval("AttachmentName") %>' />
                        </ItemTemplate>
                        <ItemStyle CssClass="ItemStyle" Width="80px" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" Text="" ToolTip="Edit" PostBackUrl='<%# String.Concat("AddEditResource.aspx?ID=", Eval("documentid").ToString()) %>'
                                runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="50" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" Text="" ToolTip="Delete" OnCommand="btnDelete_Command"
                                OnClientClick="return confirm('Clicking ok will delete this record permanently.')"
                                CommandArgument='<%# Eval("documentid") %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="50" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="ResourceSetup.aspx.cs" Inherits="Pages_Admin_ResourceSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="pb-10px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" Text="Add New" runat="server"
                    PostBackUrl="~/Pages/Admin/ResourceAddEdit.aspx" />
            </div>
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" DataKeyNames="Id"
                AllowPaging="true" PageSize="10" SkinID="skinGridList" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title"></asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" Text="" ToolTip="Edit" PostBackUrl='<%# String.Concat("~/Pages/Admin/ResourceAddEdit.aspx?ID=", Eval("Id").ToString()) %>'
                                runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="50" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" Text="" ToolTip="Delete" OnCommand="btnDelete_Command"
                                OnClientClick=" return confirm('Clicking ok will delete this record permanently.') "
                                CommandArgument='<%# Eval("Id") %>' SkinID="delete" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="50" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

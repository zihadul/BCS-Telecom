<%@ Page Title="Tournament Gallery Category" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Pages_Admin_Category" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="mb-10px clearfix">
        <asp:Button CssClass="btn btn-primary" ID="ImageButton1" runat="server" Text="Add New" PostBackUrl="AddEditCategory.aspx" />
    </div>
    <asp:GridView ID="gv" runat="server" DataKeyNames="CID" SkinID="skinGridList" AutoGenerateColumns="false"
        OnPageIndexChanging="gv_PageIndexChanging" AllowPaging="True" PageSize="10" >
        <Columns>
            <asp:TemplateField HeaderText="Category Name">
                <ItemTemplate>
                    <%# Eval("CName") %>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button CssClass="btn-edit" ID="btnEdit" runat="server" ToolTip="Edit" Text="" PostBackUrl='<%# String.Concat("~/Pages/Setup/AddEditCategory.aspx?Id=",Eval("CID").ToString()) %>' />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="40" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" ToolTip="Delete" Text="" OnCommand="btnDelete_Command"
                        OnClientClick=" return confirm('Clicking ok will delete this record permanently.') "
                        CommandArgument='<%# Eval("CID") %>' />
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="40" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

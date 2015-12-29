<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="HeaderSetup.aspx.cs" Inherits="Pages_Admin_HeaderSetup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="pb-10px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" Text="Add New" runat="server"
                    PostBackUrl="~/Pages/Admin/HeaderAddEdit.aspx" />
            </div>
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" DataKeyNames="Id"
                AllowPaging="true" PageSize="10" SkinID="skinGridList" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ImageUrl='<%# String.Concat("~/Resources/Images/Header/", Eval("Image").ToString()) %>'
                                runat="server" ID="btnImg" Width="50%" Height="80%" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="400" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Active">
                        <ItemTemplate>
                            <%#  Eval("Active").ToString() == "1" ? "Yes" : "No"%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="300" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" ToolTip="Edit" Text="" PostBackUrl='<%# String.Concat("~/Pages/Admin/HeaderAddEdit.aspx?ID=", Eval("Id").ToString()) %>'
                                runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="40px" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate >
                            <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" ToolTip="Delete" Text="" OnCommand="btnDelete_Command"
                                OnClientClick=" return confirm('Clicking ok will delete this record permanently.') "
                                CommandArgument='<%# Eval("Id") %>' SkinID="delete"/>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="40px" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

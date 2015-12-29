<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="BannerList.aspx.cs" Inherits="Pages_Admin_BannerList" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="pb-10px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" Text="Add New" runat="server"
                    PostBackUrl="~/Pages/Admin/AddEditBanner.aspx" />
            </div>
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" DataKeyNames="banner_id"
                AllowPaging="true" PageSize="10" OnPageIndexChanging="gv_PageIndexChanging" SkinID="skinGridList"
                Width="100%">
                <Columns>
                    <asp:BoundField DataField="Banner_name" HeaderText="Banner Name"></asp:BoundField>
                    <asp:TemplateField HeaderText="Show as Banner">
                        <ItemTemplate>
                            <%#  Eval("visibility").ToString() == "1" ? "Yes" : "No" %>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="150" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ImageUrl='<%# String.Concat("~/Resources/Images/Banner/Thumbs/", Eval("display_image_path").ToString()) %>'
                                runat="server" ID="btnImg" Width="120" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="100" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" Text="" PostBackUrl='<%# String.Concat("~/Pages/Admin/AddEditBanner.aspx?ID=", Eval("banner_id").ToString()) %>'
                                runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="50" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" Text="" OnCommand="btnDelete_Command"
                                OnClientClick=" return confirm('Clicking ok will delete this record permanently.') "
                                CommandArgument='<%# Eval("banner_id") %>' SkinID="delete" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="50" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

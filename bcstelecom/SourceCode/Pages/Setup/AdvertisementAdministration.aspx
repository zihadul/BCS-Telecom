<%@ Page Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="AdvertisementAdministration.aspx.cs" Inherits="Pages_AdvertisementAdministration" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="clearfix mb-20px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" runat="server" Text="Add New"
                    PostBackUrl="AddEditAdvertisement.aspx" />
            </div>
            <asp:GridView SkinID="skinGridList" ID="gv" runat="server" OnPageIndexChanging="gv_PageIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ImageUrl='<%# String.Concat( "~/Resources/Images/UserFiles/Advertisement/thumbs/",  Eval("filename").ToString()) %>'
                                runat="server" ID="btnImg"  AlternateText="Advertisement"/>
                        </ItemTemplate>
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Link">
                        <ItemTemplate>
                            <a href='<%# Eval("link").ToString() %>' target="_blank">
                                <%# Eval("link").ToString() %></a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Owner">
                        <ItemTemplate>
                            <%# Eval("owner").ToString() %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Active">
                        <ItemTemplate>
                            <asp:CheckBox runat="server" ID="chk" Enabled="False" Checked='<%# bool.Parse(Eval("active").ToString()) %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="center" Width="60px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" runat="server" ToolTip="Edit" Text="" PostBackUrl='<%# String.Concat("AddEditAdvertisement.aspx?ID=", Eval("adid").ToString())%>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="center" Width="40px"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" ToolTip="Delete" Text="" OnCommand="btnDelete_Command"
                                CommandArgument='<%# Eval("adid") %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="center" Width="40px"></ItemStyle>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

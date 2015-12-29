<%@ Page Title="Notice Board" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="MessageAdministration.aspx.cs" Inherits="MessageAdministration"
    ValidateRequest="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="clearfix mb-20px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" runat="server" Text="Add New" PostBackUrl="AddEditMessage.aspx" />
            </div>
            <asp:GridView SkinID="skinGridList" ID="gv" runat="server" DataKeyNames="messageid"
                OnPageIndexChanging="gv_PageIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Message">
                        <ItemTemplate>
                             <%# Common.Decoding(Eval("message").ToString())%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Message Date">
                        <ItemTemplate>
                            <%# Convert.ToDateTime(Eval("messagedate").ToString()).ToString("dd-MMM-yyyy")%>
                        </ItemTemplate>
                        <HeaderStyle CssClass="nowrap"></HeaderStyle>
                        <ItemStyle CssClass="nowrap"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Display Until">
                        <ItemTemplate>
                            <%# Eval("displaytill").ToString() == "" ? "" : Convert.ToDateTime(Eval("displaytill").ToString()).ToString("dd-MMM-yyyy")%>
                        </ItemTemplate>
                        <HeaderStyle CssClass="nowrap"></HeaderStyle>
                        <ItemStyle CssClass="nowrap"></ItemStyle>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" ToolTip="Edit" Text="" PostBackUrl='<%# String.Concat("AddEditMessage.aspx?ID=", Eval("messageid").ToString()) %>'
                                runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="40" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-delete" ID="btnDelete" ToolTip="Delete" runat="server" Text="" OnCommand="btnDelete_Command"
                                OnClientClick="return confirm('Clicking ok will delete this record permanently.')"
                                CommandArgument='<%# Eval("messageid") %>' />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="40" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

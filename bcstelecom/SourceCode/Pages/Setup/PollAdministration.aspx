<%@ Page Title="Poll Setup" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="PollAdministration.aspx.cs" Inherits="PollAdministration" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="mb-10px clearfix">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" runat="server" Text="Add New"
                    PostBackUrl="AddEditPoll.aspx" />
            </div>
            <asp:GridView SkinID="skinGridList" ID="gv" runat="server" DataKeyNames="pollid"
                OnPageIndexChanging="gv_PageIndexChanging">
                <Columns>
                    <asp:BoundField HeaderText="Topics" DataField="topics" />
                    <asp:TemplateField HeaderText="Create Date">
                        <ItemTemplate>
                            <%#  Convert.ToDateTime(Eval("expiredate")).ToString("dd-MMM-yyyy")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Expire Date">
                        <ItemTemplate>
                            <%#  Convert.ToDateTime(Eval("expiredate")).ToString("dd-MMM-yyyy HH:mm tt")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CheckBoxField HeaderText="Enabled for Voting" DataField="enableforvoting">
                        <ItemStyle CssClass="ItemStyle" HorizontalAlign="Center" />
                    </asp:CheckBoxField>
                    <asp:CheckBoxField HeaderText="Only for Executive Committee" DataField="onlyforec">
                        <ItemStyle CssClass="ItemStyle" HorizontalAlign="Center" />
                    </asp:CheckBoxField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" Text="" ToolTip="Edit" PostBackUrl='<%# String.Concat("AddEditPoll.aspx?ID=", Eval("pollid").ToString()) %>'
                                runat="server" />
                        </ItemTemplate>
                        <ItemStyle CssClass="ItemStyle" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" Text="" ToolTip="Delete"
                                OnCommand="btnDelete_Command" OnClientClick="return confirm('Clicking ok will delete this record permanently.')"
                                CommandArgument='<%# Eval("pollid") %>' />
                        </ItemTemplate>
                        <ItemStyle CssClass="ItemStyle" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

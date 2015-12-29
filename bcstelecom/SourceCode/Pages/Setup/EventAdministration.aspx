<%@ Page Title="Event Setup" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="EventAdministration.aspx.cs" Inherits="EventAdministration"
    ValidateRequest="false" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="clearfix mb-10px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" runat="server" Text="Add New"
                    PostBackUrl="AddEditEvent.aspx" />
            </div>
            <asp:GridView SkinID="skinGridList" ID="gv" runat="server" DataKeyNames="Event_id"
                OnPageIndexChanging="gv_PageIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderText="Title">
                        <ItemTemplate>
                            <%# Common.Decoding(Eval("Event_title").ToString()) %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Summary">
                        <ItemTemplate>
                            <%# Common.Decoding(Eval("Summary").ToString())%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Event&nbsp;Date">
                        <ItemTemplate>
                            <%#  Eval("Event_date").ToString() == "" ? "" : Convert.ToDateTime(Eval("Event_date")).ToString("MMM d, yyyy")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Expiry&nbsp;Date">
                        <ItemTemplate>
                            <%#  Eval("ExpiryDate").ToString() == "" ? "" : Convert.ToDateTime(Eval("ExpiryDate")).ToString("MMM d, yyyy")%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" ToolTip="Edit" Text="" PostBackUrl='<%# String.Concat("AddEditEvent.aspx?ID=", Eval("Event_id").ToString()) %>'
                                runat="server" />
                        </ItemTemplate>
                        <ItemStyle CssClass="ItemStyle" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-delete" ID="btnDelete" ToolTip="Delete" runat="server" Text="" OnCommand="btnDelete_Command"
                                OnClientClick="return confirm('Clicking ok will delete this record permanently.')"
                                CommandArgument='<%# Eval("Event_id") %>' />
                        </ItemTemplate>
                        <ItemStyle CssClass="ItemStyle" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

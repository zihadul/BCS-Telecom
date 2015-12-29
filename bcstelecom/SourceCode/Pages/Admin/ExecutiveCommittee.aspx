<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="ExecutiveCommittee.aspx.cs" Inherits="Pages_Admin_ExecutiveCommittee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="row clearfix">
                <div class="col-lg-4 col-md-4">
                    <asp:DropDownList ID="ddlyear" runat="server" DataValueField="id" DataTextField="year"
                        AutoPostBack="true" OnSelectedIndexChanged="ddlyear_SelectedIndexChanged" CssClass=" dropdown form-control">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="clearfix mb-10px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" Text="Add New" runat="server"
                    PostBackUrl="~/Pages/Admin/ExecutiveCommitteeAddEdit.aspx" />
            </div>
            <asp:UpdatePanel runat="server" ID="updatepanelExecutiveC" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" DataKeyNames="Id"
                        AllowPaging="true" PageSize="100" SkinID="skinGridList" Width="100%">
                        <Columns>
                            <asp:TemplateField HeaderText="Serial">
                                <ItemTemplate>
                                    <%# Eval("Priority") %>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="40" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="membername" HeaderText="Name"></asp:BoundField>
                            <asp:BoundField DataField="designation" HeaderText="Designation"></asp:BoundField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CssClass="btn-edit" ID="btnEdit" ToolTip="Edit" PostBackUrl='<%# String.Concat("~/Pages/Admin/ExecutiveCommitteeAddEdit.aspx?ID=", Eval("id").ToString()) %>'
                                        runat="server" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="40" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CssClass="btn-delete" ID="btnDelete" ToolTip="Delete" runat="server"
                                        OnCommand="btnDelete_Command" OnClientClick=" return confirm('Clicking ok will delete this record permanently.') "
                                        CommandArgument='<%# Eval("id") %>' SkinID="delete" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="40" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddlyear" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

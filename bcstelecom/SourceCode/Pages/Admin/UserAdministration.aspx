<%@ Page EnableEventValidation="false" Language="C#" AutoEventWireup="true" ValidateRequest="false"
    MasterPageFile="~/MasterPages/Admin.master" CodeFile="UserAdministration.aspx.cs"
    Inherits="UserAdministration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <asp:Panel runat="server" DefaultButton="btnSearch">
                <div class="member-search-form" style="padding-bottom: 20px">
                    <div class="clearfix row">
                        <div class="col-lg-4 col-md-4">
                            <label>
                                User Name:</label>
                            <asp:TextBox ID="tbxUserName" runat="server" class="form-control" />
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <label>
                                Email:</label>
                            <asp:TextBox ID="tbxEmail" runat="server" class="form-control" />
                        </div>
                        <div class="col-lg-2 col-md-2">
                            <label>
                                Role:</label>
                            <asp:DropDownList runat="server" ID="ddlRole" AppendDataBoundItems="True" class="form-control">
                                <asp:ListItem Text="All" />
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-2 col-md-2" style="padding-top: 15px">
                            <asp:Button CssClass="btn btn-primary" ID="btnSearch" OnClick="btnSearch_Click" runat="server"
                                Text="Search" />
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <div class="clearfix" style="padding-top: 10px;">
                <asp:Button CssClass="btn btn-primary" ID="btnAddNew" runat="server" Text="Add New"
                    PostBackUrl="~/Pages/Admin/AddEditUser.aspx" />
            </div>
            <div style="padding-top: 10px;">
            </div>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <div class="text-right">
                        <b>Total User :</b>&nbsp;<asp:Label ID="lblNumberOfTotalUsers" runat="server"></asp:Label>
                    </div>
                    <asp:GridView SkinID="skingvMemberDirectory" ID="gv" runat="server" DataKeyNames="UserName"
                        AutoGenerateColumns="false" PageSize="20" AllowPaging="True" OnPageIndexChanging="gv_PageIndexChanging">
                        <Columns>
                            <asp:BoundField HeaderText="User Name" DataField="UserName">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Email" DataField="Email">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Create Date">
                                <ItemTemplate>
                                    <%# Convert.ToDateTime(Eval("CreateDate").ToString()).ToString("dd-MMM-yyyy")%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Last Login Date">
                                <ItemTemplate>
                                    <%# Convert.ToDateTime(Eval("LastLoginDate").ToString()).ToString("dd-MMM-yyyy")%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Suspended">
                                <ItemTemplate>
                                    <%# Eval("IsApproved").ToString() == "1" ? "No" : "Yes"%>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Role" DataField="RoleName">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btnSuspend" runat="server" Text='<%# Eval("IsApproved").ToString()== "1" ? "Suspend" : "Activate" %>'
                                    Tooltip='<%# Eval("IsApproved").ToString()== "1" ? "Suspend" : "Activate" %>'
                                        CommandArgument='<%# Eval("UserName") %>' OnCommand="btnSuspend_Command"></asp:Button>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CssClass="btn-reset" ID="btnResetPassword" ToolTip="Password Reset" PostBackUrl='<%# String.Concat("~/Pages/Security/ResetPassword.aspx?UN=", Eval("UserName").ToString()) %>'
                                        Text="" runat="server" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" CssClass="GridCellStyle" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <asp:Button CssClass="btn-account-edit" ID="Button1" runat="server" ToolTip="Account Edit"
                                        PostBackUrl='<%# String.Concat("~/Pages/Security/EditUser.aspx?UN=", Eval("UserName").ToString()) %>' />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CssClass="btn-member-edit" ID="btnEdit" ToolTip="Member Edit" PostBackUrl='<%# String.Concat("EditProfile.aspx?UserName=", Eval("UserName").ToString()) %>'
                                        Text="" runat="server" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" CssClass="GridCellStyle" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CssClass="btn-delete" ID="btnDelete" ToolTip="Delete" runat="server"
                                        CommandName="Delete" Text="" CommandArgument='<%# Eval("UserName") %>' OnClientClick="return confirm('Pressing OK will delete this record. Do you want to continue?')"
                                        OnCommand="btnDelete_Command"></asp:Button>
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

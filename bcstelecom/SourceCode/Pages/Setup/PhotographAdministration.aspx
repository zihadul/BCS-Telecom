<%@ Page Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="PhotographAdministration.aspx.cs" Inherits="Pages_PhotographAdministration" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel runat="server" ID="pnlFilter" Width="100%">
                <div class="member-search-form">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <label class="">
                                            Photo Album:</label>
                                        <asp:DropDownList CssClass="form-control" ID="ddlCategory" runat="server" ForeColor="#000"
                                            AppendDataBoundItems="true" AutoPostBack="true" DataTextField="CName" DataValueField="CID">
                                            <asp:ListItem Text="Select Album" Value="0"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="'Album' cannot be blank. Please enter 'Album'."
                                            ControlToValidate="ddlCategory" Display="None">*</asp:RequiredFieldValidator>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="ddlCategory" EventName="SelectedIndexChanged" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <asp:Button CssClass="btn btn-search" runat="server" ID="btnSearch" Text="Search"
                                    OnClick="btnSearch_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <ajaxToolkit:RoundedCornersExtender Radius="4" runat="server" ID="rc1" TargetControlID="pnlFilter"
                Enabled="True" />
            <div class="mb-20px clearfix">
            </div>
            <div class="mb-20px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" runat="server" Text="Add New "
                    PostBackUrl="AddEditPhotoGallery.aspx" />
            </div>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:GridView ID="gv" runat="server" OnPageIndexChanging="gv_PageIndexChanging" DataKeyNames="ID"
                        SkinID="skinGridList" AutoGenerateColumns="false" AllowPaging="True" PageSize="8">
                        <Columns>
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ImageUrl='<%# String.Concat("~/Resources/Images/UserFiles/PhotoGallery/Thumbs/", Eval("ImagePath").ToString()) %>'
                                        runat="server" ID="btnImg" AlternateText='<%# Eval(("Title")) %>' Width="120" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CssClass="btn-edit" ID="btnEdit" runat="server" ToolTip="Edit" Text="" PostBackUrl='<%# String.Concat("~/Pages/Setup/AddEditPhotoGallery.aspx?Id=", Eval("ID").ToString()) %>' />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="40" />
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" ToolTip="Delete" Text="" OnCommand="btnDelete_Command"
                                        OnClientClick=" return confirm('Clicking ok will delete this record permanently.') "
                                        CommandArgument='<%# Eval("Id") %>' />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" Width="40" />
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

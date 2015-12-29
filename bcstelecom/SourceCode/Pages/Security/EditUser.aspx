<%@ Page Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="EditUser.aspx.cs" Inherits="Pages_Security_EditUser" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="form-horizontal">
                <div>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="Submit" />
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                        User Name:<span class="required">*</span>
                    </label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="tbxUserName" runat="server" Enabled="false"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                        Role:<span class="required">*</span>
                    </label>
                    <div class="col-md-4">
                        <asp:DropDownList CssClass="form-control" ID="ddlRole" runat="server" />
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="ddlRole" ErrorMessage="Please select 'Role'." ToolTip="Role is required."
                            ValidationGroup="Submit">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                        E-mail:<span class="required">*</span>
                    </label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="tbxEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="EmailRequired" runat="server" ControlToValidate="tbxEmail"
                            ErrorMessage="Please enter 'E-mail'." ToolTip="E-mail is required." ValidationGroup="Submit">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ValidationGroup="Submit" Display="None" ID="RegularExpressionValidator2"
                            runat="server" ErrorMessage="Invalid Email Address." ControlToValidate="tbxEmail"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-10 col-md-offset-2">
                        <asp:Button CssClass="btn btn-primary" ID="btnSave" Text="Save" ValidationGroup="Submit"
                            runat="server" OnClick="btnSave_Click" />&nbsp;&nbsp;
                        <asp:Button CssClass="btn btn-primary" ID="hlkBack" runat="server" PostBackUrl="~/Pages/Admin/UserAdministration.aspx"
                            Text="Back" />
                    </div>
                </div>
            </div>
            <triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
            </triggers>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

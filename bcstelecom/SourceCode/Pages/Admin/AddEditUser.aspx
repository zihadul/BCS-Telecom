<%@ Page Language="C#" AutoEventWireup="true" Inherits="AddEditUser" CodeFile="AddEditUser.aspx.cs"
    ValidateRequest="false" MasterPageFile="~/MasterPages/Admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="form-horizontal">
                <div class="form-group">
                    <div>
                        <asp:ValidationSummary runat="server" ID="vals111" ValidationGroup="CreateUserWizard1" />
                        <asp:Label runat="server" ID="lblMessage" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        User Name: <span style="color: Red;">*</span>
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox CssClass="form-control" ID="tbxUserName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="UserNameRequired" runat="server" ControlToValidate="tbxUserName"
                            ErrorMessage="Eenter User Name." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        Password: <span style="color: Red;">*</span>
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox CssClass="form-control" ID="tbxPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="PasswordRequired" runat="server" ControlToValidate="tbxPassword"
                            ErrorMessage="Eenter Password." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        Confirm Password: <span style="color: Red;">*</span>
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox CssClass="form-control" ID="tbxConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="ConfirmPasswordRequired" runat="server"
                            ControlToValidate="tbxConfirmPassword" ErrorMessage="Enter Confirm Password."
                            ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator Display="None" ID="PasswordCompare" runat="server" ControlToCompare="tbxPassword"
                            ControlToValidate="tbxConfirmPassword" ErrorMessage="'Password' and 'Confirmation Password' must match."
                            ValidationGroup="CreateUserWizard1">*</asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        E-mail: <span style="color: Red;">*</span>
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox CssClass="form-control" ID="tbxEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="EmailRequired" runat="server" ControlToValidate="tbxEmail"
                            ErrorMessage="Enter Email." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regVEmail" runat="server" Display="None" ErrorMessage="Invalid email format."
                            ValidationGroup="CreateUserWizard1" ControlToValidate="tbxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        Assign Role:
                    </label>
                    <div class="col-md-6">
                        <asp:DropDownList CssClass="form-control" ID="ddlRole" runat="server" Width="150px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="ddlRole" ErrorMessage="Select Role." ToolTip="Role is required."
                            ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-3 col-md-10">
                        <asp:Button CssClass="btn btn-primary" ID="btnAddEditUser" runat="server" OnClick="btnAddEditUser_Click"
                            Text="Save" ValidationGroup="CreateUserWizard1" />
                        <asp:Button CssClass="btn btn-primary" ID="btnBack" runat="server" Text="Back" PostBackUrl="UserAdministration.aspx"
                            CausesValidation="False" />
                    </div>
                </div>
            </div>
            <triggers>
                <asp:AsyncPostBackTrigger ControlID="btnAddEditUser" EventName="Click" />
            </triggers>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

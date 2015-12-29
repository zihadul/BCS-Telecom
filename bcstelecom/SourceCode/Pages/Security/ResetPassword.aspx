<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="ResetPassword.aspx.cs" Inherits="Pages_Security_ResetPassword" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="form-horizontal">
                <div class="col-md-12">
                    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="User" runat="server" />
                    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        User Name:</label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="txtUserName" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        New Password:<span class="required">*</span>
                    </label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="Password" SkinID="SinglelineShortText" runat="server"
                            TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="PasswordRequired" runat="server" ControlToValidate="Password"
                            ErrorMessage="Please enter 'New Password'." ToolTip="Password is required." ValidationGroup="User">-</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator Display="None" ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="Password" ErrorMessage="Password length must be 5 or more"
                            ValidationExpression="\w{5,255}" ValidationGroup="User">-</asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        Confirm New Password:<span class="required">*</span>
                    </label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="ConfirmPassword" SkinID="SinglelineShortText"
                            runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="ConfirmPasswordRequired" runat="server"
                            ControlToValidate="ConfirmPassword" ErrorMessage="Please enter 'Confirm New Password'."
                            ToolTip="Confirm Password is required." ValidationGroup="User">-</asp:RequiredFieldValidator>
                        <asp:CompareValidator Display="None" ID="CompareValidator1" ControlToCompare="Password"
                            ControlToValidate="ConfirmPassword" Operator="Equal" ValidationGroup="User" runat="server"
                            ErrorMessage="Password and confirm new password are not same">*</asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-md-offset-3">
                        <asp:Button CssClass="btn btn-primary" ID="btnReset" CausesValidation="true" ValidationGroup="User"
                            OnClientClick="return confirm('Pressing OK will reset the password of this user. Do you want to continue?')"
                            runat="server" Text="Reset" OnClick="btnReset_Click" />&nbsp;
                        <asp:Button CssClass="btn btn-primary" ID="btnList" runat="server" CausesValidation="false"
                            Text="Back" PostBackUrl="~/Pages/Admin/UserAdministration.aspx" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnReset" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

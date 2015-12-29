<%@ Page Language="C#" MasterPageFile="~/MasterPages/Member.master" AutoEventWireup="true"
    EnableEventValidation="false" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword"
    ValidateRequest="false" Title="Change Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" Width="100%">
        <ChangePasswordTemplate>
            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-md-2">
                        Old Password:<span class="required">*</span>
                    </label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="CurrentPasswordRequired" runat="server"
                            ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ToolTip="Password is required."
                            ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                        New Password:<span class="required">*</span>
                    </label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="NewPasswordRequired" runat="server"
                            ControlToValidate="NewPassword" ErrorMessage="New Password is required." ToolTip="New Password is required."
                            ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                        Confirm New Password:<span class="required">*</span>
                    </label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="ConfirmNewPasswordRequired" runat="server"
                            ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required."
                            ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                            ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry."
                            ValidationGroup="ChangePassword1"></asp:CompareValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <asp:Button CssClass="btn btn-primary" ID="ChangePasswordPushButton" runat="server"
                            CommandName="ChangePassword" Text="Change Password" ValidationGroup="ChangePassword1" />
                    </div>
                </div>
            </div>
        </ChangePasswordTemplate>
        <SuccessTemplate>
            Your password has been changed.
        </SuccessTemplate>
    </asp:ChangePassword>
</asp:Content>

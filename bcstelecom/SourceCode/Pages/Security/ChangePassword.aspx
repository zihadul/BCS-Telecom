<%@ Page Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    EnableEventValidation="false" CodeFile="ChangePassword.aspx.cs" Inherits="ChangePassword"
    ValidateRequest="false" Title="c" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:ChangePassword ID="ChangePassword1" runat="server" CancelDestinationPageUrl="~/Default.aspx"
                Width="100%">
                <ChangePasswordTemplate>
                    <div class="form-horizontal">
                        <div class="col-md-12">
                            <asp:ValidationSummary ID="validation1" runat="server" ValidationGroup="ChangePassword1" />
                        </div>
                        <div class="form-group">
                            <div class="col-md-3">
                                <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword">Old Password:</asp:Label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox CssClass="form-control" ID="CurrentPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="None" ID="CurrentPasswordRequired" runat="server"
                                    ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ToolTip="Password is required."
                                    ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3">
                                <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword">New Password:</asp:Label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox CssClass="form-control" ID="NewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="None" ID="NewPasswordRequired" runat="server"
                                    ControlToValidate="NewPassword" ErrorMessage="New Password is required." ToolTip="New Password is required."
                                    ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3">
                                <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword">Confirm Password:</asp:Label>
                            </div>
                            <div class="col-md-4">
                                <asp:TextBox CssClass="form-control" ID="ConfirmNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="None" ID="ConfirmNewPasswordRequired" runat="server"
                                    ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required."
                                    ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword"
                                    ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry."
                                    ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-9 col-md-offset-3">
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

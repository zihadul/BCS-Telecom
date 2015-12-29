<%@ Page Language="C#" MasterPageFile="~/MasterPages/OneColumn.master" AutoEventWireup="true"
    CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" Title="Forgot Password" %>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="cphContent">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" OnVerifyingUser="ValidateUser"
        SuccessText="Your password was successfully reset and emailed to you." Width="100%">
        <MailDefinition IsBodyHtml="true" BodyFileName="~/Pages/Security/ForgotPasswordEmail.txt"
            From="postmaster@bcstelecom.org.bd/" Subject="Password Reset" Priority="High">
        </MailDefinition>
        <UserNameTemplate>
            <div class="col-md-10">
                <div class="form-horizontal">
                    <div class="">
                        <span class="text-warning">Enter your User Name to get a new password<br>
                            sent to your registered email address. </span>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" />
                            <span class="Error">
                                <asp:Literal ID="lblMessage" runat="server" EnableViewState="false"></asp:Literal></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 col-sm-2">
                           User Name:
                        </label>
                        <div class="col-md-4 col-sm-6">
                            <asp:TextBox CssClass="form-control" ID="UserName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="UserName" ErrorMessage="User Name can not be empty.">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-10 col-sm-offset-2 col-md-10 col-md-offset-2">
                            <asp:Button CssClass="btn btn-primary" ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" />
                        </div>
                    </div>
                </div>
            </div>
        </UserNameTemplate>
    </asp:PasswordRecovery>
</asp:Content>

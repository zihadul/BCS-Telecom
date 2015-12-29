<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Login.ascx.cs" Inherits="UserControls_Login" %>
<div class="panel panel-primary login-panel">
    <div class="panel-heading">
        <h3 class="panel-title">
            Login</h3>
    </div>
    <div class="panel-body">
        <asp:Login ID="Login1" runat="server" TitleText="" OnLoggedIn="Login1_LoggedIn" OnAuthenticate="Login1_Authenticate"
            FailureAction="RedirectToLoginPage" Width="100%">
            <LayoutTemplate>
                <asp:Panel runat="server" ID="pnlLogin" DefaultButton="LoginButton">
                    <div class="">
                        <div class="clearfix">
                            <span class="" style="color: red">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="ValidateLoginGroup"
                                    Style="margin-left: 0px" />
                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal></span>
                        </div>
                        <div class="form-group clearfix">
                            <label>
                                User Name:</label>
                            <asp:TextBox CssClass="form-control" ID="UserName" runat="server" placeholder="enter username"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="None" ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="ValidateLoginGroup">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label>
                                Password:</label>
                            <asp:TextBox CssClass="form-control" ID="Password" runat="server" TextMode="Password"
                                placeholder="enter password"></asp:TextBox>
                            <asp:RequiredFieldValidator Display="None" ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ValidateLoginGroup">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <asp:Button CssClass="btn btn-default btn-group-lg" ID="LoginButton" runat="server"
                                CommandName="Login" Text="Log In" ValidationGroup="ValidateLoginGroup" />
                        </div>
                        <div>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/Security/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
                        </div>
                    </div>
                </asp:Panel>
            </LayoutTemplate>
        </asp:Login>
    </div>
</div>

<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Feedback.ascx.cs" Inherits="UserControls_Feedback" %>
<%@ Register TagPrefix="cc1" Namespace="MSCaptcha" Assembly="MSCaptcha" %>
<asp:UpdatePanel runat="server" ID="updateepnl">
    <ContentTemplate>
        <div class="col-md-12">
            <div class="contact-us-form">
                <div class="mb-10px">
                    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="ContactGroup" runat="server"
                        ForeColor="Red" />
                    <asp:Label ID="lblMessage" runat="server" Text="" EnableViewState="false"></asp:Label>
                </div>
                <div class="form-group">
                    <label style="padding-top: 0">
                        Name:<span class="required">*</span>
                    </label>
                    <asp:TextBox CssClass="form-control" ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="Enter Name" ForeColor="Red" ControlToValidate="txtName" Text="*"
                        ValidationGroup="ContactGroup"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label>
                        Email:<span class="required">*</span></label>
                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="Enter Email" ForeColor="Red" ControlToValidate="txtEmail" Text="*"
                        ValidationGroup="ContactGroup"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator Display="None" ID="RegularExpressionValidator2" runat="server"
                        ValidationGroup="ContactGroup" ErrorMessage="Invalid Email Address" ForeColor="Red"
                        ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Text="*">*</asp:RegularExpressionValidator>
                </div>
                <div class="form-group">
                    <label>
                        Subject:<span class="required">*</span></label>
                    <asp:TextBox CssClass="form-control" ID="txtSubject" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" runat="server"
                        ValidationGroup="ContactGroup" ErrorMessage="Enter Subject" ForeColor="Red" ControlToValidate="txtSubject"
                        Text="*"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group" style="margin-bottom: 15px">
                    <label>
                        Message:<span class="required">*</span></label>
                    <asp:TextBox CssClass="form-control" ID="txtMessage" runat="server" TextMode="MultiLine"
                       Height="150"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" runat="server"
                        ValidationGroup="ContactGroup" ErrorMessage="Enter Message" ControlToValidate="txtMessage"
                        ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <cc1:CaptchaControl ID="Captcha1" runat="server" CaptchaBackgroundNoise="Low" CaptchaLength="4"
                        CaptchaLineNoise="None" CaptchaMinTimeout="15" CaptchaMaxTimeout="240" FontColor="#529E00"
                        alt="captcha" CssClass="captcha-img" />
                </div>
                <div class="form-group">
                    <label>
                        Captcha:<span class="required">*</span></label>
                    <asp:TextBox CssClass="form-control" ID="tbxCaptcha" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="reqCaptcha" runat="server" ControlToValidate="tbxCaptcha"
                        ValidationGroup="ContactGroup" Display="None" ErrorMessage="Enter the code shown in image." />
                </div>
                <div class="form-group">
                    <asp:Button CssClass="btn btn-primary" ID="Send" runat="server" ValidationGroup="ContactGroup" Text="Send" OnClick="Send_Click" />
                    &nbsp;&nbsp;
                    <asp:Button  CssClass="btn btn-primary" ID="btnReset" CausesValidation="false" runat="server" Text="Reset" OnClick="btnReset_Click" />
                </div>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>

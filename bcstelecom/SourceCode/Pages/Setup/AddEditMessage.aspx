<%@ Page Title="Add/Edit Notice" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    ValidateRequest="false" AutoEventWireup="true" CodeFile="AddEditMessage.aspx.cs"
    Inherits="Pages_Admin_AddEditMessage" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="form-horizontal">
                <div class="col-md-12">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                        Message:<span class="required">*</span>
                    </label>
                    <div class="col-md-10">
                        <cc1:Editor ID="txtMessage" runat="server" Width="100%" Height="300px" />
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Enter Message" ControlToValidate="txtMessage">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                        Display Untill:<span class="required">*</span>
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbxDate" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Enter Display Untill" ControlToValidate="tbxDate">*</asp:RequiredFieldValidator>
                        <ajaxToolkit:CalendarExtender runat="server" ID="ce1" TargetControlID="tbxDate" Format="dd-MMM-yyyy"
                            PopupPosition="BottomLeft" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                    </label>
                    <div class="col-md-6">
                        <asp:RadioButton runat="server" ID="rdoAll" Text="Send to All" GroupName="SendTo"
                            Checked="True" />
                        <asp:RadioButton runat="server" ID="rdoOfficial" Text="Send to Official" GroupName="SendTo" />
                        <asp:RadioButton runat="server" ID="rdoSelected" Text="Send to selected members"
                            GroupName="SendTo" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                    </label>
                    <div class="col-md-10">
                        <asp:UpdatePanel ID="UpdatePanel22" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <span style="font-size: 16px; font-weight: bold; display: inline-block; margin-bottom: 20px">
                                    Sort By Service ID/Graditation No:</span>
                                <ajaxToolkit:CollapsiblePanelExtender runat="server" ID="cpe1" TargetControlID="pnlMembers"
                                    CollapseControlID="rdoAll" ExpandControlID="rdoSelected" Collapsed="True" />
                                <asp:Panel runat="server" ID="pnlMembers">
                                    <asp:CheckBoxList CssClass="chkboxlist" Width="100%" runat="server" ID="chkMemberList"
                                        DataTextField="memberinfo" DataValueField="memberid" RepeatColumns="2" RepeatDirection="Vertical">
                                    </asp:CheckBoxList>
                                </asp:Panel>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button CssClass="btn btn-primary" runat="Server" ID="btnSave" Text="Save" OnClick="OnBtnSave_Click" />&nbsp;
                        <asp:Button CssClass="btn btn-primary" ID="hlkBack" runat="server" PostBackUrl="MessageAdministration.aspx"
                            CausesValidation="false" Text="Back" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

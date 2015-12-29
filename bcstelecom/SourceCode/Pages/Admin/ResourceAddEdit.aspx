<%@ Page Title="Add/Edit Resource" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="ResourceAddEdit.aspx.cs" Inherits="Pages_Admin_ResourceAddEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="form-horizontal">
                <div class="col-md-12">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="submit" />
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                        Title:<span class="required">*</span>
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox CssClass="form-control" ID="tbxTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator4" runat="server"
                            ValidationGroup="submit" ErrorMessage="Enter Title" ControlToValidate="tbxTitle">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2">
                        Details:
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox CssClass="form-control" ID="tbxDetails" runat="server" TextMode="MultiLine"
                            Rows="5"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button CssClass="btn btn-primary" runat="Server" Text="Save" ID="btnSave" OnClick="OnBtnSave_Click"
                            ValidationGroup="submit" />
                        <asp:Button CssClass="btn btn-primary" ID="hlkBack" Text="Back" runat="server" CausesValidation="false"
                            PostBackUrl="~/Pages/Admin/ResourceSetup.aspx" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

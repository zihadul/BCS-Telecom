<%@ Page Title="Designation Add/Edit" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="DesignationAddEdit.aspx.cs" Inherits="Pages_Admin_DesignationAddEdit" %>

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
                        Designation:<span class="required">*</span>
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox CssClass="form-control" ID="tbxTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator4" runat="server"
                            ValidationGroup="submit" ErrorMessage="Enter Designation" ControlToValidate="tbxTitle">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 col-sm-4">
                        Prority: <span style="color: Red;">*</span>
                    </label>
                    <div class="col-md-6 col-sm-8">
                        <asp:TextBox CssClass="form-control" runat="server" ID="tbxPriority" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="None"
                            ErrorMessage="Please enter Prority." ControlToValidate="tbxPriority" ValidationGroup="submit"></asp:RequiredFieldValidator>
                        <asp:Literal ID="Label1" runat="server" Text="(Please enter Numeric value)" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <asp:Button CssClass="btn btn-primary" runat="Server" Text="Save" ID="btnSave" OnClick="OnBtnSave_Click"
                            ValidationGroup="submit" />
                        <asp:Button CssClass="btn btn-primary" ID="hlkBack" Text="Back" runat="server" CausesValidation="false"
                            PostBackUrl="~/Pages/Admin/Designation.aspx" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

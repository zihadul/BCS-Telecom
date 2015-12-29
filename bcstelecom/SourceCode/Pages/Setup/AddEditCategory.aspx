<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="AddEditCategory.aspx.cs" Inherits="Pages_Admin_AddEditCategory" %>

<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="form-horizontal">
        <div class="form-group">
            <div class="col-md-12">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <asp:Label ID="lblError" runat="server" Font-Bold="True"></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Photo Album Name: <span class="required">*</span>
            </label>
            <div class="col-md-4">
                <asp:TextBox CssClass="form-control" ID="tbxCategory" runat="server" />
                <asp:RequiredFieldValidator ID="reqFilePhotograph" runat="server" Display="None"
                    ErrorMessage="Please enter Photo Album Name." ControlToValidate="tbxCategory"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-3 col-md-9">
                <asp:Button CssClass="btn btn-primary" runat="Server" ToolTip="Save" Text="Save" ID="btnSave" OnClick="btnSave_Click" />&nbsp;
                <asp:Button CssClass="btn btn-primary" ID="hlkBack" Text="Back" ToolTip="Back" runat="server" PostBackUrl="Category.aspx"
                    CausesValidation="False" />
            </div>
        </div>
    </div>
</asp:Content>

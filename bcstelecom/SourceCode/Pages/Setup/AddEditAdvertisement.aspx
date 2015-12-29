<%@ Page Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="AddEditAdvertisement.aspx.cs" Inherits="Pages_Admin_AddEditAdvertisement" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="form-horizontal">
        <div class="form-group">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="lblError" runat="server" Font-Bold="true" SkinID="message"></asp:Label>
        </div>
        <div class="form-group">
            <label class="col-md-2">
                Select File:
            </label>
            <div class="col-md-6">
                <asp:FileUpload runat="server" ID="fileAdvertisement" />
                <asp:RequiredFieldValidator ID="reqFileAdvertisement" runat="server" ErrorMessage="Select file"
                    ControlToValidate="fileAdvertisement">*</asp:RequiredFieldValidator>
                <div class="mb-40">    
                    <asp:Image runat="server" ID="imgDisplay" Visible="False" />
                    <asp:HiddenField runat="server" ID="hdnAttachmentName" />
                </div>
            </div>
        </div>
        <div class="form-group">
             <label class="col-md-2">
                Description:
            </label>
            <div class="col-md-10">
                <asp:TextBox ID="tbxDescription" runat="server" Width="410px" TextMode="MultiLine"
                    Rows="3" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2">
                Link:
            </label>
            <div class="col-md-6">
                <asp:TextBox CssClass="form-control" ID="tbxLink" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2">
                Owner:
            </label>
            <div class="col-md-6">
                <asp:TextBox CssClass="form-control" ID="tbxOwner" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2">
                Active:
            </label>
            <div class="col-md-6">
                <asp:CheckBox ID="chkActive" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button CssClass="btn btn-primary" runat="Server" ToolTip="Save" Text="Save" ID="btnUpload" OnClick="btnUpload_Click" />&nbsp;
                <asp:Button CssClass="btn btn-primary" ID="hlkBack" Text="Back" ToolTip="Back" runat="server" PostBackUrl="AdvertisementAdministration.aspx"
                    CausesValidation="false" />
            </div>
        </div>
    </div>
</asp:Content>

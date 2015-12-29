<%@ Page Title="Header Add/Edit" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="HeaderAddEdit.aspx.cs" Inherits="Pages_Admin_HeaderAddEdit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="form-horizontal">
        <div class="col-md-12">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        <div class="form-group">
            <label class="col-md-2" style="padding-top: 0">
                Active :
            </label>
            <div class="col-md-4">
                <asp:CheckBox ID="chkActive" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2" style="padding-top: 0">
                Image:<span class="required">*</span>
            </label>
            <div class="col-md-9">
                <asp:FileUpload ID="fileupDisplayImagePath" runat="server" />
                <asp:RequiredFieldValidator Display="None" ID="reqImage" runat="server" ValidationGroup="save"
                    ErrorMessage="Enter Image" ControlToValidate="fileupDisplayImagePath">*</asp:RequiredFieldValidator>
                <asp:Label ID="lblImage" runat="server" Visible="False"></asp:Label>
                <br />
                <asp:LinkButton CssClass="under-line" ID="btnShowDisplayImage" runat="server" Text="Show Image"
                    Visible="false" OnCommand="imgDisplayImage_Command" CommandArgument='<%# Eval("display_image_path") %>' />
                <asp:LinkButton CssClass="under-line" ID="btnRemoveDisplayImage" runat="server" Text="Remove Image"
                    Visible="false" OnClick="btnRemoveDisplayImage_Click" />
                <br />
                <asp:Literal ID="Literal1" runat="server" Text="(Allowed formats are: jpg, jpeg, bmp, png and gif.)"></asp:Literal><br />
                <asp:Literal ID="Literal2" runat="server" Text="(Image size 1920px * 250px .)"></asp:Literal>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-10 col-md-offset-2">
                <asp:Button CssClass="btn btn-primary" runat="Server" Text="Save" ID="btnSave" OnClick="OnBtnSave_Click"
                    ValidationGroup="save" />&nbsp;
                <asp:Button CssClass="btn btn-primary" ID="hlkBack" Text="Back" runat="server" CausesValidation="false"
                    PostBackUrl="HeaderSetup.aspx" />
            </div>
        </div>
    </div>
    <ajaxToolkit:ModalPopupExtender ID="Popup1" runat="server" TargetControlID="lnkDummy"
        PopupControlID="pnlImagePopUp" BackgroundCssClass="modalBackground" DropShadow="true"
        RepositionMode="RepositionOnWindowResizeAndScroll" OkControlID="buttonOK" CancelControlID="btnCancel">
    </ajaxToolkit:ModalPopupExtender>
    <asp:Panel ID="pnlImagePopUp" runat="server" CssClass="panel-default" Visible="False">
        <div class="modal-content">
            <div class="modal-header">
                <button id="btnCancel" type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">
                    Image Preview</h4>
            </div>
            <div class="modal-body">
                <asp:Image runat="server" ID="imgPhoto" Height="450px" />
            </div>
            <div class="modal-footer text-center" style="text-align: center">
                <asp:Button ID="buttonOK" runat="server" Text="Close" />
            </div>
        </div>
    </asp:Panel>
    <asp:LinkButton runat="server" ID="lnkDummy"></asp:LinkButton>
</asp:Content>

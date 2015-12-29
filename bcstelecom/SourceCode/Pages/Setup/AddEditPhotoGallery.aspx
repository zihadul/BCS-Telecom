<%@ Page Title="Add Edit Photo Gallery" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="AddEditPhotoGallery.aspx.cs" Inherits="Pages_Admin_AddEditPhotoGallery" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="form-horizontal">
        <div class="form-group col-md-12">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
        <div class="form-group">
            <asp:Label ID="lblError" runat="server" Font-Bold="True"></asp:Label>
        </div>
        <div class="form-group">
            <label class="col-md-2">
                Photo Album:<span class="required">*</span></label>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" AppendDataBoundItems="true"
                    DataTextField="CName" DataValueField="CID" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                    <asp:ListItem Text="Select Album" Value="0"></asp:ListItem>
                </asp:DropDownList>
                <asp:CompareValidator ID="RequiredFieldAnimatedValidator5" runat="server" ControlToValidate="ddlCategory"
                    ErrorMessage="Select Photo Album." Operator="NotEqual" ValueToCompare="0" Display="None">*</asp:CompareValidator>
            </div>
        </div>
        <div class="form-group ">
            <label class="col-md-2">
                Title:</label>
            <div class="col-md-6">
                <asp:TextBox runat="server" ID="tbxTitle" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-2">
                Select Image:<span class="required">*</span></label>
            <div class="col-md-5">
                <asp:FileUpload runat="server" ID="fileImage" />
                <asp:RequiredFieldValidator ID="reqFileImage" runat="server" ErrorMessage="Select image"
                    ControlToValidate="fileImage" Display="None">*</asp:RequiredFieldValidator>
                <asp:Label ID="lblImage" runat="server"></asp:Label>
                <asp:LinkButton runat="server" Text="Show Image" Visible="false" ID="btnImg" OnCommand="btnImg_Command" />&nbsp;
                <asp:LinkButton ID="btnRemoveDisplayImage" runat="server" Text="Remove display image"
                    Visible="false" OnClick="btnRemoveDisplayImage_Click" />
                <br />
                <asp:Literal ID="Literal1" runat="server" Text="(Allowed formats are: jpg, jpeg, bmp, png and gif.)"></asp:Literal>
                <asp:HiddenField runat="server" ID="hdnAttachmentName" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-10 col-md-offset-2">
                <asp:Button CssClass="btn btn-primary" runat="Server" ToolTip="Save" Text="Save" ID="btnUpload" OnClick="btnUpload_Click" />&nbsp;
                <asp:Button CssClass="btn btn-primary" ID="back" Text="Back" ToolTip="Back" runat="server" CausesValidation="False"
                    PostBackUrl="PhotographAdministration.aspx" />
            </div>
        </div>
    </div>
     <ajaxToolkit:ModalPopupExtender ID="Popup1" runat="server" TargetControlID="lnkDummy"
        PopupControlID="pnl1" BackgroundCssClass="modalBackground" DropShadow="true"
        RepositionMode="RepositionOnWindowResizeAndScroll" OkControlID="buttonOK" CancelControlID="btnCancel">
    </ajaxToolkit:ModalPopupExtender>
    <asp:Panel ID="pnl1" runat="server" CssClass="panel-default" DefaultButton="buttonOK" Visible="False">
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

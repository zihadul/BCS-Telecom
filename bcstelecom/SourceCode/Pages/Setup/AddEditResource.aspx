<%@ Page Title="Add/Edit Resource" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true" CodeFile="AddEditResource.aspx.cs" Inherits="Pages_Setup_AddEditResource" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" Runat="Server">
    <div class="form-horizontal">
        <div class="col-md-12">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="lblError" runat="server"></asp:Label>
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Resource Category:<span class="required">*</span>
            </label>
            <div class="col-md-6">
                <asp:DropDownList runat="server" ID="ddlCategory" CssClass="form-control" DataValueField="Id"
                    DataTextField="Title">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Title:<span class="required">*</span>
            </label>
            <div class="col-md-6">
                <asp:TextBox ID="tbxTitle" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage=" Enter Title" ControlToValidate="tbxTitle">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                New Untill:<span class="required">*</span>
            </label>
            <div class="col-md-6">
                <asp:TextBox ID="tbxDate" runat="server" CssClass="form-control" Width="200"></asp:TextBox>
                <ajaxToolkit:CalendarExtender runat="server" ID="ce1" TargetControlID="tbxDate" Format="dd-MMM-yyyy"
                    PopupPosition="BottomLeft" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage=" Enter Date"
                    ControlToValidate="tbxDate" Display="None">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Attachment:<span class="required">*</span>
            </label>
            <div class="col-md-6">
                <asp:FileUpload runat="server" ID="fileAttachment" />
                <asp:RequiredFieldValidator runat="server" ID="reqqAttachment" ControlToValidate="fileAttachment"
                    ErrorMessage=" Select Attachment" Text="*" Display="None" />
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:LinkButton runat="server" ID="btnDeleteAttachment" CausesValidation="False"
                            OnClientClick="return confirm('It will remove the attachment permanently. Sure to proceed?')"
                            Text="Delete Attachment" Visible="False" OnClick="btnDeleteAttachment_Click"></asp:LinkButton>
                        &nbsp;
                        <asp:HyperLink runat="server" ID="lnkViewFile" Text="View File" Visible="False" Target="_blank"></asp:HyperLink>
                        <asp:Label ID="lblImage" runat="server" Visible="false"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <asp:Literal ID="Literal1" runat="server" Text=" Allowed file format : pdf"></asp:Literal>
            </div>
        </div>
        <%--<div class="form-group">
            <label class="col-md-3">
                Only for Member:
            </label>
            <div class="col-md-6">
                <asp:CheckBox runat="server" ID="chkOnlyForMembers" />
            </div>
        </div>--%>
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-10">
                <asp:Button CssClass="btn btn-primary" runat="Server" ID="btnSave" Text="Save" OnClick="OnBtnSave_Click" />&nbsp;
                <asp:Button CssClass="btn btn-primary" ID="hlkBack" runat="server" PostBackUrl="ResourceList.aspx"
                    CausesValidation="false" Text="Back" />
            </div>
        </div>
    </div>
</asp:Content>


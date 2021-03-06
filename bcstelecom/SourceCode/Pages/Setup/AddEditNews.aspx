﻿<%@ Page Title="Add/Edit News" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    AutoEventWireup="true" CodeFile="AddEditNews.aspx.cs" Inherits="Pages_Admin_AddEditNews" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<asp:Content ID="Content3" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-12">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 pt7px">
                        Title:<span class="required">*</span>
                    </label>
                    <div class="col-md-10">
                        <asp:TextBox CssClass="form-control" ID="tbxTitle" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Title"
                            ControlToValidate="tbxTitle" Display="None">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 pt7px">
                        Summary:<span class="required">*</span>
                    </label>
                    <div class="col-md-10">
                        <cc1:Editor ID="txtSummary" runat="server" Width="100%" Height="250px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Summary"
                            ControlToValidate="txtSummary" Display="None">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 pt7px">
                        Expiry Date:<span class="required">*</span>
                    </label>
                    <div class="col-md-3">
                        <asp:TextBox CssClass="form-control" ID="tbxExpiryDate" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqDate" runat="server" ErrorMessage="Enter Date"
                            ControlToValidate="tbxExpiryDate" Display="None">*</asp:RequiredFieldValidator>
                        <ajaxToolkit:CalendarExtender runat="server" ID="ajtkce2" TargetControlID="tbxExpiryDate"
                            Format="dd-MMM-yyyy" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tbxExpiryDate"
                            ValidationExpression="^(([0-9])|([0-2][0-9])|([3][0-1]))\-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\-\d{4}$"
                            ErrorMessage="Invalid date format." Display="None" />
                    </div>
                </div>
                <div class="form-group">
                   
                        <label class="col-md-2">
                            Description:</label>
                        <label class="col-md-10">
                        <cc1:Editor ID="txtBodyText" runat="server" Width="100%" Height="250px" />
                        </label>
                </div>
                <div class="form-group">
                    <div class="col-md-10 col-md-offset-2">
                        <asp:Button CssClass="btn btn-primary" runat="Server" ID="btnSave" Text="Save" OnClick="OnBtnSave_Click" />&nbsp;
                        <asp:Button CssClass="btn btn-primary" ID="hlkBack" runat="server" PostBackUrl="NewsAdmin.aspx"
                            CausesValidation="False" Text="Back" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

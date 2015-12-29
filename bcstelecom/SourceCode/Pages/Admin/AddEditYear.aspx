<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="AddEditYear.aspx.cs" Inherits="Pages_Setup_AddEditYear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="form-horizontal">
                <div class="col-md-12">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        Year:<span class="required">*</span>
                    </label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="tbxYear" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Enter Year" ControlToValidate="tbxYear">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3" style="padding-top: 0">
                        Is Current Executive:
                    </label>
                    <div class="col-md-4">
                        <asp:CheckBox ID="chkCurrent" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-md-offset-3">
                        <asp:Button CssClass="btn btn-primary" runat="Server" Text="Save" ID="btnSave" OnClick="OnBtnSave_Click" />&nbsp;
                        <asp:Button CssClass="btn btn-primary" ID="hlkBack" Text="Back" runat="server" CausesValidation="false"
                            PostBackUrl="YearList.aspx" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEditContent.aspx.cs" Inherits="AddEditContent"
    ValidateRequest="false" MasterPageFile="~/MasterPages/Admin.master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit.HTMLEditor"
    TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="form-horizontal">
                <div class="form-group">
                    <div class="col-md-12">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-1">
                        Pages:
                    </label>
                    <div class="col-md-4">
                        <asp:DropDownList CssClass="form-control" runat="server" DataTextField="pagename"
                            ID="lstPages" OnSelectedIndexChanged="lstPages_SelectedIndexChanged" AutoPostBack="True">
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <cc1:Editor ID="txtBodyText" runat="server" Width="100%" Height="400px" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <asp:Button CssClass="btn btn-primary" runat="Server" ID="btnSave" Text="Save" OnClick="OnBtnSave_Click" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSave" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>

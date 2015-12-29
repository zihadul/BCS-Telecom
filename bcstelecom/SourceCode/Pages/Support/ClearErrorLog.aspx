<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClearErrorLog.aspx.cs" Inherits="ClearErrorLog"
         ValidateRequest="false" MasterPageFile="~/MasterPages/Admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-md-3">
                        Clear Error Log Before:</label>
                    <div class="col-md-4">
                        <asp:TextBox CssClass="form-control" ID="tbxDate" runat="server" />
                        <ajaxToolkit:CalendarExtender runat="server" TargetControlID="tbxDate" Format="dd-MMM-yyyy"
                                                      ID="ce1" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-9 col-md-offset-3">
                        <asp:Button CssClass="btn btn-primary" runat="Server" ID="btnSave" Text="Clear" OnClick="OnBtnSave_Click" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
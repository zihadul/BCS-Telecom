<%@ Page Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true"
    CodeFile="ExecutiveCommitee.aspx.cs" Inherits="ExecutiveCommitee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="row mb-20px">
        <div class="col-md-6">
            <asp:DropDownList ID="ddlyear" runat="server" DataValueField="Id" DataTextField="year"
                CssClass="dropdown form-control" OnSelectedIndexChanged="ddlyear_SelectedIndexChanged"
                AutoPostBack="true">
            </asp:DropDownList>
        </div>
        <div class="col-md-6 text-right">
            <asp:ImageButton ID="btnExport" runat="server" ImageUrl="~/Resources/Images/PDF-Smallq.png"
                OnClick="btnExport_Click" />
        </div>
    </div>
    <asp:UpdatePanel runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <asp:GridView SkinID="gvexecutiveouter" ID="gv" runat="server" AutoGenerateColumns="false"
                DataKeyNames="Id" OnRowDataBound="gv_RowDataBound" AllowPaging="False" ShowHeader="False"
                ShowFooter="False" PageSize="100" Width="100%">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <div class="col-md-4 col-sm-6">
                                <span style="padding-top: 5px; display: inline-block">
                                    <%#Eval("Designation")%></span>
                                <asp:HiddenField ID="hdnId" runat="server" Value='<%#Eval("Id") %>' />
                            </div>
                            <div class="col-md-8  col-sm-6">
                                <asp:GridView SkinID="gvexecutiveinner" ID="gvMember" ShowHeader="false" runat="server"
                                    AutoGenerateColumns="false" DataKeyNames="memberid" PageSize="100">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <%# Eval("membername") %>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlyear" EventName="SelectedIndexChanged" />
        </Triggers>
    </asp:UpdatePanel>
    <div>
        <asp:Label ID="ltPdf" runat="server"></asp:Label>
    </div>
</asp:Content>

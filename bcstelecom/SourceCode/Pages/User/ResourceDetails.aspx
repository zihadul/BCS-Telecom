<%@ Page Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true" CodeFile="ResourceDetails.aspx.cs" 
    Inherits="ResourceDetails" ValidateRequest="false" EnableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:GridView SkinID="skinGridList" ID="gv" runat="server" DataKeyNames="documentid">
        <Columns>
            <asp:TemplateField HeaderText="Title">
                <ItemTemplate>
                    <%# Eval("title")%>
                </ItemTemplate>
                <HeaderStyle CssClass="nowrap"></HeaderStyle>
            </asp:TemplateField>

            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnDownload" runat="server" Text="Download" OnCommand="btnDownload_Command"
                        CommandArgument='<%# Eval("AttachmentName") %>' />
                </ItemTemplate>
                <ItemStyle CssClass="ItemStyle" Width="80px" />
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>


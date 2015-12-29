<%@ Page Language="C#" MasterPageFile="~/MasterPages/Site.master" AutoEventWireup="true"
    CodeFile="SiteMap.aspx.cs" Inherits="SiteMap" %>

<asp:Content ID="Content2" ContentPlaceHolderID="cpnhMain" runat="Server">
    <table cellspacing="0" cellpadding="0" border="0" width="100%">
        <tr>
            <td align="left" class="ContentText ">
                <table cellpadding="10" cellspacing="0" border="0" align="center">
                    <tr>
                        <td class="ContentText">
                            <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple" NodeIndent="50">
                                <HoverNodeStyle ForeColor="#DD5555" />
                                <LeafNodeStyle NodeSpacing="5px" />
                                <NodeStyle BorderStyle="Solid" BorderWidth="1px" ChildNodesPadding="5px" ForeColor="Black"
                                    HorizontalPadding="10px" />
                                <ParentNodeStyle Font-Bold="False" />
                                <SelectedNodeStyle ForeColor="#DD5555" />
                            </asp:TreeView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    
</asp:Content>

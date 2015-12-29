<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Message.ascx.cs" Inherits="UserControls_Message" %>
<asp:Panel runat="server" ID="pnlMessage">
    <table border="0" cellpadding="0" cellspacing="0" class="Box">
        <tr>
            <td class="loginBoxTop">
                Admin Message
            </td>
        </tr>
        <tr>
            <td class="loginBoxBody">
                <table width="100%" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="padding-right: 2px;">
                            <ul>
                                <asp:GridView ID="Message" runat="server" SkinID="Dummy" ShowHeader="False" ShowFooter="False"
                                    GridLines="None" AllowPaging="True" Width="100%" AutoGenerateColumns="False">
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>
                                                <div class="spacer2">
                                                </div>
                                                <div class="spacer2">
                                                </div>
                                                <div style="color: #610B0B; font-weight: 700; text-decoration: blink;">
                                                    <li>
                                                        <blink><%#  Eval("message") %></blink>
                                                    </li>
                                                </div>
                                                <div class="spacer2">
                                                </div>
                                                <div class="sectionheader">
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <PagerSettings Visible="False"></PagerSettings>
                                    <HeaderStyle CssClass="dummyheader"></HeaderStyle>
                                </asp:GridView>
                            </ul>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="loginBoxBottom">
            </td>
        </tr>
    </table>
    <div class="spacer2">
    </div>
    <div class="spacer2">
    </div>
    <div class="spacer2">
    </div>
   
  
</asp:Panel>

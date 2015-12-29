<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WallComment.ascx.cs" Inherits="UserControls_WallComment" %>
<asp:GridView ID="WallComment" AutoGenerateColumns="false" AllowPaging="false" SkinID="dsf"
    runat="server" ShowFooter="false" ShowHeader="false" GridLines="None" DataKeyNames="commentid"
    CellSpacing="4">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink runat="server" ID="lnkImage" NavigateUrl='<%# String.Concat("~/Pages/Members/Profile.aspx?ID=" , Eval("memberid"))  %>'>
                    <asp:Image ImageUrl='<%# String.Concat( "~/Resources/Images/UserFiles/ProfilePicture/thumbs/",  Eval("photograph").ToString()) %>'
                        Height="60px" Width="55px" runat="server" ID="imgPostedBy" />
                </asp:HyperLink>
            </ItemTemplate>
            <ItemStyle BackColor="#EDEFF4" VerticalAlign="Top" />
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <table cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td align="left">
                            <asp:HyperLink runat="server" ID="lnkPostedBy" NavigateUrl='<%# String.Concat("~/Pages/Members/Profile.aspx?ID=" , Eval("memberid"))  %>'>
                                                    <span class="Note2"><%# Eval("membername") %></span>
                            </asp:HyperLink>
                            <b>wrote</b> <span class="Note1">at
                                <%# Convert.ToDateTime(Eval("commentdate")).ToString("dd-MMM-yyyy ss:mm:hh tt")%>
                            </span>
                        </td>
                        <td style="width: 50px;">
                            &nbsp;
                        </td>
                        <td>
                            <asp:ImageButton BorderStyle="Solid" BorderWidth="1px" BorderColor="GrayText" ID="btnDelete"
                                OnClientClick="return confirm('Sure to delete this comment?')" CommandArgument='<%# String.Concat(Eval("postid").ToString(), ",", Eval("commentid").ToString()) %>'
                                Visible='<%# Page.User.Identity.Name == Eval("username").ToString() ? true : (Page.User.Identity.Name == Eval("postedby").ToString() ? true : false) %>'
                                runat="server" ImageUrl="~/Images/delete.jpg" OnCommand="btnDelete_Command" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="left">
                            <p>
                                <%# Eval("comments")%>
                            </p>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <ItemStyle BackColor="#EDEFF4" CssClass="BottomBorder" VerticalAlign="Top" />
        </asp:TemplateField>
    </Columns>
</asp:GridView>

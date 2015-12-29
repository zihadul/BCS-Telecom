<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Member.master" AutoEventWireup="true"
    CodeFile="Dashboard.aspx.cs" Inherits="Pages_Members_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:Panel ID="pnlMessage" runat="server">
        <div class="panel panel-warning">
            <div class="panel-heading">
                <strong class="">Message </strong>
            </div>
            <div class="panel-body">
                <asp:GridView ID="gvMessage" runat="server" AllowPaging="false" Width="100%" DataKeyNames="messageid">
                    <Columns>
                        <asp:TemplateField HeaderText="Message">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnEdit" PostBackUrl='<%# String.Concat("~/MessageDetails.aspx?ID=", Eval("messageid").ToString()) %>'
                                    runat="server"><%#Eval("message").ToString()%></asp:LinkButton>
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Left" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:ImageButton ID="img" runat="server" ImageUrl="~/Resources/Images/blinking_new.gif"
                                    CssClass="blink" />
                            </ItemTemplate>
                            <HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle CssClass="blink" Width="50px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </asp:Panel>
</asp:Content>

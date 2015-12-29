<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/MasterPages/Member.master"
    AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="Pages_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:Panel ID="pnlMessage" runat="server">
        <div class="panel panel-warning">
            <div class="panel-heading">
                <strong class="">Message </strong>
            </div>
            <div class="panel-body">
                <asp:Label runat="server" Text="" ID="lblMessage"></asp:Label>
                 <asp:GridView CssClass="gvMessage" SkinID="gvMessage" ID="gvMessage" runat="server" AllowPaging="false" Width="100%" DataKeyNames="messageid" AutoGenerateColumns="False">
                    <Columns>
                        <asp:TemplateField HeaderText="Message">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnEdit" PostBackUrl='<%# String.Concat("~/MessageDetails/", Eval("messageid").ToString()) %>'
                                    runat="server">  <%# Common.Decoding(Eval("message").ToString()) %></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:ImageButton ID="img" runat="server" ImageUrl="~/Resources/Images/blinking_new.gif"
                                    CssClass="blink" />
                            </ItemTemplate>
                            
                            <ItemStyle CssClass="blink" Width="50px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </asp:Panel>
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Admin.master" AutoEventWireup="true"
    CodeFile="YearList.aspx.cs" Inherits="Pages_Setup_YearList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="pb-10px">
                <asp:Button CssClass="btn btn-primary" ID="btnCompose" Text="Add New" runat="server"
                    PostBackUrl="AddEditYear.aspx" />
            </div>
            <asp:GridView ID="gv" runat="server" AutoGenerateColumns="false" DataKeyNames="Id"
                AllowPaging="true" PageSize="10" SkinID="skinGridList" Width="100%">
                <Columns>
                    <asp:TemplateField HeaderText="Year">
                        <ItemTemplate>
                            <%#  Eval("Year")%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="350px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Is Current Executive">
                        <ItemTemplate>
                            <%#  Eval("IsCurrentExe").ToString() == "1" ? "Yes" : "No"%>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="250px" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-edit" ID="btnEdit" ToolTip="Edit" Text="" PostBackUrl='<%# String.Concat("AddEditYear.aspx?ID=", Eval("Id").ToString()) %>'
                                runat="server" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="40px" />
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button CssClass="btn-delete" ID="btnDelete" runat="server" ToolTip="Delete" Text="" OnCommand="btnDelete_Command"
                                OnClientClick=" return confirm('Clicking ok will delete this record permanently.') "
                                CommandArgument='<%# Eval("Id") %>' SkinID="delete" />
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Center" Width="40px" />
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

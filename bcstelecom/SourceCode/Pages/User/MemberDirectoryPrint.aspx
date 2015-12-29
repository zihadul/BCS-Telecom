<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberDirectoryPrint.aspx.cs"
    Inherits="MemberDirectoryPrint" Title="Member List - BCS Telecom Samity" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .print
        {
            width: 820px;
        }
        .print-header
        {
            margin: 0 auto;
            color: #222;
            margin-bottom: 20px;
            overflow: hidden;
        }
        .print-header img
        {
            margin-right: 20px;
            display: inline-block;
            overflow: hidden;
            float: left;
            padding-left: 100px;
        }
        .print-header h2
        {
            font-size: 36px;
            margin: 36px 0 0px;
            line-height: 36px;
        }
       
        .print-footer
        {
            color: #000;
        }
        .printed-by
        {
            float: left;
        }
        .printed-date
        {
            float: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="print">
        <div class="print-header">
            <img src="../../Resources/Images/Common/bcstelecom_logo.png" />
            <h2>
                BCS Telecom Samity</h2>
        </div>
        <h3 style="color: #000;">
            Member List</h3>
        <div>
            <asp:GridView ID="gv" runat="server" AllowPaging="false" Width="100%" SkinID="memberprint">
                <Columns>
                    <asp:TemplateField HeaderText="Ser">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                        <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                        <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="membername" HeaderText="Name" />
                    <asp:TemplateField HeaderText="Name (Bangla)">
                        <ItemTemplate>
                            <%# Common.Decoding(Eval("banglaname").ToString()) %>
                        </ItemTemplate>
                        <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                        <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="designation1" HeaderText="Designation" />
                    <asp:BoundField DataField="dateofbirth" HeaderText="DOB" />
                    <asp:TemplateField HeaderText="DOJ">
                        <ItemTemplate>
                            <%# Convert.ToDateTime(Eval("joindate").ToString()).ToString("dd-MMM-yyyy") %>
                        </ItemTemplate>
                        <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                        <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="bcsyear" HeaderText="Batch/Year" />
                    <asp:BoundField DataField="homedistrict" HeaderText="Home District" />
                    <asp:BoundField DataField="bloodgroup" HeaderText="Blood Group" ItemStyle-HorizontalAlign="Center" />
                </Columns>
            </asp:GridView>
            <div class="print-footer">
                <p class="printed-by">
                    <asp:Label runat="server" ID="lblPritedBy"></asp:Label>
                </p>
                <p class="printed-date">
                    <asp:Label runat="server" ID="lblPrintDate"></asp:Label>
                </p>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

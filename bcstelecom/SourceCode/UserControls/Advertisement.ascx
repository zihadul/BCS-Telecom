<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Advertisement.ascx.cs"
    Inherits="UserControls_Advertisement" EnableViewState="False" %>
<div class="panel panel-primary login-panel" style="background-color: transparent">
    <div class="panel-heading">
        <h3 class="panel-title">
            Advertisement</h3>
    </div>
    <div class="panel-body" style="background: #fff">
        <ul class="advertisenet-list">
            <asp:Repeater ID="rptAdd" runat="server">
                <ItemTemplate>
                    <li>
                        <asp:HyperLink runat="server" NavigateUrl='<%# Eval("link") %>' Target="_blank">
                            <asp:Image ImageUrl='<%# String.Concat( "~/Resources/Images/UserFiles/Advertisement/",  Eval("filename").ToString()) %>'
                                runat="server" ID="btnImg" ToolTip='<%# Eval("description") %>' />
                        </asp:HyperLink>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</div>

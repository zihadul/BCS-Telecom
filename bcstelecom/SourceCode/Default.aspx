<%@ Page Language="C#" MasterPageFile="~/MasterPages/Default.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" Title="" %>

<%@ Register Src="~/UserControls/News.ascx" TagName="News" TagPrefix="VIT" %>
<%@ Register Src="~/UserControls/Advertisement.ascx" TagName="Advertisement" TagPrefix="VIT" %>
<%@ Register Src="~/UserControls/Events.ascx" TagName="Event" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/Login.ascx" TagName="Login" TagPrefix="uc" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="row">
        <div class="col-md-3 col-sm-4">
            <uc:Login ID="login" runat="server" />
            <div class="clearfix mb-20px">
            </div>
            <VIT:Advertisement ID="Advertise" runat="server" />
        </div>
        <div class="col-md-6 col-sm-4">
            <div class="heading">
                Welcome to BCS Telecom Samity
            </div>
            <div style="text-align: justify;">
                <p>
                    <asp:Literal ID="LitContent" runat="server" />
                </p>
            </div>
        </div>
        <div class="col-md-3  col-sm-4">
            <uc:Event ID="event" runat="server"></uc:Event>
            <div class="clearfix mb-20px">
            </div>
            <VIT:News ID="News1" runat="server"></VIT:News>
        </div>
    </div>
</asp:Content>

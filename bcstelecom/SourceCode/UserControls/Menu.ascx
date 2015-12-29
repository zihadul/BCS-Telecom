<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Menu.ascx.cs" Inherits="UserControls_Menu" %>
<nav class="navbar navbar-default" id="vin-navbar">
    <div class="">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                    class="icon-bar"></span><span class="icon-bar"></span>
            </button>
            <%-- <a class="navbar-brand" href="#">Brand</a>--%>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav" id="vin-nav">
                <li>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home">Home</asp:HyperLink></li>
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                    aria-haspopup="true" aria-expanded="false">About Us<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li>
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ExecutiveCommittee">Executive Committee</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/MemberDirectory">Member Directory</asp:HyperLink></li>
                    </ul>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Resource">Resource</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/News">News</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/Event">Event</asp:HyperLink></li>
                     <li>
                    <asp:HyperLink ID="HyperLink9" runat="server" Target="_blank" NavigateUrl="http://bcstelecom.org.bd/Blog">Blog</asp:HyperLink></li>
                <li>
                    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/ContactUs">Contact Us</asp:HyperLink></li>
                <li class="dropdown" id="memberMenu" runat="server"><a href="#" class="dropdown-toggle"
                    data-toggle="dropdown">Member<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/Dashboard">Dashboard</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Profile">Profile</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/PhotoGallery">Photo Gallery</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Poll">Poll</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink7" runat="server" Target="_blank" NavigateUrl="http://mail.bcstelecom.org.bd">Web Mail</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/ChangePassword">Change Password</asp:HyperLink></li>
                        <li>
                            <asp:LoginStatus ID="LoginStatus1" runat="server" LoginText="" OnLoggedOut="LoginStatus1_LoggedOut" />
                        </li>
                    </ul>
                </li>
                <li class="dropdown" id="officialMenu" runat="server"><a href="#" class="dropdown-toggle"
                    data-toggle="dropdown">Official<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/Dashboard">Dashboard</asp:HyperLink></li>
                         <li>
                            <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/Profile">Profile</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/PhotoGallery">Photo Gallery</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink18" runat="server" NavigateUrl="~/Pages/Setup/PollAdministration.aspx">Poll List</asp:HyperLink></li>
                       <%-- <li>
                            <asp:HyperLink ID="HyperLink19" runat="server" NavigateUrl="~/Pages/Members/Posts.aspx">Posts</asp:HyperLink></li>--%>
                        <li>
                            <asp:HyperLink ID="HyperLink20" runat="server" Target="_blank" NavigateUrl="http://mail.bcstelecom.org.bd">Web Mail</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink21" runat="server" NavigateUrl="~/ChangePassword">Change Password</asp:HyperLink></li>
                        <li>
                            <asp:LoginStatus ID="LoginStatus2" runat="server" LoginText="" OnLoggedOut="LoginStatus1_LoggedOut" />
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container-fluid -->
</nav>

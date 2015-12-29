<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Footer.ascx.cs" Inherits="UserControls_Footer" %>
<%@ Register TagPrefix="uc" TagName="HitCounter" Src="~/UserControls/HitCounter.ascx" %>
<%@ Register TagPrefix="uc" TagName="Contact" Src="~/UserControls/Contact.ascx" %>
<div class="footer-bg">
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6">
                <div class="header-footer">
                    <h3>
                        BCS Telecom Samity
                    </h3>
                    <uc:Contact ID="Contact1" runat="server" />
                </div>
            </div>
            <div class="col-md-4 col-sm-3 xs-mt-30px">
                <div class="header-footer">
                    <h3>
                        Information
                    </h3>
                </div>
                <ul class="footer-list-item">
                    <li>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home">Home</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="mailto:http://mail.bcstelecom.org.bd//">Web Mail</asp:HyperLink></li>
                    <li>
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ContactUs">Contact Us</asp:HyperLink></li>
                </ul>
            </div>
            <div class="col-md-4 col-sm-3 xs-mt-30px">
                <div class="header-footer">
                    <h3>
                        Follow Us
                    </h3>
                </div>
                <div class="socials">
                    <a><i class="fa fa-facebook"></i></a><a><i class="fa fa-google-plus"></i></a><a><i
                        class="fa fa-twitter"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer-copy">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <p class="copyright">
                    BCS Telecom Samity &copy;
                    <asp:Label runat="server" ID="lblCurrentYear" Text=""></asp:Label>, All rights reserved
                </p>
                <div class="footer-right-block">
                    <span class="unique-visite clearfix">
                        <uc:HitCounter ID="HitCounter1" runat="server" />
                    </span>
                    <p class="powered-by">
                        Powered By: <a class="" href="http://vintageitltd.com/" target="_blank">Vintage IT</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

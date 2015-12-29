<%@ Page Title="" ValidateRequest="false" Language="C#" MasterPageFile="~/MasterPages/OneColumn.master"
    AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<%@ Register Src="~/UserControls/Feedback.ascx" TagName="Feedback" TagPrefix="uc" %>
<%@ Register Src="~/UserControls/Contact.ascx" TagName="Contact" TagPrefix="uc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="row">
        <div class="col-md-6 col-sm-6">
          
                <style>
                    .contact-page .fa {
                        color: #000 !important;
                    }
                </style>
                <uc:Contact ID="Contact1" runat="server" />
        
            <div class="" style="margin-top: 20px">
                <iframe src="https://mapsengine.google.com/map/embed?mid=zsv94c2tp7z8.kGp1093kYdws"
                    width="100%" height="460" frameborder="0" style="border: 1px solid #a2a3a4" allowfullscreen>
                </iframe>
            </div>
        </div>
        <div class="col-md-6 col-sm-6">
            <uc:Feedback ID="Feedback1" runat="server" />
        </div>
    </div>
</asp:Content>

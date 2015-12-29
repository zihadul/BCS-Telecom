<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/OneColumn.master" AutoEventWireup="true"
    CodeFile="MemberList.aspx.cs" Inherits="Pages_User_MemberList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphContent" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel runat="server" ID="pnlFilter">
                <div class="member-search-form">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Member Name:
                                </label>
                                <div>
                                    <asp:TextBox runat="server" ID="tbxMemberName" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Designation:
                                </label>
                                <div>
                                    <asp:TextBox runat="server" ID="tbxDesignation" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Office:
                                </label>
                                <div>
                                    <asp:TextBox runat="server" ID="tbxOffice" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <asp:Button CssClass="btn btn-search" runat="server" ID="btnSearch" Text="Search"
                                    OnClick="btnSearch_Click" />
                            </div>
                        </div>
                        <div class="col-md-1">
                            <div class="form-group">
                                <button class="btn-print" runat="server" id="Button1" onserverclick="btnPrint_Click">
                                    <i class="fa fa-print"></i>
                                </button>
                                <%--<asp:Button CssClass="btn-print" runat="server" ID="Button2" Text="" OnClick="btnPrint_Click" />--%>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <div class="clearfix mb-20px" style="margin-top: 20px;">
                <asp:Literal runat="server" ID="litPagingSummary" />
            </div>
            <div class="row">
                <asp:Repeater ID="rptMembers" runat="server">
                    <ItemTemplate>
                        <div class="col-md-4 col-sm-6">
                            <div class="profile-wraper" style="margin-bottom: 20px;">
                                <div class="row">
                                    <div class="col-md-4 col-sm-4">
                                        <asp:HyperLink runat="server" ID="HyperLink1" NavigateUrl='<%# User.Identity.Name == "" ? "" : String.Concat("~/Pages/User/Profile.aspx?ID=", Eval("MemberID"))%>'>
                                            <asp:Image ImageUrl='<%# Common.GetImage(String.Concat( "~/Resources/Images/UserFiles/ProfilePicture/thumbs/",  Eval("photograph").ToString()))  %>'
                                                runat="server" ID="ImageButton1" />
                                        </asp:HyperLink>
                                    </div>
                                    <div class="col-md-8 col-sm-8">
                                        <asp:HyperLink runat="server" ID="lnkX" NavigateUrl='<%# User.Identity.Name == "" ? "" : String.Concat("~/Pages/User/Profile.aspx?ID=", Eval("MemberID"))%>'>
                                                    <span class="Note2"><%# Eval("membername") %></span>
                                        </asp:HyperLink><br />
                                        <div>
                                            <%# Eval("designation")%>
                                        </div>
                                        <div>
                                            <%# Eval("nameoftheoffice")%>
                                        </div>
                                        <div>
                                            <%# Eval("email")%>
                                        </div>
                                        <div>
                                            <%#Page.User.Identity.Name==""? "":Eval("mobile1")%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="clearfix pagination " style="margin-bottom: 40px; margin-top: 20px; text-align: center;">
                <asp:Panel runat="server" ID="plcPaging" CssClass="" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

<%@ Page Title="Profile" Language="C#" MasterPageFile="~/MasterPages/Member.master"
    ValidateRequest="false" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Pages_Member_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    <div class="clearfix row">
        <div class="col-md-12 col-xs-12">
            <div class="col-md-3">
                <div class="profileimg">
                    <asp:ImageButton runat="server" ID="imgPhoto" AlternateText="" Width="100%" Height=100% />
                    <asp:HiddenField ID="hdnImage" runat="server" />
                    <div class="edit-profile">
                        <asp:Button CssClass="btn btn-primary" ID="edtprofile" runat="server" PostBackUrl="~/EditProfile"
                            Text="Edit Profile" />
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="profile-contact-wraper">
                    <h1>
                        <asp:Label ID="tbxName" runat="server" />
                    </h1>
                    <p>
                        <span><i class="fa fa-graduation-cap"></i></span>
                        <asp:Label ID="lblDesignation" runat="server" /></p>
                    <p>
                        <span><i class="fa fa-flag fa-2x"></i></span>
                        <asp:Label ID="lblOffice" runat="server" /></p>
                    <br>
                    <p>
                        <span><i class="fa fa-map-marker fa-2x"></i></span>
                        <asp:Label ID="tbxPresentAddress" runat="server" /></p>
                </div>
            </div>
        </div>
        <div class="clearfix mb-40px">
        </div>
        <%--<div class="clearfix row">--%>
        <div class="col-md-12  col-xs-12 mb-40px">
            <div class="col-md-3">
                <div class="form-horizontal">
                    <h2 class="mb-20px" style="margin-left: auto;">
                        Contacts Information
                    </h2>
                    <div class="form-group">
                        <label class="col-md-6">
                            Mobile No:
                        </label>
                        <div class="col-md-6">
                            <asp:Label ID="tbxMobile1" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6">
                            Contact(Office):
                        </label>
                        <div class="col-md-6">
                            <asp:Label ID="tbxContactNo" runat="server" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-6">
                            Email(bcstelecom):
                        </label>
                        <div class="col-md-6">
                            <asp:Label ID="tbxEmail" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="dark-bg">
                    <div class="form-horizontal">
                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingOne">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                                            aria-expanded="false" aria-controls="collapseOne">Cadre Information </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                BCS Batch/Year:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="lblBatch" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Joining Date in Cader:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="lblJoinDate" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Service ID/Graditation No:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="lblService" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion"
                                            href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Personal Information
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Name(Bangla):
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="lblNameBan" runat="server" CssClass="Note2" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Father Name:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxFatherName" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Mother Name:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxMotherName" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Date of Birth:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxDate" runat="server"></asp:Label><br />
                                                <asp:Label ID="lblAge" runat="server" /><br />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Blood Group:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxBloodGroup" runat="server"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                National Id No:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxNID" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Interest (Personal and Professional):
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxInterest" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingThree">
                                    <h4 class="panel-title">
                                        <a class="collapsed accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion"
                                            href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">Address
                                            and Optional Contact </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Parmanent Address:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxPermanentAddress" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Home District:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="lblHomeDistrict" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Mobile No(Optional):
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxMobile2" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Contact(Residence):
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxContactNoResidence" runat="server" />
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-md-4">
                                                Email(Optional):
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxEmail2" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingFour">
                                    <h4 class="panel-title">
                                        <a class="collapsed accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion"
                                            href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">Family Details
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <label class="col-md-1">
                                                Spouse:
                                            </label>
                                            <div class="col-md-6">
                                                <asp:Label ID="tbxSpouse" runat="server" />
                                            </div>
                                        </div>
                                        <div class="clearfix row">
                                            <div class="col-md-12">
                                                <asp:Panel runat="server" ID="pnlChild">
                                                    <div class="panel panel-warning">
                                                        <div class="panel-heading">
                                                            <strong class="">Children </strong>
                                                        </div>
                                                        <div class="panel-body">
                                                            <asp:GridView ID="gvChild" runat="server" AllowPaging="false" Width="100%">
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="Ser">
                                                                        <ItemTemplate>
                                                                            <%# Container.DataItemIndex + 1 %>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                                                                        <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                                                                    </asp:TemplateField>
                                                                    <asp:BoundField HeaderText="Child Name" DataField="childname" />
                                                                    <asp:BoundField HeaderText="Date of Birth" DataField="dateofbirth" />
                                                                    <asp:BoundField HeaderText="Gendar" DataField="gendar" />
                                                                </Columns>
                                                            </asp:GridView>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingTwo">
                                    <h4 class="panel-title">
                                        <a class="collapsed accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion"
                                            href="#collapseFive" aria-expanded="true" aria-controls="collapseFive">Education
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                    <div class="panel-body">
                                        <div class="clearfix row">
                                            <div class="col-md-12">
                                                <asp:Panel runat="server" ID="pnlEducation">
                                                    <div class="panel panel-warning">
                                                        <div class="panel-heading">
                                                            <strong class="">Education </strong>
                                                        </div>
                                                        <div class="panel-body">
                                                            <asp:GridView ID="gvEducation" runat="server" AllowPaging="false" Width="100%">
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="Ser">
                                                                        <ItemTemplate>
                                                                            <%# Container.DataItemIndex + 1 %>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                                                                        <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                                                                    </asp:TemplateField>
                                                                    <asp:BoundField HeaderText="Degree" DataField="degreename" />
                                                                    <asp:BoundField HeaderText="Institute" DataField="institute" />
                                                                    <asp:BoundField HeaderText="Passing Year" DataField="passingyear" />
                                                                    <asp:BoundField HeaderText="Subject" DataField="subject" />
                                                                </Columns>
                                                            </asp:GridView>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading" role="tab" id="headingSix">
                                    <h4 class="panel-title">
                                        <a class="collapsed accordion-toggle" role="button" data-toggle="collapse" data-parent="#accordion"
                                            href="#collapseSix" aria-expanded="true" aria-controls="collapseSix">Posting Place
                                        </a>
                                    </h4>
                                </div>
                                <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                    <div class="panel-body">
                                        <div class="clearfix row">
                                            <div class="col-md-12">
                                                <asp:Panel runat="server" ID="pnlPosting">
                                                    <div class="panel panel-warning">
                                                        <div class="panel-heading">
                                                            <strong class="">Posting Place </strong>
                                                        </div>
                                                        <div class="panel-body">
                                                            <asp:GridView ID="gvPostingPlace" runat="server" AllowPaging="false" Width="100%">
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="Ser">
                                                                        <ItemTemplate>
                                                                            <%# Container.DataItemIndex + 1 %>
                                                                        </ItemTemplate>
                                                                        <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                                                                        <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                                                                    </asp:TemplateField>
                                                                    <asp:BoundField HeaderText="Designation" DataField="designation" />
                                                                    <asp:BoundField HeaderText="Name of the Office" DataField="nameoftheoffice" />
                                                                    <asp:BoundField HeaderText="Date of Joining" DataField="dateofjoining" />
                                                                    <asp:TemplateField HeaderText="Present">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" ID="chkpresent" Enabled="false" Checked='<%# Eval("present").ToString() == "False" ? false : true  %>' />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Immediate Past">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox runat="server" ID="chkimmediatepast" Enabled="false" Checked='<%# Eval("immediatepast").ToString() == "False" ? false : true %>' />
                                                                        </ItemTemplate>
                                                                        <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                            </asp:GridView>
                                                        </div>
                                                    </div>
                                                </asp:Panel>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>
            <ajaxToolkit:ModalPopupExtender ID="Popup1" runat="server" TargetControlID="imgPhoto"
                PopupControlID="pnl1" BackgroundCssClass="modalBackground" DropShadow="true"
                RepositionMode="RepositionOnWindowResizeAndScroll" OkControlID="buttonOK" CancelControlID="btnCancel">
            </ajaxToolkit:ModalPopupExtender>
            <asp:Panel ID="pnl1" runat="server" Visible=false CssClass="modalPopup">
                <table cellpadding="0" cellspacing="0" style="margin-top: 5px; border: solid 1px;">
                    <tr>
                        <td align="center">
                            <asp:Image runat="server" ID="Image1" />
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-top: 4px; text-align: center;">
                            <asp:Button ID="buttonOK" runat="server" Text="OK" />&nbsp;
                            <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>



  
</asp:Content>

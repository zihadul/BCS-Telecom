<%@ Page Title="Edit Profile" Language="C#" MasterPageFile="~/MasterPages/Member.master"
    ValidateRequest="false" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs"
    Inherits="Pages_Member_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
    
    <div class="form-horizontal">
        <div class="col-md-12">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Name(English):<span class="required">*</span>
            </label>
            <div class="col-md-4">
                <asp:TextBox CssClass="form-control" ID="tbxName" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator4" runat="server"
                    ErrorMessage="Enter Name (English)" ControlToValidate="tbxName">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Name(Bangla):<span class="required">*</span>
            </label>
            <div class="col-md-4">
                <asp:TextBox CssClass="form-control" ID="tbxNameBan" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator13" runat="server"
                    ErrorMessage="Enter Name (Bangla)" ControlToValidate="tbxNameBan">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Designation:<span class="required">*</span>
            </label>
            <div class="col-md-4">
                <asp:TextBox CssClass="form-control" ID="tbxDesignationMem" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator6" runat="server"
                    ErrorMessage="Enter Designation" ControlToValidate="tbxDesignationMem">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Joining Date in Cader:<span class="required">*</span>
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxJoinDate" CssClass="form-control" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender runat="server" ID="CalendarExtender3" TargetControlID="tbxJoinDate"
                    Format="dd-MMM-yyyy" PopupPosition="BottomLeft" />
                <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" runat="server"
                    ErrorMessage="Joining Date in Cader" ControlToValidate="tbxJoinDate">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                BCS Batch/Year:
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxBatch" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Service ID/Graditation No:
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxServiceID" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Father Name:
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxFatherName" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Mother Name:
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxMotherName" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Date of Birth:<span class="required">*</span>
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxDate" CssClass="form-control" runat="server" Width="100px"></asp:TextBox>
               <ajaxToolkit:CalendarExtender runat="server" ID="ce1" TargetControlID="tbxDate" Format="dd-MMM-yyyy"
                    PopupPosition="BottomLeft" />
                <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator3" runat="server"
                    ErrorMessage="Enter date of  Birth" ControlToValidate="tbxDate">*</asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Blood Group:
            </label>
            <div class="col-md-4">
                <asp:DropDownList runat="server" CssClass="form-control" ID="ddlBloodGroup">
                    <asp:ListItem Text="Select Blood Group" Value=""/>
                    <asp:ListItem Text="0+" />
                    <asp:ListItem Text="0-" />
                    <asp:ListItem Text="A+" />
                    <asp:ListItem Text="A-" />
                    <asp:ListItem Text="B+" />
                    <asp:ListItem Text="B-" />
                    <asp:ListItem Text="AB+" />
                    <asp:ListItem Text="AB-" />
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                National Id No:
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxNID" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Email(bcstelecom):<span class="required">*</span>
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxEmail" CssClass="form-control" runat="server" />
                <asp:RequiredFieldValidator runat="server" ID="NReq" ControlToValidate="tbxEmail"
                    ErrorMessage="Enter Email (bcstelecom)" Text="*" Display="None" />
                <asp:RegularExpressionValidator ID="regVEmail" runat="server" Display="None" ErrorMessage=" Invalid email format"
                    ControlToValidate="tbxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Email(Optional):
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxEmailOptional" CssClass="form-control" runat="server" />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="None"
                    ErrorMessage=" Invalid email format" ControlToValidate="tbxEmailOptional" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Contact No(Office):
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxContactNo" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Contact No(Residence):
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxContactNoResidence" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Mobile No:<span class="required">*</span>
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxMobile1" CssClass="form-control" runat="server" />
                <asp:RequiredFieldValidator Display="None" runat="server" ID="RequiredFieldValidator1"
                    ControlToValidate="tbxMobile1" ErrorMessage=" Enter Mobile No" Text="*" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Mobile No (Optional):
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxMobile2" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Present Address:
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxPresentAddress" CssClass="form-control" TextMode="MultiLine"
                    Rows="4" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Parmanent Address:
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxPermanentAddress" CssClass="form-control" TextMode="MultiLine"
                    Rows="4" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Home District:
            </label>
            <div class="col-md-4">
                <asp:DropDownList runat="server" CssClass="form-control" ID="ddlHomeDistrict">
                    <asp:ListItem Text="Select Home District" Value=""></asp:ListItem>
                    <asp:ListItem>Bagerhat</asp:ListItem>
                    <asp:ListItem>Bandarban</asp:ListItem>
                    <asp:ListItem>Barguna</asp:ListItem>
                    <asp:ListItem>Barisal</asp:ListItem>
                    <asp:ListItem>Brahmanbaria</asp:ListItem>
                    <asp:ListItem>Bhola</asp:ListItem>
                    <asp:ListItem>Bogra</asp:ListItem>
                    <asp:ListItem>Chandpur</asp:ListItem>
                    <asp:ListItem>Chittagong</asp:ListItem>
                    <asp:ListItem>Chuadanga</asp:ListItem>
                    <asp:ListItem>Comilla</asp:ListItem>
                    <asp:ListItem>Cox's Bazar</asp:ListItem>
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Dinajpur</asp:ListItem>
                    <asp:ListItem>Faridpur</asp:ListItem>
                    <asp:ListItem>Feni</asp:ListItem>
                    <asp:ListItem>Gaibandha</asp:ListItem>
                    <asp:ListItem>Gazipur</asp:ListItem>
                    <asp:ListItem>Gopalganj</asp:ListItem>
                    <asp:ListItem>Habiganj</asp:ListItem>
                    <asp:ListItem>Jaipurhat</asp:ListItem>
                    <asp:ListItem>Jamalpur</asp:ListItem>
                    <asp:ListItem>Jessore</asp:ListItem>
                    <asp:ListItem>Jhalakathi</asp:ListItem>
                    <asp:ListItem>Jhinaidah</asp:ListItem>
                    <asp:ListItem>Khagrachari</asp:ListItem>
                    <asp:ListItem>Khulna</asp:ListItem>
                    <asp:ListItem>Kishoreganj</asp:ListItem>
                    <asp:ListItem>Kurigram</asp:ListItem>
                    <asp:ListItem>Kushtia</asp:ListItem>
                    <asp:ListItem>Lakshmipur</asp:ListItem>
                    <asp:ListItem>Lalmonirhat</asp:ListItem>
                    <asp:ListItem>Madaripur</asp:ListItem>
                    <asp:ListItem>Magura</asp:ListItem>
                    <asp:ListItem>Manikganj</asp:ListItem>
                    <asp:ListItem>Meherpur</asp:ListItem>
                    <asp:ListItem>Moulavibazar</asp:ListItem>
                    <asp:ListItem>Munshiganj</asp:ListItem>
                    <asp:ListItem>Mymensingh</asp:ListItem>
                    <asp:ListItem>Naogaon</asp:ListItem>
                    <asp:ListItem>Narayangan</asp:ListItem>
                    <asp:ListItem>Narsingdi</asp:ListItem>
                    <asp:ListItem>Natore</asp:ListItem>
                    <asp:ListItem>Nawabgonj</asp:ListItem>
                    <asp:ListItem>Netrokona</asp:ListItem>
                    <asp:ListItem>Nilphamari</asp:ListItem>
                    <asp:ListItem>Noakhali</asp:ListItem>
                    <asp:ListItem>Norail</asp:ListItem>
                    <asp:ListItem>Pabna</asp:ListItem>
                    <asp:ListItem>Panchagarh</asp:ListItem>
                    <asp:ListItem>Patuakhali</asp:ListItem>
                    <asp:ListItem>Pirojpur</asp:ListItem>
                    <asp:ListItem>Rajbari</asp:ListItem>
                    <asp:ListItem>Rajshahi</asp:ListItem>
                    <asp:ListItem>Rangamati</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                    <asp:ListItem>Satkhira</asp:ListItem>
                    <asp:ListItem>Shariyatpur</asp:ListItem>
                    <asp:ListItem>Sherpur</asp:ListItem>
                    <asp:ListItem>Sirajgonj</asp:ListItem>
                    <asp:ListItem>Sunamganj</asp:ListItem>
                    <asp:ListItem>Sylhet</asp:ListItem>
                    <asp:ListItem>Tangail</asp:ListItem>
                    <asp:ListItem>Thakurgaon</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Interest (Personal and Professional):
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxInterest" CssClass="form-control" TextMode="MultiLine" Rows="4"
                    runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3">
                Spouse:
            </label>
            <div class="col-md-4">
                <asp:TextBox ID="tbxSpouse" CssClass="form-control" runat="server" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-3" style="padding-top: 0">
                Image :
            </label>
            <div class="col-md-9">
                <asp:FileUpload runat="server" ID="fileAttachment" />
                <br />
                (Allowed formats are: jpg, jpeg, bmp, png and gif. Maximum file size 500KB.)
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:LinkButton runat="server" ID="btnDeleteAttachment" CausesValidation="False"
                            OnClientClick="return confirm('It will remove the attachment permanently. Sure to proceed?')"
                            Text="Delete Attachment" Visible="False" OnClick="btnDeleteAttachment_Click"></asp:LinkButton>
                        &nbsp;
                        <asp:HyperLink runat="server" ID="lnkViewFile" Text="View File" Visible="False" Target="_blank"></asp:HyperLink>
                        <asp:HiddenField runat="server" ID="hdnAttachmentName" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <div class="panel panel-warning">
        <div class="panel-heading">
            <strong class="">Children </strong>
        </div>
        <div class="panel-body">
            <div>
                <asp:UpdatePanel runat="server" ID="pnlChild">
                    <ContentTemplate>
                        <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="pnlChild">
                            <ProgressTemplate>
                                <asp:Image ID="Image1" runat="server" SkinID="imgProgress" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <table width="100%">
                            <tr>
                                <td valign="top">
                                    Name<br />
                                    <asp:TextBox ID="tbxChildName" runat="server" Width="300px" class="form-control" />
                                    <asp:RequiredFieldValidator runat="server" ID="req121" ControlToValidate="tbxChildName"
                                        ErrorMessage="" Text="*" ValidationGroup="Child" />
                                </td>
                                <td valign="top">
                                    Date of Birth<br />
                                    <asp:TextBox ID="tbxChildDOB" runat="server" Width="100px" class="form-control"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender runat="server" ID="CalendarExtender1" TargetControlID="tbxChildDOB"
                                        Format="dd-MMM-yyyy" PopupPosition="BottomLeft" />
                                </td>
                                <td valign="top">
                                    Gendar<br />
                                    <asp:DropDownList runat="server" ID="ddlGender" class="form-control">
                                        <asp:ListItem Text="" />
                                        <asp:ListItem Text="Male" />
                                        <asp:ListItem Text="Female" />
                                    </asp:DropDownList>
                                </td>
                                <td valign="middle">
                                    <asp:Button runat="server" ID="btnAddChild" Text="Add" ValidationGroup="Child" OnClick="btnAddChild_Click" />
                                    <asp:Button runat="server" ID="btnClearChild" Text="Clear" CausesValidation="false"
                                        OnClick="btnClearChild_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <asp:GridView ID="gvChild" runat="server" AllowPaging="false" Width="100%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Ser">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                                                <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Child Name">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblchildname" Text='<%# Eval("childname")%>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Date of Birth">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lbldateofbirth" Text='<%# Eval("dateofbirth")%>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Gendar">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblgendar" Text='<%# Eval("gendar")%>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btnEditChild" Text="Edit" CommandArgument='<%# Container.DataItemIndex %>'
                                                        OnCommand="btnEditChild_Command" runat="server" CausesValidation="false" />
                                                </ItemTemplate>
                                                <ItemStyle CssClass="ItemStyle" Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btnDeleteChild" runat="server" Text="Delete" OnCommand="btnDeleteChild_Command"
                                                        CausesValidation="false" OnClientClick="return confirm('Clicking ok will delete this record permanently.')"
                                                        CommandArgument='<%# Container.DataItemIndex %>' />
                                                </ItemTemplate>
                                                <ItemStyle CssClass="ItemStyle" Width="70px" />
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <div class="panel panel-warning">
        <div class="panel-heading">
            <strong class="">Educational Qualification </strong>
        </div>
        <div class="panel-body">
            <div>
                <asp:UpdatePanel runat="server" ID="UpdatePanel2">
                    <ContentTemplate>
                        <asp:UpdateProgress ID="UpdateProgress3" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
                            <ProgressTemplate>
                                <asp:Image ID="Imageff4e1" runat="server" SkinID="imgProgress" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <table width="100%">
                            <tr>
                                <td>
                                    Degree
                                </td>
                                <td>
                                    Institute
                                </td>
                                <td>
                                    Passing Year
                                </td>
                                <td>
                                    Subject
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <asp:DropDownList ID="ddlDegree" runat="server" Width="180px" AutoPostBack="true"
                                        CssClass="form-control" OnSelectedIndexChanged="ddlDegree_SelectedIndexChanged">
                                        <asp:ListItem></asp:ListItem>
                                        <asp:ListItem>School Certificate</asp:ListItem>
                                        <asp:ListItem>Higher Secondary Certificate</asp:ListItem>
                                        <asp:ListItem>Graduation</asp:ListItem>
                                        <asp:ListItem>Post Graduation</asp:ListItem>
                                        <asp:ListItem>Doctoral</asp:ListItem>
                                        <asp:ListItem>Post Doctoral</asp:ListItem>
                                        <asp:ListItem>Other</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" Display="Dynamic"
                                        ControlToValidate="ddlDegree" ErrorMessage="" Text="*" ValidationGroup="Education" />
                                </td>
                                <td valign="top">
                                    <asp:TextBox ID="tbxInstitute" runat="server" Width="150px" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" Display="Dynamic"
                                        ControlToValidate="tbxInstitute" ErrorMessage="" Text="*" ValidationGroup="Education" />
                                </td>
                                <td valign="top">
                                    <asp:TextBox ID="tbxPassingYear" runat="server" Width="70px" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" Display="Dynamic"
                                        ControlToValidate="tbxPassingYear" ErrorMessage="" Text="*" ValidationGroup="Education" />
                                    <asp:CompareValidator runat="server" ID="RequiredFieldValidator10" Display="Dynamic"
                                        Type="Integer" Operator="DataTypeCheck" ControlToValidate="tbxPassingYear" ErrorMessage=""
                                        Text="*" ValidationGroup="Education" />
                                </td>
                                <td valign="top">
                                    <asp:TextBox ID="tbxSubject" runat="server" Width="100px" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" Display="Dynamic"
                                        ControlToValidate="tbxSubject" ErrorMessage="" Text="*" ValidationGroup="Education" />
                                </td>
                                <td valign="middle">
                                    <asp:Button runat="server" ID="btnEducation" Text="Add" ValidationGroup="Education"
                                        OnClick="btnEducation_Click" />
                                    <asp:Button runat="server" ID="btnClearEducation" Text="Clear" CausesValidation="false"
                                        OnClick="btnClearEducation_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td class="padding_10">
                                    <asp:TextBox ID="tbxOther" runat="server" Width="170px" CssClass="form-control" PlaceHolder="Other"></asp:TextBox>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5" class="padding_10">
                                    <asp:GridView ID="gvEducation" runat="server" AllowPaging="false" Width="100%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Ser">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                                                <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Degree">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lbldegreename" Text='<%# Eval("degreename")%>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Institute">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblinstitute" Text='<%# Eval("institute")%>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Passing Year">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblpassingyear" Text='<%# Eval("passingyear")%>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Subject">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblSubject" Text='<%# Eval("subject")%>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btnEditEducation" Text="Edit" CommandArgument='<%# Container.DataItemIndex %>'
                                                        OnCommand="btnEditEducation_Command" runat="server" CausesValidation="false" />
                                                </ItemTemplate>
                                                <ItemStyle CssClass="ItemStyle" Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btnDeleteEducation" runat="server" Text="Delete" OnCommand="btnDeleteEducation_Command"
                                                        OnClientClick="return confirm('Sure to delete this record?.')" CommandArgument='<%# Container.DataItemIndex %>' />
                                                </ItemTemplate>
                                                <ItemStyle CssClass="ItemStyle" Width="70px" />
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <div class="panel panel-warning">
        <div class="panel-heading">
            <strong class="">Posting Place </strong>
        </div>
        <div class="panel-body">
            <div>
                <asp:UpdatePanel runat="server" ID="UpdatePanel3">
                    <ContentTemplate>
                        <asp:UpdateProgress ID="UpdateProgress4" runat="server" AssociatedUpdatePanelID="UpdatePanel3">
                            <ProgressTemplate>
                                <asp:Image ID="Image13344d" runat="server" SkinID="imgProgress" />
                            </ProgressTemplate>
                        </asp:UpdateProgress>
                        <table width="100%">
                            <tr>
                                <td>
                                    Designation
                                </td>
                                <td>
                                    Name Of the Office
                                </td>
                                <td>
                                    Date of Joining
                                </td>
                                <td>
                                    Present
                                </td>
                                <td>
                                    Immediate Past
                                </td>
                                <td>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    <asp:TextBox ID="tbxDesignation" runat="server" Width="150px" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator11" Display="Dynamic"
                                        ControlToValidate="tbxDesignation" ErrorMessage="" Text="*" ValidationGroup="PostingPlaces" />
                                </td>
                                <td valign="top">
                                    <asp:TextBox ID="tbxNameOftheOffice" runat="server" Width="150px" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator12" Display="Dynamic"
                                        ControlToValidate="tbxNameOftheOffice" ErrorMessage="" Text="*" ValidationGroup="PostingPlaces" />
                                </td>
                                <td valign="top">
                                    <asp:TextBox ID="tbxDateofJoining" runat="server" Width="100px" CssClass="form-control"></asp:TextBox>
                                    <ajaxToolkit:CalendarExtender runat="server" ID="CalendarExtender2" TargetControlID="tbxDateofJoining"
                                        Format="dd-MMM-yyyy" PopupPosition="BottomLeft" />
                                </td>
                                <td valign="middle">
                                    <asp:CheckBox runat="server" ID="checkPresent" />
                                </td>
                                <td valign="middle">
                                    <asp:CheckBox runat="server" ID="checkimmediatepast" />
                                </td>
                                <td valign="middle">
                                    <asp:Button runat="server" ID="btnAddPostingPlace" Text="Add" ValidationGroup="PostingPlaces"
                                        OnClick="btnAddPostingPlace_Click" />
                                    <asp:Button runat="server" ID="btnClearPostingPlace" Text="Clear" CausesValidation="false"
                                        OnClick="btnClearPostingPlace_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="6" class="padding_10">
                                    <asp:GridView ID="gvPostingPlace" runat="server" AllowPaging="false" Width="100%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Ser">
                                                <ItemTemplate>
                                                    <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                                                <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Designation">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lbldesignation" Text='<%# Eval("designation")%>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Name of the Office">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblnameoftheoffice" Text='<%# Eval("nameoftheoffice")%>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Date of Joining">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lbldateofjoining" Text='<%# Eval("dateofjoining")%>' />
                                                </ItemTemplate>
                                                <HeaderStyle CssClass="nowrap"></HeaderStyle>
                                            </asp:TemplateField>
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
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btnEditPostingPlace" Text="Edit" CommandArgument='<%# Container.DataItemIndex %>'
                                                        OnCommand="btnEditPostingPlace_Command" runat="server" CausesValidation="false" />
                                                </ItemTemplate>
                                                <ItemStyle CssClass="ItemStyle" Width="50px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:Button ID="btnDeletePostingPlace" runat="server" Text="Delete" OnCommand="btnDeletePostingPlace_Command"
                                                        OnClientClick="return confirm('Sure to delete this record?.')" CommandArgument='<%# Container.DataItemIndex %>' />
                                                </ItemTemplate>
                                                <ItemStyle CssClass="ItemStyle" Width="70px" />
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-9 ">
            <asp:Button CssClass="btn btn-primary" runat="Server" Text="Save" ID="Button1" OnClick="OnBtnSave_Click" />&nbsp;
            <asp:Button CssClass="btn btn-primary" ID="hlkBack" Text="Back" runat="server" CausesValidation="false" PostBackUrl="~/Pages/Members/Profile.aspx" />
        </div>
    </div>
</asp:Content>

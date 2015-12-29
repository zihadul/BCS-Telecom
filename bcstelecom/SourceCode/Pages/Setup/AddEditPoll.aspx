<%@ Page Title="Add/Edit poll" Language="C#" MasterPageFile="~/MasterPages/Admin.master"
    ValidateRequest="false" AutoEventWireup="true" CodeFile="AddEditPoll.aspx.cs"
    Inherits="Pages_Admin_AddEditPoll" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContent" runat="Server">
   
            <div class="form-horizontal">
                <div class="col-md-12">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <asp:Label ID="lblError" runat="server"></asp:Label>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        Topics:<span class="required">*</span>
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbxTitle" runat="server" Rows="3" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="Enter Topics" ControlToValidate="tbxTitle">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        Expire Date:<span class="required">*</span>
                    </label>
                    <div class="col-md-6">
                        <asp:TextBox ID="tbxDate" runat="server" CssClass="form-control"></asp:TextBox>
                        <ajaxToolkit:CalendarExtender runat="server" ID="ce1" TargetControlID="tbxDate" Format="dd-MMM-yyyy HH:mm tt"
                            PopupPosition="BottomLeft" />
                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="Enter Expire Date" ControlToValidate="tbxDate">*</asp:RequiredFieldValidator>
                            <asp:Literal runat="server" Text="Ex. 01-Nov-2015 06:00 AM"></asp:Literal>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        Enabled for voting:
                    </label>
                    <div class="col-md-6">
                        <asp:CheckBox CssClass="checkbox-default" runat="server" ID="chkEnabledforVoting" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3">
                        Current Executive Committee:
                    </label>
                    <div class="col-md-6">
                        <asp:CheckBox CssClass="checkbox-default" runat="server" ID="chkOnlyforEC" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-10">
                        <asp:Button CssClass="btn btn-primary" runat="Server" ID="btnSave" Text="Save" OnClick="OnBtnSave_Click" />&nbsp;
                        <asp:Button CssClass="btn btn-primary" ID="hlkBack" runat="server" PostBackUrl="pollAdministration.aspx"
                            CausesValidation="false" Text="Back" />
                    </div>
                </div>
            </div>
            <div>
                <asp:Panel runat="server" ID="pnlOptions">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Poll Options</div>
                        <div class="panel-body">
                            <div class="form-horizontal">
                                <div class="col-md-12">
                                    <asp:ValidationSummary ID="ValidationSummary2" runat="server" ValidationGroup="OptionText" />
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3">
                                        Option Text:<span class="required">*</span>
                                    </label>
                                    <div class="col-md-6">
                                        <asp:TextBox ID="tbxOptionText" runat="server" MaxLength="256" CssClass="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator Display="None" ID="RequiredFieldValidator3" runat="server"
                                            ErrorMessage="Enter Option Text" ValidationGroup="OptionText" ControlToValidate="tbxOptionText">*</asp:RequiredFieldValidator>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-6 col-md-offset-3">
                                        <asp:Button CssClass="btn btn-primary" runat="Server" ID="btnSaveOption" Text="Save"
                                            OnClick="OnbtnSaveOption_Click" ValidationGroup="OptionText" />&nbsp;
                                        <asp:Button CssClass="btn btn-primary" ID="btnClear" runat="server" CausesValidation="false"
                                            Text="Clear" OnClick="OnbtnClear_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </div>
            <div>
                <asp:GridView SkinID="skinGridList" ID="gv" runat="server" AllowPaging="false">
                    <Columns>
                        <asp:TemplateField HeaderText="Ser">
                            <ItemTemplate>
                                <%# Container.DataItemIndex + 1 %>
                            </ItemTemplate>
                            <HeaderStyle CssClass="nowrap" HorizontalAlign="Center"></HeaderStyle>
                            <ItemStyle CssClass="ItemStyle" Width="50px" HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Option Text">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblOptionText" Text='<%# Eval("optiontext")%>' />
                            </ItemTemplate>
                            <HeaderStyle CssClass="nowrap"></HeaderStyle>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button CssClass="btn-edit" ID="btnEdit" ToolTip="Edit" CommandArgument='<%# String.Concat(Container.DataItemIndex.ToString(), ",", Eval("optionid"))  %>'
                                    OnCommand="btnEdit_Command" runat="server" />
                            </ItemTemplate>
                            <ItemStyle CssClass="ItemStyle" HorizontalAlign="center" Width="40px" />
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button CssClass="btn-delete" ID="btnDelete" ToolTip="Delete" runat="server" OnCommand="btnDelete_Command"
                                    OnClientClick="return confirm('Clicking ok will delete this record permanently.')"
                                    CommandArgument='<%# Eval("optionid") %>' />
                            </ItemTemplate>
                            <ItemStyle CssClass="ItemStyle" HorizontalAlign="center" Width="40px" />
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
     
</asp:Content>

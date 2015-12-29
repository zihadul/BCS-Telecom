<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calender.aspx.cs" Inherits="Pages_User_Calender" %>

<%@ Register TagPrefix="ComponentArt" Namespace="ComponentArt.Web.UI" Assembly="ComponentArt.Web.UI" %>
<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server" enableviewstate="False">
    <link href="Resources/CSS/CalendarStyle.css" rel="stylesheet" type="text/css" />
    <link href="Resources/CSS/CallBackStyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function nextMonth() {
            CallBack1.callback(Calendar1.formatDate(Calendar1.getNextVisibleDate(), "yyyy-M-d"));
            document.getElementById("ddlMonth").value = Calendar1.formatDate(Calendar1.getNextVisibleDate(), "M");
            document.getElementById("ddlYear").value = Calendar1.formatDate(Calendar1.getNextVisibleDate(), "yyyy");

        }

        function prevMonth() {
            CallBack1.callback(Calendar1.formatDate(Calendar1.getPrevVisibleDate(), "yyyy-M-d"));
            document.getElementById("ddlMonth").value = Calendar1.formatDate(Calendar1.getPrevVisibleDate(), "M");
            document.getElementById("ddlYear").value = Calendar1.formatDate(Calendar1.getPrevVisibleDate(), "yyyy");

        }
        function setDate() {
            var MonthObject = document.getElementById("ddlMonth");
            var YearObject = document.getElementById("ddlYear");
            var date = MonthObject.value;
            date = YearObject.value + "-" + date + "-" + "1";
            CallBack1.callback(date);
            //alert(Calendar1.formatDate(Calendar1.getPrevVisibleDate(), "yyyy-M-d"));
            return false;
        }
  
    </script>
</head>
<body style="background: transparent">
    <form id="form1" runat="server">
    <div>
        <table style="border-collapse: separate; border-spacing: 5px; margin: 10px auto 5px">
            <tr>
                <td>
                    Month:
                </td>
                <td>
                    <asp:DropDownList ID="ddlMonth" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    Year:
                </td>
                <td>
                    <asp:DropDownList ID="ddlYear" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <ComponentArt:CallBack CssClass="calendar calendar-style" ID="CallBack1" Width="600"
            Height="560" runat="server" OnCallback="CallBack1_Callback">
            <Content>
                <ComponentArt:Calendar ID="Calendar1" ControlType="Calendar" ShowCalendarTitle="false"
                    DayCssClass="day" CalendarCssClass="calendar" MonthPadding="0" MonthSpacing="0"
                    MonthCssClass="month" DayHeaderCssClass="dayheader" DayNameFormat="Full" CalendarTitleCssClass="title"
                    OtherMonthDayCssClass="othermonthday" ClientTarget="Downlevel" SwapSlide="Linear"
                    SwapDuration="500" PrevImageUrl="Resources/Images/prev_wht.gif" NextImageUrl="Resources/Images/next_wht.gif"
                    AllowDaySelection="false" runat="server">
                    <HeaderClientTemplate>
                        <table class="title" cellspacing="0" cellpadding="0" border="0" width="100%">
                            <tr>
                                <td width="27">
                                    <a href="javascript:prevMonth();">
                                        <img src="Resources/Images/prev_wht.gif" width="25" height="22" border="0" /></a>
                                </td>
                                <td align="center">
                                    ## Calendar1.formatDate(Calendar1.get_visibleDate(), "MMMM, yyyy") ##
                                </td>
                                <td width="27" align="right">
                                    <a href="javascript:nextMonth();">
                                        <img alt="" src="Resources/Images/next_wht.gif" width="25" height="22" border="0" /></a>
                                </td>
                            </tr>
                        </table>
                    </HeaderClientTemplate>
                </ComponentArt:Calendar>
            </Content>
            <LoadingPanelClientTemplate>
                <table cellspacing="0" cellpadding="0" class="CallBackLoading">
                    <tr>
                        <td class="CallBackLoadingTitle">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="CallBackLoadingHeader">
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="CallBackLoadingBody">
                            <table cellspacing="0" cellpadding="0">
                                <tr>
                                    <td style="font-size: 10px;">
                                        Loading...&nbsp;
                                    </td>
                                    <td>
                                        <img src="Resources/Images/spinner.gif" width="16" height="16" alt="" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;<br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LoadingPanelClientTemplate>
        </ComponentArt:CallBack>
        <%-- image preload (not necessary but it improves page performance) --%>
        <div style="position: absolute; top: 0px; left: 0px; visibility: hidden;">
            <img src="Resources/Images/spinner.gif" width="0" height="0" alt="" />
            <img src="Resources/Images/header_bg.gif" width="0" height="0" alt="" />
        </div>
    </div>
    </form>
</body>
</html>

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_User_Calender : System.Web.UI.Page
{
    static DataTable dtEvents;

    protected void Page_Load(object sender, EventArgs e)
    {
        this.Calendar1.DayRender += new ComponentArt.Web.UI.Calendar.DayRenderEventHandler(this.Calendar1_DayRender);
        //monthDoc.Load(Server.MapPath("App_Data/Data.xml"));
        if (!IsPostBack)
        {

            Common.SetMonth(ddlMonth, false);
            Common.SetYear(ddlYear);

            ddlMonth.Attributes["onchange"] = "javascript:setDate();";
            ddlYear.Attributes["onchange"] = "javascript:setDate();";

            dtEvents = new bllEvent().Get();

        }
    }

    protected void CallBack1_Callback(object sender, ComponentArt.Web.UI.CallBackEventArgs e)
    {
        System.Threading.Thread.Sleep(1000); // Thread.Sleep simulates the experience of accessing a remote server. Remove before going to production.
        Calendar1.VisibleDate = DateTime.ParseExact(e.Parameter, "yyyy-M-d", System.Globalization.DateTimeFormatInfo.InvariantInfo);
        Calendar1.RenderControl(e.Output);
    }

    private void Calendar1_DayRender(object sender, ComponentArt.Web.UI.CalendarDayRenderEventArgs e)
    {

        if (e.DayRenderInfo.IsOtherMonth) return;


        string dayNumber = e.DayRenderInfo.DayNumberText;
        string monthIndex = (e.DayRenderInfo.Date.Month % 4).ToString();



        if (dtEvents != null)
        {

            DataView dv = dtEvents.DefaultView;

            string Filter = " Event_date='#" + e.DayRenderInfo.Date + "#'";
            dv.RowFilter = Filter;

            DataTable dt = dv.ToTable();


            string DataText = "";

            if (dt.Rows.Count == 0)
            {
                Calendar1.DayCssClass = "Vacant";
                e.Output.Write(dayNumber);
            }
            else
            {
                Calendar1.DayCssClass = "day2Custom";


                foreach (DataRow dr in dt.Rows)
                {
                    DataText += "<a href=EventDetails/" + dr["Event_id"].ToString() + " target='_parent'>" + Common.Decoding(dr["Event_title"].ToString()) + "</a><br />";
                }

                DataText = "<div class='Booked2'>" + dayNumber + "<br /> " + DataText + "<br /></div>";
                e.Output.Write(DataText);
            }
        }
        else
        {
            Calendar1.DayCssClass = "Vacant";

            e.Output.Write(dayNumber + "<br />");
        }
    }
}
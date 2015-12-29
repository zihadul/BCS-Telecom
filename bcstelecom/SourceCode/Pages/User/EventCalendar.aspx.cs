using System;
using System.Data;
using BLL;


public partial class EventCalendar : System.Web.UI.Page
{

    bllEvent objEvent = new bllEvent();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           BindListView();
        }
    }


    private void BindListView()
    {
        DataTable dt = objEvent.Get();
        if (dt.Rows.Count > 0)
        {
            rptEventList.DataSource = dt;
            rptEventList.DataBind();
        }

    }
    protected void btnListView_Click(object sender, EventArgs e)
    {
        pnlListview.Visible = true;
        pnlCalander.Visible = false;
    }
    protected void btnCalanderView_Click(object sender, EventArgs e)
    {
        pnlCalander.Visible = true;
        pnlListview.Visible = false;
    }
}

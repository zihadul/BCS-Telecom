using System.Data;
using BLL;
using System;
using System.Linq;
using System.Web.UI.WebControls;

public partial class Pages_Admin_EventDetails : System.Web.UI.Page
{
    //int ID
    //{
    //    set { ViewState["ID"] = value; }
    //    get
    //    {
    //        try
    //        {
    //            return Convert.ToInt32(ViewState["ID"].ToString());
    //        }
    //        catch
    //        {
    //            return 0;
    //        }
    //    }
    //}
    private static int ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string QueryString = Page.RouteData.Values.Values.ElementAt(0).ToString();
            if (int.TryParse(QueryString, out ID))
                LoadEvent();
        }
    }

    private void LoadEvent()
    {
        DataTable dt = new bllEvent().GetByID(ID);
        rptEventDetails.DataSource = dt;
        rptEventDetails.DataBind();

        if (dt.Rows.Count > 0)
        {
            Literal lit_PageHeader = Page.Master.FindControl("Literal1") as Literal;
            if (lit_PageHeader != null)
                lit_PageHeader.Text = dt.Rows[0]["Event_title"].ToString();
        }
    }
}
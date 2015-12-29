using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

public partial class EventAdministration : System.Web.UI.Page
{
    bllEvent objEvent = new bllEvent();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }


    private void BindData()
    {
        DataTable dt = objEvent.GetAll();
        gv.DataSource = dt;
        gv.DataBind();
    }


    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument.ToString());

        DataTable dt = objEvent.GetByID(id);
        if (dt.Rows.Count > 0)
        {
            objEvent.Delete(id);
            BindData();
        }
    }

    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        BindData();
    }
}

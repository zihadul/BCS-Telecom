using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

public partial class PollAdministration : System.Web.UI.Page
{

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Page.User.IsInRole("Official"))
        {
            Page.MasterPageFile = "~/MasterPages/Member.master";
        }

    }

    bllPoll objPoll = new bllPoll();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }


    private void BindData()
    {
        DataTable dt = objPoll.GetList();
        gv.DataSource = dt;
        gv.DataBind();
    }


    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument.ToString());
        objPoll.Delete(id);
        BindData();
    }

    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        BindData();
    }
}

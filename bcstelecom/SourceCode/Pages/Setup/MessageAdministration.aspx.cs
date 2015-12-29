using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

public partial class MessageAdministration : System.Web.UI.Page
{
    bllMessage objMessage = new bllMessage();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }


    private void BindData()
    {
        DataTable dt = objMessage.GetList();
        gv.DataSource = dt;
        gv.DataBind();
    }


    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument.ToString());
        objMessage.Delete(id);
        BindData();
    }

    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        BindData();
    }
}

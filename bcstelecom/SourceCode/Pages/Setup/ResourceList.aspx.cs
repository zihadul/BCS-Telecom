using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_Setup_ResourceList : System.Web.UI.Page
{
    bllDocuments objDocuments = new bllDocuments();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }


    private void BindData()
    {
        DataTable dt = objDocuments.GetList();
        gv.DataSource = dt;
        gv.DataBind();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindData();
    }

    protected void btnDownload_Command(object sender, CommandEventArgs e)
    {
        DownloadController.Download(Server.MapPath("~/Resources/Images/UserFiles/Documents/"), e.CommandArgument.ToString(), this);
    }


    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument.ToString());

        DataTable dt = objDocuments.GetByID(id);

        if (dt.Rows[0]["AttachmentName"].ToString() != "")
        {
            Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/Documents/" + dt.Rows[0]["AttachmentName"].ToString()));
        }
        objDocuments.Delete(id);
        BindData();
    }

    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        BindData();
    }
}
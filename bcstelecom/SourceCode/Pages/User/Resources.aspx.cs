using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

public partial class Resources : BasePage
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
        DataTable dt = new bllResource().GetAll();
        rptResource.DataSource = dt;
        rptResource.DataBind();
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        BindData();
    }

    protected void btnDownload_Command(object sender, CommandEventArgs e)
    {
        DownloadController.Download(Server.MapPath("~/Resources/Images/UserFiles/Documents/"), e.CommandArgument.ToString(), this);
    }
    
}

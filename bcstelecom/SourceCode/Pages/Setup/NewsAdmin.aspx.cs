using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;


public partial class Pages_Admin_NewsAdmin : BasePage
{
    private bllNews objNews = new bllNews();

    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!IsPostBack)
        {
            LoadData();
        }
    }

    private void LoadData()
    {
        DataTable dt = objNews.GetAll();
        gv.DataSource = dt;
        gv.DataBind();
    }

    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(e.CommandArgument.ToString());
            objNews.Delete(id);
            MessageController.Show(MessageCode._DeleteSucceeded, MessageType.Information, Page);
            LoadData();
        }
        catch (Exception ex)
        {
            MessageController.Show(MessageCode._DeleteFailed, MessageType.Error, Page);
        }
    }

    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        LoadData();
    }
}
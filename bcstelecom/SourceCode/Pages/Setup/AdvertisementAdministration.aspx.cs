using System;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

public partial class Pages_AdvertisementAdministration : System.Web.UI.Page
{

    bllAdvertisement _objAdvertisement = new bllAdvertisement();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    public void BindData()
    {
        gv.DataSource = _objAdvertisement.GetList();
        gv.DataBind();
    }


    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {

        try
        {
            int id = int.Parse(e.CommandArgument.ToString());
            DataTable dt = _objAdvertisement.GetById(id);
            if (dt.Rows.Count > 0)
            {
                Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/Advertisement/" + dt.Rows[0]["filename"].ToString()));
                Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/Advertisement/thumbs/" + dt.Rows[0]["filename"].ToString()));
            }

            _objAdvertisement.Delete(id);
            BindData();
            MessageController.Show(MessageCode._DeleteSucceeded, MessageType.Information, Page);
        }
        catch (Exception)
        {
            MessageController.Show(MessageCode._DeleteFailed, MessageType.Error, Page);
        }
    }


    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        BindData();
    }


}
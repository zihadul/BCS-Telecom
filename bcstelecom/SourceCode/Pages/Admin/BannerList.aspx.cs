using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_Admin_BannerList : Page
{
    bllBanner objBanner = new bllBanner();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.Name == "")
            Response.Redirect("~/Login.aspx", true);

        if (!IsPostBack)
        {
            BindData();
        }
    }


    private void BindData()
    {
        DataTable dt = objBanner.GetAllFeaturedBanner();
        gv.DataSource = dt;
        gv.DataBind();
    }


    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);

        try
        {
            DataTable dt = objBanner.GetByID(id);

            if (dt.Rows[0]["display_image_path"].ToString() != "")
            {
                Common.DeleteFile(Server.MapPath("~/Resources/Images/Banner/Thumbs/" + dt.Rows[0]["display_image_path"]));
                Common.DeleteFile(Server.MapPath("~/Resources/Images/Banner/Large/" + dt.Rows[0]["display_image_path"]));
            }
            objBanner.Delete(id);
            BindData();
            MessageController.Show(MessageCode._DeleteSucceeded, MessageType.Information, Page);
        }
        catch (Exception ex)
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
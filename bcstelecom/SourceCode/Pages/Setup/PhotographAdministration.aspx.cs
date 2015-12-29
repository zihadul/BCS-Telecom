using System;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

public partial class Pages_PhotographAdministration : System.Web.UI.Page
{


    private bllPhotoGallery objBllPhotoGallery = new bllPhotoGallery();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (User.Identity.Name == "")
                Response.Redirect("~/Login.aspx", true);
            BindData();
            BindCategory();
        }
    }

    private void BindData()
    {
        DataView dv = objBllPhotoGallery.GetList().DefaultView;
        gv.DataSource = dv.ToTable();
        gv.DataBind();
    }


    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument.ToString());

        DataTable dt = objBllPhotoGallery.GetById(id);
        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["ImagePath"].ToString() != "")
            {
                Common.DeleteFile(
                    Server.MapPath("~/Resources/Images/UserFiles/PhotoGallery/Main/" +
                                   dt.Rows[0]["ImagePath"].ToString()));
                Common.DeleteFile(
                    Server.MapPath("~/Resources/Images/UserFiles/PhotoGallery/Thumbs/" +
                                   dt.Rows[0]["ImagePath"].ToString()));
            }
            objBllPhotoGallery.Delete(id);
            BindData();
            MessageController.Show(MessageCode._DeleteSucceeded, MessageType.Information, Page);
        }
    }

    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        BindData();
    }

    protected void BindCategory()
    {
        DataView dv = new bllCategory().GetList().DefaultView;
        DataTable dt = dv.ToTable();
        ddlCategory.DataSource = dt;
        ddlCategory.DataBind();
    }


    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if ((Convert.ToInt32(ddlCategory.SelectedValue)) > 0)
        {
            DataTable dt = objBllPhotoGallery.GetByCategoryId(Convert.ToInt32(ddlCategory.SelectedValue));
            if (dt.Rows.Count > 0)
            {
                gv.DataSource = dt;
                gv.DataBind();
            }
            else
            {
                gv.DataSource = null;
                gv.DataBind();
            }
        }

        else
        {
            BindData();
        }

    }
}
using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_Admin_Category : System.Web.UI.Page
{
   
    private bllCategory objCategory = new bllCategory();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.Name == "")
            Response.Redirect("~/Login.aspx", true);

        if (!IsPostBack)
        {
            if (User.Identity.Name == "")
                Response.Redirect("~/Login.aspx", true);
            BindData();
        }
    }

    public void BindData()
    {
        DataView dv = objCategory.GetList().DefaultView;
        DataTable dt = dv.ToTable();
        gv.DataSource = dt;
        gv.DataBind();
    }

    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        try
        {
            int id = int.Parse(e.CommandArgument.ToString());
            objCategory.Delete(id);
            MessageController.Show(MessageCode._DeleteSucceeded, MessageType.Information, Page);
            BindData();
        }
        catch (Exception ex)
        {
            MessageController.Show(ex.Message, MessageType.Error, Page);
        }
    }


    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        BindData();
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

public partial class Pages_Admin_ExecutiveCommittee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadYear();
            LoadData();
        }
    }
    protected void LoadData()
    {
        DataTable dt = new bllExecutiveCommitee().GetByYear(Convert.ToInt32(ddlyear.SelectedValue));
        gv.DataSource = dt;
        gv.DataBind();
    }
    protected void LoadYear()
    {
        DataTable dt = new bllYear().GetAll();
        ddlyear.DataSource = dt;
        ddlyear.DataBind();
    }
    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);

        try
        {
            new bllExecutiveCommitee().Delete(id);
            LoadData();
            MessageController.Show(MessageCode._DeleteSucceeded, MessageType.Information, Page);
        }
        catch (Exception ex)
        {
            MessageController.Show(MessageCode._DeleteFailed, MessageType.Error, Page);
        }
    }
    protected void ddlyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadData();
    }
}
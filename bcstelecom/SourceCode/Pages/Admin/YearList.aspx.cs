using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Setup_YearList : System.Web.UI.Page
{
    bllYear objYear = new bllYear();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }

    }



    protected void LoadData()
    {
        DataTable dt = objYear.GetAll();
        gv.DataSource = dt;
        gv.DataBind();
    }


    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        try
        {
            objYear.Delete(id);
            LoadData();
            MessageController.Show(MessageCode._DeleteSucceeded, MessageType.Information, Page);
        }
        catch (Exception ex)
        {
            MessageController.Show(MessageCode._DeleteFailed, MessageType.Error, Page);
        }
    }
}
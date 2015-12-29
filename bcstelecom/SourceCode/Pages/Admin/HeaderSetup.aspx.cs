using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Admin_HeaderSetup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }
       
    }

   

    protected void LoadData()
    {
        DataTable dt = new bllHeader().GetAll();
        gv.DataSource = dt;
        gv.DataBind();
    }

   
    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);

        try
        {
            DataTable dt = new bllHeader().GetById(id);

            if (dt.Rows[0]["Image"].ToString() != "")
            {
                Common.DeleteFile(Server.MapPath("~/Resources/Images/Header/" + dt.Rows[0]["Image"]));
            }
            new bllHeader().Delete(id);
            LoadData();
            MessageController.Show(MessageCode._DeleteSucceeded, MessageType.Information, Page);
        }
        catch (Exception ex)
        {
            MessageController.Show(MessageCode._DeleteFailed, MessageType.Error, Page);
        }
    }
   
}
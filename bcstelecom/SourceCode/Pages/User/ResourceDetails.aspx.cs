using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ResourceDetails : System.Web.UI.Page
{
    //int ID
    //{
    //    set { ViewState["ID"] = value; }
    //    get
    //    {
    //        try
    //        {
    //            return Convert.ToInt32(ViewState["ID"].ToString());
    //        }
    //        catch
    //        {
    //            return 0;
    //        }
    //    }
    //}

    private static int ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string QueryString = Page.RouteData.Values.Values.ElementAt(0).ToString();
            if (int.TryParse(QueryString, out ID))
                LoadData();
        }
    }

    protected void LoadData()
    {
        DataTable dt = new bllDocuments().GetByCategoryID(ID);
        if(dt.Rows.Count>0)
        {
            Page.Title = dt.Rows[0]["Category"].ToString();
            gv.DataSource = dt;
            gv.DataBind();
        }
        else
        {
            DataTable dtt = new bllResource().GetById(ID);
            if(dtt.Rows.Count>0)
            {
                Page.Title = dtt.Rows[0]["Title"].ToString();
            }
        }
    }

    protected void btnDownload_Command(object sender, CommandEventArgs e)
    {
        DownloadController.Download(Server.MapPath("~/Resources/Images/UserFiles/Documents/"), e.CommandArgument.ToString(), this);
    }


}
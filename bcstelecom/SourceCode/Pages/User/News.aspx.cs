using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_User_News : System.Web.UI.Page
{
    private bllNews objNews = new bllNews();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    public void BindData()
    {
        DataTable dt = objNews.Get();
        if (dt.Rows.Count > 0)
        {
            rptNews.DataSource = dt;
            rptNews.DataBind();
        }

    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class UserControls_News : System.Web.UI.UserControl
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
        DataTable dt = objNews.GetLatest3();
        if (dt.Rows.Count > 0)
        {
            rptNews.DataSource = dt;
            rptNews.DataBind();
        }
       
    }


}
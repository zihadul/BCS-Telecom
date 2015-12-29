using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

public partial class UserControls_Events : System.Web.UI.UserControl
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    public void BindData()
    {
        DataTable dt = new bllEvent().GetLatest();
        if (dt.Rows.Count > 0)
        {
            rptEvent.DataSource = dt;
            rptEvent.DataBind();
        }

    }
  

}
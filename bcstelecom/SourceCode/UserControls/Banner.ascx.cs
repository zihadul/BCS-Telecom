using System;
using System.Data;
using System.Web.UI;
using BLL;


public partial class UserControls_Banner : UserControl
{
    bllBanner objBanner = new bllBanner();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = objBanner.GetList();
            repeaterServicesPart1.DataSource = dt;
            repeaterServicesPart1.DataBind();
        }
    }
}
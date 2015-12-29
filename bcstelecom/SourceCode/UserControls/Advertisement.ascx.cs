using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

public partial class UserControls_Advertisement : System.Web.UI.UserControl
{
    bllAdvertisement _objAdvertisement = new bllAdvertisement();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            BindData();
    }


    public void BindData()
    {
        DataTable dt = _objAdvertisement.GetActive();
        rptAdd.DataSource = dt;
        rptAdd.DataBind();
    }

}
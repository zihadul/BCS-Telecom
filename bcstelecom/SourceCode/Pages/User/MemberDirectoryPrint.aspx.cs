using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

public partial class MemberDirectoryPrint : System.Web.UI.Page
{
    bllMember objMember = new bllMember();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            gv.PageSize = 100000;
            BindData();
             DataTable dt = objMember.GetAllUser();
            if (dt.Rows.Count > 0)
            {
                 lblPritedBy.Text = "Printed By: " + dt.Rows[0]["membername"].ToString();
            }
            lblPrintDate.Text = "Print Date: " + DateTime.UtcNow.AddHours(6).ToString();
           
        }
    }
    public void BindData()
    {
        DataTable dt = objMember.GetAllUser();
        gv.DataSource = dt;
        gv.DataBind();
    }
}
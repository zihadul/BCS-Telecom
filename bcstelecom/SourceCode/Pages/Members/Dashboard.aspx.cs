using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_Members_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getMessage();
        }
    }
    int ID
    {
        set { ViewState["ID"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["ID"].ToString());
            }
            catch
            {
                return 0;
            }
        }
    }
    protected void getMessage()
    {
        DataTable dt = new bllMember().GetByUserName(Page.User.Identity.Name.ToString());
        if (dt.Rows.Count > 0)
        {
            ID = Convert.ToInt32(dt.Rows[0]["memberid"].ToString());
            DataTable dtMessage = new bllMessage().GetByMemberID(ID);
            if (dtMessage.Rows.Count > 0)
            {
                gvMessage.DataSource = dtMessage;
                gvMessage.DataBind();
            }
        }
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

public partial class UserControls_Message : System.Web.UI.UserControl
{

    bllMessage objMessage = new bllMessage();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Page.User.Identity.Name != "")
                BindData();
            else
                pnlMessage.Visible = false;
        }
    }

    private void BindData()
    {

        DataTable dt = new bllMember().GetByUserName(Page.User.Identity.Name);
        int MemberID = 0;
        if (dt.Rows.Count > 0)
            MemberID = int.Parse(dt.Rows[0]["memberid"].ToString());


        dt = objMessage.GetByMemberID(MemberID);

        if (dt.Rows.Count > 0)
        {
            Message.DataSource = dt;
            Message.DataBind();
        }
        else
            pnlMessage.Visible = false;
    }
}
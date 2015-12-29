using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;

public partial class Pages_AdminHome : System.Web.UI.Page
{

    int MemberID
    {
        set { ViewState["MemberID"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["MemberID"].ToString());
            }
            catch
            {
                return 0;
            }
        }

    }
    private bool IsOfficial;


    bllMember objMember = new bllMember();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            DataTable dt = objMember.GetByUserName(User.Identity.Name);
            if (dt.Rows.Count > 0)
            {
                string[] RolesForUser = Roles.GetRolesForUser(Page.User.Identity.Name);
                string UserRole = RolesForUser[0].ToString();

                MemberID = int.Parse(dt.Rows[0]["memberid"].ToString());

                if (UserRole == "Official")
                {
                    IsOfficial = true;
                }
                else
                {
                    IsOfficial = false;
                }
                getMessage();
            }
           
        }

    }
    protected void getMessage()
    {
        DataView dv = new bllMessage().GetByMemberID(MemberID).DefaultView;

        if (IsOfficial == true)
        {
            //for official
            dv.RowFilter = "senttoall=2 OR senttoall=1";
            DataTable dt = dv.ToTable();
            if (dt.Rows.Count > 0)
            {
                gvMessage.DataSource = dt;
                gvMessage.DataBind();
            }
            else
            {
                lblMessage.Text = "There is no new message.";
            }
        }
        else
        {
            //for all member

            DataTable dt1 = new bllMessage().GetMessageForAllByMemberID(MemberID);
            if (dt1.Rows.Count > 0)
            {
                gvMessage.DataSource = dt1;
                gvMessage.DataBind();
            }
            else
            {
                lblMessage.Text = "There is no new message.";
            }
        }
   
      

    }
}
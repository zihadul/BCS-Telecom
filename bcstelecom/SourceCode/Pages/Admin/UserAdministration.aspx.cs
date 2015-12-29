using System;
using System.Data;
using System.Web.Security;
using System.Web.UI.WebControls;
using BLL;

public partial class UserAdministration : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserRole"] == null)
            {
                if (Page.User.Identity.Name != "")
                    Session["UserRole"] = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
            }
            gv.PageSize = 20;
            BindRole();
            BindData();
            
        }
    }


    private void BindRole()
    {
        ddlRole.DataSource = Common.GetRoles(Session["UserRole"].ToString());
        ddlRole.DataBind();
    }

    protected void BindData()
    {
        DataView dv = new bllMember().GetUserList().DefaultView;


        string Criteria = "";

        if (tbxUserName.Text.Trim() != "")
        {
            Criteria = "UserName like '%" + tbxUserName.Text.Trim()  + "%'";
        }

        if (tbxEmail.Text.Trim() != "")
        {
            if (Criteria == "")
                Criteria = "Email like '%" + tbxEmail.Text.Trim() + "%'";
            else
                Criteria += " And Email like '%" + tbxEmail.Text.Trim() + "%'";
        }


        if (ddlRole.SelectedValue != "All")
        {
            if (Criteria == "")
                Criteria = "RoleName='" + ddlRole.SelectedValue + "'";
            else
                Criteria += " And RoleName='" + ddlRole.SelectedValue + "'";
        }
        else
        {
            if (Session["UserRole"].ToString() != "Support")
            {
                if (Criteria == "")
                    Criteria = "RoleName <>'Support'";
                else
                    Criteria += " And RoleName <>'Support'";
            }
        }

        dv.RowFilter = Criteria;

        DataTable dt = dv.ToTable();

        gv.DataSource = dt;
        gv.DataBind();

        lblNumberOfTotalUsers.Text = dt.Rows.Count.ToString();
    }



    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        BindData();
    }

    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        DataTable dt = new bllMember().GetByUserName(e.CommandArgument.ToString());

        new bllMember().Delete(e.CommandArgument.ToString());
        Membership.DeleteUser(e.CommandArgument.ToString(), true);

        if (dt.Rows.Count > 0)
        {
            if (dt.Rows[0]["photograph"].ToString() != "")
            {
                Common.DeleteFile(
                    Server.MapPath("~/Resources/Images/UserFiles/ProfilePicture/" + dt.Rows[0]["photograph"].ToString()));
                Common.DeleteFile(
                    Server.MapPath("~/Resources/Images/UserFiles/ProfilePicture/thumbs/" + dt.Rows[0]["photograph"].ToString()));
            }
        }


        BindData();
    }

    protected void btnSuspend_Command(object sender, CommandEventArgs e)
    {
        MembershipUser mu = Membership.GetUser(e.CommandArgument.ToString());
        mu.IsApproved = !mu.IsApproved;
        Membership.UpdateUser(mu);
        BindData();
    }


    protected void btnSearch_Click(object sender, EventArgs e)
    {
         
        BindData();
    }
}
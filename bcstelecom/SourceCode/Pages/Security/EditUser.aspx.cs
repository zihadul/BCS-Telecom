using System;
using System.Activities.Expressions;
using System.Web.Security;
using BLL;


public partial class Pages_Security_EditUser : BasePage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //string strrole = Page.User.IsInRole("support").ToString();

        //if (!(User.IsInRole("support")))
        //    Response.Redirect("~/Login", true);

        if (!IsPostBack)
        {

            BindRole();

            if (Session["UserRole"] == null)
            {
                if (Page.User.Identity.Name != "")
                    Session["UserRole"] = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
            }

            if (Request.QueryString["UN"] != null && Request.QueryString["UN"].ToString().Length > 0)
                LoadControls();
        }
    }

    private void BindRole()
    {

        ddlRole.DataSource = Common.GetRoles(Session["UserRole"].ToString());
        ddlRole.DataBind();
    }


    private void LoadControls()
    {

        MembershipUser mu = Membership.GetUser(Request.QueryString["UN"].ToString());
        tbxUserName.Text = mu.UserName;
        tbxEmail.Text = mu.Email;
        ddlRole.SelectedValue = Roles.GetRolesForUser(mu.UserName)[0].ToString();

    }


    protected void btnSave_Click(object sender, EventArgs e)
    {
        MembershipUser mu = Membership.GetUser(Request.QueryString["UN"].ToString());

        Roles.RemoveUserFromRoles(mu.UserName, Roles.GetRolesForUser(mu.UserName));
        // Insert role
        Roles.AddUserToRole(tbxUserName.Text, ddlRole.SelectedValue);
        mu.Email = tbxEmail.Text;
        // Save changes
        Membership.UpdateUser(mu);
        MessageController.Show("Edit successfully.", MessageType.Information, Page);

    }
}

using System;
using System.Web.Security;
using System.Web.UI;

public partial class UserControls_Menu : UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Page.User.Identity.Name != "")
            {
                if (Roles.GetRolesForUser()[0] == "Member")
                {
                    memberMenu.Visible = true;
                    officialMenu.Visible = false;
                }
                else if (Roles.GetRolesForUser()[0] == "Official")
                {
                    officialMenu.Visible = true;
                    memberMenu.Visible = false;
                }
                else
                {
                    memberMenu.Visible = false;
                    officialMenu.Visible = false;

                }
            }
            else
            {
                memberMenu.Visible = false;
                officialMenu.Visible = false;

            }

        }

    }
    protected void LoginStatus1_LoggedOut(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }

    //protected void btnLogOut_Click(object sender, EventArgs e)
    //{
    //    FormsAuthentication.SignOut();
    //    Response.Redirect("~/Login.aspx");
    //}
}
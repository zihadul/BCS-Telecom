using System;
using System.Data;
using System.Web.Security;
using System.Web.UI.WebControls;
using BLL;

public partial class UserControls_Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Login1_LoggedIn(object sender, EventArgs e)
    {
        string[] RolesForUser = Roles.GetRolesForUser(Login1.UserName);
        string UserRole = RolesForUser[0].ToString();

        if (UserRole == "Admin" || UserRole == "Support")
        {
            Response.Redirect("~/Pages/Admin/Dashboard.aspx", true);

        }
        else if (UserRole == "Member" || UserRole == "Official")
        {
            Response.Redirect("~/Dashboard", true);
        }
        else
        {
            Response.Redirect("~/Home", true);
        }

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        try
        {

            if (Membership.ValidateUser(Login1.UserName, Login1.Password))
            {
                e.Authenticated = true;
            }
            else
            {
                e.Authenticated = false;
            }


        }
        catch (Exception ex)
        {
            Login1.FailureText = "There was an error while logging you in. Please try again.";
        }
    }
}

using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Literal lit_PageHeader = Page.Master.FindControl("lit_PageHeader") as Literal;
            if (lit_PageHeader != null)
                lit_PageHeader.Text = "Forgot Password?";
        }
    }

    protected void ValidateUser(object sender, LoginCancelEventArgs e)
    {
        MembershipUser mu = Membership.GetUser(PasswordRecovery1.UserName);

        if (mu == null)
        {
            e.Cancel = true;
            ((Literal)PasswordRecovery1.UserNameTemplateContainer.FindControl("lblMessage")).Text = "No such user found.";
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Pages_Security_ResetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        lblMessage.Text = "";

        if (!IsPostBack)
        {
            if (Request.QueryString["un"] != null)
                UserDataBind();
            else
            {
                Response.Redirect("UserAdministration.aspx", false);
            }
        }
    }



    private void UserDataBind()
    {
        txtUserName.Text = Request.QueryString["un"].ToString();

        MembershipUser user = Membership.GetUser(txtUserName.Text);

        txtUserName.BorderStyle = BorderStyle.None;
        txtUserName.Enabled = false;

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        Validate("User");
        if (!IsValid) return;

        if (Request.QueryString["un"] != null)
        {
            MembershipUser user = Membership.GetUser(txtUserName.Text);

            string oldPassword = user.ResetPassword();
            if (oldPassword.Length > 0 && Password.Text.Length > 0)
            {
                if (user.ChangePassword(oldPassword, Password.Text))
                {

                    string Log = "User Name: " + txtUserName.Text;
                    MessageController.Show("Password has been reset.", MessageType.Information, Page);

                }
            }
        }
        System.Threading.Thread.Sleep(3000);
    }
}
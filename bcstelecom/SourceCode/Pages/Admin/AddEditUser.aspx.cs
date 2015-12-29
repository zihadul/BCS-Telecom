using System;
using System.Web.Security;
using BLL;

public partial class AddEditUser : System.Web.UI.Page
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

            BindRole();
        }
    }

    private void BindRole()
    {

        ddlRole.DataSource = Common.GetRoles(Session["UserRole"].ToString());
        ddlRole.DataBind();
    }



    protected void btnAddEditUser_Click(object sender, EventArgs e)
    {

        try
        {
            if (Membership.GetUser(tbxUserName.Text) != null)
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "User name already exists. Try another";
                return;
            }

            MembershipCreateStatus mcsStatus;
            Membership.CreateUser(tbxUserName.Text, tbxPassword.Text, tbxEmail.Text, "Q", "A", true, out mcsStatus);

            if (mcsStatus == MembershipCreateStatus.Success)
            {
                // Insert role
                Roles.AddUserToRole(tbxUserName.Text, ddlRole.SelectedValue);

                new bllMember().Insert(tbxEmail.Text, tbxUserName.Text);


                string strMessage =
                    "A user has been created for you. <br />in <a href='http://www.bcstelecom.org.bd'>BCS Telecom Samity</a><br />";

                strMessage += "<p><b>User Name:</b> " + tbxUserName.Text;
                strMessage += "<br /> <b>Password:</b> " + tbxPassword.Text + "</b></p>";

                try
                {
                    Email.Send(tbxEmail.Text, "User created for you in BCS Telecom Samity", strMessage);
                }
                catch (Exception)
                {
                }


                MessageController.Show("User created successfully.", MessageType.Information, Page);
                tbxUserName.Text = "";
                tbxPassword.Text = "";
                tbxConfirmPassword.Text = "";
                tbxEmail.Text = "";

            }
           
        }
        catch (Exception ex)
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = ex.Message;
            return;
        }

    }
}
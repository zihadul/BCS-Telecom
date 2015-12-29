using System;
using System.Web.Security;
using System.Web.UI;

public partial class UserControls_AdminMenu : UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                if (Page.User.Identity.Name != "")
                {
                    string[] strUserRole = Roles.GetRolesForUser(Page.User.Identity.Name);
                    if (strUserRole.Length > 0)
                        SetMenu(strUserRole[0]);

                    //hypAdmin.NavigateUrl = "http://newsletter.asha-ny.org/Login.aspx?Un=" + EncryptDecrypt.EncryptString(Page.User.Identity.Name) + "&l=Active";
                    // newsletter url
                }
            }
        }
        catch (Exception)
        {
        }
    }

    private void SetMenu(string strRole)
    {
        AdminNav.DataSource = NavigationController.GetSiteMapDataSource(strRole);
        AdminNav.DataBind();
    }

}
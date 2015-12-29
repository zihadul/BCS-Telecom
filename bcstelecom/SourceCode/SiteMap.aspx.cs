using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class SiteMap : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Page.User.Identity.Name != "")
            {
                string[] strUserRole = Roles.GetRolesForUser(Page.User.Identity.Name);
                if (strUserRole.Length > 0)
                    SetMenu(strUserRole[0].ToString());
            }
            else
            {
                SetMenu("Annonymous");
            }
        }
    }

    private void SetMenu(string strRole)
    {


        TreeView1.DataSource = NavigationController.GetSiteMapDataSource(strRole);
        TreeView1.DataBind();

        //TreeView1.Nodes.AddAt (0, new TreeNode("Home", "", "", "~/Default.aspx","")); 

    }

}
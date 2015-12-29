using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;

public partial class MasterPages_Admin : MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadPageTitle();
            LoadPageHeader();
            LoadPageKeyword();
            LoadPageDescription();
            Page.Header.DataBind();
        }
    }

    private void LoadPageTitle()
    {
        if (SiteMap.CurrentNode != null)
        {
            Page.Title = SiteMap.CurrentNode.Title + " - BCS Telecom Samity";
        }
        else
        {
            Page.Title = Page.Title + " - BCS Telecom Samity";
        }
        
    }

    private void LoadPageHeader()
    {
        if (SiteMap.CurrentNode != null)
        {
            if (SiteMap.CurrentNode["PageHeader"] != null)
            {
                lit_PageHeader.Text = SiteMap.CurrentNode["PageHeader"];
            }
          
        }
      
    }

    private void LoadPageKeyword()
    {
        if (SiteMap.CurrentNode != null)
        {
            if (SiteMap.CurrentNode["keywords"] != null)
            {
                var meta = new HtmlMeta();
                meta.Name = "Keywords";
                meta.Content = SiteMap.CurrentNode["Keywords"];
                Page.Header.Controls.AddAt(1, meta);
            }
        }
    }

    private void LoadPageDescription()
    {
        if (SiteMap.CurrentNode != null)
        {
            if (SiteMap.CurrentNode.Description != null)
            {
                var meta = new HtmlMeta();
                meta.Name = "Description";
                meta.Content = SiteMap.CurrentNode.Description;
                Page.Header.Controls.AddAt(2, meta);
            }
        }
    }
    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        Response.Redirect("Login.aspx");
    }
}
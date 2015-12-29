using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class MasterPages_Site : MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadPageTitle();
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
            lit_PageHeader.Text = SiteMap.CurrentNode.Title.ToString();
        }
        else
        {
            lit_PageHeader.Text = Page.Title.ToString();
            Page.Title = Page.Title + " - BCS Telecom Samity";
        }

        if (SiteMap.CurrentNode != null)
        {
            if (SiteMap.CurrentNode["PageHeader"] == "News")
            {
                pnlNews.Visible = false;
            }
            if (SiteMap.CurrentNode["PageHeader"] == "Event")
            {
                pnlEvent.Visible = false;
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
}
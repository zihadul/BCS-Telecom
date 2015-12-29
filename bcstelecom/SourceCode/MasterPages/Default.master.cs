using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using AjaxControlToolkit.HTMLEditor.ToolbarButton;
using Org.BouncyCastle.Asn1.TeleTrust;

public partial class MasterPages_Default : MasterPage
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
        Page.Title = "BCS Telecom Samity";
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
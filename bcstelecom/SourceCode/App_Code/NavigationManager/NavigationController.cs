/*
Usage:
    tvwMenu.DataSource = NavigationController.GetSiteMapDataSource(Session["UserRole"].ToString());
    tvwMenu.DataBind();
 */
using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public class NavigationController
{
    public static SiteMapDataSource  GetSiteMapDataSource(string strRole)
    {
        System.Collections.Specialized.NameValueCollection myCollection = new System.Collections.Specialized.NameValueCollection(1);
        myCollection.Add("siteMapFile", "~/Web.sitemap");

        XmlSiteMapProvider xmlSiteMap = new XmlSiteMapProvider();
        xmlSiteMap.Initialize("provider", myCollection);
        xmlSiteMap.BuildSiteMap();

        SiteMapDataSource siteMap = new SiteMapDataSource();
        siteMap.StartingNodeUrl = "~/" + strRole + "Dummy.aspx";
        siteMap.ShowStartingNode = false;                

        return siteMap;
    }
} // Class
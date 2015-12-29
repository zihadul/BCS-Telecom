using System;
using System.IO;
using System.Web.UI;

public partial class UserControls_Contact : UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadProduct();
        }
    }

    private void LoadProduct()
    {
        string fileName = Path.GetFileName(Request.PhysicalPath);
        LitContent.Text = ContentResources.GetResourceByCultureKey("Contact Us", "Page Content");
    }
}
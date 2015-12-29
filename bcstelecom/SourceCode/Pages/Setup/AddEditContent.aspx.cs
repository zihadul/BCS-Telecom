using System;
using System.Data;


public partial class AddEditContent : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            BindPagesList();
            LoadData();
        }
    }

    protected void BindPagesList()
    {
        DataSet ds = ContentResources.GetPages("");
        lstPages.DataSource = ds.Tables[0];
        lstPages.DataBind();
    }

    public void OnBtnSave_Click(object sender, EventArgs e)
    {
        bool ret = ContentResources.UpdateResource(lstPages.SelectedItem.Text, "Page Content", txtBodyText.Content);
        if (ret)
        {
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
            Cache.Remove(lstPages.SelectedValue.ToLower());
        }
        else
        {
            MessageController.Show(MessageCode._SaveFailed, MessageType.Error, Page);
        }
    }

    protected void lstPages_SelectedIndexChanged(object sender, EventArgs e)
    {
        if ((lstPages.SelectedIndex != -1))
        {
            LoadData();
        }
    }

    protected void LoadData()
    {
        string values = ContentResources.GetResourceByCultureKey(lstPages.SelectedItem.Text, "Page Content");
        if (values != null)
        {
            txtBodyText.Content = values;
        }
    }
}

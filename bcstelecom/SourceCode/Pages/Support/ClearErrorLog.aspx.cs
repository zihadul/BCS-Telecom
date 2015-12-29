using System;
using System.Web.UI;
using BLL;

public partial class ClearErrorLog : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.Name == "")
            Response.Redirect("~/Login.aspx", true);

        if (!IsPostBack)
        {
            tbxDate.Text = DateTime.Today.ToString("dd-MMM-yyyy");
        }
    }


    public void OnBtnSave_Click(object sender, EventArgs e)
    {
        try
        {
            new bllCommon().ClearErrorLog(Convert.ToDateTime(tbxDate.Text).AddHours(23));
            MessageController.Show("Error Log Clear", MessageType.Information, Page);
        }
        catch (Exception ex)
        {
            MessageController.Show("Error Log Clear Fail", MessageType.Error, Page);
        }
    }
}
using System;
using BLL;

public partial class UserControls_HitCounter : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            GetTotalHits();

    }

    private void GetTotalHits()
    {
        try
        {
            divHitCounter.Visible = true;
            lblHitCounter.Text = new bllHitCounter().GetTotalHits().ToString();
        }
        catch (Exception)
        {
            divHitCounter.Visible = false;
        }
    }
}
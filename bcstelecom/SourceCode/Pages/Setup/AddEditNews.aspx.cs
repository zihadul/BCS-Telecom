using BLL;
using System;
using System.Data;
using System.Linq;
using Org.BouncyCastle.Asn1.X509;

public partial class Pages_Admin_AddEditNews : System.Web.UI.Page
{
    int ID
    {
        set { ViewState["ID"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["ID"].ToString());
            }
            catch
            {
                return 0;
            }
        }
    }

    private bllNews objNews = new bllNews();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Request.QueryString["ID"] != null)
            {
                ID = Convert.ToInt32(Request.QueryString["ID"].ToString());
                if (ID > 0)
                    Populate();
            }
        }
    }

    private void Populate()
    {
        DataTable dt = objNews.GetByID(ID);
        if (dt.Rows.Count > 0)
        {
            tbxTitle.Text = Common.Decoding(dt.Rows[0]["news_title"].ToString());
            txtSummary.Content = Common.Decoding(dt.Rows[0]["Summary"].ToString());
            tbxExpiryDate.Text = Convert.ToDateTime(dt.Rows[0]["ExpiryDate"].ToString()).ToString("dd-MMM-yyyy");
            txtBodyText.Content = Common.Decoding(dt.Rows[0]["description"].ToString());

        }
    }

    public void OnBtnSave_Click(object sender, EventArgs e)
    {
        string cleanedString = System.Text.RegularExpressions.Regex.Replace(tbxTitle.Text, @"\s+", " ");
        string summary = Common.Encoding(txtSummary.Content.Trim());
        if (ID == 0)
        {

            ID = objNews.Insert(Common.Encoding(cleanedString), summary, Common.Encoding(txtBodyText.Content), Convert.ToDateTime(tbxExpiryDate.Text));
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
            DoClear();
        }
        else
        {
            objNews.Update(ID, Common.Encoding(cleanedString), summary, Common.Encoding(txtBodyText.Content), Convert.ToDateTime(tbxExpiryDate.Text));
            MessageController.Show(MessageCode._UpdateSucceeded, MessageType.Information, Page);
            DoClear();
        }
    }

    private void DoClear()
    {
        tbxTitle.Text = "";
        txtSummary.Content = "";
        tbxExpiryDate.Text = "";
        txtBodyText.Content = "";
    }
}
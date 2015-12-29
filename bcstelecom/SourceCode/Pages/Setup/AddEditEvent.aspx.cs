using System;
using System.Data;
using BLL;

public partial class Pages_Admin_AddEditEvent : BasePage
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

    bllEvent objEvent = new bllEvent();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Request.QueryString["ID"] != null)
            {
                ID = Convert.ToInt32(Request.QueryString["ID"].ToString());

                Populate();
            }

        }
    }


    private void Populate()
    {
        DataTable dt = objEvent.GetByID(ID);
        if (dt.Rows.Count > 0)
        {

            tbxTitle.Text = Common.Decoding(dt.Rows[0]["Event_title"].ToString());
            txtSummary.Content = Common.Decoding(dt.Rows[0]["Summary"].ToString());
            tbxDate.Text = Convert.ToDateTime(dt.Rows[0]["Event_date"].ToString()).ToString("dd-MMM-yyyy");
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
            ID = objEvent.Insert(Common.Encoding(cleanedString), summary, Common.Encoding(txtBodyText.Content), Convert.ToDateTime(tbxDate.Text), Convert.ToDateTime(tbxExpiryDate.Text));
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
            DoClear();
        }
        else
        {
            objEvent.Update(ID, Common.Encoding(cleanedString), summary, Common.Encoding(txtBodyText.Content), Convert.ToDateTime(tbxDate.Text), Convert.ToDateTime(tbxExpiryDate.Text));
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
            DoClear();
        }
    }

    private void DoClear()
    {
        tbxTitle.Text = "";
        txtSummary.Content = "";
        tbxDate.Text = "";
        tbxExpiryDate.Text = "";
        txtBodyText.Content = "";
    }
}

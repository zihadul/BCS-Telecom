using System;
using System.Data;
using System.Linq;
using BLL;

public partial class Pages_Admin_AddEditCategory : System.Web.UI.Page
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

    bllCategory objCategory = new bllCategory();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ID"] != null)
                ID = Convert.ToInt32(Request.QueryString["ID"].ToString());

            if (ID > 0)
                Populate();
        }
    }

    private void Populate()
    {
        DataTable dt = objCategory.GetByID(ID);

        if (dt.Rows.Count > 0)
        {
            tbxCategory.Text = dt.Rows[0]["CName"].ToString();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (ID == 0)
        {
            ID = objCategory.Insert(tbxCategory.Text);
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
            ClearAll();
        }
        else
        {
            objCategory.Update(ID, tbxCategory.Text);
            MessageController.Show(MessageCode._UpdateSucceeded, MessageType.Information, Page);
            ClearAll();
        }
    }

    private void ClearAll()
    {
        tbxCategory.Text = "";
    }
}
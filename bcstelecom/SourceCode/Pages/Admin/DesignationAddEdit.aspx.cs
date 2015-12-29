using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Admin_DesignationAddEdit : System.Web.UI.Page
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ID"] != "")
            {
                ID = Convert.ToInt32(Request.QueryString["ID"]);
                LoadDefault();
            }
        }
    }
    protected void LoadDefault()
    {
        DataTable dt = new bllDesignation().GetById(ID);
        if (dt.Rows.Count > 0)
        {
            tbxTitle.Text = dt.Rows[0]["designation"].ToString();
            tbxPriority.Text = dt.Rows[0]["Priority"].ToString();
        }
    }
    protected void OnBtnSave_Click(object sender, EventArgs e)
    {
        int result;
        if (!(int.TryParse(tbxPriority.Text, out result)))
        {
            lblError.Text = "Please enter numeric value";
            lblError.ForeColor = System.Drawing.Color.Red;
            return;
        }

        if (ID == 0)
        {
            new bllDesignation().Insert(tbxTitle.Text, Convert.ToInt32(tbxPriority.Text));
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
        }
        else
        {
            new bllDesignation().Update(ID, tbxTitle.Text, Convert.ToInt32(tbxPriority.Text));
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
        }
     
        Clear();
    }

    private void Clear()
    {
        tbxTitle.Text = "";
        tbxPriority.Text = "";
    }
}
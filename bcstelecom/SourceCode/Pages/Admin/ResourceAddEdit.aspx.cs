using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Admin_ResourceAddEdit : System.Web.UI.Page
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
        if(!IsPostBack)
        {
            if(Request.QueryString["ID"]!="")
            {
                ID = Convert.ToInt32(Request.QueryString["ID"]);
                LoadDefault();
            }
        }
    }
    protected void LoadDefault()
    {
        DataTable dt = new bllResource().GetById(ID);
        if(dt.Rows.Count>0)
        {
            tbxTitle.Text = dt.Rows[0]["Title"].ToString();
            tbxDetails.Text = dt.Rows[0]["Details"].ToString();
        }
    }
    protected void OnBtnSave_Click(object sender, EventArgs e)
    {
        if(ID==0)
        {
            new bllResource().Insert(tbxTitle.Text, tbxDetails.Text);
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
        }
        else
        {
            new bllResource().Update(ID,tbxTitle.Text, tbxDetails.Text);
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
        }
        Clear();
    }

    private void Clear()
    {
        tbxTitle.Text = "";
        tbxDetails.Text = "";
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Setup_AddEditYear : System.Web.UI.Page
{

    bllYear objYear = new bllYear();

    private int ID
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
            if (Request.QueryString["ID"] != null)
            {
                ID = Convert.ToInt32(Request.QueryString["ID"]);

                Populate();
              
            }
        }
    }


    private void Populate()
    {
        DataTable dt = objYear.GetById(ID);
        if (dt.Rows.Count > 0)
        {
            tbxYear.Text = dt.Rows[0]["Year"].ToString();

            chkCurrent.Checked = dt.Rows[0]["IsCurrentExe"].ToString() == "1" ? true : false; //D
        }
    }

    protected void OnBtnSave_Click(object sender, EventArgs e)
    {
       

            if (ID == 0)
            {
                objYear.Insert(tbxYear.Text.Trim(), chkCurrent.Checked);
                MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);

            }
            else
            {
                objYear.Update(ID, tbxYear.Text.Trim(), chkCurrent.Checked);
                MessageController.Show(MessageCode._UpdateSucceeded, MessageType.Information, Page);
            }


        Clear();

    }

    private void Clear()
    {
        tbxYear.Text = "";
    }
}
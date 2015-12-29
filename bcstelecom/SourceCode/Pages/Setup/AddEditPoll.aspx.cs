using System;
using System.Data;
using BLL;
using System.Web.UI.WebControls;

public partial class Pages_Admin_AddEditPoll : BasePage
{

    protected void Page_PreInit(object sender, EventArgs e)
    {
        if (Page.User.IsInRole("Official"))
        {
            Page.MasterPageFile = "~/MasterPages/Member.master";
        }

    }

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

    int OptionID
    {
        set { ViewState["OptionID"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["OptionID"].ToString());
            }
            catch
            {
                return 0;
            }
        }
    }

    bllPoll objpoll = new bllPoll();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["ID"] != null)
            {
                ID = Convert.ToInt32(Request.QueryString["ID"].ToString());
                Populate();
                BindData();
                pnlOptions.Visible = true;
            }
            else
                pnlOptions.Visible = false;

        }
    }

    private void Populate()
    {
        DataTable dt = objpoll.GetByID(ID);
        if (dt.Rows.Count > 0)
        {
            tbxTitle.Text = dt.Rows[0]["topics"].ToString();
            tbxDate.Text = Convert.ToDateTime(dt.Rows[0]["expiredate"]).ToString("dd-MMM-yyyy  HH:mm tt");
            chkEnabledforVoting.Checked = Convert.ToBoolean(dt.Rows[0]["enableforvoting"].ToString());
            chkOnlyforEC.Checked = Convert.ToBoolean(dt.Rows[0]["onlyforec"].ToString());
        }
    }

    public void OnBtnSave_Click(object sender, EventArgs e)
    {
        if (ID != 0)
        {
            objpoll.Update(ID, tbxTitle.Text, Convert.ToDateTime(tbxDate.Text), chkEnabledforVoting.Checked, chkOnlyforEC.Checked );
        }
        else
        {
            ID = objpoll.Insert(tbxTitle.Text, Convert.ToDateTime(tbxDate.Text),  chkEnabledforVoting.Checked, chkOnlyforEC.Checked);
            pnlOptions.Visible = true;
        }
        MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
    }

    public void OnbtnSaveOption_Click(object sender, EventArgs e)
    {
        if (OptionID != 0)
        {
            objpoll.UpdatePollOption(OptionID, tbxOptionText.Text);
        }
        else
        {
            objpoll.InsertPollOption(ID, tbxOptionText.Text);
        }

        tbxOptionText.Text = "";
        OptionID = 0;
        BindData();
    }

    public void OnbtnClear_Click(object sender, EventArgs e)
    {
        tbxOptionText.Text = "";
        OptionID = 0;
    }


    private void BindData()
    {
        DataTable dt = objpoll.GetPollOptions(ID);
        gv.DataSource = dt;
        gv.DataBind();
    }

    protected void btnEdit_Command(object sender, CommandEventArgs e)
    {

        string[] x = e.CommandArgument.ToString().Split(',');
        OptionID = Convert.ToInt32(x[1]);

        Label lblOptionText = gv.Rows[Convert.ToInt16(x[0])].FindControl("lblOptionText") as Label;

        tbxOptionText.Text = lblOptionText.Text;
    }

    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {
        int optid = Convert.ToInt32(e.CommandArgument.ToString());
        objpoll.DeletePollOption(optid);
        BindData();
    }
    

    
}

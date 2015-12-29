using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Admin_ExecutiveCommitteeAddEdit : System.Web.UI.Page
{

    string year
    {
        set { ViewState["year"] = value; }
        get
        {
            try
            {
                return ViewState["year"].ToString();
            }
            catch
            {
                return "";
            }
        }
    }

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
            LoadYear();
            LoadDesignation();
            LoadMembers();

            if (Request.QueryString["ID"] != "")
            {
                ID = Convert.ToInt32(Request.QueryString["ID"]);
                Populate();
            }

           
        }
    }
  
    protected void Populate()
    {
        DataTable dt = new bllExecutiveCommitee().GetByID(ID);
        if (dt.Rows.Count > 0)
        {
            ddlYear.SelectedValue = dt.Rows[0]["YearId"].ToString();
            ddlDesignation.SelectedValue = dt.Rows[0]["designationId"].ToString();
            tbxPriority.Text = dt.Rows[0]["Priority"].ToString();
            foreach (DataRow dr in dt.Rows)
            {
                foreach (ListItem li in chkMemberList.Items)
                {
                    if (dr["memberid"].ToString() == li.Value.ToString())
                    {
                        li.Selected = true;
                    }
                }
            }
        }
    }

    protected void LoadYear()
    {
        DataTable dt = new bllYear().GetAll();
        ddlYear.DataSource = dt;
        ddlYear.DataBind();
    }
    protected void LoadDesignation()
    {
        DataTable dt = new bllDesignation().GetAll();
        ddlDesignation.DataSource = dt;
        ddlDesignation.DataBind();
    }

    private void LoadMembers()
    {
        DataTable dt = new bllMember().GetAllUser();
        chkMemberList.DataSource = dt;
        chkMemberList.DataBind();
    }
    protected void OnBtnSave_Click(object sender, EventArgs e)
    {
        if (!CheckMember())
        {
            lblError.Text = "Please check atleast one member.";
            lblError.ForeColor = System.Drawing.Color.Red;
            return;
        }
        int result;
        if (!(int.TryParse(tbxPriority.Text, out result)))
        {
            lblError.Text = "Please enter numeric value";
            lblError.ForeColor = System.Drawing.Color.Red;
            return;
        }

        if (ID == 0)
        {

            foreach (ListItem li in chkMemberList.Items)
            {
                if (li.Selected)
                {
                    new bllExecutiveCommitee().Insert(Convert.ToInt32(li.Value), Convert.ToInt32(ddlDesignation.SelectedValue), Convert.ToInt32(ddlYear.SelectedValue), tbxPriority.Text);
                    MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
                }
            }

        }
        else
        {
            foreach (ListItem li in chkMemberList.Items)
            {
                if (li.Selected)
                {
                    new bllExecutiveCommitee().Update(ID, Convert.ToInt32(li.Value), Convert.ToInt32(ddlDesignation.SelectedValue), Convert.ToInt32(ddlYear.SelectedValue), tbxPriority.Text);
                    MessageController.Show(MessageCode._UpdateSucceeded, MessageType.Information, Page);
                }
            }
        }

        Clear();
       
    }


    protected bool CheckMember()
    {
        bool RecepientSelected = false;

        foreach (ListItem li in chkMemberList.Items)
        {
            if (li.Selected)
            {
                RecepientSelected = true;
                break;
            }
        }
        return RecepientSelected;
    }
    private void Clear()
    {
        foreach (ListItem li in chkMemberList.Items)
        {
            if (li.Selected)
            {
                li.Selected = false;
            }
        }
    }
}
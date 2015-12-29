using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_Setup_AddEditResource : System.Web.UI.Page
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

    bllDocuments objDocuments = new bllDocuments();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            LoadResource();

            if (Request.QueryString["ID"] != null)
            {
                ID = Convert.ToInt32(Request.QueryString["ID"].ToString());

                Populate();
                if (lblImage.Text != "")
                {
                    btnDeleteAttachment.Visible = true;
                    lnkViewFile.Visible = true;
                    lnkViewFile.NavigateUrl = "~/Resources/Images/UserFiles/Documents/" + lblImage.Text;
                }
            }

        }
    }
    protected void LoadResource()
    {
        DataTable dt = new bllResource().GetAll();
        ddlCategory.DataSource = dt;
        ddlCategory.DataBind();
    }

    private void Populate()
    {
        DataTable dt = objDocuments.GetByID(ID);
        if (dt.Rows.Count > 0)
        {
            reqqAttachment.Enabled = false;
            tbxDate.Text = Convert.ToDateTime(dt.Rows[0]["ExpireDate"]).ToString("dd-MMM-yyyy");
            tbxTitle.Text = dt.Rows[0]["title"].ToString();
            lblImage.Text = dt.Rows[0]["AttachmentName"].ToString();
            ddlCategory.SelectedValue = dt.Rows[0]["CategoryId"].ToString();
          //  chkOnlyForMembers.Checked = bool.Parse(dt.Rows[0]["OnlyForMembers"].ToString());

        }
    }

    public void OnBtnSave_Click(object sender, EventArgs e)
    {

        string FileName = "";
        if (fileAttachment.HasFile)
        {
            string filExtention = "";
            filExtention = fileAttachment.FileName.Substring(fileAttachment.FileName.Length - 4);
            filExtention = filExtention.ToLower();
            if (filExtention != ".pdf")
            {
                lblMessage.Text = "Please select pdf file";
                lblMessage.ForeColor = System.Drawing.Color.OrangeRed;
                return;
            }
            FileName = Guid.NewGuid().ToString().GetHashCode().ToString() + "-" + fileAttachment.FileName;
            fileAttachment.SaveAs(MapPath("~/Resources/Images/UserFiles/Documents/") + FileName);
            if (lblImage.Text != "")
            {
                Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/Documents/" + lblImage.Text));

            }

        }
        else
        {
            FileName = lblImage.Text;

        }
        if (ID == 0)
        {
            objDocuments.Insert(tbxTitle.Text, FileName, true, Convert.ToInt32(ddlCategory.SelectedValue), Convert.ToDateTime(tbxDate.Text));
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
        }
        else
        {
            objDocuments.Update(ID, tbxTitle.Text, FileName, true, Convert.ToInt32(ddlCategory.SelectedValue), Convert.ToDateTime(tbxDate.Text));
            MessageController.Show(MessageCode._UpdateSucceeded, MessageType.Information, Page);
        }
    }


    protected void btnDeleteAttachment_Click(object sender, EventArgs e)
    {
        if (lblImage.Text != "")
        {
            Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/Documents/" + lblImage.Text));
            lnkViewFile.Visible = false;
            btnDeleteAttachment.Visible = false;
            reqqAttachment.Enabled = true;
        }
    }
}
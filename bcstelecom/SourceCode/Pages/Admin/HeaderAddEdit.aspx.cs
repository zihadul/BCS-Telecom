using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Admin_HeaderAddEdit : System.Web.UI.Page
{

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
            if (lblImage.Text != "")
            {
                btnRemoveDisplayImage.Visible = true;
                btnShowDisplayImage.Visible = true;
                reqImage.Enabled = false;
            }
            else
            {
                btnRemoveDisplayImage.Visible = false;
                btnShowDisplayImage.Visible = false;
            }
        }
    }
    

    private void Populate()
    {
        DataTable dt = new bllHeader().GetById(ID);
        if (dt.Rows.Count > 0)
        {
            lblImage.Text = dt.Rows[0]["Image"].ToString();
            lblImage.Visible = true;
            chkActive.Checked = dt.Rows[0]["Active"].ToString() == "1" ? true : false;
        }
    }
    protected void OnBtnSave_Click(object sender, EventArgs e)
    {
        string displayImagePath = "";
        DataTable dt = new bllHeader().GetActive();
        try
        {
            if (chkActive.Checked && dt.Rows.Count > 0)
            {
                lblMessage.Text = "Header already active";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }
            if (fileupDisplayImagePath.HasFile)
            {
                lblMessage.Text = "";
                string filExtention = "";
                filExtention = fileupDisplayImagePath.FileName.Substring(fileupDisplayImagePath.FileName.Length - 4);
                filExtention = filExtention.ToLower();
                if ((filExtention != ".gif") && (filExtention != ".jpg") && (filExtention != "jpeg") &&
                    (filExtention != ".bmp") && (filExtention != ".png"))
                {
                    MessageController.Show("Select valid format image", MessageType.Information, Page);
                    return;
                }

                System.Drawing.Image img = System.Drawing.Image.FromStream(fileupDisplayImagePath.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;                
                if (width != 1920 && height != 250)
                {
                    MessageController.Show("Image size must be width:1920px and height:250px", MessageType.Information, Page);
                    return;
                }

                string strImageName = Guid.NewGuid().ToString().GetHashCode() + "_" +
                    Path.GetFileName(fileupDisplayImagePath.FileName);
                displayImagePath = Server.MapPath("~/Resources/Images/Header/" + strImageName);
                fileupDisplayImagePath.SaveAs(displayImagePath);
                displayImagePath = strImageName;
                if (lblImage.Text != "")
                {
                    Common.DeleteFile(Server.MapPath("~/Resources/Images/Header/" + lblImage.Text));
                }
            }
            else
            {
                displayImagePath = lblImage.Text;
            }


            if (ID == 0)
            {
                new bllHeader().Insert(displayImagePath, Convert.ToBoolean(chkActive.Checked));
                MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
            }
            else
            {
                new bllHeader().Update(ID, displayImagePath, Convert.ToBoolean(chkActive.Checked));
                MessageController.Show(MessageCode._UpdateSucceeded, MessageType.Information, Page);
            }
        }
        catch (Exception ex)
        {
            MessageController.Show(MessageCode._SaveFailed, MessageType.Error, Page);
        }
       
    }
    protected void btnRemoveDisplayImage_Click(object sender, EventArgs e)
    {
        if (lblImage.Text != "")
        {
            Common.DeleteFile(Server.MapPath("~/Resources/Images/Header/" + lblImage.Text));
        }

        lblImage.Text = "";
        btnRemoveDisplayImage.Visible = false;
        btnShowDisplayImage.Visible = false;
        fileupDisplayImagePath.Visible = true;


        //lblError.Text = "Display image removed";
        MessageController.Show("Display image removed", MessageType.Information, Page);
    }
    protected void imgDisplayImage_Command(object sender, CommandEventArgs e)
    {
        pnlImagePopUp.Visible = true;
        imgPhoto.ImageUrl = "~/Resources/Images/Header/" + lblImage.Text;
        Popup1.Show();
    }


}
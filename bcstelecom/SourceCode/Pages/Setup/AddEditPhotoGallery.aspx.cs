using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_Admin_AddEditPhotoGallery : System.Web.UI.Page
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

    private bllPhotoGallery objPhotoGallery = new bllPhotoGallery();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            LoadCategory();
            if (Request.QueryString["ID"] != null)
                ID = Convert.ToInt32(Request.QueryString["ID"].ToString());
            Populate();
        }
        else
        {
            lblImage.Visible = false;
            btnImg.Visible = false;
            btnRemoveDisplayImage.Visible = false;

        }

    }



    private void Populate()
    {
        DataTable dt = objPhotoGallery.GetById(ID);
        if (dt.Rows.Count > 0)
        {
            reqFileImage.Enabled = false;
            hdnAttachmentName.Value = dt.Rows[0]["ImagePath"].ToString();
            lblImage.Text = dt.Rows[0]["ImagePath"].ToString();
            tbxTitle.Text = dt.Rows[0]["Title"].ToString();
            ddlCategory.SelectedValue = dt.Rows[0]["CID"].ToString();

            if (lblImage.Text != "")
            {
                btnRemoveDisplayImage.Visible = true;
                btnRemoveDisplayImage.ForeColor = System.Drawing.Color.Green;
                lblImage.Visible = false;
                btnImg.Visible = true;
                btnImg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblImage.Visible = false;
                btnImg.Visible = false;
            }
        }
    }

    private void LoadCategory()
    {
        DataTable dt = new bllCategory().GetList();
        ddlCategory.DataSource = dt;
        ddlCategory.DataBind();
    }



    protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
    {

    }


    protected void btnUpload_Click(object sender, EventArgs e)
    {
        string displayImagePath = "";
        string displayImagePath1 = "";
        if (fileImage.HasFile)
        {
            string filExtention = "";
            filExtention = fileImage.FileName.Substring(fileImage.FileName.Length - 4);
            filExtention = filExtention.ToLower();
            if ((filExtention != ".gif") && (filExtention != ".jpg") && (filExtention != "jpeg") &&
                (filExtention != ".bmp") && (filExtention != ".png"))
            {
                lblImage.Text = "Please select gif/jpg/bmp/png image";
                lblImage.ForeColor = System.Drawing.Color.OrangeRed;
                return;
            }
            string strImageName = Guid.NewGuid().ToString().GetHashCode().ToString() + "-" +
                                  System.IO.Path.GetFileName(fileImage.FileName);
            displayImagePath = Server.MapPath("~/Resources/Images/UserFiles/PhotoGallery/Main/") + strImageName;
            fileImage.SaveAs(displayImagePath);
            System.Drawing.Image image1 = Common.GetThumsImage(displayImagePath, 360, 240);
            displayImagePath1 =
                Server.MapPath("~/Resources/Images/UserFiles/PhotoGallery/Thumbs/" + strImageName);
            image1.Save(displayImagePath1);
            displayImagePath = strImageName;
            if (lblImage.Text != "")
            {
                Common.DeleteFile(
                    Server.MapPath("~/Resources/Images/UserFiles/PhotoGallery/Main/" + lblImage.Text));
                Common.DeleteFile(
                    Server.MapPath("~/Resources/Images/UserFiles/PhotoGallery/Thumbs/" + lblImage.Text));
            }
        }
        else
        {
            displayImagePath = lblImage.Text;
        }
        if (ID == 0)
        {
            objPhotoGallery.Insert(Convert.ToInt32(ddlCategory.SelectedValue), tbxTitle.Text, displayImagePath);
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
        }
        else
        {
            objPhotoGallery.Update(ID, Convert.ToInt32(ddlCategory.SelectedValue), tbxTitle.Text, displayImagePath);
            MessageController.Show(MessageCode._UpdateSucceeded, MessageType.Information, Page);
        }
    }

    protected void btnImg_Command(object sender, CommandEventArgs e)
    {
        pnl1.Visible = true;
        imgPhoto.ImageUrl = "~/Resources/Images/UserFiles/PhotoGallery/Main/" + hdnAttachmentName.Value;
        Popup1.Show();
    }

    protected void btnRemoveDisplayImage_Click(object sender, EventArgs e)
    {
        if (lblImage.Text != "")
        {
            Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/PhotoGallery/Main/" + lblImage.Text));
            Common.DeleteFile(
                Server.MapPath("~/Resources/Images/UserFiles/PhotoGallery/Thumbs/" + lblImage.Text));
            hdnAttachmentName.Value = "";
            hdnAttachmentName.Visible = false;
            btnImg.Visible = false;
            btnRemoveDisplayImage.Visible = false;
        }

        lblImage.Text = "";
        btnRemoveDisplayImage.Visible = false;
        lblError.Text = "Display image removed";
        lblError.ForeColor = System.Drawing.Color.Green;
        // Populate();
    }
}
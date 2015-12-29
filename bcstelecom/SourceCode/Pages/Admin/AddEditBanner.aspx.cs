using System;
using System.Data;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Image = System.Drawing.Image;

public partial class Pages_Admin_AddBanner : Page
{
    bllBanner objBanner = new bllBanner();

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
    }


    private void Populate()
    {
        DataTable dt = objBanner.GetByID(ID);
        if (dt.Rows.Count > 0)
        {
            tbxSBannerName.Text = dt.Rows[0]["banner_name"].ToString();
            lblImage.Text = dt.Rows[0]["display_image_path"].ToString();
            // tbxSummary.Content = dt.Rows[0]["banner_summery"].ToString();
            //tbxBannerDetail.Content = dt.Rows[0]["banner_details"].ToString();
            chkIsBanner.Checked = dt.Rows[0]["visibility"].ToString() == "1" ? true : false; //D
        }
    }


    public void OnBtnSave_Click(object sender, EventArgs e)
    {
        string displayImagePath = "";

        try
        {
            if (fileupDisplayImagePath.HasFile)
            {
                string filExtention = "";
                filExtention = fileupDisplayImagePath.FileName.Substring(fileupDisplayImagePath.FileName.Length - 4);
                filExtention = filExtention.ToLower();
                if ((filExtention != ".gif") && (filExtention != ".jpg") && (filExtention != "jpeg") &&
                    (filExtention != ".bmp") && (filExtention != ".png"))
                {
                    MessageController.Show("Select valid format image", MessageType.Information, Page);
                    return;
                }

                string strImageName = Guid.NewGuid().ToString().GetHashCode() + "_" +
                                Path.GetFileName(fileupDisplayImagePath.FileName);
                displayImagePath = Server.MapPath("~/Resources/Images/Banner/Large/" + strImageName);
                fileupDisplayImagePath.SaveAs(displayImagePath);
                Image image = Common.GetThumsImage(displayImagePath, 1200, 480);
                displayImagePath = Server.MapPath("~/Resources/Images/Banner/Thumbs/" + strImageName);
                image.Save(displayImagePath);

                displayImagePath = strImageName;
                if (lblImage.Text != "")
                {
                    Common.DeleteFile(Server.MapPath("~/Resources/Images/Banner/Thumbs/" + lblImage.Text));
                    Common.DeleteFile(Server.MapPath("~/Resources/Images/Banner/Large/" + lblImage.Text));
                }
            }
            else
            {
                displayImagePath = lblImage.Text;
            }


            if (ID == 0)
            {
                ID = objBanner.Insert(tbxSBannerName.Text, displayImagePath, "",
                    "", chkIsBanner.Checked);
                MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
            }
            else
            {
                if (fileupDisplayImagePath.HasFile == false && lblImage.Text != "")
                {
                    objBanner.Update(ID, tbxSBannerName.Text, lblImage.Text, "", "",
                        chkIsBanner.Checked);
                }
                else
                {
                    objBanner.Update(ID, tbxSBannerName.Text, displayImagePath, "",
                        "", chkIsBanner.Checked);
                }
                MessageController.Show(MessageCode._UpdateSucceeded, MessageType.Information, Page);
            }

            clear();
        }
        catch (Exception ex)
        {
            MessageController.Show(MessageCode._SaveFailed, MessageType.Error, Page);
        }
    }

    private void clear()
    {
        tbxSBannerName.Text = string.Empty;
        // tbxSummary.Content = string.Empty;
        //tbxBannerDetail.Content = string.Empty;
        chkIsBanner.Checked = false;
    }

    protected void btnRemoveDisplayImage_Click(object sender, EventArgs e)
    {
        if (lblImage.Text != "")
        {
            Common.DeleteFile(Server.MapPath("~/Resources/Images/Banner/Thumbs/" + lblImage.Text));
            Common.DeleteFile(Server.MapPath("~/Resources/Images/Banner/Large/" + lblImage.Text));
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
        imgPhoto.ImageUrl = "~/Resources/Images/Banner/Large/" + lblImage.Text;
        Popup1.Show();
    }
}
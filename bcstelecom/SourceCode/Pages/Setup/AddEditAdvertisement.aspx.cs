using System;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using System.IO;

public partial class Pages_Admin_AddEditAdvertisement : System.Web.UI.Page
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


    bllAdvertisement _objAdvertisement = new bllAdvertisement();

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

        DataTable dt = _objAdvertisement.GetById(ID);

        if (dt.Rows.Count > 0)
        {
            reqFileAdvertisement.Enabled = false;
            hdnAttachmentName.Value = dt.Rows[0]["filename"].ToString();
            imgDisplay.Visible = true;
            imgDisplay.ImageUrl = "~/Resources/Images/UserFiles/Advertisement/thumbs/" + hdnAttachmentName.Value;
            tbxDescription.Text = dt.Rows[0]["description"].ToString();
            tbxLink.Text = dt.Rows[0]["link"].ToString();
            tbxOwner.Text = dt.Rows[0]["owner"].ToString();
            chkActive.Checked = bool.Parse(dt.Rows[0]["active"].ToString());


        }
    }



    protected void btnUpload_Click(object sender, EventArgs e)
    {

        string FileName = hdnAttachmentName.Value;

        if (fileAdvertisement.HasFile)
            FileName = fileAdvertisement.FileName;



        if (ID == 0)
        {

            if (!fileAdvertisement.HasFile)
                return;

            ID = _objAdvertisement.Insert(FileName, tbxDescription.Text, tbxLink.Text, tbxOwner.Text, chkActive.Checked);

            FileName = ID.ToString() + fileAdvertisement.FileName;
            MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
        }
        else
        {
            if (fileAdvertisement.HasFile)
            {
                if (hdnAttachmentName.Value != "")
                {
                    Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/Advertisement/" + hdnAttachmentName.Value));
                    Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/Advertisement/thumbs/" + hdnAttachmentName.Value));
                }

                FileName = ID.ToString() + fileAdvertisement.FileName;
            }


            _objAdvertisement.Update(ID, FileName, tbxDescription.Text, tbxLink.Text, tbxOwner.Text, chkActive.Checked);
            MessageController.Show(MessageCode._UpdateSucceeded, MessageType.Information, Page);

        }


        if (fileAdvertisement.HasFile)
        {
            fileAdvertisement.SaveAs(MapPath("~/Resources/Images/UserFiles/Advertisement/") + FileName);
            System.Drawing.Image imageX = Common.GetThumsImage(MapPath("~/Resources/Images/UserFiles/Advertisement/") + FileName, 300,
                                                               100);
            imageX.Save(MapPath("~/Resources/Images/UserFiles/Advertisement/thumbs/") + FileName);


            imgDisplay.ImageUrl = "~/Resources/Images/UserFiles/Advertisement/thumbs/" + FileName;
            imgDisplay.Visible = true;
        }

    }
}
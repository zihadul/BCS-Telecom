using System;
using System.Data;
using BLL;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Pages_Admin_EditProfile : BasePage
{

    int MemberID
    {
        set { ViewState["MemberID"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["MemberID"].ToString());
            }
            catch
            {
                return 0;
            }
        }

    }

    int ChildEditIndex
    {
        set { ViewState["ChildEditIndex"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["ChildEditIndex"].ToString());
            }
            catch
            {
                return -1;
            }
        }

    }
    int EducationEditIndex
    {
        set { ViewState["EducationEditIndex"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["EducationEditIndex"].ToString());
            }
            catch
            {
                return -1;
            }
        }

    }
    int PostingPlaceEditIndex
    {
        set { ViewState["PostingPlaceEditIndex"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["PostingPlaceEditIndex"].ToString());
            }
            catch
            {
                return -1;
            }
        }

    }
    int PublicationsEditIndex
    {
        set { ViewState["PublicationsEditIndex"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["PublicationsEditIndex"].ToString());
            }
            catch
            {
                return -1;
            }
        }

    }

    bool ChildEdited
    {
        set { ViewState["ChildEdited"] = value; }
        get
        {
            try
            {
                return Convert.ToBoolean(ViewState["ChildEdited"].ToString());
            }
            catch
            {
                return false;
            }
        }
    }
    bool EducationEdited
    {
        set { ViewState["EducationEdited"] = value; }
        get
        {
            try
            {
                return Convert.ToBoolean(ViewState["EducationEdited"].ToString());
            }
            catch
            {
                return false;
            }
        }
    }
    bool PostingPlaceEdited
    {
        set { ViewState["PostingPlaceEdited"] = value; }
        get
        {
            try
            {
                return Convert.ToBoolean(ViewState["PostingPlaceEdited"].ToString());
            }
            catch
            {
                return false;
            }
        }
    }

    bool PublicationsEdited
    {
        set { ViewState["PublicationsEdited"] = value; }
        get
        {
            try
            {
                return Convert.ToBoolean(ViewState["PublicationsEdited"].ToString());
            }
            catch
            {
                return false;
            }
        }
    }


    bllMember objMember = new bllMember();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            tbxOther.Visible = false;
            if (Session["UserRole"] == null)
            {
                if (Page.User.Identity.Name != "")
                    Session["UserRole"] = Roles.GetRolesForUser(Page.User.Identity.Name)[0];
            }

            BindRole();

            if (Request.QueryString["UserName"] != null)
            {
                tbxUserName.Text = Request.QueryString["UserName"].ToString();
                Populate();
            }
        }
    }

    private void BindRole()
    {

        //ddlAssignRole.DataSource = Common.GetRoles(Session["UserRole"].ToString());
        //ddlAssignRole.DataBind();
    }

    private void Populate()
    {
        DataTable dt = objMember.GetByUserName(tbxUserName.Text);
        if (dt.Rows.Count > 0)
        {

            //ddlAssignRole.SelectedValue = Roles.GetRolesForUser(tbxUserName.Text)[0].ToString();

            MemberID = int.Parse(dt.Rows[0]["memberid"].ToString());
            tbxName.Text = dt.Rows[0]["membername"].ToString();
            tbxNameBan.Text = Common.Decoding(dt.Rows[0]["banglaname"].ToString());
            tbxDesignationMem.Text = dt.Rows[0]["designation"].ToString();
            if (dt.Rows[0]["joindate"].ToString() != "")
            {
                tbxJoinDate.Text = Convert.ToDateTime(dt.Rows[0]["joindate"].ToString()).ToString("dd-MMM-yyyy");
            }
        
            tbxBatch.Text = dt.Rows[0]["bcsyear"].ToString();
            hdnAttachmentName.Value = dt.Rows[0]["photograph"].ToString();
            if (dt.Rows[0]["photograph"].ToString() != "")
            {
                btnDeleteAttachment.Visible = true;
                lnkViewFile.Visible = true;
                lnkViewFile.NavigateUrl = "~/Resources/Images/UserFiles/ProfilePicture/" + hdnAttachmentName.Value;
            }


            tbxFatherName.Text = dt.Rows[0]["fathername"].ToString();
            tbxMotherName.Text = dt.Rows[0]["mothername"].ToString();

            if (dt.Rows[0]["dateofbirth"].ToString() != "" && Common.IsDate(dt.Rows[0]["dateofbirth"].ToString()))
                tbxDate.Text = Convert.ToDateTime(dt.Rows[0]["dateofbirth"].ToString()).ToString("dd-MMM-yyyy");

            ddlBloodGroup.SelectedValue = dt.Rows[0]["bloodgroup"].ToString();
            tbxNID.Text = dt.Rows[0]["nid"].ToString();
            tbxServiceID.Text = dt.Rows[0]["serviceidno"].ToString();
            tbxSpouse.Text = dt.Rows[0]["spouse"].ToString();
            tbxEmail.Text = dt.Rows[0]["email"].ToString();
            tbxEmailOptional.Text = dt.Rows[0]["email2"].ToString();

            tbxContactNo.Text = dt.Rows[0]["contactnooffice"].ToString();
            tbxContactNoResidence.Text = dt.Rows[0]["contactnoresidence"].ToString();
            tbxMobile1.Text = dt.Rows[0]["mobile1"].ToString();
            tbxMobile2.Text = dt.Rows[0]["mobile2"].ToString();

            tbxPresentAddress.Text = dt.Rows[0]["presentaddress"].ToString();
            tbxPermanentAddress.Text = dt.Rows[0]["permanentaddress"].ToString();
            ddlHomeDistrict.SelectedValue = dt.Rows[0]["homedistrict"].ToString();
            tbxInterest.Text = dt.Rows[0]["interest"].ToString();

            gvChild.DataSource = objMember.GetChildsByUserName(tbxUserName.Text);
            gvChild.DataBind();

            gvEducation.DataSource = objMember.GetEducationByUserName(tbxUserName.Text);
            gvEducation.DataBind();

            gvPostingPlace.DataSource = objMember.GetPostingPlacesByUserName(tbxUserName.Text);
            gvPostingPlace.DataBind();


            //gvPublications.DataSource = objMember.GetPublicationsByUserName(tbxUserName.Text);
            //gvPublications.DataBind();

        }
    }

    public void OnBtnSave_Click(object sender, EventArgs e)
    {
        string banglaName="";
        if (MemberID == 0)
        {
            lblError.ForeColor = System.Drawing.Color.Red;
            lblError.Text = "There are some unexpected error occured. Please contact to administrator.";
            return;
        }


        string memberDateofbirth = "";
        if (tbxDate.Text != "")
        {
            if (Common.IsDate(tbxDate.Text))
                memberDateofbirth = DateTime.Parse(tbxDate.Text).ToString("dd-MMM-yyyy");
            else
            {
                lblError.ForeColor = System.Drawing.Color.Red;
                lblError.Text = "Invalid date of birth.";
                return;

            }
        }





        string FileName = hdnAttachmentName.Value;

        if (fileAttachment.HasFile)
        {
            
            Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/ProfilePicture/" + FileName));
            Common.DeleteFile(Server.MapPath("~/Resources/Images/UserFiles/ProfilePicture/thumbs/" + FileName));


            FileName = Guid.NewGuid().ToString() + ".jpg";
            fileAttachment.SaveAs(Server.MapPath("~/Resources/Images/UserFiles/ProfilePicture/" + FileName));

            System.Drawing.Image imageX = Common.GetThumsImage(MapPath("~/Resources/Images/UserFiles/ProfilePicture/") + FileName, 100,
                                                               100);
            imageX.Save(MapPath("~/Resources/Images/UserFiles/ProfilePicture/thumbs/") + FileName);


            hdnAttachmentName.Value = FileName;

            lnkViewFile.Visible = true;
            btnDeleteAttachment.Visible = true;
            lnkViewFile.NavigateUrl = "~/Resources/Images/UserFiles/ProfilePicture/" + FileName;
        }
        if (tbxNameBan.Text != "")
        {
            banglaName = Common.Encoding(tbxNameBan.Text);
        }
        objMember.Update(tbxName.Text,
                FileName, tbxFatherName.Text, tbxMotherName.Text,
                memberDateofbirth, ddlBloodGroup.SelectedValue, tbxNID.Text,
                tbxServiceID.Text, tbxSpouse.Text, tbxEmail.Text, tbxEmailOptional.Text,
                tbxContactNo.Text, tbxContactNoResidence.Text, tbxMobile1.Text, tbxMobile2.Text,
                tbxPresentAddress.Text, tbxPermanentAddress.Text, ddlHomeDistrict.SelectedValue,
                tbxInterest.Text, tbxUserName.Text, banglaName, tbxDesignationMem.Text, Convert.ToDateTime(tbxJoinDate.Text),tbxBatch.Text);


        if (ChildEdited)
        {
            DataTable dtChilds = GetChilds();
            objMember.DeleteChilds(tbxUserName.Text);
            foreach (DataRow dr in dtChilds.Rows)
            {
                string dateofbirth = "";
                if (dr["dateofbirth"].ToString() != "" && Common.IsDate(dr["dateofbirth"].ToString()))
                    dateofbirth = DateTime.Parse(dr["dateofbirth"].ToString()).ToString("dd-MMM-yyyy");

                objMember.InsertChild(MemberID, dr["childname"].ToString(), dateofbirth, dr["gendar"].ToString());
            }
        }

        if (EducationEdited)
        {
            DataTable dtEducation = GetEducation();
            objMember.DeleteEducation(tbxUserName.Text);
            foreach (DataRow dr in dtEducation.Rows)
            {
                objMember.InsertEducation(MemberID,
                    dr["degreename"].ToString(),
                    dr["institute"].ToString(),
                   dr["passingyear"].ToString(),
                    dr["subject"].ToString());
            }
        }


        if (PostingPlaceEdited)
        {
            DataTable dtPostingPlace = GetPostingPlace();
            objMember.DeletePostingPlaces(tbxUserName.Text);
            foreach (DataRow dr in dtPostingPlace.Rows)
            {
                string dateofjoining = "";

                if (dr["dateofjoining"].ToString() != "" && Common.IsDate(dr["dateofjoining"].ToString()))
                    dateofjoining = DateTime.Parse(dr["dateofjoining"].ToString()).ToString("dd-MMM-yyyy");

                objMember.InsertPostingPlaces(MemberID,
                    dr["designation"].ToString(),
                    dr["nameoftheoffice"].ToString(),
                    dateofjoining,
                    bool.Parse(dr["present"].ToString()),
                    bool.Parse(dr["immediatepast"].ToString()));
            }
        }

       

        MembershipUser mu = Membership.GetUser(tbxUserName.Text);
        mu.Email = tbxEmail.Text;
        Membership.UpdateUser(mu);

        MessageController.Show(MessageCode._SaveSucceeded, MessageType.Information, Page);
        System.Threading.Thread.Sleep(5000);
    }


    protected void btnDeleteAttachment_Click(object sender, EventArgs e)
    {
        if (hdnAttachmentName.Value != "")
        {
            Common.DeleteFile(Server.MapPath( "~/Resources/Images/UserFiles/ProfilePicture/" + hdnAttachmentName.Value));
            lnkViewFile.Visible = false;
            btnDeleteAttachment.Visible = false;

            hdnAttachmentName.Value = "";
          
        }
    }


    #region Child


    private DataTable GetChilds()
    {
        DataTable dtChilds = new DataTable();
        dtChilds.Columns.Add("childname");
        dtChilds.Columns.Add("dateofbirth");
        dtChilds.Columns.Add("gendar");


        foreach (GridViewRow gvr in gvChild.Rows)
        {
            if (gvr.RowType == DataControlRowType.DataRow)
            {
                Label lblchildname = gvr.FindControl("lblchildname") as Label;
                Label lbldateofbirth = gvr.FindControl("lbldateofbirth") as Label;
                Label lblgendar = gvr.FindControl("lblgendar") as Label;

                DataRow dr = dtChilds.NewRow();

                dr["childname"] = lblchildname.Text;
                dr["dateofbirth"] = lbldateofbirth.Text;
                dr["gendar"] = lblgendar.Text;

                dtChilds.Rows.Add(dr);
            }
        }

        return dtChilds;
    }

    protected void btnClearChild_Click(object sender, EventArgs e)
    {
        ChildEditIndex = -1;
        tbxChildDOB.Text = "";
        tbxChildName.Text = "";
        ddlGender.SelectedValue = "";
    }

    protected void btnAddChild_Click(object sender, EventArgs e)
    {
        ChildEdited = true;
        DataTable dtChilds = GetChilds();


        DataRow dr;
        if (ChildEditIndex == -1)
            dr = dtChilds.NewRow();
        else
            dr = dtChilds.Rows[ChildEditIndex];

        dr["childname"] = tbxChildName.Text;
        dr["dateofbirth"] = tbxChildDOB.Text;
        dr["gendar"] = ddlGender.SelectedValue;

        if (ChildEditIndex == -1)
            dtChilds.Rows.Add(dr);

        gvChild.DataSource = dtChilds;
        gvChild.DataBind();

        ChildEditIndex = -1;
        tbxChildDOB.Text = "";
        tbxChildName.Text = "";
        ddlGender.SelectedValue = "";

    }

    protected void btnEditChild_Command(object sender, CommandEventArgs e)
    {

        ChildEditIndex = Convert.ToInt32(e.CommandArgument.ToString());
        Label lblchildname = gvChild.Rows[ChildEditIndex].FindControl("lblchildname") as Label;
        Label lbldateofbirth = gvChild.Rows[ChildEditIndex].FindControl("lbldateofbirth") as Label;
        Label lblgendar = gvChild.Rows[ChildEditIndex].FindControl("lblgendar") as Label;

        tbxChildName.Text = lblchildname.Text;
        tbxChildDOB.Text = lbldateofbirth.Text;
        ddlGender.SelectedValue = lblgendar.Text;

    }
    
    protected void btnDeleteChild_Command(object sender, CommandEventArgs e)
    {
        ChildEdited = true;
        DataTable dtChilds = GetChilds();

        dtChilds.Rows.RemoveAt(Convert.ToInt32(e.CommandArgument.ToString()));

        gvChild.DataSource = dtChilds;
        gvChild.DataBind();


        ChildEditIndex = -1;
        tbxChildDOB.Text = "";
        tbxChildName.Text = "";
        ddlGender.SelectedValue = "";
    }

    #endregion

    #region Education

    private DataTable GetEducation()
    {
        DataTable dtEducation= new DataTable();
        dtEducation.Columns.Add("degreename");
        dtEducation.Columns.Add("institute");
        dtEducation.Columns.Add("passingyear");
        dtEducation.Columns.Add("subject");


        foreach (GridViewRow gvr in gvEducation.Rows)
        {
            if (gvr.RowType == DataControlRowType.DataRow)
            {
                Label lbldegreename = gvr.FindControl("lbldegreename") as Label;
                Label lblinstitute = gvr.FindControl("lblinstitute") as Label;
                Label lblpassingyear = gvr.FindControl("lblpassingyear") as Label;
                Label lblSubject = gvr.FindControl("lblSubject") as Label;

                DataRow dr = dtEducation.NewRow();

                dr["degreename"] = lbldegreename.Text;
                dr["institute"] = lblinstitute.Text;
                dr["passingyear"] = lblpassingyear.Text;
                dr["subject"] = lblSubject.Text;

                dtEducation.Rows.Add(dr);
            }
        }

        return dtEducation;
    }

    protected void btnClearEducation_Click(object sender, EventArgs e)
    {
        EducationEditIndex = -1;
        ddlDegree.SelectedIndex = 0;
        tbxOther.Text = "";
        tbxInstitute.Text = "";
        tbxPassingYear.Text = "";
        tbxSubject.Text = "";
    }

    protected void btnEducation_Click(object sender, EventArgs e)
    {
        EducationEdited = true;
        DataTable dtEducation = GetEducation();


        DataRow dr;
        if (EducationEditIndex == -1)
            dr = dtEducation.NewRow();
        else
            dr = dtEducation.Rows[EducationEditIndex];

        if (ddlDegree.SelectedValue == "Other")
            dr["degreename"] = tbxOther.Text;
        else
            dr["degreename"] = ddlDegree.SelectedValue;

        dr["institute"] = tbxInstitute.Text;
        dr["passingyear"] = tbxPassingYear.Text;
        dr["subject"] = tbxSubject.Text;

        if (EducationEditIndex == -1)
            dtEducation.Rows.Add(dr);

        gvEducation.DataSource = dtEducation;
        gvEducation.DataBind();

        EducationEditIndex = -1;
        ddlDegree.SelectedIndex = 0;
        tbxOther.Text = "";
        tbxInstitute.Text = "";
        tbxPassingYear.Text = "";
        tbxSubject.Text = "";
    }

    protected void btnEditEducation_Command(object sender, CommandEventArgs e)
    {

        EducationEditIndex = Convert.ToInt32(e.CommandArgument.ToString());
        Label lbldegreename = gvEducation.Rows[EducationEditIndex].FindControl("lbldegreename") as Label;
        Label lblinstitute = gvEducation.Rows[EducationEditIndex].FindControl("lblinstitute") as Label;
        Label lblpassingyear = gvEducation.Rows[EducationEditIndex].FindControl("lblpassingyear") as Label;
        Label lblSubject = gvEducation.Rows[EducationEditIndex].FindControl("lblSubject") as Label;


        if (ddlDegree.Items.FindByText(lbldegreename.Text) != null)
            ddlDegree.SelectedValue = lbldegreename.Text;
        else
        {
            ddlDegree.SelectedValue = "Other";
            tbxOther.Text = lbldegreename.Text;
        }

        tbxInstitute.Text = lblinstitute.Text;
        tbxPassingYear.Text = lblpassingyear.Text;
        tbxSubject.Text = lblSubject.Text;


    }

    protected void btnDeleteEducation_Command(object sender, CommandEventArgs e)
    {
        EducationEdited = true;
        DataTable dtEducation = GetEducation();

        dtEducation.Rows.RemoveAt(Convert.ToInt32(e.CommandArgument.ToString()));

        gvEducation.DataSource = dtEducation;
        gvEducation.DataBind();

        EducationEditIndex = -1;
        ddlDegree.SelectedIndex = 0;
        tbxOther.Text = "";
        tbxInstitute.Text = "";
        tbxPassingYear.Text = "";
        tbxSubject.Text = "";
    }

    #endregion

    #region Posting Places

    private DataTable GetPostingPlace()
    {
        DataTable dtPostingPlace= new DataTable();
        dtPostingPlace.Columns.Add("designation");
        dtPostingPlace.Columns.Add("nameoftheoffice");
        dtPostingPlace.Columns.Add("dateofjoining");
        dtPostingPlace.Columns.Add("present");
        dtPostingPlace.Columns.Add("immediatepast");


        foreach (GridViewRow gvr in gvPostingPlace.Rows)
        {
            if (gvr.RowType == DataControlRowType.DataRow)
            {
                Label lbldesignation = gvr.FindControl("lbldesignation") as Label;
                Label lblnameoftheoffice = gvr.FindControl("lblnameoftheoffice") as Label;
                Label lbldateofjoining = gvr.FindControl("lbldateofjoining") as Label;
                CheckBox chkpresent = gvr.FindControl("chkpresent") as CheckBox;
                CheckBox chkimmediatepast = gvr.FindControl("chkimmediatepast") as CheckBox;

                DataRow dr = dtPostingPlace.NewRow();

                dr["designation"] = lbldesignation.Text;
                dr["nameoftheoffice"] = lblnameoftheoffice.Text;
                dr["dateofjoining"] = lbldateofjoining.Text;
                dr["present"] = chkpresent.Checked;
                dr["immediatepast"] = chkimmediatepast.Checked;

                dtPostingPlace.Rows.Add(dr);
            }
        }

        return dtPostingPlace;
    }

    protected void btnClearPostingPlace_Click(object sender, EventArgs e)
    {
        PostingPlaceEditIndex = -1;
        tbxDesignation.Text  = "";
        tbxNameOftheOffice.Text = "";
        tbxDateofJoining.Text = "";
        checkPresent.Checked = false;
        checkimmediatepast.Checked = false;
    }

    protected void btnAddPostingPlace_Click(object sender, EventArgs e)
    {
        PostingPlaceEdited = true;
        DataTable dtPostingPlace = GetPostingPlace();


        DataRow dr;
        if (PostingPlaceEditIndex == -1)
            dr = dtPostingPlace.NewRow();
        else
            dr = dtPostingPlace.Rows[PostingPlaceEditIndex];

        dr["designation"] = tbxDesignation.Text;
        dr["nameoftheoffice"] = tbxNameOftheOffice.Text;
        dr["dateofjoining"] = tbxDateofJoining.Text;
        dr["present"] = checkPresent.Checked;
        dr["immediatepast"] = checkimmediatepast.Checked;

        if (PostingPlaceEditIndex == -1)
            dtPostingPlace.Rows.Add(dr);

        gvPostingPlace.DataSource = dtPostingPlace;
        gvPostingPlace.DataBind();

        PostingPlaceEditIndex = -1;
        tbxDesignation.Text = "";
        tbxNameOftheOffice.Text = "";
        tbxDateofJoining.Text = "";
        checkPresent.Checked = false;
        checkimmediatepast.Checked = false;
    }

    protected void btnEditPostingPlace_Command(object sender, CommandEventArgs e)
    {

        PostingPlaceEditIndex = Convert.ToInt32(e.CommandArgument.ToString());

        Label lbldesignation = gvPostingPlace.Rows[PostingPlaceEditIndex].FindControl("lbldesignation") as Label;
        Label lblnameoftheoffice = gvPostingPlace.Rows[PostingPlaceEditIndex].FindControl("lblnameoftheoffice") as Label;
        Label lbldateofjoining = gvPostingPlace.Rows[PostingPlaceEditIndex].FindControl("lbldateofjoining") as Label;
        CheckBox chkpresent = gvPostingPlace.Rows[PostingPlaceEditIndex].FindControl("chkpresent") as CheckBox;
        CheckBox chkimmediatepast = gvPostingPlace.Rows[PostingPlaceEditIndex].FindControl("chkimmediatepast") as CheckBox;

        tbxDesignation.Text = lbldesignation.Text;
        tbxNameOftheOffice.Text = lblnameoftheoffice.Text;
        tbxDateofJoining.Text = lbldateofjoining.Text;
        checkPresent.Checked = chkpresent.Checked;
        checkimmediatepast.Checked = chkimmediatepast.Checked;

    }

    protected void btnDeletePostingPlace_Command(object sender, CommandEventArgs e)
    {
        PostingPlaceEdited = true;
        DataTable dtPostingPlace = GetPostingPlace();

        dtPostingPlace.Rows.RemoveAt(Convert.ToInt32(e.CommandArgument.ToString()));

        gvPostingPlace.DataSource = dtPostingPlace;
        gvPostingPlace.DataBind();

        PostingPlaceEditIndex = -1;
        tbxDesignation.Text = "";
        tbxNameOftheOffice.Text = "";
        tbxDateofJoining.Text = "";
        checkPresent.Checked = false;
        checkimmediatepast.Checked = false;
    }

    #endregion

    protected void ddlDegree_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlDegree.SelectedItem.Text == "Other")
        {
            tbxOther.Visible = true;
        }
        else
        {
            tbxOther.Visible = false;
        }
    }



}

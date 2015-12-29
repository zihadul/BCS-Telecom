using System;
using System.Data;
using System.Linq;
using BLL;
using System.Collections;

public partial class Pages_Member_Profile : BasePage
{

    private static int MemberID;

    bllMember objMember = new bllMember();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string QueryString = Page.RouteData.Values.Values.ElementAt(0).ToString();
            if (int.TryParse(QueryString, out MemberID))
                Populate();
        }
    }


    private void Populate()
    {
        DataTable dt = objMember.GetByID(MemberID);
        if (dt.Rows.Count > 0)
        {
            MemberID = int.Parse(dt.Rows[0]["memberid"].ToString());
            tbxName.Text = dt.Rows[0]["membername"].ToString();
            lblNameBan.Text = Common.Decoding(dt.Rows[0]["banglaname"].ToString());
            if (dt.Rows[0]["joindate"].ToString() != "")
                lblJoinDate.Text = Convert.ToDateTime(dt.Rows[0]["joindate"].ToString()).ToString("dd-MMM-yyyy");
            lblDesignation.Text = dt.Rows[0]["designation"].ToString();
            lblOffice.Text = dt.Rows[0]["nameoftheoffice"].ToString();
            lblBatch.Text = dt.Rows[0]["bcsyear"].ToString();

            if (dt.Rows[0]["dateofbirth"].ToString() != "" && Common.IsDate(dt.Rows[0]["dateofbirth"].ToString()))
            {
                ArrayList ar = span(DateTime.Today, DateTime.Parse(dt.Rows[0]["dateofbirth"].ToString()));
                lblAge.Text = ar[0].ToString() + " years " + ar[1].ToString() + " months " + ar[2].ToString() + " days";
                tbxDate.Text = Convert.ToDateTime(dt.Rows[0]["dateofbirth"].ToString()).ToString("dd-MMM-yyyy");
            }


            if (dt.Rows[0]["photograph"].ToString() == "")
            {
                imgPhoto.ImageUrl = "~/Resources/Images/Common/no-photo.jpg";
                Popup1.Enabled = false;
                pnl1.Visible = false;
            }
            else
            {
                imgPhoto.ImageUrl = "~/Resources/Resources/Images/UserFiles/ProfilePicture/thumbs/" + dt.Rows[0]["photograph"].ToString();
                Image1.ImageUrl = "~/Resources/Resources/Images/UserFiles/ProfilePicture/" + dt.Rows[0]["photograph"].ToString();
            }
            

            tbxFatherName.Text = dt.Rows[0]["fathername"].ToString();
            tbxMotherName.Text = dt.Rows[0]["mothername"].ToString();

            tbxBloodGroup.Text= dt.Rows[0]["bloodgroup"].ToString();
            tbxNID.Text = dt.Rows[0]["nid"].ToString();
            lblService.Text = dt.Rows[0]["serviceidno"].ToString();
            tbxSpouse.Text = dt.Rows[0]["spouse"].ToString();
            tbxEmail.Text = dt.Rows[0]["email"].ToString();
            tbxEmail2.Text = dt.Rows[0]["email2"].ToString();
            tbxContactNo.Text = dt.Rows[0]["contactnooffice"].ToString();
            tbxContactNoResidence.Text = dt.Rows[0]["contactnoresidence"].ToString();
            tbxMobile1.Text = dt.Rows[0]["mobile1"].ToString();
            tbxMobile2.Text = dt.Rows[0]["mobile2"].ToString();
            tbxPresentAddress.Text = dt.Rows[0]["presentaddress"].ToString();
            tbxPermanentAddress.Text = dt.Rows[0]["permanentaddress"].ToString();
            lblHomeDistrict.Text = dt.Rows[0]["homedistrict"].ToString();
            tbxInterest.Text = dt.Rows[0]["interest"].ToString();


            gvChild.DataSource = objMember.GetChildsByUserName(User.Identity.Name);
            gvChild.DataBind();


            pnlChild.Visible = gvChild.Rows.Count != 0;


            gvEducation.DataSource = objMember.GetEducationByUserName(User.Identity.Name);
            gvEducation.DataBind();

            pnlEducation.Visible = gvEducation.Rows.Count != 0;

            gvPostingPlace.DataSource = objMember.GetPostingPlacesByUserName(User.Identity.Name);
            gvPostingPlace.DataBind();

            pnlPosting.Visible = gvPostingPlace.Rows.Count != 0;
        }
    }


    public ArrayList span(DateTime f, DateTime l)
    {
        int days;
        int months;
        int years;


        int fird = f.Day;
        int lasd = l.Day;


        int firm = f.Month;
        int lasm = l.Month;




        if (fird >= lasd)
        {
            days = fird - lasd;
            if (firm >= lasm)
            {
                months = firm - lasm;
                years = f.Year - l.Year;
            }
            else
            {
                months = (firm + 12) - lasm;
                years = f.AddYears(-1).Year - l.Year;
            }
        }
        else
        {
            days = (fird + 30) - lasd;
            if ((firm - 1) >= lasm)
            {
                months = (firm - 1) - lasm;
                years = f.Year - l.Year;
            }
            else
            {
                months = (firm - 1 + 12) - lasm;
                years = f.AddYears(-1).Year - l.Year;
            }
        }


        if (days < 0)
        {
            days = 0 - days;
        }
        if (months < 0)
        {
            months = 0 - months;
        }
        ArrayList ar = new ArrayList();
        ar.Add(years.ToString());
        ar.Add(months.ToString());
        ar.Add(days.ToString());
        return ar;
    }


}

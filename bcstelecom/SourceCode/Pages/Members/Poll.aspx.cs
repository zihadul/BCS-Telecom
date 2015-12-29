using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

public partial class Poll : System.Web.UI.Page
{
    bllPoll objPoll = new bllPoll();
    bllMember objMember = new bllMember();
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

    bool IsExecutiveMember
    {
        set { ViewState["IsExecutiveMember"] = value; }
        get
        {
            try
            {
                return Convert.ToBoolean(ViewState["IsExecutiveMember"].ToString());
            }
            catch
            {
                return false;
            }
        }

    }

   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = objMember.GetByUserName(User.Identity.Name);
            if (dt.Rows.Count > 0)
            {
                MemberID = int.Parse(dt.Rows[0]["memberid"].ToString());
                DataTable dtexc = objMember.GetExecutiveCommitteeByMemberId(MemberID);
                if (dtexc.Rows.Count> 0)
                {
                    IsExecutiveMember = true;
                }
                else
                {
                    IsExecutiveMember = false;
                }
                BindData();
            }
            
        }
    }


    private void BindData()
    {

        DataView dv = objPoll.GetCurrent(MemberID).DefaultView;

        if (IsExecutiveMember)
        {
            dv.RowFilter = "onlyforec=True OR onlyforec=False";
            DataTable dtEC = dv.ToTable();
            if (dtEC.Rows.Count > 0)
            {
                pnlExecutive.Visible = true;
                gvExecutive.DataSource = dtEC;
                gvExecutive.DataBind();
            }
            else
            {
                pnlExecutive.Visible = false;
            }
        }
        else
        {
            dv.RowFilter = "onlyforec=False";
            DataTable dt = dv.ToTable();
            gv.DataSource = dt;
            gv.DataBind();
        }


    }

    protected void btnECVote_Command(object sender, CommandEventArgs e)
    {
        int pollid = int.Parse(gvExecutive.DataKeys[int.Parse(e.CommandArgument.ToString())].Value.ToString());
        RadioButtonList rdoPoll = gvExecutive.Rows[int.Parse(e.CommandArgument.ToString())].FindControl("rdoPoll") as RadioButtonList;

        int OptionID = 0;


        foreach (ListItem li in rdoPoll.Items)
        {
            if (li.Selected)
            {
                OptionID = int.Parse(li.Value);
                break;
            }
        }

        if (OptionID == 0)
        {
            MessageController.Show("* Select an option to vote", MessageType.Information, Page);
            return;
        }



        objPoll.InsertPollResult(pollid, OptionID, MemberID);
        BindData();

        MessageController.Show("Your vote has submitted successfully.", MessageType.Information, Page);

    }


    protected void btnVote_Command(object sender, CommandEventArgs e)
    {
        int pollid = int.Parse(gv.DataKeys[int.Parse(e.CommandArgument.ToString())].Value.ToString());
        RadioButtonList rdoPoll = gv.Rows[int.Parse(e.CommandArgument.ToString())].FindControl("rdoPoll") as RadioButtonList;

        int OptionID = 0;


        foreach (ListItem li in rdoPoll.Items)
        {
            if (li.Selected)
            {
                OptionID = int.Parse(li.Value);
                break;
            }
        }

        if (OptionID == 0)
        {
            lblMessage.ForeColor = System.Drawing.Color.Red;
            lblMessage.Text = "<b>* Select an option to vote</b>.";
            return;
        }



        objPoll.InsertPollResult(pollid, OptionID, MemberID);
        BindData();

        lblMessage.ForeColor = System.Drawing.Color.Green;
        lblMessage.Text = "<b>* Your vote has submitted successfully.</b>.";

    }


    protected void gv_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int pollid = int.Parse(gv.DataKeys[e.Row.RowIndex].Value.ToString());

            Label lblResult = e.Row.FindControl("lblResult") as Label;

            DataTable dtResult = objPoll.GetPollOptions(pollid);


            foreach (DataRow dr in dtResult.Rows)
            {

                lblResult.Text += ", " + dr["optiontext"].ToString() + " (";


                lblResult.Text += dr["OptionVote"].ToString() == "0"
                                      ? "0"
                                      : ((int.Parse(dr["OptionVote"].ToString()) * 100) /
                                         int.Parse(dr["TotalVote"].ToString())).ToString();

                lblResult.Text += "%)";

            }


            RadioButtonList rdoPoll = e.Row.FindControl("rdoPoll") as RadioButtonList;


            rdoPoll.DataSource = dtResult;
            rdoPoll.DataBind();

        }

    }


    protected void gvExecutive_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int pollid = int.Parse(gvExecutive.DataKeys[e.Row.RowIndex].Value.ToString());


            Label lblResult = e.Row.FindControl("lblResult") as Label;

            DataTable dtResult = objPoll.GetPollOptions(pollid);

            foreach (DataRow dr in dtResult.Rows)
            {

                lblResult.Text += ", " + dr["optiontext"].ToString() + " (";


                lblResult.Text += dr["OptionVote"].ToString() == "0"
                                      ? "0"
                                      : ((int.Parse(dr["OptionVote"].ToString()) * 100) /
                                         int.Parse(dr["TotalVote"].ToString())).ToString();

                lblResult.Text += "%)";

            }

            RadioButtonList rdoPoll = e.Row.FindControl("rdoPoll") as RadioButtonList;


            rdoPoll.DataSource = objPoll.GetPollOptions(pollid);
            rdoPoll.DataBind();

        }

    }

}

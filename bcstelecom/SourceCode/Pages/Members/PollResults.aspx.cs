using System;
using System.Data;
using System.Web.UI.WebControls;
using BLL;

public partial class PollResults : System.Web.UI.Page
{
    bllPoll objPoll= new bllPoll();
   
    

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
                 BindData();
        }
    }


    private void BindData()
    {

        DataView dv = objPoll.GetOldResults().DefaultView;

        dv.RowFilter = "onlyforec=1";
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
       
        dv.RowFilter = "onlyforec=0";
        DataTable dt = dv.ToTable();
        gv.DataSource = dt;
        gv.DataBind();

    }


    private void BindExData()
    {

        DataView dv = objPoll.GetOldResults().DefaultView;

        dv.RowFilter = "onlyforec=1";
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


    private void BindMemberData()
    {
        DataView dv = objPoll.GetOldResults().DefaultView;
        dv.RowFilter = "onlyforec=0";
        DataTable dt = dv.ToTable();
        gv.DataSource = dt;
        gv.DataBind();

    }

  
    protected void gv_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int pollid = int.Parse(gv.DataKeys[e.Row.RowIndex].Value.ToString());

            Label lblNote = e.Row.FindControl("lblNote") as Label;

            DataTable dtResult = objPoll.GetPollOptions(pollid);

            foreach (DataRow dr in dtResult.Rows)
            {
                lblNote.Text += dr["optiontext"].ToString() + " (" + dr["OptionVote"].ToString() + "). "; 
            }

            GridView dlPoll = e.Row.FindControl("dlPoll") as GridView;
            dlPoll.DataSource = dtResult;
            dlPoll.DataBind();

        }

    }
    protected void gv_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gv.PageIndex = e.NewPageIndex;
        BindMemberData();
    }


    protected void gvExecutive_RowDataBound(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int pollid = int.Parse(gvExecutive.DataKeys[e.Row.RowIndex].Value.ToString());

            Label lblNote = e.Row.FindControl("lblNote") as Label;

            DataTable dtResult = objPoll.GetPollOptions(pollid);

            foreach (DataRow dr in dtResult.Rows)
            {
                lblNote.Text += dr["optiontext"].ToString() + " (" + dr["OptionVote"].ToString() + "). ";
            }

            GridView dlPoll = e.Row.FindControl("dlPoll") as GridView;
            dlPoll.DataSource = dtResult;
            dlPoll.DataBind();

        }

    }

    protected void gvExecutive_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvExecutive.PageIndex = e.NewPageIndex;
        BindExData();
    }

}

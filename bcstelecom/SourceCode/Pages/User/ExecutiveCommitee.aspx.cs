using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Data;
using BLL;
using System.Text;



public partial class ExecutiveCommitee : System.Web.UI.Page
{
    bllYear objYear = new bllYear();

    int DesignationId
    {
        set { ViewState["DesignationId"] = value; }
        get
        {
            try
            {
                return Convert.ToInt32(ViewState["DesignationId"]);
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
            ltPdf.Visible = false;
            LoadYear();
            LoadDesignation();
        }
    }
    protected void LoadDesignation()
    {
        DataTable dt = new bllDesignation().DesignationByYearId(Convert.ToInt32(ddlyear.SelectedValue));
        gv.DataSource = dt;
        gv.DataBind();
    }
    protected void LoadYear()
    {
        DataTable dt = objYear.GetAll();
        ddlyear.DataSource = dt;
        ddlyear.DataBind();
    }
    protected void ddlyear_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadDesignation();
    }
    protected void gv_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
    {
        DataRowView drview = e.Row.DataItem as DataRowView;
        GridView gv = (GridView)e.Row.FindControl("gvMember");
        HiddenField hdnId = (HiddenField)e.Row.FindControl("hdnId");
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DesignationId = Convert.ToInt32(hdnId.Value);
            DataTable dt = new bllExecutiveCommitee().GetByDesignationAndYearId(DesignationId, Convert.ToInt32(ddlyear.SelectedValue));
            gv.DataSource = dt;
            gv.DataBind();
        }
    }
    protected void btnExport_Click(object sender, EventArgs e)
    {
        ExportGridToPDF();
    }

    private void ExportGridToPDF()
    {

        bindLiteral();
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=ExecutiveMember.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);
        ltPdf.RenderControl(hw);
        StringReader sr = new StringReader(sw.ToString());
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
        pdfDoc.Open();
        htmlparser.Parse(sr);
        pdfDoc.Close();
        Response.Write(pdfDoc);
        ltPdf.Visible = false;
        Response.End();
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Verifies that the control is rendered */
    }

    protected void bindLiteral()
    {
        ltPdf.Visible = true;
        StringBuilder st = new StringBuilder();
        // st.Append(@"<img src=""Resources/Images/Common/bcstelecom_logo.png"" />");
        st.Append("<br/>");
        st.AppendLine("<div style='font-size:30px;text-align:center;'><b>BCS Telecom Samity</b></div>");
        st.Append("<br/>");
        st.Append("<div style='font-size:16px;'>");
        st.Append("Executive Committee List" + " ("+ ddlyear.SelectedItem.Text +")");
        st.Append("</div>");
        st.Append("<br/>");
        st.Append("<ul>");

        DataTable dt = new bllDesignation().DesignationByYearId(Convert.ToInt32(ddlyear.SelectedValue));
        foreach (DataRow dr in dt.Rows)
        {
            st.Append("<li>");
            st.Append("<div style='font-size:14px;'>");
            st.Append(dr["Designation"].ToString());
            st.Append("</div>");
            st.Append("<ul>");
            DataTable dtmember = new bllExecutiveCommitee().GetByDesignationAndYearId(Convert.ToInt32(dr["Id"].ToString()), Convert.ToInt32(ddlyear.SelectedValue));
            foreach (DataRow drr in dtmember.Rows)
            {
                st.Append("<li>");
                st.Append(drr["membername"]);
                st.Append("</li>");
            }
            st.Append("</ul>");
            st.Append("</li>");
        }
        st.Append("</ul>");
        ltPdf.Text = st.ToString();
    }
}

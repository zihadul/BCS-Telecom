using BLL;
using System;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;

public partial class Pages_User_NewsDetails : System.Web.UI.Page
{
   
    private static int ID;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {

            string QueryString = Page.RouteData.Values.Values.ElementAt(0).ToString();
            if (int.TryParse(QueryString, out ID))
                LoadNews();
        }
    }

    private void LoadNews()
    {
        DataTable dt = new bllNews().GetByID(ID);

        rptNewsDetails.DataSource = dt;
        rptNewsDetails.DataBind();
        //if (dt.Rows.Count > 0)
        //{
        //    Literal lit_PageHeader = Page.Master.FindControl("Literal1") as Literal;
        //    if (lit_PageHeader != null)
        //        lit_PageHeader.Text = dt.Rows[0]["news_title"].ToString();
        //}
    }
}
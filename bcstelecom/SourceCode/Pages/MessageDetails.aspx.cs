using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MessageDetails : System.Web.UI.Page
{
    
    private static int ID;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            string QueryString = Page.RouteData.Values.Values.ElementAt(0).ToString();
            if (int.TryParse(QueryString, out ID))
                LoadData();
        }
    }
    protected void LoadData()
    {
        DataTable dt = new bllMessage().GetByID(ID);
        if (dt.Rows.Count > 0)
        {
            litMessage.Text = Common.Decoding(dt.Rows[0]["message"].ToString());
        }
    }
}
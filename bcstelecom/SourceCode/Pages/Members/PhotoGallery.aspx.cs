using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

public partial class Pages_User_PhotoGallery : System.Web.UI.Page
{
    private  bllPhotoGallery objPhotoGallery = new bllPhotoGallery();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindCategory();
            BindData();
        }
    }

    private void BindData()
    {
        DataView dv = objPhotoGallery.GetList50().DefaultView; ;
        DataTable dt = dv.ToTable();
        if (dt.Rows.Count > 0)
        {
            rptPhotoGallery.DataSource = dt;
            rptPhotoGallery.DataBind();
        }
    }


   
    protected void BindCategory()
    {

        DataTable dt = new bllCategory().GetList();
        ddlCategory.Items.Clear();
        var li = new ListItem("Select Album", "0");
        ddlCategory.Items.Add(li);
        foreach (DataRow row in dt.Rows)
        {
            var item = new ListItem();
            item.Text = row["CName"].ToString();
            item.Value = (row["CID"].ToString());
            ddlCategory.Items.Add(item);
        }
    }


   
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if ((Convert.ToInt32(ddlCategory.SelectedValue)) > 0)
        {
            DataTable dt = objPhotoGallery.GetByCategoryId(Convert.ToInt32(ddlCategory.SelectedValue));
            if (dt.Rows.Count > 0)
            {
                rptPhotoGallery.DataSource = dt;
                rptPhotoGallery.DataBind();
            }
            else
            {
                rptPhotoGallery.DataSource = null;
                rptPhotoGallery.DataBind();
            }
        }

        else
            BindData();
    }
}
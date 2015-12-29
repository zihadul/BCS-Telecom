using System;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using BLL;
using System.Web.UI.WebControls;

public partial class UserControls_WallComment : System.Web.UI.UserControl
{


    bllMembersPost objPosts = new bllMembersPost();

    public void LoadWallComment(DataTable dtWallComment)
    {

        WallComment.DataSource = dtWallComment;
        WallComment.DataBind();

    }


    public void BindData(int postid)
    {
        WallComment.DataSource = objPosts.GetCommentsList(postid);
        WallComment.DataBind();
    }

    protected void btnDelete_Command(object sender, CommandEventArgs e)
    {

        string[] Values = e.CommandArgument.ToString().Split(',');

        int postid = int.Parse(Values[0]);
        int commentid = int.Parse(Values[1]);

        objPosts.DeleteComment(commentid);

        BindData(postid);

    }
}

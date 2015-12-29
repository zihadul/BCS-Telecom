using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;


namespace DAL
{
    public class dalMembersPost
    {
       
        public DataTable GetList(DateTime from , DateTime to)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_from", from));
            altParams.Add(new MySqlParameter("_to", to));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_members_post_get", altParams);
        }

       

        public DataTable GetCommentsList(int postid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_postid", postid));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_members_post_comment_getbypostid", altParams);
        }

        public int InsertPost(int memberid, string postdata)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_memberid", memberid));
            altParams.Add(new MySqlParameter("_postdata", postdata));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_post_insert",
                                                                                         altParams);
        }

        public int InsertComment(int postid, int memberid, string comments)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_postid", postid));
            altParams.Add(new MySqlParameter("_memberid", memberid));
            altParams.Add(new MySqlParameter("_comments", comments));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_post_comment_insert",
                                                                                         altParams);
        }

        public int DeletePost(int postid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_postid", postid));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_post_delete", altParams);
        }


        public int DeleteComment(int commentid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_commentid", commentid));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_post_comment_delete", altParams);
        }
    }
}
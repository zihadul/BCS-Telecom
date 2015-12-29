using System.Data;
using DAL;
using System;

namespace BLL
{
    public class bllMembersPost
    {
        dalMembersPost objPosts = new dalMembersPost();
        public DataTable GetList(DateTime from, DateTime to)
        {
            return objPosts.GetList(from, to);
        }

        
        public DataTable GetCommentsList(int postid)
        {
            return objPosts.GetCommentsList(postid);
        }

        public int InsertPost(int memberid, string postdata)
        {
            return objPosts.InsertPost(memberid, postdata);
        }

        public int InsertComment(int postid, int memberid, string comments)
        {
            return objPosts.InsertComment(postid, memberid, comments);
        }

        public int DeletePost(int postid)
        {
            return objPosts.DeletePost(postid);
        }


        public int DeleteComment(int commentid)
        {
            return objPosts.DeleteComment(commentid);
        }
       
        
    }
}
using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;


namespace DAL
{
    public class dalDocuments
    {


        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_documents_getall",
                                                                                         altParams);
            return dt;
        }


        public DataTable GetByID(int documentid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_documentid", documentid));
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_documents_getbyid",
                                                                                         altParams);
            return dt;
        }


        public DataTable GetByCategoryID(int CategoryId)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_CategoryId", CategoryId));
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_documents_getbycategoryId",
                                                                                         altParams);
            return dt;
        }


        public int Insert(string title, string AttachmentName, bool OnlyForMembers, int CategoryId, DateTime ExpireDate)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_title", title));
            altParams.Add(new MySqlParameter("_AttachmentName", AttachmentName));
            altParams.Add(new MySqlParameter("_OnlyForMembers", OnlyForMembers));
            altParams.Add(new MySqlParameter("_CategoryId", CategoryId));
            altParams.Add(new MySqlParameter("_ExpireDate", ExpireDate));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_documents_insert", altParams);

        }


        public int Update(int documentid, string title, string AttachmentName, bool OnlyForMembers, int CategoryId, DateTime ExpireDate)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_documentid", documentid));
            altParams.Add(new MySqlParameter("_title", title));
            altParams.Add(new MySqlParameter("_AttachmentName", AttachmentName));
            altParams.Add(new MySqlParameter("_OnlyForMembers", OnlyForMembers));
            altParams.Add(new MySqlParameter("_CategoryId", CategoryId));
            altParams.Add(new MySqlParameter("_ExpireDate", ExpireDate));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_documents_update", altParams);
        }


        public int Delete(int documentid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_documentid", documentid));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_documents_delete", altParams);
        }


    }
}
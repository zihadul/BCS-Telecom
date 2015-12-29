using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;


namespace DAL
{
    public class dalMessage
    {
       
        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_message_getall",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetByID(int messageid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_messageid", messageid));
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_message_getbyid",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetByMemberID(int memberid )
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_memberid", memberid));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_message_getbymemberid", altParams);
        }


        public DataTable GetMessageForAllByMemberID(int memberid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_memberid", memberid));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_messageForAll_getbymemberid", altParams);
        }

        public int Insert(string message, Nullable<DateTime> displaytill, string sentby, int senttoall)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_message", message));
            altParams.Add(new MySqlParameter("_displaytill", displaytill));
            altParams.Add(new MySqlParameter("_sentby", sentby));
            altParams.Add(new MySqlParameter("_senttoall", senttoall));

            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_message_insert",
                                                                                         altParams);
            return Convert.ToInt32(dt.Rows[0][0].ToString());
        }

        public int Update(int messageid, string message, Nullable<DateTime> displaytill, string sentby, int senttoall)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_messageid", messageid));
            altParams.Add(new MySqlParameter("_message", message));
            altParams.Add(new MySqlParameter("_displaytill", displaytill));
            altParams.Add(new MySqlParameter("_sentby", sentby));
            altParams.Add(new MySqlParameter("_senttoall", senttoall));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_message_update", altParams);
        }

        public int Delete(int messageid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_messageid", messageid));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_message_delete", altParams);
        }


        public DataTable GetRecepientByID(int messageid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_messageid", messageid));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_message_recepient_getbymessageid",
                                                                                         altParams);
        }

        public int InsertRecepient(int messageid, int memberid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_messageid", messageid));
            altParams.Add(new MySqlParameter("_memberid", memberid));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_message_recepient_insert", altParams);
        }

    }
}
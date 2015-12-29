using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;


namespace DAL
{
    public class dalPoll
    {
       
        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_poll_getall",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetByID(int pollid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_pollid", pollid));
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_poll_getbyid",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetCurrent(int memberid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_memberid", memberid));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_poll_getcurrent", altParams);
        }
        public DataTable GetOldResults()
        {
            ArrayList altParams = new ArrayList();
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_poll_getoldresult", altParams);
        }


        public int Insert(string topics, DateTime expiredate, bool enableforvoting, bool onlyforec)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_topics", topics));
            altParams.Add(new MySqlParameter("_expiredate", expiredate));
            altParams.Add(new MySqlParameter("_enableforvoting", enableforvoting));
            altParams.Add(new MySqlParameter("_onlyforec", onlyforec));
            
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_poll_insert",
                                                                                         altParams);
            return Convert.ToInt32(dt.Rows[0][0].ToString());
        }





        public int Update(int pollid, string topics, DateTime expiredate, bool enableforvoting, bool onlyforec)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_pollid", pollid));
            altParams.Add(new MySqlParameter("_topics", topics));
            altParams.Add(new MySqlParameter("_expiredate", expiredate));
            altParams.Add(new MySqlParameter("_enableforvoting", enableforvoting));
            altParams.Add(new MySqlParameter("_onlyforec", onlyforec));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_poll_update", altParams);
        }

        public int Delete(int pollid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_pollid", pollid));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_poll_delete", altParams);
        }



        public DataTable GetPollOptions(int pollid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_pollid", pollid));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_polloptions_getbyid",
                                                                                         altParams);
        }

        public int InsertPollOption(int pollid, string optiontext)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_pollid", pollid));
            altParams.Add(new MySqlParameter("_optiontext", optiontext));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_polloptions_insert",
                                                                                         altParams);
        }


        public int UpdatePollOption(int optionid, string optiontext)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_optionid", optionid));
            altParams.Add(new MySqlParameter("_optiontext", optiontext));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_polloptions_update",
                                                                                         altParams);
        }

        public int DeletePollOption(int optionid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_optionid", optionid));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_polloptions_delete",
                                                                                         altParams);
        }



        public int InsertPollResult(int pollid, int optionid, int memberid)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_pollid", pollid));
            altParams.Add(new MySqlParameter("_optionid", optionid));
            altParams.Add(new MySqlParameter("_memberid", memberid));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_pollresults_insert",
                                                                                         altParams);
        }


    }
}
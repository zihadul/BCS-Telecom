using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;


namespace DAL
{
    public class dalAchievements
    {
       
        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_achievements_getall",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetByID(int achievementid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_achievementid", achievementid));
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_achievements_getbyid",
                                                                                         altParams);
            return dt;
        }


        public int Insert(string title, string description, string AttachmentName)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_title", title));
            altParams.Add(new MySqlParameter("_description", description));
            altParams.Add(new MySqlParameter("_AttachmentName", AttachmentName));

            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_achievements_insert",
                                                                                         altParams);
            return Convert.ToInt32(dt.Rows[0][0].ToString());
        }

        public int Update(int achievementid, string title, string description, string AttachmentName)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_achievementid", achievementid));
            altParams.Add(new MySqlParameter("_title", title));
            altParams.Add(new MySqlParameter("_description", description));
            altParams.Add(new MySqlParameter("_AttachmentName", AttachmentName));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_achievements_update", altParams);
        }

        public int Delete(int achievementid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_achievementid", achievementid));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_achievements_delete", altParams);
        }

        
    }
}
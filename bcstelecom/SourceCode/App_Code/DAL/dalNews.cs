using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;

/// <summary>
/// Summary description for dalNews
/// </summary>

namespace DAL
{
    public class dalNews
    {
        public DataTable Get()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_news_get", altParams);
            return dt;
        }


        public DataTable GetAll()
        {
            ArrayList altParams = new ArrayList();
            try
            {
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_news_getall", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataTable GetLatest()
        {
            ArrayList altParams = new ArrayList();
            try
            {
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_news_getlatest", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public DataTable GetLatest3()
        {
            ArrayList altParams = new ArrayList();
            try
            {
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_news_getlatest3", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public int Insert(string _news_title, string summary, string _description, DateTime _expiryDate)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_news_title", _news_title));
            altParams.Add(new MySqlParameter("_Summary", summary));
            altParams.Add(new MySqlParameter("_description", _description));
            altParams.Add(new MySqlParameter("_ExpiryDate", _expiryDate));


            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_news_insert", altParams);
        }



        public int Update(int _news_id, string _news_title, string summary, string _description, DateTime _expiryDate)
        {
            ArrayList altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_news_id", _news_id));
                altParams.Add(new MySqlParameter("_news_title", _news_title));
                altParams.Add(new MySqlParameter("_Summary", summary));
                altParams.Add(new MySqlParameter("_description", _description));
                altParams.Add(new MySqlParameter("_ExpiryDate", _expiryDate));

                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_news_update", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public DataTable GetByID(int _news_id)
        {
            ArrayList altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_news_id", _news_id));
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_news_getbyid", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public int Delete(int _news_id)
        {
            ArrayList altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_news_id", _news_id));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_news_delete", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
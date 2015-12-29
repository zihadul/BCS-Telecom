using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;

/// <summary>
/// Summary description for dalEvent
/// </summary>

namespace DAL
{
    public class dalEvent
    {


        public DataTable Get()
        {
            ArrayList altParams = new ArrayList();
            try
            {
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_Event_get", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public DataTable GetAll()
        {
            ArrayList altParams = new ArrayList();
            try
            {
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_Event_getall", altParams);
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
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_Event_getlatest", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public DataTable GetByID(int _Event_id)
        {
            ArrayList altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_Event_id", _Event_id));
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_Event_getbyid", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public int Insert(string _Event_title, string summary, string _description, DateTime _Event_date, DateTime expiryDate)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_Event_title", _Event_title));
            altParams.Add(new MySqlParameter("_Summary", summary));
            altParams.Add(new MySqlParameter("_description", _description));
            altParams.Add(new MySqlParameter("_Event_date", _Event_date));
            altParams.Add(new MySqlParameter("_ExpiryDate", expiryDate));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_Event_insert", altParams);
        }



        public int Update(int _Event_id, string _Event_title, string summary, string _description, DateTime _Event_date, DateTime expiryDate)
        {
            ArrayList altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_Event_id", _Event_id));
                altParams.Add(new MySqlParameter("_Event_title", _Event_title));
                altParams.Add(new MySqlParameter("_Summary", summary));
                altParams.Add(new MySqlParameter("_description", _description));
                altParams.Add(new MySqlParameter("_Event_date", _Event_date));
                altParams.Add(new MySqlParameter("_ExpiryDate", expiryDate));


                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_Event_update", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


      

        public int Delete(int _Event_id)
        {
            ArrayList altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_Event_id", _Event_id));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_Event_delete", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data;
using VIT.DataLogicLayer;
using MySql.Data.MySqlClient;

/// <summary>
/// Summary description for dalDesignation
/// </summary>
/// 
namespace DAL
{
    public class dalDesignation
    {
        public dalDesignation()
        {
            //
            // TODO: Add constructor logic here
            //
        }


        public DataTable GetAll()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_Designation_getall",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetById(int id)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_ID", id));
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_Designation_GetById", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public DataTable DesignationByYear(string year)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_Year", year));
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_Designation_GetByYear", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public DataTable DesignationByYearId(int yearId)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_YearId", yearId));
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_Designation_GetByYearID", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public int Insert(string title, int priority)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_title", title));
                altParam.Add(new MySqlParameter("_Priority", priority));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_Designation_Insert", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public int Update(int id, string title, int priority)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_Id", id));
                altParam.Add(new MySqlParameter("_title", title));
                altParam.Add(new MySqlParameter("_Priority", priority));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_Designation_Update", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
      

        public int Delete(int id)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_ID", id));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_Designation_Delete", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
      
    }
}
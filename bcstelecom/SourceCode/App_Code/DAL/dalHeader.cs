using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using VIT.DataLogicLayer;

/// <summary>
/// Summary description for dalHeader
/// </summary>
/// 
namespace DAL
{
    public class dalHeader
    {
        public dalHeader()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public int Insert(string imagePath, bool active)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_ImagePath", imagePath));
                altParam.Add(new MySqlParameter("_Active", active));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_Header_Insert", altParam);
            }
            catch(Exception ex)
            {
                throw;
            }
        }

        public int Update(int id,string imagePath, bool active)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_ID", id));
                altParam.Add(new MySqlParameter("_ImagePath", imagePath));
                altParam.Add(new MySqlParameter("_Active", active));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_Header_Update", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public DataTable GetById(int id)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_ID", id));
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_Header_GetById", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public DataTable GetAll()
        {
            try
            {
                ArrayList altParam = new ArrayList();
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_Header_GetAll", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        public DataTable GetActive()
        {
            try
            {
                ArrayList altParam = new ArrayList();
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_Header_GetActive", altParam);
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
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_Header_Delete", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
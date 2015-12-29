using MySql.Data.MySqlClient;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using VIT.DataLogicLayer;

/// <summary>
/// Summary description for dalDocumentType
/// </summary>
/// 
namespace DAL
{
    public class dalDocumentType
    {
        public dalDocumentType()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public int Insert(string title)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_title", title));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_DocumentType_Insert", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public int Update(int id, string title)
        {
            try
            {
                ArrayList altParam = new ArrayList();
                altParam.Add(new MySqlParameter("_Id", id));
                altParam.Add(new MySqlParameter("_title", title));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_DocumentType_Update", altParam);
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
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_DocumentType_GetById", altParam);
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
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_DocumentType_GetAll", altParam);
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
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_DocumentType_Delete", altParam);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
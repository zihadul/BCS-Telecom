using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;

/// <summary>
/// Summary description for dalCategory
/// </summary>

namespace DAL
{

    public class dalCategory
    {
        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_Category_getall", altParams);
        }


        public DataTable GetByID(int ID)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_id", ID));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_Category_getbyid", altParams);
        }


        public int Insert(string _Name)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_Name", _Name));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_Category_insert", altParams);
        }

        public int Update(int ID, string _Name)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_id", ID));
            altParams.Add(new MySqlParameter("_Name", _Name));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_Category_update", altParams);
        }

        public int Delete(int ID)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_id", ID));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_Category_delete", altParams);
        }
    }
}

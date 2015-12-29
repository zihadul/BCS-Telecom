using MySql.Data.MySqlClient;
using System.Collections;
using System.Data;
using VIT.DataLogicLayer;

/// <summary>
/// Summary description for dalSubCategory
/// </summary>

namespace DAL
{
    public class dalSubCategory
    {
        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_SubCategory_getall", altParams);
        }


        public DataTable GetByID(int ID)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_id", ID));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_SubCategory_getbyid", altParams);
        }

        public DataTable GetByCID(int CID)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_id", CID));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_SubCategory_getbyCID", altParams);
        }


        public int Insert(string _Name, int CID)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_Name", _Name));
            altParams.Add(new MySqlParameter("_CID", CID));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_SubCategory_insert", altParams);
        }

        public int Update(int ID, string _Name, int CID)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_id", ID));
            altParams.Add(new MySqlParameter("_Name", _Name));
            altParams.Add(new MySqlParameter("_CID", CID));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_SubCategory_update", altParams);
        }

        public int Delete(int ID)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_id", ID));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_SubCategory_delete", altParams);
        }
    }
}
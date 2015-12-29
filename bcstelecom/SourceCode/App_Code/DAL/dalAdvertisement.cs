using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;
using System;


namespace DAL
{
    public class dalAdvertisement
    {
       

        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_advertisement_getall", altParams);
            return dt;
        }


        public DataTable GetById(int adid)
        {
            ArrayList altParams = new ArrayList { new MySqlParameter("_adid", adid) };
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_advertisement_getbyid", altParams);
        }

        public DataTable GetActive()
        {
            ArrayList altParams = new ArrayList();
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_advertisement_getactive", altParams);
        }

        public int Insert(string filename, string description, string link, string owner, bool active)
        {
            ArrayList altParams = new ArrayList
                                      {
                                          new MySqlParameter("_filenameX", filename),
                                          new MySqlParameter("_description", description),
                                          new MySqlParameter("_link", link),
                                          new MySqlParameter("_owner", owner),
                                          new MySqlParameter("_active", active)
                                      };

            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_advertisement_insert",
                                                                                       altParams);
            return Convert.ToInt32(dt.Rows[0][0].ToString());

        }

        public int Update(int adid, string filename, string description, string link, string owner, bool active)
        {
            ArrayList altParams = new ArrayList
                                      {
                                          new MySqlParameter("_adid", adid),
                                          new MySqlParameter("_filenameX", filename),
                                          new MySqlParameter("_description", description),
                                          new MySqlParameter("_link", link),
                                          new MySqlParameter("_owner", owner),
                                          new MySqlParameter("_active", active)
                                      };

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_advertisement_update", altParams);
        }
        
        public int Delete(int adid)
        {
            ArrayList altParams = new ArrayList {new MySqlParameter("_adid", adid)};
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_advertisement_delete", altParams);
        }


    }
}

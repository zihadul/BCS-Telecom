using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;
using System;


namespace DAL
{
    public class daPhotograph
    {
      

        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_photograph_getall", altParams);
            return dt;
        }


        public DataTable GetById(int photographid)
        {
            ArrayList altParams = new ArrayList { new MySqlParameter("_photographid", photographid) };
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_photograph_getbyid", altParams);
        }

        public DataTable GetByEventId(int EventID)
        {
            ArrayList altParams = new ArrayList { new MySqlParameter("_EventID", EventID) };
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_photograph_getbyeventid", altParams);
        }


        public int Update(int photographid, string filename, string description, int EventID)
        {
            ArrayList altParams = new ArrayList
                                      {
                                          new MySqlParameter("_photographid", photographid),
                                          new MySqlParameter("_filenameX", filename),
                                          new MySqlParameter("_description", description),
                                          new MySqlParameter("_EventID", EventID)
                                      };

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_photograph_update", altParams);
        }

        public int Insert(string filename, string description, int EventID)
        {
            ArrayList altParams = new ArrayList
                                      {
                                          new MySqlParameter("_filenameX", filename),
                                          new MySqlParameter("_description", description),
                                          new MySqlParameter("_EventID", EventID)
                                      };

            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_photograph_insert",
                                                                                       altParams);
            return Convert.ToInt32(dt.Rows[0][0].ToString());

        }

        public int Delete(int photographid)
        {
            ArrayList altParams = new ArrayList {new MySqlParameter("_photographid", photographid)};
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_photograph_delete", altParams);
        }


    }
}

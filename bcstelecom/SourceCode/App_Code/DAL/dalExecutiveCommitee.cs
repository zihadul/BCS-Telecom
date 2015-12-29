using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;


namespace DAL
{
    public class dalExecutiveCommitee
    {
      
        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_executivecommitee_getall",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetByID(int id)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_id", id));
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_executivecommitee_getbyid",
                                                                                         altParams);
            return dt;
        }
        public DataTable GetByDesignationID(int Id,string year)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_designationId", Id));
            altParams.Add(new MySqlParameter("_year", year));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_executivecommitee_getbydesignationid",
                                                                                         altParams);
        }

        public DataTable GetByDesignationAndYearId(int designationId, int yearId)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_designationId", designationId));
            altParams.Add(new MySqlParameter("_yearId", yearId));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_executivecommitee_getbydesignationidAndyearId",
                                                                                         altParams);
        }


        public DataTable GetByYear(int yearId)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_yearId", yearId));
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_executivecommitee_getbyyear",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetYear()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_executivecommitee_getyear",
                                                                                         altParams);
            return dt;
        }

        public int Insert(int memberid, int designation, int yearId, string priority)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_memberid", memberid));
            altParams.Add(new MySqlParameter("_designation", designation));
            altParams.Add(new MySqlParameter("_yearId", yearId));
            altParams.Add(new MySqlParameter("_priority", priority));
            return  DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_executivecommitee_insert",
                                                                                         altParams);
        }

        public int Update(int id, int memberid, int designation, int yearId, string priority)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_id", id));
            altParams.Add(new MySqlParameter("_memberid", memberid));
            altParams.Add(new MySqlParameter("_designation", designation));
            altParams.Add(new MySqlParameter("_yearId", yearId));
            altParams.Add(new MySqlParameter("_priority", priority));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_executivecommitee_update", altParams);
        }

        public int Delete(int id)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_id", id));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_executivecommitee_delete", altParams);
        }
        public int DeleteByYear(string year)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_year", year));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_executivecommitee_deletebyyear", altParams);
        }

        
    }
}
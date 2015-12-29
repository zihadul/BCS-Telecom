using System;
using System.Collections;
using System.Data;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;

/// <summary>
/// Summary description for dalServce
/// </summary>

namespace DAL
{
    public class dalBanner
    {

        public DataTable GetList()
        {
            var altParams = new ArrayList();
            try
            {
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_Banner_getall", altParams);
                //excetp those marked as banner
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataTable GetAllFeaturedBanner()
        {
            var altParams = new ArrayList();
            try
            {
                return DatabaseManager.GetInstance()
                    .ExecuteStoredProcedureDataTable("usp_Banner_get_featured_all", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public DataTable GetFeaturedBannerListByN(int rows)
        {
            var altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_number", rows));
                return DatabaseManager.GetInstance()
                    .ExecuteStoredProcedureDataTable("usp_banner_featured_get_N", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataTable GetBannerByN(int rows)
        {
            var altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_number", rows));
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_banner_get_N", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public DataTable GetByID(int _banner_id)
        {
            var altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_banner_id", _banner_id));
                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_banner_getbyid", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public int Insert(string _banner_name, string _display_image_path, string _banner_summery, string _banner_detail,
            bool visible)
        {
            var altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_banner_name", _banner_name));
                altParams.Add(new MySqlParameter("_display_image_path", _display_image_path));
                altParams.Add(new MySqlParameter("_banner_summery", _banner_summery));
                altParams.Add(new MySqlParameter("_banner_detail", _banner_detail));
                altParams.Add(new MySqlParameter("_visibility", visible));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_banner_insert", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int Update(int _banner_id, string _banner_name, string _display_image_path, string _summery,
            string _banner_detail, bool visible)
        {
            var altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_banner_id", _banner_id));
                altParams.Add(new MySqlParameter("_banner_name", _banner_name));
                altParams.Add(new MySqlParameter("_display_image_path", _display_image_path));
                altParams.Add(new MySqlParameter("_banner_summery", _summery));
                altParams.Add(new MySqlParameter("_banner_details", _banner_detail));
                altParams.Add(new MySqlParameter("_visibility", visible));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_banner_update", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int Delete(int _banner_id)
        {
            var altParams = new ArrayList();
            try
            {
                altParams.Add(new MySqlParameter("_banner_id", _banner_id));
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_banner_delete", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
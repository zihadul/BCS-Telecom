using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
/// <summary>
/// Summary description for dalPhotoGallery
/// </summary>
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;

namespace DAL
{
    public class dalPhotoGallery
    {
        public DataTable GetList()
        {
            ArrayList altParams = new ArrayList();
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_PhotoGallery_getall", altParams);
        }


        public DataTable GetLatest()
        {
            ArrayList altParams = new ArrayList();
            return DatabaseManager.GetInstance()
                .ExecuteStoredProcedureDataTable("usp_PhotoGallery_getLatest", altParams);
        }


        public DataTable GetList50()
        {
            ArrayList altParams = new ArrayList();
            return DatabaseManager.GetInstance()
                .ExecuteStoredProcedureDataTable("usp_PhotoGallery_getrecent50", altParams);
        }

        public DataTable GetByID(int ID)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_id", ID));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_PhotoGallery_getbyid", altParams);
        }

        public DataTable GetByCategoryId(int categoryId)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_CategoryId", categoryId));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_PhotoGallery_getbyCategoryId", altParams);
        }

        public int Insert(int categoryId,  string title, string imagePath)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_CategoryId", categoryId));
            altParams.Add(new MySqlParameter("_Title", title));
            altParams.Add(new MySqlParameter("_ImagePath", imagePath));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_PhotoGallery_insert", altParams);

        }


        public int Update(int id, int categoryId, string title, string imagePath)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_product_id", id));
            altParams.Add(new MySqlParameter("_CategoryId", categoryId));
            altParams.Add(new MySqlParameter("_Title", title));
            altParams.Add(new MySqlParameter("_ImagePath", imagePath));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_PhotoGallery_update", altParams);

        }

        public int Delete(int ID)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_id", ID));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_PhotoGallery_delete", altParams);
        }
    }
}
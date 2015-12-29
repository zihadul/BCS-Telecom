using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
/// <summary>
/// Summary description for bllPhotoGallery
/// </summary>
/// 
using DAL;

namespace BLL
{
    public class bllPhotoGallery
    {
        private dalPhotoGallery objPhotoGallery = new dalPhotoGallery();

        public DataTable GetList()
        {
            return objPhotoGallery.GetList();
        }

        public DataTable GetLatest()
        {
            return objPhotoGallery.GetLatest();
        }

        public DataTable GetList50()
        {
            return objPhotoGallery.GetList50();
        }


        public DataTable GetById(int id)
        {
            return objPhotoGallery.GetByID(id);
        }

        public DataTable GetByCategoryId(int id)
        {
            return objPhotoGallery.GetByCategoryId(id);
        }


        public int Insert(int categoryId, string title, string imagePath)
        {
            return objPhotoGallery.Insert(categoryId, title, imagePath);
        }

        public int Update(int id, int categoryId,string title, string imagePath)
        {
            return objPhotoGallery.Update(id, categoryId,title, imagePath);
        }

        public int Delete(int id)
        {
            return objPhotoGallery.Delete(id);
        }
    }

}

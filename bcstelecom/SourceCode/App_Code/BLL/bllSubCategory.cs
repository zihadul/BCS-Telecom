using DAL;
using System;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;


/// <summary>
/// Summary description for bllSubCategory
/// </summary>

namespace BLL
{
    public class bllSubCategory
    {
        private static ICacheManager CacheSubCategory = CacheFactory.GetCacheManager("CacheSubCategory");
        private dalSubCategory objGallery = new dalSubCategory();

        public DataTable GetList()
        {
            DataTable dt = (DataTable) CacheSubCategory.GetData("CacheSubCategory");
            if (dt == null)
            {
                dt = objGallery.GetList();
                CacheSubCategory.Add("CacheSubCategory", dt, CacheItemPriority.Normal, new RefreshCache(),
                    new SlidingTime(TimeSpan.FromSeconds(60)));
            }
            dt.DefaultView.RowFilter = "";
            return dt;
        }

        public DataTable GetByID(int ID)
        {
            return objGallery.GetByID(ID);
        }

        public DataTable GetByCID(int ID)
        {
            return objGallery.GetByCID(ID);
        }


        public int Insert(string Name, int CID)
        {
          
            return objGallery.Insert(Name, CID);
        }

        public int Update(int ID, string Name, int CID)
        {
           
            return objGallery.Update(ID, Name, CID);
        }

        public int Delete(int ID)
        {
            
            return objGallery.Delete(ID);
        }
    }
}
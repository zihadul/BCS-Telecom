using System.Data;
using DAL;
using System;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;

namespace BLL
{
    public class bllDocuments
    {
        private static ICacheManager cache = CacheFactory.GetCacheManager("CacheDocuments");
        dalDocuments objDocuments = new dalDocuments();
        public bllDocuments()
        {
        }
        public DataTable GetList()
        {
            DataTable dt = (DataTable)cache.GetData("cacheDocuments");
            if (dt == null)
            {
                dt = objDocuments.GetList();

                cache.Add("cacheDocuments", dt, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
            }

            return dt;
            
        }

        public DataTable GetByID(int documentid)
        {
            return objDocuments.GetByID(documentid);
        }

        public DataTable GetByCategoryID(int CategoryId)
        {
            return objDocuments.GetByCategoryID(CategoryId);
        }


        public int Insert(string title, string AttachmentName, bool OnlyForMembers, int CategoryId, DateTime ExpireDate)
        {
            cache.Flush();
            return objDocuments.Insert(title, AttachmentName, OnlyForMembers, CategoryId, ExpireDate);
        }


        public int Update(int documentid, string title, string AttachmentName, bool OnlyForMembers, int CategoryId, DateTime ExpireDate)
        {
            cache.Flush();
            return objDocuments.Update(documentid, title, AttachmentName, OnlyForMembers, CategoryId, ExpireDate);
        }

        public int Delete(int documentid)
        {
            cache.Flush();
            return objDocuments.Delete(documentid);
        }
       
        
    }
}
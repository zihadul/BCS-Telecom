using System.Data;
using DAL;
using System;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;

namespace BLL
{
    public class bllAchievements
    {
        private static ICacheManager cache = CacheFactory.GetCacheManager("CacheAchievments");
        dalAchievements objAchievements = new dalAchievements();
        public bllAchievements()
        {
        }
        public DataTable GetList()
        {
            DataTable dt = (DataTable)cache.GetData("cacheAchievments");
            if (dt == null)
            {
                dt = objAchievements.GetList();

                cache.Add("cacheAchievments", dt, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
            }

            return dt;

        }

        public DataTable GetByID(int achievementid)
        {
            return objAchievements.GetByID(achievementid);
        }


        public int Insert(string title, string description, string AttachmentName)
        {
            cache.Flush();
            return objAchievements.Insert(title, description, AttachmentName);
        }


        public int Update(int achievementid, string title, string description, string AttachmentName)
        {
            cache.Flush();
            return objAchievements.Update(achievementid, title, description, AttachmentName);
        }

        public int Delete(int achievementid)
        {
            cache.Flush();
            return objAchievements.Delete(achievementid);
        }
       
        
    }
}
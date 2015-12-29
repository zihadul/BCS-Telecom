using System.Data;
using DAL;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;
using System;

namespace BLL
{
    public class bllPhotograph
    {
        private static ICacheManager cache = CacheFactory.GetCacheManager("CachePhotograph");

        readonly daPhotograph _objPhotograph = new daPhotograph();
        public bllPhotograph()
        {
        }
        public DataTable GetList()
        {
            DataTable dt = (DataTable)cache.GetData("cachePhotograph");
            if (dt == null)
            {
                dt = _objPhotograph.GetList();

                cache.Add("cachePhotograph" , dt, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
            }

            return dt;

        }
       

        public DataTable GetById(int photographid)
        {
            return _objPhotograph.GetById(photographid);
        }

        public DataTable GetByEventId(int EventID)
        {
            return _objPhotograph.GetByEventId(EventID);
        }


        public int Insert(string filename, string description, int EventID)
        {
            cache.Flush();
            return _objPhotograph.Insert(filename, description, EventID);
        }

        public int Update(int photographid, string filename, string description, int  EventID)
        {
            cache.Flush();
            return _objPhotograph.Update(photographid, filename, description, EventID);
        }
        public int Delete(int photographid)
        {
            cache.Flush();
            return _objPhotograph.Delete(photographid);
        }

    }
   }
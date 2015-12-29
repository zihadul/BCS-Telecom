using System.Data;
using DAL;
using System;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;

namespace BLL
{
    public class bllHitCounter
    {
        private static ICacheManager cache = CacheFactory.GetCacheManager("CacheHitCounter");
        dalHitCounter objHitCounter = new dalHitCounter();
        public bllHitCounter()
        {
        }
        /// <summary>
        /// Gets total hits
        /// </summary>
        /// <returns>DataTable</returns>
        public long GetTotalHits()
        {
            DataTable dt = null;

            try
            {
                dt = (DataTable)cache.GetData("cacheHitCounter");
                if (dt == null)
                {
                    try
                    {
                        dt = objHitCounter.GetTotalHits();
                        cache.Add("cacheHitCounter", dt, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
                    }
                    catch
                    {
                    }
                }

                return Convert.ToInt64(dt.Rows[0]["TotalHit"]);
            }
            catch (Exception)
            {
                return 0;
            }
        }

        /// <summary>
        /// Increase hit
        /// </summary>
        public void IncreaseHit()
        {
            try
            {
                objHitCounter.IncreaseHit();
                cache.Flush();
            }
            catch (Exception)
            {
                throw;
            }
        }
       
        
    }
}
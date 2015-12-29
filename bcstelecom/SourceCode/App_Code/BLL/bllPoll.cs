using System.Data;
using DAL;
using System;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;

namespace BLL
{
    public class bllPoll
    {
        private static ICacheManager cache = CacheFactory.GetCacheManager("CachePoll");

        dalPoll objpoll = new dalPoll();
        public bllPoll()
        {
        }
        public DataTable GetList()
        {
           

            return objpoll.GetList();
        }

        public DataTable GetByID(int pollid)
        {
            return objpoll.GetByID(pollid);
        }

        public DataTable GetCurrent(int memberid)
        {

            DataTable dt = (DataTable)cache.GetData("cachePoll" +  memberid.ToString());
            if (dt == null)
            {
                dt = objpoll.GetCurrent(memberid);

                cache.Add("cachePoll" + memberid.ToString(), dt, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
            }

            return dt;

        }

        public DataTable GetOldResults()
        {
           

            return objpoll.GetOldResults();
        }

        public int Insert(string topics, DateTime expiredate, bool enableforvoting, bool onlyforec)
        {
            cache.Flush();
            return objpoll.Insert(topics, expiredate, enableforvoting, onlyforec);
        }


        public int Update(int pollid, string topics, DateTime expiredate, bool enableforvoting, bool onlyforec)
        {
            cache.Flush();
            return objpoll.Update(pollid, topics, expiredate, enableforvoting, onlyforec);
        }

        public int Delete(int pollid)
        {
            cache.Flush();
            return objpoll.Delete(pollid);
        }

        public DataTable GetPollOptions(int pollid)
        {
            return objpoll.GetPollOptions(pollid);
        }


        public int InsertPollOption(int pollid, string optiontext)
        {
            cache.Flush();
            return objpoll.InsertPollOption(pollid, optiontext);
        }

        public int UpdatePollOption(int optionid, string optiontext)
        {
            cache.Flush();
            return objpoll.UpdatePollOption(optionid, optiontext);
        }

        public int DeletePollOption(int optionid)
        {
            cache.Flush();
            return objpoll.DeletePollOption(optionid);
        }

        public int InsertPollResult(int pollid, int optionid, int memberid)
        {
            cache.Flush();
            return objpoll.InsertPollResult(pollid, optionid, memberid);
        }
    }
}
using System.Data;
using DAL;
using System;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;

namespace BLL
{
    public class bllMessage
    {
        private static ICacheManager cache = CacheFactory.GetCacheManager("CacheMessage");
        dalMessage objMessage = new dalMessage();
        public bllMessage()
        {
        }
        public DataTable GetList()
        {
            return objMessage.GetList();
        }

        public DataTable GetByID(int messageid)
        {
            return objMessage.GetByID(messageid);
        }

        public DataTable GetByMemberID(int memberid)
        {

            return objMessage.GetByMemberID(memberid);
        }

        public DataTable GetMessageForAllByMemberID(int memberid)
        {

            return objMessage.GetMessageForAllByMemberID(memberid);
        }


        public int Insert(string message, Nullable<DateTime> displaytill, string sentby, int senttoall)
        {
            cache.Flush();
            return objMessage.Insert(message, displaytill, sentby, senttoall);
        }

        public int Update(int messageid, string message, Nullable<DateTime> displaytill, string sentby, int senttoall)
        {
            cache.Flush();
            return objMessage.Update(messageid, message, displaytill, sentby, senttoall);
        }

        public int Delete(int messageid)
        {
            cache.Flush();
            return objMessage.Delete(messageid);
        }

        public DataTable GetRecepientByID(int messageid)
        {
            return objMessage.GetRecepientByID(messageid);
        }

        public int InsertRecepient(int messageid, int memberid)
        {
            return objMessage.InsertRecepient(messageid, memberid);
        }

    }
}
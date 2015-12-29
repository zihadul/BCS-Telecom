using DAL;
using System;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;

namespace BLL
{
    /// <summary>
    /// Summary description for bllEvent
    /// </summary>
    public class bllEvent
    {
     
        private dalEvent objEvent = new dalEvent();

        public DataTable Get()
        {
            try
            {
                DataTable dt = objEvent.Get();
                return dt;
            }
            catch (Exception)
            {
                throw;
            }
        }


        public DataTable GetAll()
        {
            try
            {
                DataTable dt = objEvent.GetAll();

                return dt;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataTable GetLatest()
        {
            try
            {
                DataTable dt = objEvent.GetLatest();
                return dt;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int Insert(string _Event_title, string summary, string _description, DateTime _Event_date, DateTime expiryDate)
        {
            try
            {
               
                return objEvent.Insert(_Event_title, summary, _description, _Event_date, expiryDate);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int Update(int _Event_id, string _Event_title, string summary, string _description, DateTime _Event_date, DateTime expiryDate)
        {
            try
            {
                return objEvent.Update(_Event_id, _Event_title, summary, _description, _Event_date, expiryDate);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public DataTable GetByID(int _Event_id)
        {
            try
            {
                DataTable dt = objEvent.GetByID(_Event_id);
                return dt;
            }
            catch (Exception)
            {
                throw;
            }
        }


        public int Delete(int _Event_id)
        {
            try
            {
               
                return objEvent.Delete(_Event_id);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
using DAL;
using System;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;

/// <summary>
/// Summary description for bllNews
/// </summary>

namespace BLL
{
    public class bllNews
    {
       
        private dalNews objNews = new dalNews();

        public DataTable Get()
        {
            try
            {
                DataTable dt = objNews.Get();
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
                DataTable dt = objNews.GetAll();
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
                DataTable dt = objNews.GetLatest();
                return dt;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataTable GetLatest3()
        {
            try
            {
                DataTable dt = objNews.GetLatest3();
                return dt;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int Insert(string _news_title, string summary, string _description, DateTime _expiryDate)
        {
            try
            {
               
                return objNews.Insert(_news_title, summary, _description, _expiryDate);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int Update(int _news_id, string _news_title, string summary, string _description, DateTime _expiryDate)
        {
            try
            {
               
                return objNews.Update(_news_id, _news_title, summary, _description, _expiryDate);
            }
            catch (Exception)
            {
                throw;
            }
        }


        public DataTable GetByID(int _news_id)
        {
            try
            {
                DataTable dt = objNews.GetByID(_news_id);
                return dt;
            }
            catch (Exception)
            {
                throw;
            }
        }


        public int Delete(int _news_id)
        {
            try
            {
               
                return objNews.Delete(_news_id);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
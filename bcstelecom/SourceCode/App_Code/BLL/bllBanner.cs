using System;
using System.Data;
using DAL;

/// <summary>
/// Summary description for bllProduct
/// </summary>

namespace BLL
{
    public class bllBanner
    {
        
        dalBanner objBanner = new dalBanner(); 

        #region Data Retrival and Manipulation Method(s)

        public DataTable GetList()
        {
            try
            {
                return objBanner.GetAllFeaturedBanner();
            }
            catch (Exception)
            {
                throw;
            }
        }
        public DataTable GetFeaturedBannerListByN(int rows)
        {
            try
            {
                return objBanner.GetFeaturedBannerListByN(rows);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataTable GetAllFeaturedBanner()
        {
            try
            {
                return objBanner.GetAllFeaturedBanner();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public DataTable GetBannerByN(int rows)
        {
            try
            {
                return objBanner.GetBannerByN(rows);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public DataTable GetByID(int banner_id)
        {
            try
            {
                return objBanner.GetByID(banner_id);
            }
            catch (Exception)
            {
                throw;
            }
        }
       
        public int Insert(string _banner_name, string _display_image_path, string _summery, string _banner_detail,
            bool visible)
        {
            try
            {
                return objBanner.Insert(_banner_name, _display_image_path, _summery, _banner_detail, visible);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int Update(int _service_id, string _banner_name, string _display_image_path, string _summery,
            string _banner_detail, bool visible)
        {
            try
            {
                return objBanner.Update(_service_id, _banner_name, _display_image_path, _summery, _banner_detail,
                    visible);
            }
            catch (Exception)
            {
                throw;
            }
        }

        public int Delete(int _banner_id)
        {
            try
            {
                return objBanner.Delete(_banner_id);
            }
            catch (Exception)
            {
                throw;
            }
        }

        #endregion
    }
}
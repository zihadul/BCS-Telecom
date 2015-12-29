using System.Data;
using DAL;

namespace BLL
{
    public class bllAdvertisement
    {
        readonly dalAdvertisement _objadvertisement = new dalAdvertisement();
        public bllAdvertisement()
        {
        }
        public DataTable GetList()
        {
            return _objadvertisement.GetList();
        }

        public DataTable GetById(int adid)
        {
            return _objadvertisement.GetById(adid);
        }

        public DataTable GetActive()
        {
            return _objadvertisement.GetActive();
        }

        public int Insert(string filename, string description, string link, string owner, bool active)
        {
            return _objadvertisement.Insert(filename, description, link, owner, active);
        }

        public int Update(int adid, string filename, string description, string link, string owner, bool active)
        {
            return _objadvertisement.Update(adid, filename, description, link, owner, active);
        }
        public int Delete(int adid)
        {
            return _objadvertisement.Delete(adid);
        }

    }
   }
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using DAL;

/// <summary>
/// Summary description for bllCategory
/// </summary>

namespace BLL
{
    public class bllCategory
    {
        private dalCategory objCategory = new dalCategory();

        public DataTable GetList()
        {
            return objCategory.GetList();
        }

        public DataTable GetByID(int ID)
        {
            return objCategory.GetByID(ID);
        }


        public int Insert(string Name)
        {
            return objCategory.Insert(Name);
        }

        public int Update(int ID, string Name)
        {
            return objCategory.Update(ID, Name);
        }

        public int Delete(int ID)
        {
            return objCategory.Delete(ID);
        }
    }
}
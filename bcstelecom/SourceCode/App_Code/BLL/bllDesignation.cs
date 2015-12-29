using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;
using System.Data;
/// <summary>
/// Summary description for bllDesignation
/// </summary>
/// 
namespace BLL
{
    public class bllDesignation
    {
        dalDesignation objDesignation = new dalDesignation();
        public bllDesignation()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public DataTable GetAll()
        {
            return objDesignation.GetAll();
        }

        public DataTable GetById(int id)
        {
            return objDesignation.GetById(id);
        }

        public DataTable DesignationByYear(string year)
        {
            return objDesignation.DesignationByYear(year);
        }

        public DataTable DesignationByYearId(int yearId)
        {
            return objDesignation.DesignationByYearId(yearId);
        }



        public int Insert(string title, int priority)
        {
            return objDesignation.Insert(title, priority);
        }

        public int Update(int id, string title, int priority)
        {
            return objDesignation.Update(id, title, priority);
        }

     

        public int Delete(int id)
        {
            return objDesignation.Delete(id);
        }
    }
}
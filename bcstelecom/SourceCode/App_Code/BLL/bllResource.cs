using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using DAL;

/// <summary>
/// Summary description for bllResource
/// </summary>
/// 
namespace BLL
{
    public class bllResource
    {
        dalResource objResource = new dalResource();
        public bllResource()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public int Insert(string title, string details)
        {
            return objResource.Insert(title, details);
        }
        public int Update(int id, string title, string details)
        {
            return objResource.Update(id, title, details);
        }
        public DataTable GetById(int id)
        {
            return objResource.GetById(id);
        }
        public DataTable GetAll()
        {
            return objResource.GetAll();
        }
        public int Delete(int id)
        {
            return objResource.Delete(id);
        }
    }
}
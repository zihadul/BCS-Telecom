using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;
using System.Data;

/// <summary>
/// Summary description for bllDocumentType
/// </summary>
/// 
namespace BLL
{
    public class bllDocumentType
    {
        dalDocumentType objDocument = new dalDocumentType();
        public bllDocumentType()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public int Insert(string title)
        {
            return objDocument.Insert(title);
        }
        public int Update(int id, string title)
        {
            return objDocument.Update(id, title);
        }
        public DataTable GetById(int id)
        {
            return objDocument.GetById(id);
        }
        public DataTable GetAll()
        {
            return objDocument.GetAll();
        }
        public int Delete(int id)
        {
            return objDocument.Delete(id);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for bllYear
/// </summary>
public class bllYear
{
	public bllYear()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    dalYear objYear = new dalYear();

    public DataTable GetAll()
    {
        return objYear.GetAll();
    }


    public DataTable GetById(int id)
    {
        return objYear.GetById(id);
    }


    public int Insert(string year, bool isCurrent)
    {
        return objYear.Insert(year, isCurrent);
    }


    public int Update(int id, string year, bool isCurrent)
    {
        return objYear.Update(id, year, isCurrent);
    }
    
   
    public int Delete(int id)
    {
        return objYear.Delete(id);
    }
}
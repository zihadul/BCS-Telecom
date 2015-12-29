using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DAL;
using System.Data;

/// <summary>
/// Summary description for bllHeader
/// </summary>
public class bllHeader
{
    dalHeader objHeader = new dalHeader();
	public bllHeader()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Insert(string imagePath, bool active)
    {
       return objHeader.Insert(imagePath, active);
    }
    public int Update(int id,string imagePath, bool active)
    {
        return objHeader.Update(id,imagePath, active);
    }
    public DataTable GetById(int id)
    {
        return objHeader.GetById(id);
    }
    public DataTable GetAll()
    {
        return objHeader.GetAll();
    }
    public DataTable GetActive()
    {
        return objHeader.GetActive();
    }
    public int Delete(int id)
    {
        return objHeader.Delete(id);
    }
}
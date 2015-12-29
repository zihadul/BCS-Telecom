using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;

/// <summary>
/// Summary description for dalYear
/// </summary>
public class dalYear
{
	public dalYear()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public DataTable GetAll()
    {
        try
        {
            ArrayList altParam = new ArrayList();
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_Year_GetAll", altParam);
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    public DataTable GetById(int id)
    {
        try
        {
            ArrayList altParam = new ArrayList();
            altParam.Add(new MySqlParameter("_Id", id));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("USP_Year_GetById", altParam);
        }
        catch (Exception ex)
        {
            throw;
        }
    }
  
    public int Insert(string year, bool isCurrent)
    {
        try
        {
            ArrayList altParam = new ArrayList();
            altParam.Add(new MySqlParameter("_Year", year));
            altParam.Add(new MySqlParameter("_IsCurrent", isCurrent));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_Year_Insert", altParam);
        }
        catch (Exception ex)
        {
            throw;
        }
    }

    public int Update(int id, string year, bool isCurrent)
    {
        try
        {
            ArrayList altParam = new ArrayList();
            altParam.Add(new MySqlParameter("_Id", id));
            altParam.Add(new MySqlParameter("_Year", year));
            altParam.Add(new MySqlParameter("_IsCurrent", isCurrent));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_Year_Update", altParam);
        }
        catch (Exception ex)
        {
            throw;
        }
    }
   
   
    public int Delete(int id)
    {
        try
        {
            ArrayList altParam = new ArrayList();
            altParam.Add(new MySqlParameter("_Id", id));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("USP_Year_Delete", altParam);
        }
        catch (Exception ex)
        {
            throw;
        }
    }
}
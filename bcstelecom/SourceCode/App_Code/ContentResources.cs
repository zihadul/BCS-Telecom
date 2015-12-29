using System.Data;
using VIT.DataLogicLayer;
using System.Collections;
using MySql.Data.MySqlClient;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;
using System;

public static class ContentResources
{

    private static ICacheManager cache = CacheFactory.GetCacheManager("CacheContent");
    public static void CreateConnection()
    {    
    }

    public static DataTable GetPageControls(string page)
    {
        DataTable dt = new DataTable();
        try
        {
            string sql = "SELECT resourcedescription, resourcevalue FROM Localization Where pagename='" + page + "'";
            //ds = dataAccess.ExecuteDataSet(sql);
            dt = DatabaseManager.GetInstance().GetDataTable(sql);
            
        }
        catch
        {
        }
        return (dt);
    }

    public static DataSet GetPages(string page)
    {
        DataSet ds = new DataSet();
        try
        {
            string sql = "SELECT Distinct pagename FROM Localization";
            ds = DatabaseManager.GetInstance().GetDataset(sql);//dataAccess.ExecuteDataSet(sql);
        }
        catch
        {
        }
        return (ds);
    }

    public static DataSet GetLanguages(string page)
    {
        DataSet ds = new DataSet();
        string sql = "SELECT Distinct culturename FROM Localization";
        try
        {
            //ds = dataAccess.ExecuteDataSet(sql);
            ds = DatabaseManager.GetInstance().GetDataset(sql);
        }
        catch
        {
        }
        return (ds);
    }

    public static DataSet GetResourceByCulture(string page, string culture)
    {
        DataSet ds = new DataSet();


        ds = (DataSet)cache.GetData("cachePage" + page);
        if (ds == null)
        {
            string sql = "SELECT resourcename, resourcevalue FROM Localization Where (virtualpath='" + page + "' ) and culturename='" + culture + "' and resourcename like '%.Text'";
            try
            {
                //ds = dataAccess.ExecuteDataSet(sql);
                ds = DatabaseManager.GetInstance().GetDataset(sql);
                cache.Add("cachePage" + page, ds, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
            }
            catch
            {
            }
        }

        return (ds);
    }

    public static DataSet GetLeftNavResourceByCulture(string culture)
    {
        DataSet ds = new DataSet();
        string sql = "SELECT distinct resourcename, resourcevalue FROM Localization Where (virtualpath='LeftNav.ascx') and culturename='" + culture + "' and resourcename like '%.Text'";
        try
        {
            //ds = dataAccess.ExecuteDataSet(sql);
            ds = DatabaseManager.GetInstance().GetDataset(sql);
        }
        catch
        {
        }
        return (ds);
    }

    public static string GetResourceByCultureKey(string page, string key)
    {
        string s = "";


        s = (string)cache.GetData("cachePage" + page + key);
        if (s == "" || s == null)
        {
            string sql = "SELECT resourcevalue FROM Localization Where pagename='" + page + "' and resourcedescription='" + key + "'";
            try
            {
                //s = dataAccess.ExecuteScalar(sql) as string;
                s = DatabaseManager.GetInstance().ExecuteScalar(sql) as string;
                cache.Add("cachePage" + page + key, s, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
            }
            catch
            {
            }
        }

        return (s);
    }

    public static bool UpdateResource(string page, string key, string keyValue)
    {

        bool bol = false;
        int value;
        //keyValue = keyValue.Replace("'", "''");

        try
        {
            cache.Flush();

            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_resourcevalue", keyValue));
            altParams.Add(new MySqlParameter("_pagename", page));
            altParams.Add(new MySqlParameter("_resourcedescription", key));

            DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_localization_update", altParams);



            bol = true;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return (bol);
    }
}

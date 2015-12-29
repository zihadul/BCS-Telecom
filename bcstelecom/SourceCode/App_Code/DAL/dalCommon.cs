using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;

namespace DAL
{
    
    public class dalCommon
    {
        public int ClearErrorLog(DateTime pTimeUtc)
        {
            ArrayList altParams = new ArrayList();
            DataTable dt;

            altParams.Add(new MySqlParameter("pTimeUtc", pTimeUtc));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("ELMAH_LogError_Clear", altParams);

        }
       
    } //class
} //namespace
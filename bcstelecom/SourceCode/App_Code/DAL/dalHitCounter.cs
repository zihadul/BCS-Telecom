using System;
using System.Data;
using System.Collections;
using VIT.DataLogicLayer;


namespace DAL
{
    public class dalHitCounter
    {
       

        public DataTable GetTotalHits()
        {
            ArrayList altParams = new ArrayList();

            try
            {

                return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_hitcounter_gettotalhits", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Increase hit
        /// </summary>
        public int IncreaseHit()
        {
            ArrayList altParams = new ArrayList();

            try
            {
                return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_hitcounter_increasehit", altParams);
            }
            catch (Exception)
            {
                throw;
            }
        }


        
    }
}
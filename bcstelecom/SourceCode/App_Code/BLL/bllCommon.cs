using System;
using DAL;

namespace BLL
{
    public class bllCommon 
    {
      
        dalCommon objCommon= new dalCommon(); 
       
        public int ClearErrorLog(DateTime pTimeUtc)
        {
            return objCommon.ClearErrorLog(pTimeUtc);
        }

    } // class
} // namespace
using System.Data;
using DAL;
using System;

namespace BLL
{
    public class bllExecutiveCommitee
    {
        dalExecutiveCommitee objExecutiveCommitee = new dalExecutiveCommitee();
        public bllExecutiveCommitee()
        {
        }
        public DataTable GetList()
        {
            return objExecutiveCommitee.GetList();
        }

        public DataTable GetByID(int id)
        {
            return objExecutiveCommitee.GetByID(id);
        }

        public DataTable GetByDesignationID(int id,string year)
        {
            return objExecutiveCommitee.GetByDesignationID(id,year);
        }

        public DataTable GetByDesignationAndYearId(int designationId, int yearId)
        {
            return objExecutiveCommitee.GetByDesignationAndYearId(designationId, yearId);
        }

        public DataTable GetByYear(int yearId)
        {
            return objExecutiveCommitee.GetByYear(yearId);
        }


        public DataTable GetYear()
        {
            return objExecutiveCommitee.GetYear();
        }


        public int Insert(int memberid, int designation, int yearId, string priority)
        {
            return objExecutiveCommitee.Insert(memberid, designation, yearId, priority);
        }


        public int Update(int id, int memberid, int designation, int yearId, string priority)
        {
            return objExecutiveCommitee.Update(id, memberid, designation, yearId, priority);
        }

        public int Delete(int id)
        {
            return objExecutiveCommitee.Delete(id);
        }
        public int DeleteByYear(string year)
        {
            return objExecutiveCommitee.DeleteByYear(year);
        }
       
        
    }
}
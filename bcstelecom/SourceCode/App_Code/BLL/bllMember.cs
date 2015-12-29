using System.Data;
using DAL;
using System;
using Microsoft.Practices.EnterpriseLibrary.Caching;
using Microsoft.Practices.EnterpriseLibrary.Caching.Expirations;

namespace BLL
{
    public class bllMember
    {
        private static ICacheManager cache = CacheFactory.GetCacheManager("CacheMember");
        private dalMembers objMember = new dalMembers();

        public bllMember()
        {
        }

        public DataTable GetList(int startIndex, int pazeSize)
        {

            return objMember.GetList(startIndex, pazeSize);
        }
        public DataTable GetAllUser()
        {
            DataTable dt = (DataTable)cache.GetData("cacheMember");
            if (dt == null)
            {
                dt = objMember.GetAllUser();

                cache.Add("cacheMember", dt, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
            }

            return dt;
        }

        public DataTable GetUserList()
        {
            return objMember.GetUserList();
        }


        public DataTable GetByID(int memberid)
        {

            DataTable dt = (DataTable)cache.GetData("cacheMember" + memberid.ToString());
            if (dt == null)
            {
                dt = objMember.GetByID(memberid);

                cache.Add("cacheMember" + memberid.ToString(), dt, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
            }

            return dt;

        }

        public DataTable GetByUserName(string username)
        {

            DataTable dt = (DataTable)cache.GetData("cacheMember" + username);
            if (dt == null)
            {
                dt = objMember.GetByUserName(username);

                cache.Add("cacheMember" + username, dt, CacheItemPriority.Normal, new RefreshCache(), new SlidingTime(TimeSpan.FromSeconds(60)));
            }

            return dt;
        }


        public DataTable GetExecutiveCommitteeByUserName(string username)
        {
            return objMember.GetExecutiveCommitteeByUserName(username);

           
        }


        public DataTable GetExecutiveCommitteeByMemberId(int  memberId)
        {
            return objMember.GetExecutiveCommitteeByMemberId(memberId);


        }

        public int Insert(string email, string username)
        {
            cache.Flush();
            return objMember.Insert(email, username);
           
        }

        public int Update(string membername, string photograph, string fathername, string mothername,
                          string dateofbirth,
                          string bloodgroup, string nid, string serviceidno, string spouse,
                          string email, string email2, string contactnooffice, string contactnoresidence,
                          string mobile1, string mobile2,
                          string presentaddress, string permanentaddress,
                          string homedistrict, string interest, string username,string banglaname,string designation, DateTime joindate, string bcsyear)
        {
            cache.Flush();
            return objMember.Update(membername, photograph, fathername, mothername, dateofbirth,
                                    bloodgroup, nid, serviceidno, spouse, email, email2, contactnooffice,
                                    contactnoresidence,
                                    mobile1, mobile2, presentaddress, permanentaddress, homedistrict, interest, username,banglaname,designation,joindate,bcsyear);

            
        }

        public int Delete(int memberid)
        {
            cache.Flush();
            return objMember.Delete(memberid);
        }

        public int Delete(string username)
        {
            cache.Flush();
            return objMember.Delete(username);
        }


        public DataTable GetChildsByUserName(string username)
        {
            return objMember.GetChildsByUserName(username);
        }

        public int InsertChild(int memberid, string childname, string dateofbirth, string Gendar)
        {
            return objMember.InsertChild(memberid, childname, dateofbirth, Gendar);
        }

        public int DeleteChilds(string username)
        {
            return objMember.DeleteChilds(username);
        }

        public DataTable GetEducationByUserName(string username)
        {
            return objMember.GetEducationByUserName(username);
        }

        public int InsertEducation(int memberid, string degreename, string institute, string passingyear, string subject)
        {
            return objMember.InsertEducation(memberid, degreename, institute, passingyear, subject);
        }

        public int DeleteEducation(string username)
        {
            return objMember.DeleteEducation(username);
        }


        public DataTable GetPostingPlacesByUserName(string username)
        {
            return objMember.GetPostingPlacesByUserName(username);
        }

        public int InsertPostingPlaces(int memberid, string designation, string nameoftheoffice,
                                       string dateofjoining, bool present, bool immediatepast)
        {
            return objMember.InsertPostingPlaces(memberid, designation, nameoftheoffice, dateofjoining, present,
                                                 immediatepast);
        }

        public int DeletePostingPlaces(string username)
        {
            return objMember.DeletePostingPlaces(username);
        }


        public DataTable GetPublicationsByUserName(string username)
        {
            return objMember.GetPublicationsByUserName(username);
        }

        public int InsertPublications(int memberid, string title, string journalname, string otherparticulars)
        {
            return objMember.InsertPublications(memberid, title, journalname, otherparticulars);
        }


        public int DeletePublications(string username)
        {
            return objMember.DeletePublications(username);
        }


    }
}
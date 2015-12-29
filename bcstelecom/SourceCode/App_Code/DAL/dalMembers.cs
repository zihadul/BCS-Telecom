using System;
using System.Data;
using System.Collections;
using MySql.Data.MySqlClient;
using VIT.DataLogicLayer;


namespace DAL
{
    public class dalMembers
    {

        public DataTable GetList(int startIndex, int pazeSize)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_startIndex", startIndex));
            altParams.Add(new MySqlParameter("_pageSize", pazeSize));
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_members_getall",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetAllUser()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_members_getallmember",
                                                                                         altParams);
            return dt;
        }

        public DataTable GetUserList()
        {
            ArrayList altParams = new ArrayList();
            DataTable dt = DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_Users_GetAll",
                                                                                         altParams);
            return dt;
        }


        

        public DataTable GetByID(int memberid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_memberid", memberid));
            return  DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_members_getbyid",
                                                                                         altParams);
        }

        public DataTable GetByUserName(string  username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("pusername", username));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_members_getbyusername",
                                                                                         altParams);
        }

        public DataTable GetExecutiveCommitteeByUserName(string username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("username", username));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_executivecommitee_getbyusername",
                                                                                         altParams);
        }



        public DataTable GetExecutiveCommitteeByMemberId(int memberid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_MemberId", memberid));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_executivecommitee_getbymemberid",
                                                                                         altParams);
        }

        public int Insert(string email, string username)
        {
            ArrayList altParams = new ArrayList();

            altParams.Add(new MySqlParameter("_email", email));
            altParams.Add(new MySqlParameter("_username", username));

           return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_insert",
                                                                                         altParams);
        }

        public int Update(string membername, string photograph, string fathername, string mothername, 
            string dateofbirth, string bloodgroup, 
            string nid, string serviceidno, string spouse, 
            string email,  string email2, string contactnooffice, string contactnoresidence,
            string mobile1, string mobile2,
            string presentaddress, string permanentaddress, 
            string homedistrict, string interest, string username , string banglaname,string designation, DateTime joindate, string bcsyear)
        {

            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_membername", membername));
            altParams.Add(new MySqlParameter("_photograph", photograph));
            altParams.Add(new MySqlParameter("_fathername", fathername));
            altParams.Add(new MySqlParameter("_mothername", mothername));
            altParams.Add(new MySqlParameter("_dateofbirth", dateofbirth));
            altParams.Add(new MySqlParameter("_bloodgroup", bloodgroup));
            altParams.Add(new MySqlParameter("_nid", nid));
            altParams.Add(new MySqlParameter("_serviceidno", serviceidno));
            altParams.Add(new MySqlParameter("_spouse", spouse));
            altParams.Add(new MySqlParameter("_email", email));
            altParams.Add(new MySqlParameter("_email2", email2));
            altParams.Add(new MySqlParameter("_contactnooffice", contactnooffice));
            altParams.Add(new MySqlParameter("_contactnoresidence", contactnoresidence));
            altParams.Add(new MySqlParameter("_mobile1", mobile1));
            altParams.Add(new MySqlParameter("_mobile2", mobile2));
            altParams.Add(new MySqlParameter("_presentaddress", presentaddress));
            altParams.Add(new MySqlParameter("_permanentaddress", permanentaddress));
            altParams.Add(new MySqlParameter("_homedistrict", homedistrict));
            altParams.Add(new MySqlParameter("_interest", interest));
            altParams.Add(new MySqlParameter("_username", username));

            altParams.Add(new MySqlParameter("_banglaname", banglaname));
            altParams.Add(new MySqlParameter("_designation", designation));
            altParams.Add(new MySqlParameter("_joindate", joindate));
            altParams.Add(new MySqlParameter("_bcsyear", bcsyear));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_update", altParams);
        }

        public int Delete(int memberid)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_memberid", memberid));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_delete", altParams);
        }

        public int Delete(string  username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_username", username));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_deletebyusername", altParams);
        }



        public DataTable GetChildsByUserName(string username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_username", username));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_members_child_getbyusername",
                                                                                         altParams);
        }

        public int InsertChild(int memberid, string childname, string dateofbirth, string Gendar)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_memberid", memberid));
            altParams.Add(new MySqlParameter("_childname", childname));
            altParams.Add(new MySqlParameter("_dateofbirth", dateofbirth));
            altParams.Add(new MySqlParameter("_gendar", Gendar));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_child_insert", altParams);
        }


        public int DeleteChilds(string username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_username", username));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_child_deletebyusername", altParams);
        }




        public DataTable GetPublicationsByUserName(string username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_username", username));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_member_publications_getbyusername",
                                                                                         altParams);
        }

        public int InsertPublications(int memberid, string title, string journalname, string otherparticulars)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_memberid", memberid));
            altParams.Add(new MySqlParameter("_title", title));
            altParams.Add(new MySqlParameter("_journalname", journalname));
            altParams.Add(new MySqlParameter("_otherparticulars", otherparticulars));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_member_publications_insert", altParams);
        }


        public int DeletePublications(string username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_username", username));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_member_publications_deletebyusername", altParams);
        }




        public DataTable GetEducationByUserName(string username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_username", username));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_members_qualification_getbyusername",
                                                                                         altParams);
        }


        public int InsertEducation(int memberid, string degreename, string institute, string passingyear, string subject)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_memberid", memberid));
            altParams.Add(new MySqlParameter("_degreename", degreename));
            altParams.Add(new MySqlParameter("_institute", institute));
            altParams.Add(new MySqlParameter("_passingyear", passingyear));
            altParams.Add(new MySqlParameter("_subject", subject));

            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_qualification_insert", altParams);
        }


        public int DeleteEducation(string username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_username", username));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_qualification_deletebyusername", altParams);
        }


         public DataTable GetPostingPlacesByUserName(string username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_username", username));
            return DatabaseManager.GetInstance().ExecuteStoredProcedureDataTable("usp_members_postingplaces_getbyusername",
                                                                                         altParams);
        }

         public int InsertPostingPlaces(int memberid, string designation, string nameoftheoffice, string dateofjoining, bool present, bool immediatepast)
         {
             ArrayList altParams = new ArrayList();
             altParams.Add(new MySqlParameter("_memberid", memberid));
             altParams.Add(new MySqlParameter("_designation", designation));
             altParams.Add(new MySqlParameter("_nameoftheoffice", nameoftheoffice));
             altParams.Add(new MySqlParameter("_dateofjoining", dateofjoining));
             altParams.Add(new MySqlParameter("_present", present));
             altParams.Add(new MySqlParameter("_immediatepast", immediatepast));

             return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_postingplaces_insert", altParams);
         }

        public int DeletePostingPlaces(string username)
        {
            ArrayList altParams = new ArrayList();
            altParams.Add(new MySqlParameter("_username", username));
            return DatabaseManager.GetInstance().ExecuteNonQueryStoredProcedure("usp_members_postingplaces_deletebyusername", altParams);
        }

        
       



    }
}
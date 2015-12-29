<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script RunAt="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        RegisterRouter(RouteTable.Routes);
    }


    private void RegisterRouter(RouteCollection Routes)
    {
        // Routuing Navigation/Annonumous.sitemap

        Routes.Ignore("{resource}.axd/{*pathInfo}");

        Routes.MapPageRoute("HomeRoute", "Home", "~/Default.aspx");

        Routes.MapPageRoute("ExecutiveCommitteeRoute", "ExecutiveCommittee",
                            "~/Pages/User/ExecutiveCommitee.aspx");

        Routes.MapPageRoute("MemberDirectoryRoute", "MemberDirectory",
                            "~/Pages/User/MemberDirectory.aspx");

        Routes.MapPageRoute("ResourcesRoute", "Resource",
                            "~/Pages/User/Resources.aspx");
        Routes.MapPageRoute("ResourceDetailsRoute", "ResourceDetails/{ID}",
                         "~/Pages/User/ResourceDetails.aspx");

        Routes.MapPageRoute("NewsRoute", "News",
                            "~/Pages/User/News.aspx");
        Routes.MapPageRoute("NewsDetailsRoute", "NewsDetails/{Id}",
                           "~/Pages/User/NewsDetails.aspx");
        
        
        Routes.MapPageRoute("EventRoute", "Event",
                            "~/Pages/User/EventCalendar.aspx");
        Routes.MapPageRoute("EventDetailsRoute", "EventDetails/{Id}",
                            "~/Pages/User/EventDetails.aspx");

        Routes.MapPageRoute("ContactUsRoute", "ContactUs",
                            "~/Pages/User/ContactUs.aspx");

        Routes.MapPageRoute("ViewProfileRoute", "ViewProfile/{Id}",
                            "~/Pages/User/Profile.aspx");


        // Routuing Navigation/Member.sitemap

        Routes.MapPageRoute("AdminHomeRoute", "Dashboard",
                            "~/Pages/AdminHome.aspx");
        
        Routes.MapPageRoute("MessageDetailsRoute", "MessageDetails/{Id}",
                           "~/Pages/MessageDetails.aspx");
        
        Routes.MapPageRoute("ProfileRoute", "Profile",
                            "~/Pages/Members/Profile.aspx");
        
        Routes.MapPageRoute("EditProfileRoute", "EditProfile",
                            "~/Pages/Members/EditProfile.aspx");

        Routes.MapPageRoute("PhotoGalleryRoute", "PhotoGallery",
                            "~/Pages/Members/PhotoGallery.aspx");
        
        Routes.MapPageRoute("PollRoute", "Poll",
                           "~/Pages/Members/Poll.aspx");
        
        Routes.MapPageRoute("PollResultsRoute", "PollResults",
                           "~/Pages/Members/PollResults.aspx");

        Routes.MapPageRoute("ChangePasswordRoute", "ChangePassword",
                          "~/Pages/Members/ChangePassword.aspx");



        // Routuing Navigation/Annonumous.sitemap

        Routes.MapPageRoute("PollAdministrationRoute", "PollAdministration",
                          "~/Pages/Members/PollAdministration.aspx");
        Routes.MapPageRoute("PostsRoute", "Posts",
                          "~/Pages/Members/Posts.aspx");


        // Routuing Navigation/Admin.sitemap


        Routes.MapPageRoute("AddEditContentRoute", "AddEditContent",
                          "~/Pages/Setup/AddEditContent.aspx");
        Routes.MapPageRoute("HeaderSetupRoute", "HeaderSetup",
                          "~/Pages/Admin/HeaderSetup.aspx");
        Routes.MapPageRoute("ResourceSetupRoute", "ResourceSetup",
                         "~/Pages/Admin/ResourceSetup.aspx");
        Routes.MapPageRoute("HeaderAddEditRout", "HeaderAddEdit",
                        "~/Pages/Admin/HeaderAddEdit.aspx");
        Routes.MapPageRoute("DesignationRoute", "Designation",
                         "~/Pages/Admin/Designation.aspx");

        Routes.MapPageRoute("DesignationAddEditRoute", "DesignationAddEdit",
                         "~/Pages/Admin/DesignationAddEdit.aspx");

        Routes.MapPageRoute("AdminExecutiveCommitteeRoute", "AdminExecutiveCommittee",
                            "~/Pages/Admin/ExecutiveCommittee.aspx");

        Routes.MapPageRoute("BannerListRoute", "BannerList",
                         "~/Pages/Admin/BannerList.aspx");
        Routes.MapPageRoute("UserAdministrationRoute", "UserAdministration",
                         "~/Pages/Admin/UserAdministration.aspx");
        Routes.MapPageRoute("AdvertisementAdministrationRoute", "AdvertisementAdministration",
                         "~/Pages/Setup/AdvertisementAdministration.aspx");
        Routes.MapPageRoute("MessageAdministrationRout", "MessageAdministration",
                         "~/Pages/Setup/MessageAdministration.aspx");
        Routes.MapPageRoute("CategoryRout", "Category",
                        "~/Pages/Setup/Category.aspx");
        Routes.MapPageRoute("PhotographAdministrationRout", "PhotographAdministration",
                        "~/Pages/Setup/PhotographAdministration.aspx");
        Routes.MapPageRoute("AddEditEventRout", "AddEditEvent",
                        "~/Pages/Setup/AddEditEvent.aspx");
        Routes.MapPageRoute("EventAdministrationRout", "EventAdministration",
                        "~/Pages/Setup/EventAdministration.aspx");
        Routes.MapPageRoute("AddEditNewsRout", "AddEditNews/{ID}",
                        "~/Pages/Setup/AddEditNews.aspx");
        Routes.MapPageRoute("NewsAdminRout", "NewsAdmin",
                        "~/Pages/Setup/NewsAdmin.aspx");
        Routes.MapPageRoute("ResourceSetupRout", "ResourceSetup",
                        "~/Pages/Admin/ResourceSetup.aspx");
        Routes.MapPageRoute("AddEditDocumentsRout", "AddEditDocuments",
                        "~/Pages/Setup/AddEditDocuments.aspx");
        Routes.MapPageRoute("DocumentsAdministrationRout", "DocumentsAdministration",
                        "~/Pages/Setup/DocumentsAdministration.aspx");
        Routes.MapPageRoute("AddEditPollRout", "SetupAddEditPoll",
                        "~/Pages/Setup/AddEditPoll.aspx");
        Routes.MapPageRoute("PollAdministrationRout", "SetupPollAdministration",
                        "~/Pages/Setup/PollAdministration.aspx");


        // Routuing Navigation/Support.sitemap

        Routes.MapPageRoute("DashboardRout", "Dashboard",
                        "~/Pages/Admin/Dashboard.aspx");
        Routes.MapPageRoute("ErrorLogRout", "ErrorLog",
                        "~/Pages/Support/ErrorLog.aspx");
        Routes.MapPageRoute("ClearErrorLogRout", "ClearErrorLog",
                       "~/Pages/Support/ClearErrorLog.aspx");


        // Routuing Navigation/Other.sitemap

        Routes.MapPageRoute("ForgotPasswordRout", "ForgotPassword",
                        "~/ForgotPassword.aspx");
        Routes.MapPageRoute("AddEditUserRout", "AddEditUser",
                        "~/Pages/Admin/AddEditUser.aspx");
        Routes.MapPageRoute("ResetPasswordRout", "ResetPassword",
                      "~/Pages/Admin/ResetPassword.aspx");
        Routes.MapPageRoute("AdminEditProfileRout", "AdminEditProfile",
                       "~/Pages/Admin/EditProfile.aspx");
        Routes.MapPageRoute("AddEditCategoryRout", "AddEditCategory",
                       "~/Pages/Setup/AddEditCategory.aspx");
        Routes.MapPageRoute("LoginRout", "Login",
                       "~/Login.aspx");
        Routes.MapPageRoute("NewsDetailsRout", "NewsDetails",
                       "~/Pages/User/NewsDetails.aspx");
        Routes.MapPageRoute("EventsRoute", "Events",
                           "~/Pages/User/Events.aspx");
        Routes.MapPageRoute("EventDetailsRout", "EventDetails",
                       "~/Pages/User/EventDetails.aspx");
        Routes.MapPageRoute("UserProfileRout", "UserProfile",
                       "~/Pages/User/Profile.aspx");
        Routes.MapPageRoute("ResourceAddEditRout", "ResourceAddEdit",
                       "~/Pages/Admin/ResourceAddEdit.aspx");


        Routes.MapPageRoute("AddEditExecutiveCommitteeRoute", "AddEditExecutiveCommittee",
             "~/Pages/Admin/ExecutiveCommitteeAddEdit.aspx");


        Routes.MapPageRoute("AddEditBannerRout", "AddEditBanner",
                       "~/Pages/Admin/AddEditBanner.aspx");

        Routes.MapPageRoute("AddEditAdvertisementRout", "AddEditAdvertisement",
                       "~/Pages/Setup/AddEditAdvertisement.aspx");

        Routes.MapPageRoute("AddEditMessageRout", "AddEditMessage",
                       "~/Pages/Setup/AddEditMessage.aspx");


    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        Exception exLastException = Server.GetLastError();
        VIT.ExceptionManager.ExceptionController.HandleException(exLastException.Message);
    }

    void Session_Start(object sender, EventArgs e)
    {
        try
        {
            HitCounter.IncreaseHit();
        }
        catch (Exception)
        {
        }

    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>

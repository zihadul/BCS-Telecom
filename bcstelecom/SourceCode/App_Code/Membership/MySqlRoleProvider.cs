/*
 * MySqlRoleProvider class
 * Author : Kris Booghmans
 * Company: PXLStudio (www.pxlstudio.be)
 * Version: 1.0
 * Date   : 06/09/2006
 * Note   : Based on AccessProviders by Microsoft corporation.
 */

namespace MySqlProviders {
    using System;
    using System.Web;
    using System.Web.Configuration;
    using System.Web.Security;
    using System.Security.Principal;
    using System.Security.Permissions;
    using System.Globalization;
    using System.Runtime.Serialization;
    using System.Collections;
    using System.Collections.Specialized;
    using System.Data;
    using MySql.Data.MySqlClient;
    using MySql.Data.Types;
    using System.Text;
    using System.Configuration.Provider;
    using System.Configuration;
    using System.Web.DataAccess;
    using System.Web.Hosting;
    using System.Web.Util;

    public class MySqlRoleProvider : RoleProvider {
        private string _AppName;
        private string _ConnectionStringName;
        private int _ApplicationId = 0;
        private DateTime _ApplicationIDCacheDate;

        ////////////////////////////////////////////////////////////
        // Public properties

        public override void Initialize(string name, NameValueCollection config) {

            if (config == null)
                throw new ArgumentNullException("config");
            if (String.IsNullOrEmpty(name))
                name = "MySQLRoleProvider";
            if (string.IsNullOrEmpty(config["description"])) {
                config.Remove("description");
                config.Add("description", "PXLStudio MySQL Role Provider");
            }
            base.Initialize(name, config);

            _ConnectionStringName = config["connectionStringName"];
            if (_ConnectionStringName == null || _ConnectionStringName.Length < 1)
                throw new ProviderException("Connection name not specified");

            string s_conn = MySqlConnectionHelper.GetConnectionString(_ConnectionStringName, true);
            if (s_conn == null || s_conn.Length < 1) {
                throw new ProviderException("Connection string not found: "+_ConnectionStringName);
            }

            if (!MySqlConnectionHelper.IsValidConnectionString(s_conn)) {
                throw new ProviderException("Provider invalid connectionString: " + _ConnectionStringName + ": " + s_conn);
            }

            _AppName = config["applicationName"];
            if (string.IsNullOrEmpty(_AppName))
                _AppName = SecUtility.GetDefaultAppName();

            if (_AppName.Length > 255) {
                throw new ProviderException("Provider application name too long, max is 255.");
            }

            config.Remove("connectionStringName");
            config.Remove("applicationName");
            config.Remove("description");
            if (config.Count > 0) {
                string attribUnrecognized = config.GetKey(0);
                if (!String.IsNullOrEmpty(attribUnrecognized))
                    throw new ProviderException("Provider unrecognized attribute: "+attribUnrecognized);
            }
        }


        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override bool IsUserInRole(string username, string roleName) {
            SecUtility.CheckParameter(ref username, true, false, true, 255, "username");
            if (username.Length < 1)
                return false;
            SecUtility.CheckParameter(ref roleName, true, true, true, 255, "roleName");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            try {
                try {
                    int appId  = GetApplicationId(holder);
                    string userId = MySqlConnectionHelper.GetUserID(connection, appId, username, false);
                    int roleId = GetRoleId(connection, appId, roleName);

                    MySqlCommand command;

                    if (userId == "0") {
                        return false;
                    }

                    if (roleId == 0) {
                        return false;
                    }

                    command = new MySqlCommand("SELECT UserId FROM aspnet_UsersInRoles WHERE UserId = ?UserId AND RoleId = ?RoleId", connection);
                    command.Parameters.Add(new MySqlParameter("?UserId", userId));
                    command.Parameters.Add(new MySqlParameter("?RoleId", roleId));

                    object result = command.ExecuteScalar();

                    if (result == null || result.ToString() != userId)
                        return false;
                    return true;
                }
                catch (Exception e) {
                    throw e;
                }
                finally {
                    holder.Close();
                }
            }
            catch {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override string[] GetRolesForUser(string username) {
            SecUtility.CheckParameter(ref username, true, false, true, 255, "username");
            if (username.Length < 1)
                return new string[0];

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            MySqlDataReader reader = null;

            try {
                try {
                    int appId = GetApplicationId(holder);
                    string userId = MySqlConnectionHelper.GetUserID(connection, appId, username, false);

                    if (userId == "0") {
                        return new string[0];
                    }

                    MySqlCommand command;
                    StringCollection sc = new StringCollection();
                    String[] strReturn;

                    string  s = "SELECT RoleName FROM aspnet_UsersInRoles ur, aspnet_Roles r " +
                                                "WHERE ur.UserId = '" + userId +  "' AND ur.RoleId = r.RoleId " +
                                                "ORDER BY RoleName";

                    command = new MySqlCommand("SELECT RoleName FROM aspnet_UsersInRoles ur, aspnet_Roles r " +
                                                "WHERE ur.UserId = '" + userId +  "' AND ur.RoleId = r.RoleId " +
                                                "ORDER BY RoleName",
                                               connection);
                    //command.Parameters.Add(new MySqlParameter("?UserId", userId));
                    reader = (MySqlDataReader) command.ExecuteReader(CommandBehavior.SequentialAccess);
                    while (reader.Read())
                        sc.Add(reader.GetString(0));
                    strReturn = new String[sc.Count];
                    sc.CopyTo(strReturn, 0);
                    return strReturn;
                }
                catch (Exception e) {
                    throw e;
                }
                finally {
                    if (reader != null)
                        reader.Close();
                    holder.Close();
                }
            }
            catch {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override void CreateRole(string roleName) {
            SecUtility.CheckParameter(ref roleName, true, true, true, 255, "roleName");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            bool fBeginTransCalled = false;
            try {
                try {
                    int appId = GetApplicationId(holder);
                    MySqlCommand command;
                    int roleId = GetRoleId(connection, appId, roleName);

                    if (roleId != 0) {
                        throw new ProviderException("Provider role already exists: "+ roleName);
                    }

                    command = new MySqlCommand("START TRANSACTION", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = true;
                    command = new MySqlCommand("INSERT INTO aspnet_Roles (ApplicationId,  RoleName, LoweredRoleName) VALUES (?AppId, ?RName, ?LRoleName)", connection);
                    command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    command.Parameters.Add(new MySqlParameter("?RName", roleName));
                    command.Parameters.Add(new MySqlParameter("?LRoleName",  roleName.ToLower()));
                    int returnValue = command.ExecuteNonQuery();
                    command = new MySqlCommand("COMMIT", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = false;

                    if (returnValue == 1)
                        return;
                    throw new ProviderException("Unknown provider failure");
                }
                catch (Exception e) {
                    if (fBeginTransCalled) {
                        try {
                            MySqlCommand command = new MySqlCommand("ROLLBACK", connection);
                            command.ExecuteNonQuery();
                        }
                        catch { }
                    }
                    throw e;
                }
                finally {
                    holder.Close();
                }
            }
            catch {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole) {
            SecUtility.CheckParameter(ref roleName, true, true, true, 255, "roleName");
            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            bool fBeginTransCalled = false;
            try {
                try {
                    int appId = GetApplicationId(holder);
                    MySqlCommand command;
                    int roleId = GetRoleId(connection, appId, roleName);

                    if (roleId == 0) {
                        return false;
                    }

                    if (throwOnPopulatedRole) {
                        command = new MySqlCommand("SELECT COUNT(*) " +
                                                   "FROM aspnet_UsersInRoles ur, aspnet_Users u " +
                                                   "WHERE ur.RoleId = ?RoleId AND ur.UserId = u.UserId",
                                            connection);

                        command.Parameters.Add(new MySqlParameter("?RoleId", roleId));
                        int num = Convert.ToInt32(command.ExecuteScalar());
                        if (num != 0)
                            return false;
                    }

                    command = new MySqlCommand("START TRANSACTION", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = true;
                    command = new MySqlCommand("DELETE FROM aspnet_Roles WHERE RoleId = ?RoleId", connection);
                    command.Parameters.Add(new MySqlParameter("?RoleId", roleId));
                    int returnValue = command.ExecuteNonQuery();
                    command = new MySqlCommand("COMMIT", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = false;

                    return (returnValue == 1);
                }
                catch (Exception e) {
                    if (fBeginTransCalled) {
                        try {
                            MySqlCommand command = new MySqlCommand("ROLLBACK", connection);
                            command.ExecuteNonQuery();
                        }
                        catch { }
                    }
                    throw e;
                }
                finally {
                    holder.Close();
                }
            }
            catch {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override bool RoleExists(string roleName) {
            try {
                SecUtility.CheckParameter(ref roleName, true, true, true, 255, "roleName");
            }
            catch {
                return false;
            }
            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            
            try {
                int appId = GetApplicationId(holder);
                int roleId = GetRoleId(connection, appId, roleName);

                return (roleId != 0);
            }
            catch (Exception e) {
                throw e;
            }
            finally {
                try {
                    holder.Close();
                } catch (Exception e) {
                    throw e;
                }
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override void AddUsersToRoles(string[] usernames, string[] roleNames) {
            SecUtility.CheckArrayParameter(ref roleNames, true, true, true, 255, "roleNames");
            SecUtility.CheckArrayParameter(ref usernames, true, true, true, 255, "usernames");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            bool fBeginTransCalled = false;
            try {
                try {
                    int appId = GetApplicationId(holder);
                    string[] userIds = new string[usernames.Length];
                    int[] roleIds = new int[roleNames.Length];

                    MySqlCommand command;

                    for (int iterR = 0; iterR < roleNames.Length; iterR++) {
                        roleIds[iterR] = GetRoleId(connection, appId, roleNames[iterR]);
                        if (roleIds[iterR] == 0) {
                            throw new ProviderException("Provider role not found: "+roleNames[iterR]);
                        }
                    }
                    for (int iterU = 0; iterU < usernames.Length; iterU++) {
                        userIds[iterU] = MySqlConnectionHelper.GetUserID(connection, appId, usernames[iterU], false);
                    }
                    command = new MySqlCommand("START TRANSACTION", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = true;

                    for (int iterU = 0; iterU < usernames.Length; iterU++) {
                        if (userIds[iterU] == "0")
                            continue;
                        for (int iterR = 0; iterR < roleNames.Length; iterR++) {
                            command = new MySqlCommand("SELECT UserId FROM aspnet_UsersInRoles WHERE UserId = ?UserId AND RoleId = ?RoleId",
                                                       connection);
                            command.Parameters.Add(new MySqlParameter("?UserId", userIds[iterU]));
                            command.Parameters.Add(new MySqlParameter("?RoleId", roleIds[iterR]));

                            object result = command.ExecuteScalar();
                            if (result != null && result.ToString() == userIds[iterU]) { // Exists!

                                throw new ProviderException("The user " + usernames[iterU] + " is already in role " + roleNames[iterR]);
                            }
                        }
                    }

                    for (int iterU = 0; iterU < usernames.Length; iterU++) {
                        if (userIds[iterU] == "0") {
                            userIds[iterU] = MySqlConnectionHelper.GetUserID(connection, appId, usernames[iterU], true);
                        }
                        if (userIds[iterU] == "0") {
                            throw new ProviderException("User not found: "+usernames[iterU]);
                        }
                    }
                    for (int iterU = 0; iterU < usernames.Length; iterU++) {
                        for (int iterR = 0; iterR < roleNames.Length; iterR++) {
                            command = new MySqlCommand("INSERT INTO aspnet_UsersInRoles (UserId, RoleId) VALUES(?UserId, ?RoleId)",
                                                        connection);
                            command.Parameters.Add(new MySqlParameter("?UserId", userIds[iterU]));
                            command.Parameters.Add(new MySqlParameter("?RoleId", roleIds[iterR]));

                            if (command.ExecuteNonQuery() != 1) {
                                throw new ProviderException("Unknown provider failure");
                            }
                        }
                    }
                    command = new MySqlCommand("COMMIT", connection);
                    command.ExecuteNonQuery();
                }
                catch (Exception e) {
                    try {
                        if (fBeginTransCalled) {
                            MySqlCommand command = new MySqlCommand("ROLLBACK", connection);
                            command.ExecuteNonQuery();
                        }
                    }
                    catch { }
                    throw e;
                }
                finally {
                    holder.Close();
                }
            }
            catch {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames) {
            SecUtility.CheckArrayParameter(ref roleNames, true, true, true, 255, "roleNames");
            SecUtility.CheckArrayParameter(ref usernames, true, true, true, 255, "usernames");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            bool fBeginTransCalled = false;
            try {
                try {
                    int appId = GetApplicationId(holder);
                    string[] userIds = new string[usernames.Length];
                    int[] roleIds = new int[roleNames.Length];

                    MySqlCommand command;
                    command = new MySqlCommand("START TRANSACTION", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = true;


                    for (int iterU = 0; iterU < usernames.Length; iterU++) {
                        userIds[iterU] = MySqlConnectionHelper.GetUserID(connection, appId, usernames[iterU], false);
                        if (userIds[iterU] == "0") {
                            throw new ProviderException("User not found: "+usernames[iterU]);
                        }
                    }
                    for (int iterR = 0; iterR < roleNames.Length; iterR++) {
                        roleIds[iterR] = GetRoleId(connection, appId, roleNames[iterR]);
                        if (roleIds[iterR] == 0) {
                            throw new ProviderException("Role not found: "+roleNames[iterR]);
                        }
                    }
                    for (int iterU = 0; iterU < usernames.Length; iterU++) {
                        for (int iterR = 0; iterR < roleNames.Length; iterR++) {
                            command = new MySqlCommand("SELECT UserId FROM aspnet_UsersInRoles WHERE UserId = ?UserId AND RoleId = ?RoleId",
                                                        connection);
                            command.Parameters.Add(new MySqlParameter("?UserId", userIds[iterU]));
                            command.Parameters.Add(new MySqlParameter("?RoleId", roleIds[iterR]));

                            object result = command.ExecuteScalar();
                            if (result == null || result.ToString() != userIds[iterU]) { // doesn't exist!

                                throw new ProviderException("The user " + usernames[iterU] + " is already not in role " + roleNames[iterR]);
                            }
                        }
                    }

                    for (int iterU = 0; iterU < usernames.Length; iterU++) {
                        for (int iterR = 0; iterR < roleNames.Length; iterR++) {
                            command = new MySqlCommand("DELETE FROM aspnet_UsersInRoles WHERE UserId = ?UserId AND RoleId = ?RoleId",
                                                        connection);
                            command.Parameters.Add(new MySqlParameter("?UserId", userIds[iterU]));
                            command.Parameters.Add(new MySqlParameter("?RoleId", roleIds[iterR]));
                            if (command.ExecuteNonQuery() != 1) {
                                throw new ProviderException("Unknown failure");
                            }
                        }
                    }
                    command = new MySqlCommand("COMMIT", connection);
                    command.ExecuteNonQuery();
                }
                catch (Exception e) {
                    try {
                        if (fBeginTransCalled) {
                            MySqlCommand command = new MySqlCommand("ROLLBACK", connection);
                            command.ExecuteNonQuery();
                        }
                    }
                    catch { }
                    throw e;
                }
                finally {
                    holder.Close();
                }
            }
            catch {
                throw;
            }
        }


        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override string[] GetUsersInRole(string roleName) {
            SecUtility.CheckParameter(ref roleName, true, true, true, 255, "roleName");
            StringCollection sc = new StringCollection();
            String[] strReturn;
            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlDataReader reader = null;
            MySqlConnection connection = holder.Connection;
            try {
                try {
                    int appId = GetApplicationId(holder);
                    int roleId = GetRoleId(connection, appId, roleName);

                    MySqlCommand command;

                    if (roleId == 0) {
                        throw new ProviderException("Role not found: "+roleName);
                    }

                    command = new MySqlCommand("SELECT UserName " +
                                               "FROM aspnet_UsersInRoles ur, aspnet_Users u " +
                                               "WHERE ur.RoleId = ?RoleId AND ur.UserId = u.UserId " +
                                               "ORDER BY UserName",
                                            connection);

                    command.Parameters.Add(new MySqlParameter("?RoleId", roleId));
                    reader = (MySqlDataReader)command.ExecuteReader(CommandBehavior.SequentialAccess);
                    while (reader.Read())
                        sc.Add(reader.GetString(0));

                }
                catch (Exception e) {
                    throw e;
                }
                finally {
                    if (reader != null)
                        reader.Close();
                    holder.Close();
                }
            }
            catch {
                throw;
            }

            strReturn = new String[sc.Count];
            sc.CopyTo(strReturn, 0);
            return strReturn;
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        public override string[] FindUsersInRole(string roleName, string usernameToMatch) {
            SecUtility.CheckParameter(ref roleName, true, true, true, 255, "roleName");
            SecUtility.CheckParameter(ref usernameToMatch, true, true, false, 255, "usernameToMatch");

            StringCollection sc = new StringCollection();

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlDataReader reader = null;
            MySqlConnection connection = holder.Connection;
            try {
                try {
                    int appId = GetApplicationId(holder);
                    int roleId = GetRoleId(connection, appId, roleName);

                    MySqlCommand command;

                    if (roleId == 0) {
                        throw new ProviderException("Role not found "+roleName);
                    }

                    command = new MySqlCommand("SELECT UserName " +
                                               "FROM aspnet_UsersInRoles ur, aspnet_Users u " +
                                               "WHERE ur.RoleId = ?RoleId AND ur.UserId = u.UserId AND u.UserName LIKE ?UserNameToMatch " +
                                               "ORDER BY UserName", connection);

                    command.Parameters.Add(new MySqlParameter("?RoleId", roleId));
                    command.Parameters.Add(new MySqlParameter("?UserNameToMatch", usernameToMatch));
                    reader = (MySqlDataReader)command.ExecuteReader(CommandBehavior.SequentialAccess);
                    while (reader.Read())
                        sc.Add((string)reader.GetString(0));
                }
                catch (Exception e) {
                    throw e;
                }
                finally {
                    if (reader != null)
                        reader.Close();
                    holder.Close();
                }
            }
            catch {
                throw;
            }
            string[] allUsers = new string[sc.Count];
            sc.CopyTo(allUsers, 0);
            return allUsers;
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override string[] GetAllRoles() {
            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            MySqlDataReader reader = null;
            try {
                try {
                    int appId = GetApplicationId(holder);
                    MySqlCommand command;
                    StringCollection sc = new StringCollection();
                    String[] strReturn = null;

                    command = new MySqlCommand("SELECT RoleName FROM aspnet_Roles WHERE ApplicationId = ?AppId ORDER BY RoleName", connection);
                    command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    reader = (MySqlDataReader)command.ExecuteReader(CommandBehavior.SequentialAccess);
                    while (reader.Read())
                        sc.Add(reader.GetString(0));
                    strReturn = new String[sc.Count];
                    sc.CopyTo(strReturn, 0);
                    return strReturn;
                }
                catch (Exception e) {
                    throw e;
                }
                finally {
                    if (reader != null)
                        reader.Close();
                    holder.Close();
                }
            }
            catch {
                throw;
            }
        }

        public override string ApplicationName {
            get { return _AppName; }
            set {
                if (_AppName != value) {
                    _ApplicationId = 0;
                    _AppName = value;
                }
            }
        }
        /////////////////////////////////////////////////////////////////////////////
        private int GetRoleId(MySqlConnection connection, int appId, string roleName) {
            int result = 0;
            MySqlCommand command;

            command = new MySqlCommand("SELECT RoleId FROM aspnet_Roles WHERE ApplicationId = ?AppId AND RoleName = ?RoleName",
                                       connection);
            command.Parameters.Add(new MySqlParameter("?AppId", appId));
            command.Parameters.Add(new MySqlParameter("?RoleName", roleName));
            result = Convert.ToInt32(command.ExecuteScalar());
            
            if (result==0)
            {
                return 0;
            }
            else {
                return Convert.ToInt32(result.ToString());
            }
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////

        private int GetApplicationId(MySqlConnectionHolder holder) {
            if (_ApplicationId != 0 && holder.CreateDate < _ApplicationIDCacheDate) // Already cached?
                return _ApplicationId;
            string appName = _AppName;
            if (appName.Length > 255)
                appName = appName.Substring(0, 255);
            _ApplicationId = MySqlConnectionHelper.GetApplicationID(holder.Connection, appName, true);
            _ApplicationIDCacheDate = DateTime.Now;
            if (_ApplicationId != 0)
                return _ApplicationId;
            throw new ProviderException("Provider Error");
        }

    }

}

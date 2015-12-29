namespace MySqlProviders {

    using System;
    using System.Web;
    using System.Globalization;
    using System.Collections;
    using System.Collections.Specialized;
    using System.Data;
    using System.IO;
    using System.Threading;
    using System.Configuration;
    using System.Web.Util;
    using System.Security.Permissions;
    using System.Web.Hosting;
    using System.Security.Principal;
    using System.Security;
    using System.Diagnostics;
    using System.Web.Configuration;

    using MySql.Data.MySqlClient;

    internal static class MySqlConnectionHelper {

        static private Hashtable _Connections = Hashtable.Synchronized(new Hashtable(StringComparer.InvariantCultureIgnoreCase));

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        public static bool IsValidConnectionString(string s_conn)
        {
            MySqlConnection conn = null;
            try
            {
                conn = new MySqlConnection(s_conn);
                conn.Open();
            }
            catch
            {
                return false;
            }
            finally
            {
                if (conn != null)
                    conn.Close();
            }
            return true;
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        public static string GetConnectionString(string connectionStringName, bool appLevel)
        {
            ConnectionStringSettings connObj = ConfigurationManager.ConnectionStrings[connectionStringName];
            if (connObj != null)
            {
                return connObj.ConnectionString;
            }

            return null;
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        internal static int GetApplicationID(MySqlConnection connection, string applicationName) {
            return GetApplicationID(connection, applicationName, false);
        }

        internal static int GetApplicationID(MySqlConnection connection, string applicationName, bool createIfNeeded) {
            MySqlCommand lookupCommand = new MySqlCommand("SELECT ApplicationId FROM aspnet_Applications WHERE ApplicationName = '" + applicationName + "'", connection);
            //lookupCommand.Parameters.Add(new MySqlParameter("?AppName", applicationName));

            object lookupResult = lookupCommand.ExecuteScalar();
            if ((lookupResult != null) && (lookupResult is int)) {
                return (int)lookupResult;
            }

            if (createIfNeeded) {
                MySqlCommand createCommand = new MySqlCommand("INSERT INTO aspnet_Applications (ApplicationName) VALUES (" + applicationName + ")",
                    connection);
                //createCommand.Parameters.Add(new MySqlParameter("?AppName", applicationName));

                if (createCommand.ExecuteNonQuery() != 0) {
                    lookupResult = lookupCommand.ExecuteScalar();
                    if ((lookupResult != null) && (lookupResult is int)) {
                        return (int)lookupResult;
                    }
                }
            }

            return 0;
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        internal static MySqlConnectionHolder GetConnection(string connectionStringName, bool revertImpersonation) {
            connectionStringName = connectionStringName.Trim();

            /////////////////////////////////////////////////
            // Lock the connections table, and see if it already exists
            lock (_Connections) {
                MySqlConnectionHolder holder = (MySqlConnectionHolder)_Connections[connectionStringName];
                if (holder != null) {
                    _Connections.Remove(connectionStringName);
                    holder = null;
                }
                if (holder == null) {
                    string s_conn = GetConnectionString(connectionStringName, true);                    
                    if (IsValidConnectionString(s_conn)){
                        MySqlConnection conn = new MySqlConnection(s_conn);
                        _Connections.Add(connectionStringName, new MySqlConnectionHolder(conn));
                        holder = (MySqlConnectionHolder)_Connections[connectionStringName];
                    }
                }
                if (holder == null) {
                    return null;
                }
                holder.Open(null);
                return holder;
            }
        }

        internal static int GetPathID(MySqlConnection connection, int applicationID, string path) {
            return GetPathID(connection, applicationID, path, false);
        }

        internal static int GetPathID(MySqlConnection connection, int applicationID, string path, bool createIfNeeded) {
            MySqlCommand lookupCommand = new MySqlCommand("SELECT PathId FROM aspnet_Paths WHERE ApplicationId = ?AppId AND Path = ?Path",
                connection);
            lookupCommand.Parameters.Add(new MySqlParameter("?AppId", applicationID));
            lookupCommand.Parameters.Add(new MySqlParameter("?Path", path));

            object lookupResult = lookupCommand.ExecuteScalar();
            if ((lookupResult != null) && (lookupResult is int)) {
                return (int)lookupResult;
            }

            if (createIfNeeded) {
                MySqlCommand createCommand = new MySqlCommand("INSERT INTO aspnet_Paths (ApplicationId, Path) VALUES (?AppID, ?Path)",
                    connection);
                createCommand.Parameters.Add(new MySqlParameter("?AppID", applicationID));
                createCommand.Parameters.Add(new MySqlParameter("?Path", path));

                if (createCommand.ExecuteNonQuery() != 0) {
                    lookupResult = lookupCommand.ExecuteScalar();
                    if ((lookupResult != null) && (lookupResult is int)) {
                        return (int)lookupResult;
                    }
                }
            }

            return 0;
        }

        internal static string GetUserID(MySqlConnection connection, int applicationID, string userName)
        {
            return GetUserID(connection, applicationID, userName, false, false, DateTime.Now);
        }

        internal static string GetUserID(MySqlConnection connection, int applicationID, string userName, bool createIfNeeded)
        {
            return GetUserID(connection, applicationID, userName, createIfNeeded, false, DateTime.Now);
        }

        internal static string GetUserID(MySqlConnection connection, int applicationID, string userName, bool createIfNeeded, bool newUserIsAnonymous)
        {
            return GetUserID(connection, applicationID, userName, createIfNeeded, newUserIsAnonymous, DateTime.Now);
        }

        internal static string GetUserID(MySqlConnection connection, int applicationID, string userName, bool createIfNeeded, bool newUserIsAnonymous, DateTime lastActivityDate)
        {
            if (applicationID == 0 || userName == null || userName.Length < 1) // Application doesn't exist or user doesn't exist
                return "0";

            if (connection == null)
                return "0"; // Wrong params!

            string strQry = @"SELECT UserId FROM aspnet_Users WHERE ApplicationId = " + applicationID + " AND UserName ='" + userName + "'";

            MySqlCommand lookupCommand = new MySqlCommand(strQry ,
                                                            connection);
            //lookupCommand.Parameters.Add(new MySqlParameter("?AppId", applicationID));
            //lookupCommand.Parameters.Add(new MySqlParameter("?UserName", userName));

            object lookupResult = lookupCommand.ExecuteScalar();
            if (lookupResult != null) {
                return (string)lookupResult;
            }

            if (createIfNeeded) {
                MySqlCommand createCommand = new MySqlCommand("INSERT INTO aspnet_Users " +
                                                                "(UserId, ApplicationId, UserName, LoweredUserName, IsAnonymous, LastActivityDate) " +
                                                                "VALUES ('" + Guid.NewGuid() + "'," + applicationID + ",'" + userName + "'," + createIfNeeded + "," + newUserIsAnonymous + ",'" + lastActivityDate.ToString("yyyy:MM:dd hh:mm:ss") + "')",
                                                                connection);
                //createCommand.Parameters.Add(new MySqlParameter("?AppID", applicationID));
                //createCommand.Parameters.Add(new MySqlParameter("?UserName", userName));
                //createCommand.Parameters.Add(new MySqlParameter("?LoweredUserName", userName.ToLower()));
                //createCommand.Parameters.Add(new MySqlParameter("?IsAnonymous", newUserIsAnonymous));
                //createCommand.Parameters.Add(new MySqlParameter("?LastActivityDate", new DateTime(lastActivityDate.Year, lastActivityDate.Month, lastActivityDate.Day, lastActivityDate.Hour, lastActivityDate.Minute, lastActivityDate.Second)));

                if (createCommand.ExecuteNonQuery() != 0) {
                    lookupResult = lookupCommand.ExecuteScalar();
                    if ((lookupResult != null)) {
                        return (string)lookupResult;
                    }
                }
            }

            return "0";
        }

        internal static DateTime RoundToSeconds(DateTime dt) {
            return new DateTime(dt.Year, dt.Month, dt.Day, dt.Hour, dt.Minute, dt.Second);
        }
    }

    /// //////////////////////////////////////////////////////////////////////////////
    internal sealed class MySqlConnectionHolder {
        internal MySqlConnection Connection;
        private bool _Opened;
        internal DateTime CreateDate;

        //////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////
        internal MySqlConnectionHolder(MySqlConnection connection) {
            Connection = connection;
            CreateDate = DateTime.Now;
        }

        //////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////
        internal void Open(HttpContext context) {
            //////////////////////////////////////////
            // Step 1: Get Exclusive lock
            Monitor.Enter(this);
            if (_Opened)
                return; // Already opened

            //////////////////////////////////////////
            // Step 3: Open connection
            try {
                Connection.Open();
            }
            catch {
                // remove exclusive lock
                Monitor.Exit(this);
                throw; // re-throw the exception
            }

            _Opened = true; // Open worked!
        }

        //////////////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////////////
        internal void Close() {
            if (!_Opened) // Not open!
                return;

            // Close connection
            Connection.Close();

            _Opened = false;

            // Remove exclusive access
            Monitor.Exit(this);
        }
    }
}

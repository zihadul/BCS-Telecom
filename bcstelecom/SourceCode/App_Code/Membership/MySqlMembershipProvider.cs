namespace MySqlProviders
{
    using System;
    using System.Web;
    using System.Web.Hosting;
    using System.Web.Security;
    using System.Web.Configuration;
    using System.Security.Principal;
    using System.Security.Permissions;
    using System.Globalization;
    using System.Runtime.Serialization;
    using System.Collections;
    using System.Collections.Specialized;
    using System.Data;
    using MySql.Data.MySqlClient;
    using MySql.Data.Types;
    using System.Security.Cryptography;
    using System.Text;
    using System.Text.RegularExpressions;
    using System.Configuration.Provider;
    using System.Configuration;
    using System.Web.DataAccess;
    using System.Web.Management;
    using System.Web.Util;

    public class MySqlMembershipProvider : MembershipProvider
    {
        private const int SALT_SIZE_IN_BYTES = 16;

        ////////////////////////////////////////////////////////////
        // Public properties

        public override bool EnablePasswordRetrieval { get { return _EnablePasswordRetrieval; } }

        public override bool EnablePasswordReset { get { return _EnablePasswordReset; } }

        public override bool RequiresQuestionAndAnswer { get { return _RequiresQuestionAndAnswer; } }

        public override bool RequiresUniqueEmail { get { return _RequiresUniqueEmail; } }

        public override MembershipPasswordFormat PasswordFormat { get { return _PasswordFormat; } }

        public override int MaxInvalidPasswordAttempts { get { return _MaxInvalidPasswordAttempts; } }
        public override int PasswordAttemptWindow { get { return _PasswordAttemptWindow; } }

        public override int MinRequiredPasswordLength
        {
            get { return _MinRequiredPasswordLength; }
        }

        public override int MinRequiredNonAlphanumericCharacters
        {
            get { return _MinRequiredNonalphanumericCharacters; }
        }

        public override string PasswordStrengthRegularExpression
        {
            get { return _PasswordStrengthRegularExpression; }
        }

        public override string ApplicationName
        {
            get { return _AppName; }
            set
            {
                if (_AppName != value)
                {
                    _ApplicationId = 0;
                    _AppName = value;
                }
            }
        }

        private bool _EnablePasswordRetrieval;
        private bool _EnablePasswordReset;
        private bool _RequiresQuestionAndAnswer;
        private string _AppName;
        private bool _RequiresUniqueEmail;
        private string _HashAlgorithmType;
        private int _ApplicationId = 0;
        private int _MaxInvalidPasswordAttempts;
        private int _PasswordAttemptWindow;
        private int _MinRequiredPasswordLength;
        private int _MinRequiredNonalphanumericCharacters;
        private string _PasswordStrengthRegularExpression;
        private DateTime _ApplicationIDCacheDate;
        private MembershipPasswordFormat _PasswordFormat;

        private string _ConnectionStringName;

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override void Initialize(string name, NameValueCollection config)
        {
            if (config == null)
                throw new ArgumentNullException("config");
            if (String.IsNullOrEmpty(name))
                name = "MySqlMembershipProvider";
            if (string.IsNullOrEmpty(config["description"]))
            {
                config.Remove("description");
                config.Add("description", "PXLStudio Membership MySQL Provider");
            }
            base.Initialize(name, config);

            _EnablePasswordRetrieval = SecUtility.GetBooleanValue(config, "enablePasswordRetrieval", false);
            _EnablePasswordReset = SecUtility.GetBooleanValue(config, "enablePasswordReset", true);
            _RequiresQuestionAndAnswer = SecUtility.GetBooleanValue(config, "requiresQuestionAndAnswer", true);
            _RequiresUniqueEmail = SecUtility.GetBooleanValue(config, "requiresUniqueEmail", true);
            _MaxInvalidPasswordAttempts = SecUtility.GetIntValue(config, "maxInvalidPasswordAttempts", 5, false, 0);
            _PasswordAttemptWindow = SecUtility.GetIntValue(config, "passwordAttemptWindow", 10, false, 0);
            _MinRequiredPasswordLength = SecUtility.GetIntValue(config, "minRequiredPasswordLength", 7, false, 128);
            _MinRequiredNonalphanumericCharacters = SecUtility.GetIntValue(config, "minRequiredNonalphanumericCharacters", 1, true, 128);

            _HashAlgorithmType = config["hashAlgorithmType"];
            if (String.IsNullOrEmpty(_HashAlgorithmType))
            {
                _HashAlgorithmType = "SHA1";
            }

            _PasswordStrengthRegularExpression = config["passwordStrengthRegularExpression"];
            if (_PasswordStrengthRegularExpression != null)
            {
                _PasswordStrengthRegularExpression = _PasswordStrengthRegularExpression.Trim();
                if (_PasswordStrengthRegularExpression.Length != 0)
                {
                    try
                    {
                        Regex regex = new Regex(_PasswordStrengthRegularExpression);
                    }
                    catch (ArgumentException e)
                    {
                        throw new ProviderException(e.Message, e);
                    }
                }
            }
            else
            {
                _PasswordStrengthRegularExpression = string.Empty;
            }

            _AppName = config["applicationName"];
            if (string.IsNullOrEmpty(_AppName))
                _AppName = SecUtility.GetDefaultAppName();

            if (_AppName.Length > 255)
            {
                throw new ProviderException("Provider application name is too long, max length is 255.");
            }

            string strTemp = config["passwordFormat"];
            if (strTemp == null)
                strTemp = "Hashed";

            switch (strTemp)
            {
                case "Clear":
                    _PasswordFormat = MembershipPasswordFormat.Clear;
                    break;
                case "Encrypted":
                    _PasswordFormat = MembershipPasswordFormat.Encrypted;
                    break;
                case "Hashed":
                    _PasswordFormat = MembershipPasswordFormat.Hashed;
                    break;
                default:
                    throw new ProviderException("Bad password format");
            }

            if (_PasswordFormat == MembershipPasswordFormat.Hashed && _EnablePasswordRetrieval)
                throw new ProviderException("Provider cannot retrieve hashed password");


            _ConnectionStringName = config["connectionStringName"];
            if (_ConnectionStringName == null || _ConnectionStringName.Length < 1)
                throw new ProviderException("Connection name not specified");

            string s_conn = MySqlConnectionHelper.GetConnectionString(_ConnectionStringName, true);
            if (s_conn == null || s_conn.Length < 1)
            {
                throw new ProviderException("Connection string not found: " + _ConnectionStringName);
            }

            if (!MySqlConnectionHelper.IsValidConnectionString(s_conn))
            {
                throw new ProviderException("Provider invalid connectionString: " + _ConnectionStringName);
            }

            config.Remove("connectionStringName");
            config.Remove("enablePasswordRetrieval");
            config.Remove("enablePasswordReset");
            config.Remove("requiresQuestionAndAnswer");
            config.Remove("applicationName");
            config.Remove("requiresUniqueEmail");
            config.Remove("maxInvalidPasswordAttempts");
            config.Remove("passwordAttemptWindow");
            config.Remove("passwordFormat");
            config.Remove("name");
            config.Remove("description");
            config.Remove("minRequiredPasswordLength");
            config.Remove("minRequiredNonalphanumericCharacters");
            config.Remove("passwordStrengthRegularExpression");
            config.Remove("hashAlgorithmType");
            if (config.Count > 0)
            {
                string attribUnrecognized = config.GetKey(0);
                if (!String.IsNullOrEmpty(attribUnrecognized))
                    throw new ProviderException("Provider unrecognized attribute: " + attribUnrecognized);
            }
        }

        private string GenerateSalt()
        {
            byte[] buf = new byte[SALT_SIZE_IN_BYTES];
            (new RNGCryptoServiceProvider()).GetBytes(buf);
            return Convert.ToBase64String(buf);
        }

        private string EncodePassword(string pass, int passwordFormat, string salt)
        {
            if (passwordFormat == 0) // MembershipPasswordFormat.Clear
                return pass;

            byte[] bIn = Encoding.Unicode.GetBytes(pass);
            byte[] bSalt = Convert.FromBase64String(salt);
            byte[] bAll = new byte[bSalt.Length + bIn.Length];
            byte[] bRet = null;

            Buffer.BlockCopy(bSalt, 0, bAll, 0, bSalt.Length);
            Buffer.BlockCopy(bIn, 0, bAll, bSalt.Length, bIn.Length);
            if (passwordFormat == 1)
            { // MembershipPasswordFormat.Hashed
                HashAlgorithm s = HashAlgorithm.Create(_HashAlgorithmType);

                // If the hash algorithm is null (and came from config), throw a config exception
                if (s == null)
                {
                    throw new ProviderException("Could not create a hash algorithm");
                }
                bRet = s.ComputeHash(bAll);
            }
            else
            {
                bRet = EncryptPassword(bAll);
            }

            return Convert.ToBase64String(bRet);
        }

        private string UnEncodePassword(string pass, int passwordFormat)
        {
            switch (passwordFormat)
            {
                case 0: // MembershipPasswordFormat.Clear:
                    return pass;
                case 1: // MembershipPasswordFormat.Hashed:
                    throw new ProviderException("Provider can not decode hashed password");
                default:
                    byte[] bIn = Convert.FromBase64String(pass);
                    byte[] bRet = DecryptPassword(bIn);
                    if (bRet == null)
                        return null;
                    return Encoding.Unicode.GetString(bRet, SALT_SIZE_IN_BYTES, bRet.Length - SALT_SIZE_IN_BYTES);
            }
        }

        ////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////
        ////////////////////////////////////////////////////////////

        public override MembershipUser CreateUser(string username,
                                                   string password,
                                                   string email,
                                                   string passwordQuestion,
                                                   string passwordAnswer,
                                                   bool isApproved,
                                                   object userId,
                                                   out    MembershipCreateStatus status)
        {
            if (!SecUtility.ValidateParameter(ref password,
                                               true,
                                               true,
                                               false,
                                               0))
            {
                status = MembershipCreateStatus.InvalidPassword;
                return null;
            }

            string salt = GenerateSalt();
            string pass = EncodePassword(password, (int)_PasswordFormat, salt);
            if (pass.Length > 128)
            {
                status = MembershipCreateStatus.InvalidPassword;
                return null;
            }

            if (!SecUtility.ValidateParameter(ref username,
                                               true,
                                               true,
                                               true,
                                               255))
            {
                status = MembershipCreateStatus.InvalidUserName;
                return null;
            }

            if (!SecUtility.ValidateParameter(ref email,
                                               RequiresUniqueEmail,
                                               RequiresUniqueEmail,
                                               false,
                                               128))
            {
                status = MembershipCreateStatus.InvalidEmail;
                return null;
            }

            if (!SecUtility.ValidateParameter(ref passwordQuestion,
                                               RequiresQuestionAndAnswer,
                                               true,
                                               false,
                                               255))
            {
                status = MembershipCreateStatus.InvalidQuestion;
                return null;
            }

            if (!SecUtility.ValidateParameter(ref passwordAnswer,
                                               RequiresQuestionAndAnswer,
                                               true,
                                               false,
                                               128))
            {
                status = MembershipCreateStatus.InvalidAnswer;
                return null;
            }

            if (userId != null)
            {
                throw new ArgumentException("userId Parameter must be null");
            }

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            bool fBeginTransCalled = false;

            try
            {
                try
                {
                    //
                    // Start transaction
                    //

                    MySqlCommand command = new MySqlCommand("START TRANSACTION", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = true;

                    int appId = GetAppplicationId(holder);
                    object result;
                    string uid;

                    ////////////////////////////////////////////////////////////
                    // Step 1: Check if the user exists in the Users table: create if not
                    uid = MySqlConnectionHelper.GetUserID(connection, appId, username, true, false, DateTime.Now);
                    if (uid == "0")
                    { // User not created successfully!
                        status = MembershipCreateStatus.ProviderError;
                        return null;
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 2: Check if the user exists in the Membership table: Error if yes.
                    command = new MySqlCommand("SELECT UserId FROM aspnet_membership WHERE UserId = '" + uid+ "'", connection);
                    //command.Parameters.Add(new MySqlParameter("?UserId", uid));
                    result = command.ExecuteScalar();
                    if (result != null && (result is int) && ((int)result) != 0)
                    {
                        status = MembershipCreateStatus.DuplicateUserName;
                        return null;
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 3: Check if Email is duplicate
                    if (RequiresUniqueEmail)
                    {
                        command = new MySqlCommand("SELECT u.UserId FROM aspnet_membership m, aspnet_users u WHERE u.ApplicationId ='" + appId + "' AND  m.UserId  =  u.UserId AND m.Email = '" + email + "'", connection);
                        //command.Parameters.Add(new MySqlParameter("?AppId", appId));
                        //command.Parameters.Add(new MySqlParameter("?Email", email));
                        result = command.ExecuteScalar();
                        if (result != null && (result is int) && ((int)result) != 0)
                        {
                            status = MembershipCreateStatus.DuplicateEmail;
                            return null;
                        }
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 4: Create user in Membership table
                    DateTime dt = MySqlConnectionHelper.RoundToSeconds(DateTime.Now);
                    int pFormat = (int)_PasswordFormat;
                    string strQry = "INSERT INTO aspnet_membership " +
                                                "(ApplicationId, UserId, Email, Password, PasswordFormat, PasswordSalt, PasswordQuestion, PasswordAnswer, IsApproved, CreateDate, LastLoginDate, LastPasswordChangedDate) " +
                                                "VALUES ('" + appId + "','" + uid + "','" + email + "','" + pass + "'," + pFormat + ",'" + salt + "','" + passwordQuestion + "','" + passwordAnswer + "'," + isApproved + ",'" + dt.ToString("yyyy:MM:dd hh:mm:ss") + "','" + dt.ToString("yyyy:MM:dd hh:mm:ss") + "','" + dt.ToString("yyyy:MM:dd hh:mm:ss") + "')";
                    command = new MySqlCommand(strQry,
                                                connection);
                    //command.Parameters.Add(new MySqlParameter("?ApplicationId", appId));
                    //command.Parameters.Add(new MySqlParameter("?UserId", uid));
                    //command.Parameters.Add(CreateMySqlParam("?Email", MySqlDbType.VarChar, email));
                    //command.Parameters.Add(new MySqlParameter("?Pass", pass));
                    //command.Parameters.Add(new MySqlParameter("?PasswordFormat", pFormat));
                    //command.Parameters.Add(new MySqlParameter("?PasswordSalt", salt));
                    //command.Parameters.Add(CreateMySqlParam("?PasswordQuestion", MySqlDbType.VarChar, passwordQuestion));
                    //command.Parameters.Add(CreateMySqlParam("?PasswordAnswer", MySqlDbType.VarChar, passwordAnswer));
                    //command.Parameters.Add(new MySqlParameter("?IsApproved", isApproved));
                    //command.Parameters.Add(CreateDateTimeMySqlParameter("?CDate", dt));
                    //command.Parameters.Add(CreateDateTimeMySqlParameter("?LLDate", dt));
                    //command.Parameters.Add(CreateDateTimeMySqlParameter("?LPCDate", dt));

                    //
                    // Error inserting row
                    //

                    if (command.ExecuteNonQuery() != 1)
                    {
                        status = MembershipCreateStatus.ProviderError;
                        return null;
                    }

                    command = new MySqlCommand("UPDATE  aspnet_users " +
                                                "SET     LastActivityDate = '" + dt.ToString("yyyy:MM:dd hh:mm:ss") +
                                                "' WHERE   UserId = '" + uid + "'", connection);
                    //command.Parameters.Add(CreateDateTimeMySqlParameter("?LastActivityDate", dt));
                    //command.Parameters.Add(new MySqlParameter("?UserId", uid));
                    command.ExecuteNonQuery();

                    //
                    // End transaction
                    //

                    command = new MySqlCommand("COMMIT", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = false;

                    status = MembershipCreateStatus.Success;
                    return new MembershipUser(this.Name,
                                               username,
                                               uid,
                                               email,
                                               passwordQuestion,
                                               null,
                                               isApproved,
                                               false,
                                               dt,
                                               dt,
                                               dt,
                                               dt,
                                               DateTime.MinValue);
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (fBeginTransCalled)
                    {
                        try
                        {
                            MySqlCommand cmd = new MySqlCommand("ROLLBACK",
                                                                 connection);
                            cmd.ExecuteNonQuery();
                        }
                        catch { }
                    }

                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override bool ChangePasswordQuestionAndAnswer(string username, string password, string newPasswordQuestion, string newPasswordAnswer)
        {
            SecUtility.CheckParameter(ref username, true, true, true, 255, "username");
            SecUtility.CheckParameter(ref password, true, true, false, 128, "password");

            SecUtility.CheckParameter(
                            ref newPasswordQuestion,
                            RequiresQuestionAndAnswer,
                            true,
                            false,
                            255,
                            "newPasswordQuestion");

            SecUtility.CheckParameter(
                            ref newPasswordAnswer,
                            RequiresQuestionAndAnswer,
                            true,
                            false,
                            128,
                            "newPasswordAnswer");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;

            try
            {
                try
                {
                    int status = 0;
                    int appId = GetAppplicationId(holder);
                    string userId = MySqlConnectionHelper.GetUserID(connection, appId, username, false);
                    MySqlCommand command;

                    ////////////////////////////////////////////////////////////
                    // Step 1: Make sure user exists
                    if (userId == "0")
                    {
                        return false;
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 2: Make sure password is correct
                    if (!CheckPassword(connection, userId, password, out status))
                    {
                        return false;
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 3: Update table
                    command = new MySqlCommand("UPDATE aspnet_membership " + "SET PasswordQuestion = ?PasswordQuestion, PasswordAnswer = ?PasswordAnswer " + "WHERE UserId = ?UserId",
                        connection);

                    command.Parameters.Add(CreateMySqlParam("?PasswordQuestion", MySqlDbType.VarChar, newPasswordQuestion));
                    command.Parameters.Add(CreateMySqlParam("?PasswordAnswer", MySqlDbType.VarChar, newPasswordAnswer));
                    command.Parameters.Add(new MySqlParameter("?UserId", userId));

                    if (command.ExecuteNonQuery() != 1)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override string GetPassword(string username, string passwordAnswer)
        {
            if (!EnablePasswordRetrieval)
                throw new NotSupportedException("Membership PasswordRetrieval not supported");

            SecUtility.CheckParameter(ref username, true, true, true, 255, "username");
            SecUtility.CheckParameter(ref passwordAnswer, RequiresQuestionAndAnswer, RequiresQuestionAndAnswer, false, 128, "passwordAnswer");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    string userId = MySqlConnectionHelper.GetUserID(connection, appId, username, false);
                    int passwordFormat = 0;
                    int status = 0;
                    string pass = null;
                    string salt = null;
                    bool userIsApproved;

                    pass = GetPasswordWithFormat(connection, userId, passwordAnswer, RequiresQuestionAndAnswer,
                                                 out passwordFormat, out status, out salt, out userIsApproved);

                    if (pass == null)
                    {
                        string errText = GetExceptionText(status);

                        if (IsStatusDueToBadPassword(status))
                        {
                            throw new MembershipPasswordException(errText);
                        }
                        else
                        {
                            throw new ProviderException(errText);
                        }
                    }
                    return UnEncodePassword(pass, passwordFormat);
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        public override bool ChangePassword(string username, string oldPassword, string newPassword)
        {
            SecUtility.CheckParameter(ref username, true, true, true, 255, "username");
            SecUtility.CheckParameter(ref oldPassword, true, true, false, 128, "oldPassword");
            SecUtility.CheckParameter(ref newPassword, true, true, false, 128, "newPassword");

            string salt = GenerateSalt();
            string pass = EncodePassword(newPassword, (int)_PasswordFormat, salt);
            if (pass.Length > 128)
                throw new ArgumentException("Membership password too long, max is 128");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            try
            {
                try
                {
                    int status = 0;
                    int appId = GetAppplicationId(holder);
                    string userId = MySqlConnectionHelper.GetUserID(connection, appId, username, false);
                    MySqlCommand command;

                    ////////////////////////////////////////////////////////////
                    // Step 1: Make sure user exists
                    if (userId == "0")
                    {
                        return false;
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 2: Make sure oldPassword is correct
                    if (!CheckPassword(connection, userId, oldPassword, out status))
                    {
                        return false;
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 3: Save new password
                    command = new MySqlCommand("UPDATE aspnet_membership " +
                                                "SET Password = ?Pass, PasswordFormat = ?PasswordFormat, PasswordSalt = ?PasswordSalt, LastPasswordChangedDate = ?LastPasswordChangedDate " +
                                                "WHERE UserId = ?UserId",
                                               connection);

                    int pFormat = (int)_PasswordFormat;
                    command.Parameters.Add(new MySqlParameter("?Pass", pass));
                    command.Parameters.Add(new MySqlParameter("?PasswordFormat", pFormat));
                    command.Parameters.Add(new MySqlParameter("?PasswordSalt", salt));
                    command.Parameters.Add(CreateDateTimeMySqlParameter("?LastPasswordChangedDate", DateTime.Now));
                    command.Parameters.Add(new MySqlParameter("?UserId", userId));

                    if (command.ExecuteNonQuery() != 1)
                    {
                        throw new ProviderException(GetExceptionText(100));
                    }
                    return true;
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override string ResetPassword(string username, string passwordAnswer)
        {
            if (!EnablePasswordReset)
                throw new NotSupportedException("Not configured to support password resets");

            SecUtility.CheckParameter(ref username, true, true, true, 255, "username");
            SecUtility.CheckParameter(ref passwordAnswer, RequiresQuestionAndAnswer, RequiresQuestionAndAnswer, false, 128, "passwordAnswer");

            string salt = GenerateSalt();
            string newPassword = GeneratePassword();
            string pass = EncodePassword(newPassword, (int)_PasswordFormat, salt);

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            MySqlDataReader reader = null;
            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    string userId = MySqlConnectionHelper.GetUserID(connection, appId, username, false);
                    MySqlCommand command;

                    ////////////////////////////////////////////////////////////
                    // Step 1: Make sure user exists
                    if (userId == "0")
                    {
                        throw new ProviderException(GetExceptionText(1));
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 2: Check passwordAnswer
                    if (RequiresQuestionAndAnswer)
                    {
                        command = new MySqlCommand("SELECT PasswordAnswer " +
                                                    "FROM aspnet_membership " +
                                                    "WHERE UserId = ?UserId",
                                                    connection);
                        command.Parameters.Add(new MySqlParameter("?UserId", userId));
                        reader = (MySqlDataReader)command.ExecuteReader();
                        if (!reader.Read())
                        { // No passwordAnswer!
                            throw new MembershipPasswordException(GetExceptionText(3));
                        }
                        string storedPasswordAnswer = GetNullableString(reader, 0);
                        if (storedPasswordAnswer == null || String.Compare(storedPasswordAnswer, passwordAnswer, true, CultureInfo.InvariantCulture) != 0)
                        {
                            throw new MembershipPasswordException(GetExceptionText(3));
                        }
                        reader.Close();
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 3: Save new password
                    command = new MySqlCommand("UPDATE aspnet_membership " +
                                                "SET Password = ?Pass, PasswordFormat = ?PasswordFormat, PasswordSalt = ?PasswordSalt, LastPasswordChangedDate = ?LastPasswordChangedDate " +
                                                "WHERE UserId = ?UserId",
                                               connection);
                    int pFormat = (int)_PasswordFormat;
                    command.Parameters.Add(new MySqlParameter("?Pass", pass));
                    command.Parameters.Add(new MySqlParameter("?PasswordFormat", pFormat));
                    command.Parameters.Add(new MySqlParameter("?PasswordSalt", salt));
                    command.Parameters.Add(CreateDateTimeMySqlParameter("?LastPasswordChangedDate", DateTime.Now));
                    command.Parameters.Add(new MySqlParameter("?UserId", userId));

                    if (command.ExecuteNonQuery() != 1)
                    {
                        throw new ProviderException(GetExceptionText(100));
                    }
                    return newPassword;
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (reader != null)
                        reader.Close();
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override void UpdateUser(MembershipUser user)
        {
            if (user == null)
            {
                throw new ArgumentNullException("user");
            }

            string temp = user.UserName;
            SecUtility.CheckParameter(ref temp, true, true, false, 255, "UserName");
            temp = user.Email;
            SecUtility.CheckParameter(ref temp, RequiresUniqueEmail, RequiresUniqueEmail, false, 128, "Email");
            user.Email = temp;

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            bool fBeginTransCalled = false;

            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    string userId = MySqlConnectionHelper.GetUserID(connection, appId, user.UserName, false);
                    MySqlCommand command;
                    string result ="";

                    ////////////////////////////////////////////////////////////
                    // Step 1: Make sure user exists
                    if (userId == "0")
                    {
                        throw new ProviderException(GetExceptionText(1));
                    }
                    command = new MySqlCommand("SELECT UserId FROM aspnet_membership WHERE UserId = ?UserId", connection);
                    command.Parameters.Add(new MySqlParameter("?UserId", userId));

                    result = Convert.ToString(command.ExecuteScalar());
                    if (result == "")
                    {
                        throw new ProviderException(GetExceptionText(1));
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 2: Make sure email is unique

                    if (_RequiresUniqueEmail)
                    {
                        command = new MySqlCommand("SELECT u.UserId " +
                                                    "FROM aspnet_membership m, aspnet_users u " +
                                                    "WHERE u.UserId <> ?UserId AND m.Email = ?Email AND u.UserId = m.UserId AND u.ApplicationId = ?AppId",
                                                    connection);
                        command.Parameters.Add(new MySqlParameter("?UserId", userId));
                        command.Parameters.Add(new MySqlParameter("?Email", user.Email));
                        command.Parameters.Add(new MySqlParameter("?AppId", appId));

                        result = Convert.ToString(command.ExecuteScalar());
                        if (result != "")
                        {
                            string userId2 = result;
                            if (userId2 != userId)
                            {
                                throw new ProviderException("Dup user id: " + userId2.ToString(CultureInfo.InvariantCulture));
                            }
                        }
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 3: Update table

                    //
                    // Start transaction
                    //

                    command = new MySqlCommand("START TRANSACTION", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = true;

                    command = new MySqlCommand("UPDATE aspnet_membership " +
                                                "SET Email = ?Email, Comment = ?Comment, LastLoginDate = ?LastLoginDate, IsApproved = ?IsApproved " +
                                                "WHERE UserId = ?UserId",
                                                connection);
                    int isapp = user.IsApproved ? 1 : 0;
                    string comm = (user.Comment == null) ? String.Empty : user.Comment;

                    command.Parameters.Add(CreateMySqlParam("?Email", MySqlDbType.VarChar, user.Email));
                    command.Parameters.Add(new MySqlParameter("?Comment", comm));
                    command.Parameters.Add(CreateDateTimeMySqlParameter("?LastLoginDate", user.LastLoginDate));
                    command.Parameters.Add(new MySqlParameter("?IsApproved", isapp));
                    command.Parameters.Add(new MySqlParameter("?UserId", userId));

                    if (command.ExecuteNonQuery() != 1)
                    {
                        throw new ProviderException(GetExceptionText(20));
                    }

                    command = new MySqlCommand("UPDATE aspnet_users SET LastActivityDate = ?LastActivityDate WHERE UserId = ?UserId", connection);
                    command.Parameters.Add(CreateDateTimeMySqlParameter("?LastActivityDate", user.LastActivityDate));
                    command.Parameters.Add(new MySqlParameter("?UserId", userId));

                    command.ExecuteNonQuery();

                    //
                    // End transaction
                    //

                    command = new MySqlCommand("COMMIT", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = false;
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (fBeginTransCalled)
                    {
                        try
                        {
                            MySqlCommand cmd = new MySqlCommand("ROLLBACK",
                                                                 connection);
                            cmd.ExecuteNonQuery();
                        }
                        catch { }
                    }

                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override bool ValidateUser(string username, string password)
        {
            if (!SecUtility.ValidateParameter(ref username,
                                               true,
                                               true,
                                               false,
                                               255))
            {
                return false;
            }

            if (!SecUtility.ValidateParameter(ref password,
                                               true,
                                               true,
                                               false,
                                               128))
            {
                return false;
            }

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            bool fBeginTransCalled = false;

            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    string userId = MySqlConnectionHelper.GetUserID(connection, appId, username, false);
                    bool userIsApproved = false;
                    if (CheckPassword(connection, userId, password, out userIsApproved) && userIsApproved)
                    {
                        MySqlCommand command;

                        //
                        // Start transaction
                        //

                        command = new MySqlCommand("START TRANSACTION", connection);
                        command.ExecuteNonQuery();
                        fBeginTransCalled = true;

                        command = new MySqlCommand("UPDATE  aspnet_membership " +
                                                    "SET     LastLoginDate = ?LastLoginDate " +
                                                    "WHERE   UserId = ?UserId",
                                               connection);

                        command.Parameters.Add(CreateDateTimeMySqlParameter("?LastLoginDate", DateTime.Now));
                        command.Parameters.Add(new MySqlParameter("?UserId", userId));
                        command.ExecuteNonQuery();

                        command = new MySqlCommand("UPDATE  aspnet_users " +
                                                    "SET     LastActivityDate = ?LastActivityDate " +
                                                    "WHERE   UserId = ?UserId", connection);
                        command.Parameters.Add(CreateDateTimeMySqlParameter("?LastActivityDate", DateTime.Now));
                        command.Parameters.Add(new MySqlParameter("?UserId", userId));
                        command.ExecuteNonQuery();

                        //
                        // End transaction
                        //

                        command = new MySqlCommand("COMMIT", connection);
                        command.ExecuteNonQuery();
                        fBeginTransCalled = false;

                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (fBeginTransCalled)
                    {
                        try
                        {
                            MySqlCommand cmd = new MySqlCommand("ROLLBACK",
                                                                 connection);
                            cmd.ExecuteNonQuery();
                        }
                        catch { }
                    }

                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        public override bool UnlockUser(string userName)
        {
            return false;
        }

        public override MembershipUser GetUser(object userId, bool userIsOnline)
        {
            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            MySqlDataReader reader = null;

            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    MySqlCommand command;

                    command = new MySqlCommand("SELECT Email, PasswordQuestion, Comment, CreateDate, LastLoginDate, LastActivityDate, LastPasswordChangedDate, UserName, IsApproved " +
                                                "FROM aspnet_users u, aspnet_membership m " +
                                                "WHERE u.ApplicationId = ?AppId  AND u.UserID = ?UserID AND u.UserId = m.UserId",
                                               connection);

                    command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    command.Parameters.Add(new MySqlParameter("?UserID", userId));

                    reader = (MySqlDataReader)command.ExecuteReader();
                    if (!reader.Read())
                    {
                        return null;
                    }

                    string email = GetNullableString(reader, 0);
                    string passwordQuestion = GetNullableString(reader, 1);
                    string comment = GetNullableString(reader, 2);
                    DateTime dtCreate = reader.GetDateTime(3);
                    DateTime dtLastLogin = reader.GetDateTime(4);
                    DateTime dtLastActivity = userIsOnline ? MySqlConnectionHelper.RoundToSeconds(DateTime.Now)
                                                           : reader.GetDateTime(5);
                    DateTime dtLastPassChange = reader.GetDateTime(6);
                    string username = GetNullableString(reader, 7);
                    bool isApproved = reader.GetBoolean(8);

                    if (reader != null)
                        reader.Close();

                    if (userIsOnline)
                    {
                        command = new MySqlCommand("UPDATE aspnet_users " +
                                                    "SET LastActivityDate = ?LastActivityDate " +
                                                    "WHERE UserId = ?UserId",
                                                   connection);
                        command.Parameters.Add(CreateDateTimeMySqlParameter("?LastActivityDate", dtLastActivity));
                        command.Parameters.Add(new MySqlParameter("?UserId", userId));

                        command.ExecuteNonQuery();
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 4 : Return the result
                    return new MembershipUser(this.Name,
                                               username,
                                               userId,
                                               email,
                                               passwordQuestion,
                                               comment,
                                               isApproved,
                                               false,
                                               dtCreate,
                                               dtLastLogin,
                                               dtLastActivity,
                                               dtLastPassChange,
                                               DateTime.MinValue);
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (reader != null)
                        reader.Close();
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override MembershipUser GetUser(string username, bool userIsOnline)
        {
            SecUtility.CheckParameter(
                            ref username,
                            true,
                            false,
                            true,
                            255,
                            "username");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            MySqlDataReader reader = null;

            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    MySqlCommand command;

                    command = new MySqlCommand("SELECT Email, PasswordQuestion, Comment, CreateDate, LastLoginDate, LastActivityDate, LastPasswordChangedDate, u.UserId, IsApproved " +
                                                "FROM aspnet_users u, aspnet_membership m " +
                                                "WHERE u.ApplicationId = ?AppId  AND u.UserName = ?UserName AND u.UserId = m.UserId",
                                               connection);

                    command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    command.Parameters.Add(new MySqlParameter("?UserName", username));

                    reader = (MySqlDataReader)command.ExecuteReader();
                    if (!reader.Read())
                    {
                        return null;
                    }

                    string email = GetNullableString(reader, 0);
                    string passwordQuestion = GetNullableString(reader, 1);
                    string comment = GetNullableString(reader, 2);
                    DateTime dtCreate = reader.GetDateTime(3);
                    DateTime dtLastLogin = reader.GetDateTime(4);
                    DateTime dtLastActivity = userIsOnline ? MySqlConnectionHelper.RoundToSeconds(DateTime.Now)
                                                           : reader.GetDateTime(5);
                    DateTime dtLastPassChange = reader.GetDateTime(6);
                    string userId = GetNullableString(reader, 7);
                    bool isApproved = reader.GetBoolean(8);

                    if (reader != null)
                        reader.Close();

                    if (userIsOnline)
                    {
                        command = new MySqlCommand("UPDATE aspnet_users " +
                                                    "SET LastActivityDate = ?LastActivityDate " +
                                                    "WHERE UserId = ?UserId",
                                                   connection);
                        command.Parameters.Add(CreateDateTimeMySqlParameter("?LastActivityDate", dtLastActivity));
                        command.Parameters.Add(new MySqlParameter("?UserId", userId));

                        command.ExecuteNonQuery();
                    }

                    ////////////////////////////////////////////////////////////
                    // Step 4 : Return the result
                    return new MembershipUser(this.Name,
                                               username,
                                               userId,
                                               email,
                                               passwordQuestion,
                                               comment,
                                               isApproved,
                                               false,
                                               dtCreate,
                                               dtLastLogin,
                                               dtLastActivity,
                                               dtLastPassChange,
                                               DateTime.MinValue);
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (reader != null)
                        reader.Close();
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override string GetUserNameByEmail(string email)
        {
            SecUtility.CheckParameter(
                            ref email,
                            false,
                            false,
                            false,
                            128,
                            "email");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    MySqlCommand command = null;
                    MySqlDataReader reader = null;
                    string username = null;

                    if (email != null)
                    {
                        command = new MySqlCommand("SELECT UserName " +
                                                   "FROM aspnet_users u, aspnet_membership m " +
                                                   "WHERE m.Email = ?Email AND u.UserId = m.UserId AND u.ApplicationId = ?AppId",
                                                   connection);
                        command.Parameters.Add(CreateMySqlParam("?Email", MySqlDbType.VarChar, email));
                        command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    }
                    else
                    {
                        command = new MySqlCommand("SELECT UserName " +
                                                   "FROM aspnet_users u, aspnet_membership m " +
                                                   "WHERE m.Email IS NULL AND u.UserId = m.UserId AND u.ApplicationId = ?AppId",
                                                   connection);
                        command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    }

                    try
                    {
                        reader = (MySqlDataReader)command.ExecuteReader(CommandBehavior.SequentialAccess);
                        if (reader.Read())
                        {
                            username = GetNullableString(reader, 0);
                            if (RequiresUniqueEmail && reader.Read())
                            {
                                throw new ProviderException("Cannot have more than one user with the same email");
                            }
                        }
                        return username;
                    }
                    catch
                    {
                        throw;
                    }
                    finally
                    {
                        if (reader != null)
                            reader.Close();
                    }
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////

        public override bool DeleteUser(string username, bool deleteAllRelatedData)
        {
            SecUtility.CheckParameter(ref username, true, true, true, 255, "username");

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            bool fBeginTransCalled = false;

            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    string userId = MySqlConnectionHelper.GetUserID(connection, appId, username, false);

                    if (userId == "0")
                        return false; // User not found
                    MySqlCommand command;

                    //
                    // Start transaction
                    //

                    command = new MySqlCommand("START TRANSACTION", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = true;

                    command = new MySqlCommand("DELETE FROM aspnet_membership WHERE UserId = ?UserId", connection);
                    command.Parameters.Add(new MySqlParameter("?UserId", userId));

                    bool returnValue = (command.ExecuteNonQuery() == 1);
                    if (deleteAllRelatedData)
                    {
                        command = new MySqlCommand("DELETE FROM aspnet_usersinroles WHERE UserId = ?UserId", connection);
                        command.Parameters.Add(new MySqlParameter("?UserId", userId));
                        command.ExecuteNonQuery();

                        //command = new MySqlCommand("DELETE FROM aspnet_Profile WHERE UserId = ?UserId", connection);
                        //command.Parameters.Add(new MySqlParameter("?UserId", userId));
                        //command.ExecuteNonQuery();

                        //command = new MySqlCommand("DELETE FROM aspnet_PagePersonalizationPerUser WHERE UserId = ?UserId", connection);
                        //command.Parameters.Add(new MySqlParameter("?UserId", userId));
                        //command.ExecuteNonQuery();

                        command = new MySqlCommand("DELETE FROM aspnet_users WHERE UserId = ?UserId", connection);
                        command.Parameters.Add(new MySqlParameter("?UserId", userId));
                        returnValue = (command.ExecuteNonQuery() == 1);
                    }

                    //
                    // End transaction
                    //

                    command = new MySqlCommand("COMMIT", connection);
                    command.ExecuteNonQuery();
                    fBeginTransCalled = false;

                    return returnValue;
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (fBeginTransCalled)
                    {
                        try
                        {
                            MySqlCommand cmd = new MySqlCommand("ROLLBACK",
                                                                 connection);
                            cmd.ExecuteNonQuery();
                        }
                        catch { }
                    }

                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }


        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////
        //////////////////////////////////////////////////////////////////////


        public override MembershipUserCollection GetAllUsers(int pageIndex, int pageSize, out int totalRecords)
        {
            if (pageIndex < 0)
                throw new ArgumentException("PageIndex cannot be negative");
            if (pageSize < 1)
                throw new ArgumentException("PageSize must be positive");

            long lBound = (long)pageIndex * pageSize;
            long uBound = lBound + pageSize - 1;

            if (uBound > System.Int32.MaxValue)
            {
                throw new ArgumentException("PageIndex too big");
            }

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            MySqlDataReader reader = null;
            long recordCount = 0;
            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    MySqlCommand command;
                    MembershipUserCollection users = new MembershipUserCollection();

                    command = new MySqlCommand("SELECT UserName, Email, PasswordQuestion, Comment, CreateDate, LastLoginDate, LastActivityDate, LastPasswordChangedDate, IsApproved, u.UserId " +
                                               "FROM  aspnet_membership m, aspnet_users u " +
                                               "WHERE  u.ApplicationId =" + appId + " AND u.UserId = m.UserId " +
                                               "ORDER BY UserName",
                                  connection);
                    //command.Parameters.Add(new MySqlParameter("?AppId", appId));

                    reader = (MySqlDataReader)command.ExecuteReader(CommandBehavior.SequentialAccess);

                    while (reader.Read())
                    {
                        recordCount++;
                        if (recordCount - 1 < lBound || recordCount - 1 > uBound)
                            continue;
                        string username, email, passwordQuestion, comment;
                        DateTime dtCreate, dtLastLogin, dtLastActivity, dtLastPassChange;
                        bool isApproved;
                        string userId;
                        username = GetNullableString(reader, 0);
                        email = GetNullableString(reader, 1);
                        passwordQuestion = GetNullableString(reader, 2);
                        comment = GetNullableString(reader, 3);
                        dtCreate = reader.GetDateTime(4);
                        dtLastLogin = reader.GetDateTime(5);
                        dtLastActivity = reader.GetDateTime(6);
                        dtLastPassChange = reader.GetDateTime(7);
                        isApproved = reader.GetBoolean(8);
                        //userId = reader.GetInt32(9);
                        userId = GetNullableString(reader, 9);
                        users.Add(new MembershipUser(this.Name,
                                                      username,
                                                      userId,
                                                      email,
                                                      passwordQuestion,
                                                      comment,
                                                      isApproved,
                                                      false,
                                                      dtCreate,
                                                      dtLastLogin,
                                                      dtLastActivity,
                                                      dtLastPassChange,
                                                      DateTime.MinValue));
                    }
                    totalRecords = (int)recordCount;
                    return users;
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (reader != null)
                        reader.Close();
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }
        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        public MembershipUserCollection GetUsersOnline()
        {
            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            MySqlDataReader reader = null;

            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    TimeSpan ts = new TimeSpan(0, Membership.UserIsOnlineTimeWindow, 0);
                    DateTime dt = DateTime.Now.Subtract(ts);
                    object result;

                    MySqlCommand command;
                    MembershipUserCollection users = new MembershipUserCollection();

                    command = new MySqlCommand("SELECT UserName, Email, PasswordQuestion, Comment, CreateDate, LastLoginDate, LastActivityDate, LastPasswordChangedDate, IsApproved, u.UserId " +
                                               "FROM  aspnet_membership m, aspnet_users u " +
                                               "WHERE  u.ApplicationId = ?AppId AND u.UserId = m.UserId AND LastActivityDate > ?LastActivityDate " +
                                               "ORDER BY UserName",
                                  connection);
                    command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    command.Parameters.Add(CreateDateTimeMySqlParameter("?LastActivityDate", dt));

                    reader = (MySqlDataReader)command.ExecuteReader(CommandBehavior.SequentialAccess);

                    while (reader.Read())
                    {
                        string username, email, passwordQuestion, comment;
                        DateTime dtCreate, dtLastLogin, dtLastActivity, dtLastPassChange;
                        bool isApproved;
                        int userId;
                        username = GetNullableString(reader, 0);
                        email = GetNullableString(reader, 1);
                        passwordQuestion = GetNullableString(reader, 2);
                        comment = GetNullableString(reader, 3);
                        dtCreate = reader.GetDateTime(4);
                        dtLastLogin = reader.GetDateTime(5);
                        dtLastActivity = reader.GetDateTime(6);
                        dtLastPassChange = reader.GetDateTime(7);
                        isApproved = reader.GetBoolean(8);
                        userId = reader.GetInt32(9);
                        users.Add(new MembershipUser(this.Name,
                                                      username,
                                                      userId,
                                                      email,
                                                      passwordQuestion,
                                                      comment,
                                                      isApproved,
                                                      false,
                                                      dtCreate,
                                                      dtLastLogin,
                                                      dtLastActivity,
                                                      dtLastPassChange,
                                                      DateTime.MinValue));
                    }

                    return users;
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        public override int GetNumberOfUsersOnline()
        {
            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    TimeSpan ts = new TimeSpan(0, Membership.UserIsOnlineTimeWindow, 0);
                    DateTime dt = DateTime.Now.Subtract(ts);
                    object result;
                    MySqlCommand command;

                    command = new MySqlCommand("SELECT COUNT(*) FROM aspnet_users u, aspnet_membership m WHERE u.UserId = m.UserId AND ApplicationId=?AppId AND LastActivityDate > ?LastActivityDate",
                                               connection);

                    command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    command.Parameters.Add(CreateDateTimeMySqlParameter("?LastActivityDate", dt));
                    result = command.ExecuteScalar();

                    if (result != null && (result is int))
                        return (int)result;
                    else
                        return 0;
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    holder.Close();
                }
            }
            catch
            {
                throw;
            }
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////

        public override MembershipUserCollection FindUsersByName(string usernameToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            SecUtility.CheckParameter(ref usernameToMatch, true, true, false, 255, "usernameToMatch");

            if (pageIndex < 0)
                throw new ArgumentException("PageIndex cannot be negative");
            if (pageSize < 1)
                throw new ArgumentException("PageSize must be positive");

            long lBound = (long)pageIndex * pageSize;
            long uBound = lBound + pageSize - 1;

            if (uBound > System.Int32.MaxValue)
            {
                throw new ArgumentException("PageIndex too big");
            }

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            MySqlDataReader reader = null;
            long recordCount = 0;
            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    MySqlCommand command;
                    MembershipUserCollection users = new MembershipUserCollection();

                    command = new MySqlCommand("SELECT UserName, Email, PasswordQuestion, Comment, CreateDate, LastLoginDate, LastActivityDate, LastPasswordChangedDate, IsApproved, u.UserId " +
                                                "FROM  aspnet_membership m, aspnet_users u " +
                                                "WHERE  u.ApplicationId = ?AppId AND u.UserId = m.UserId AND " +
                                                "UserName like ?UserName " +
                                                "ORDER BY UserName", connection);
                    command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    command.Parameters.Add(new MySqlParameter("?UserName", usernameToMatch));
                    reader = (MySqlDataReader)command.ExecuteReader(CommandBehavior.SequentialAccess);
                    while (reader.Read())
                    {
                        recordCount++;
                        if (recordCount - 1 < lBound || recordCount - 1 > uBound)
                            continue;

                        string username, email, passwordQuestion, comment, userId;
                        DateTime dtCreate, dtLastLogin, dtLastActivity, dtLastPassChange;
                        bool isApproved;
                        
                        username = GetNullableString(reader, 0);
                        email = GetNullableString(reader, 1);
                        passwordQuestion = GetNullableString(reader, 2);
                        comment = GetNullableString(reader, 3);
                        dtCreate = reader.GetDateTime(4);
                        dtLastLogin = reader.GetDateTime(5);
                        dtLastActivity = reader.GetDateTime(6);
                        dtLastPassChange = reader.GetDateTime(7);
                        isApproved = reader.GetBoolean(8);
                        userId = GetNullableString(reader, 9);
                        users.Add(new MembershipUser(this.Name,
                                                      username,
                                                      userId,
                                                      email,
                                                      passwordQuestion,
                                                      comment,
                                                      isApproved,
                                                      false,
                                                      dtCreate,
                                                      dtLastLogin,
                                                      dtLastActivity,
                                                      dtLastPassChange,
                                                      DateTime.MinValue));
                    }
                    return users;
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (reader != null)
                        reader.Close();

                    holder.Close();
                    totalRecords = (int)recordCount;
                }
            }
            catch
            {
                throw;
            }
        }


        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        public override MembershipUserCollection FindUsersByEmail(string emailToMatch, int pageIndex, int pageSize, out int totalRecords)
        {
            SecUtility.CheckParameter(ref emailToMatch, false, false, false, 128, "emailToMatch");

            if (pageIndex < 0)
                throw new ArgumentException("PageIndex cannot be negative");
            if (pageSize < 1)
                throw new ArgumentException("PageSize must be positive");

            long lBound = (long)pageIndex * pageSize;
            long uBound = lBound + pageSize - 1;

            if (uBound > System.Int32.MaxValue)
            {
                throw new ArgumentException("PageIndex too big");
            }

            MySqlConnectionHolder holder = MySqlConnectionHelper.GetConnection(_ConnectionStringName, true);
            MySqlConnection connection = holder.Connection;
            MySqlDataReader reader = null;
            long recordCount = 0;
            try
            {
                try
                {
                    int appId = GetAppplicationId(holder);
                    MySqlCommand command;
                    MembershipUserCollection users = new MembershipUserCollection();

                    if (emailToMatch != null)
                    {
                        command = new MySqlCommand("SELECT UserName, Email, PasswordQuestion, Comment, CreateDate, LastLoginDate, LastActivityDate, LastPasswordChangedDate, IsApproved, u.UserId "
                                                + "FROM  aspnet_membership m, aspnet_users u " +
                                                "WHERE  u.ApplicationId = ?AppId AND u.UserId = m.UserId AND Email like ?Email " + "ORDER BY UserName", connection);
                        command.Parameters.Add(new MySqlParameter("?AppId", appId));
                        command.Parameters.Add(new MySqlParameter("?Email", emailToMatch));
                    }
                    else
                    {
                        command = new MySqlCommand("SELECT UserName, Email, PasswordQuestion, Comment, CreateDate, LastLoginDate, LastActivityDate, LastPasswordChangedDate, IsApproved, u.UserId "
                                                + "FROM  aspnet_membership m, aspnet_users u " +
                                                "WHERE  u.ApplicationId = ?AppId AND u.UserId = m.UserId AND Email IS NULL " + "ORDER BY UserName", connection);
                        command.Parameters.Add(new MySqlParameter("?AppId", appId));
                    }
                    reader = (MySqlDataReader)command.ExecuteReader(CommandBehavior.SequentialAccess);
                    while (reader.Read())
                    {
                        recordCount++;
                        if (recordCount - 1 < lBound || recordCount - 1 > uBound)
                            continue;

                        string username, email, passwordQuestion, comment, userId;
                        DateTime dtCreate, dtLastLogin, dtLastActivity, dtLastPassChange;
                        bool isApproved;
                        
                        username = GetNullableString(reader, 0);
                        email = GetNullableString(reader, 1);
                        passwordQuestion = GetNullableString(reader, 2);
                        comment = GetNullableString(reader, 3);
                        dtCreate = reader.GetDateTime(4);
                        dtLastLogin = reader.GetDateTime(5);
                        dtLastActivity = reader.GetDateTime(6);
                        dtLastPassChange = reader.GetDateTime(7);
                        isApproved = reader.GetBoolean(8);
                        userId = GetNullableString(reader, 9);
                        users.Add(new MembershipUser(this.Name,
                                                      username,
                                                      userId,
                                                      email,
                                                      passwordQuestion,
                                                      comment,
                                                      isApproved,
                                                      false,
                                                      dtCreate,
                                                      dtLastLogin,
                                                      dtLastActivity,
                                                      dtLastPassChange,
                                                      DateTime.MinValue));
                    }
                    return users;
                }
                catch (Exception e)
                {
                    throw e;
                }
                finally
                {
                    if (reader != null)
                        reader.Close();

                    holder.Close();
                    totalRecords = (int)recordCount;
                }
            }
            catch
            {
                throw;
            }
            finally
            {
                if (reader != null)
                    reader.Close();
            }
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        private bool CheckPassword(MySqlConnection connection, string userId, string password, out int status)
        {
            string salt;
            bool userIsApproved;
            int passwordFormat;
            string pass = GetPasswordWithFormat(connection, userId, null, false, out passwordFormat, out status, out salt, out userIsApproved);
            string pass2 = EncodePassword(password, passwordFormat, salt);
            return (pass == pass2);
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        private bool CheckPassword(MySqlConnection connection, string userId, string password, out bool userIsApproved)
        {
            string salt;
            int passwordFormat, status;
            string pass = GetPasswordWithFormat(connection, userId, null, false, out passwordFormat, out status, out salt, out userIsApproved);
            string pass2 = EncodePassword(password, passwordFormat, salt);
            return (pass == pass2);
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        private string GetPasswordWithFormat(
                            MySqlConnection connection,
                            string userId,
                            string passwordAnswer,
                            bool requiresQuestionAndAnswer,
                            out int passwordFormat,
                            out int status,
                            out string passwordSalt,
                            out bool userIsApproved)
        {
            MySqlCommand command;
            MySqlDataReader reader = null;

            passwordFormat = 0;
            status = 1; // status = user not found
            passwordSalt = String.Empty;
            userIsApproved = false;

            try
            {
                string storedPasswordAnswer;
                string pass;

                if (userId == "0")
                    return null;

                command = new MySqlCommand("SELECT PasswordFormat, Password, PasswordAnswer, PasswordSalt, IsApproved " +
                                            "FROM aspnet_membership m, aspnet_users u " +
                                            "WHERE m.UserId = ?UserId AND m.UserId = u.UserId",
                                           connection);
                command.Parameters.Add(new MySqlParameter("?UserId", userId));

                reader = (MySqlDataReader)command.ExecuteReader();

                if (!reader.Read())
                { // Zero rows read = user-not-found
                    reader.Close();
                    return null;
                }

                passwordFormat = reader.GetInt32(0);
                pass = GetNullableString(reader, 1);
                storedPasswordAnswer = GetNullableString(reader, 2);
                passwordSalt = GetNullableString(reader, 3);
                userIsApproved = reader.GetBoolean(4);

                if (requiresQuestionAndAnswer && String.Compare(storedPasswordAnswer, passwordAnswer, true, CultureInfo.InvariantCulture) != 0)
                {
                    status = 3;
                    pass = null;
                }
                else
                {
                    status = 0;
                }
                reader.Close();
                return pass;
            }
            catch
            {
                return null;
            }
            finally
            {
                if (reader != null) reader.Close();
            }
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        private int GetAppplicationId(MySqlConnectionHolder holder)
        {
            if (_ApplicationId != 0 && holder.CreateDate < _ApplicationIDCacheDate) // Already cached?
                return _ApplicationId;
            string appName = _AppName;
            if (appName.Length > 255)
                appName = appName.Substring(0, 255);
            _ApplicationId = MySqlConnectionHelper.GetApplicationID(holder.Connection, appName, true);
            _ApplicationIDCacheDate = DateTime.Now;
            if (_ApplicationId != 0)
                return _ApplicationId;
            throw new ProviderException(GetExceptionText(20));
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        private string GetNullableString(MySqlDataReader reader, int col)
        {
            if (reader.IsDBNull(col) == false)
            {
                return reader.GetString(col);
            }

            return null;
        }
        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        private string GetExceptionText(int status)
        {
            string key;
            switch (status)
            {
                case 0:
                    return String.Empty;
                case 1:
                    key = "User not found";
                    break;
                case 2:
                    key = "Wrong password";
                    break;
                case 3:
                    key = "Wrong answer";
                    break;
                case 4:
                    key = "Invalid password";
                    break;
                case 5:
                    key = "Invalid question";
                    break;
                case 6:
                    key = "Invalid answer";
                    break;
                case 7:
                    key = "Invalid email";
                    break;
                default:
                    key = "Unknown provider error";
                    break;
            }
            return key;
        }

        /////////////////////////////////////////////////////////////////////////////
        private bool IsStatusDueToBadPassword(int status)
        {
            return (status >= 2 && status <= 6);
        }
        private const int PASSWORD_SIZE = 14;
        public virtual string GeneratePassword()
        {
            return Membership.GeneratePassword(
                      MinRequiredPasswordLength < PASSWORD_SIZE ? PASSWORD_SIZE : MinRequiredPasswordLength,
                      MinRequiredNonAlphanumericCharacters);
        }


        private MySqlParameter CreateDateTimeMySqlParameter(string parameterName, DateTime dt)
        {
            MySqlParameter p = new MySqlParameter(parameterName, MySqlDbType.Timestamp);
            p.Direction = ParameterDirection.Input;
            p.Value = MySqlConnectionHelper.RoundToSeconds(dt);
            return p;
        }

        /////////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////////
        private MySqlParameter CreateMySqlParam(string paramName, MySqlDbType MySqlDbType, object objValue)
        {

            MySqlParameter param = new MySqlParameter(paramName, MySqlDbType);

            if (objValue == null)
            {
                param.IsNullable = true;
                param.Value = DBNull.Value;
            }
            else
            {
                param.Value = objValue;
            }

            return param;
        }
    }
}
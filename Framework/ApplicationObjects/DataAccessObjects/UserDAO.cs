using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient;
using System.Data;
using System.Reflection;
using System.IO;
using System.Windows.Forms;

using JBC_PMIS_Government.Global;

namespace JBC_PMIS_Government.ApplicationObjects.DataAccessObjects
{
    public class UserDAO
    {
        #region "VARIABLES"
        MySqlConnection conn;
        CryptorEngine loCryptoEngine;
        string myConnectionString;
        string lUsername;
        string lPassword;
        string lFullname;
        string lUserGroupId;
        #endregion

        #region "CONSTRUCTORS"
        public UserDAO()
        {
            myConnectionString = "";
            lUsername = "";
            lPassword = "";
            lFullname = "";
            lUserGroupId = "";
            loCryptoEngine = new CryptorEngine();
        }
        #endregion

        #region "METHODS"
        public DataTable getUsers(string pDisplayType, string pSearchString)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetUsers('"+pDisplayType+"','"+pSearchString+"')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable getUser(string pUsername)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetUser('" + pUsername + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable getUserInfo(string pUsername)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetUserInfo('" + pUsername + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool connectDatabase()
        {
            string line = null;
            System.IO.TextReader readFile = new StreamReader("...\\databaseconnection.txt");
            line = readFile.ReadLine();
            if (line != null)
            {
                string _StringToRead = loCryptoEngine.DecryptString(line);
                myConnectionString = _StringToRead;
            }
            readFile.Close();
            readFile = null;

            try
            {
                conn = new MySqlConnection(myConnectionString);
                conn.Open();
                GlobalVariables.Connection = conn;
                return true;
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
                return false;
            }
        }

        public bool authenticateUser(string pUsername, string pPassword)
        {
            DataTable _dt = new DataTable();
            GlobalVariables.Hostname = System.Net.Dns.GetHostName();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spAuthenticateUser('" + pUsername + "','" + pPassword + "','" + GlobalVariables.Hostname + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                if (_dt.Rows.Count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch
            {
                return false;
            }
        }
        public bool checkUserPassword(string pCurrentPassword)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spCheckUserPassword('" + pCurrentPassword + "','" + GlobalVariables.Username + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                if (_dt.Rows.Count > 0)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }
        public bool changePassword(string pNewPassword, string pCurrentPassword)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spChangePassword('" + GlobalVariables.Username + "','" +
                                pNewPassword + "','" + pCurrentPassword + "','" + GlobalVariables.Hostname + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = _myTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    _myTrans.Commit();
                    if (_RowsAffected > 0)
                    {
                        _success = true;
                    }
                    else
                    {
                        _success = false;
                    }
                    return _success;
                }
                catch (Exception ex)
                {
                    _myTrans.Rollback();
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void loadAttributes(object pObject)
        {
            lUsername = pObject.GetType().GetProperty("Username").GetValue(pObject, null).ToString();
            lPassword = pObject.GetType().GetProperty("Password").GetValue(pObject, null).ToString();
            lFullname = pObject.GetType().GetProperty("Fullname").GetValue(pObject, null).ToString();
            lUserGroupId = pObject.GetType().GetProperty("UserGroupId").GetValue(pObject, null).ToString();
        }
        public bool insertUser(object pObject)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                loadAttributes(pObject);
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spInsertUser('" + lUsername + "', '" +
                                                                             lPassword + "','" +
                                                                             lFullname + "','" +
                                                                             lUserGroupId + "','" +
                                                                            GlobalVariables.Username + "','" +
                                                                            GlobalVariables.Hostname + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = _myTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    _myTrans.Commit();
                    if (_RowsAffected > 0)
                    {
                        _success = true;
                    }
                    else
                    {
                        _success = false;
                    }
                    return _success;
                }
                catch (Exception ex)
                {
                    _myTrans.Rollback();
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool updateUser(object pObject)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                loadAttributes(pObject);
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spUpdateUser('" + lUsername + "', '" +
                                                                             lPassword + "','" +
                                                                             lFullname + "','" +
                                                                             lUserGroupId + "','" +
                                                                            GlobalVariables.Username + "','" +
                                                                            GlobalVariables.Hostname + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = _myTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    _myTrans.Commit();
                    if (_RowsAffected > 0)
                    {
                        _success = true;
                    }
                    else
                    {
                        _success = false;
                    }
                    return _success;
                }
                catch (Exception ex)
                {
                    _myTrans.Rollback();
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool removeUser(string pUsername, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveUser('" + pUsername + "','" +
                                                                            GlobalVariables.Username + "','" +
                                                                            GlobalVariables.Hostname + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = pTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    if (_RowsAffected > 0)
                    {
                        _success = true;
                    }
                    else
                    {
                        _success = false;
                    }
                    return _success;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion
    }
}

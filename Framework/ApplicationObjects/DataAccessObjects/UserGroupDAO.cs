﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Reflection;

using JBC_PMIS_Government.Global;

namespace JBC_PMIS_Government.ApplicationObjects.DataAccessObjects
{
    class UserGroupDAO
    {
        #region "VARIABLES"
        string lUserGroupId = "";
        string lUserGroupDesc = "";
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public UserGroupDAO()
        {

        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            try
            {
                lUserGroupId = pObject.GetType().GetProperty("UserGroupId").GetValue(pObject, null).ToString();
            }
            catch { }
            lUserGroupDesc = pObject.GetType().GetProperty("UserGroupDesc").GetValue(pObject, null).ToString();
        }

        public DataTable getUserGroups(string pDisplayType, string pSearchString)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetUserGroups('"+pDisplayType+"','"+pSearchString+"')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getUserGroupMenuItems()
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetUserGroupMenuItems('" + GlobalVariables.Username + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable getUserGroupRights()
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetUserGroupRights('" + GlobalVariables.Username + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public DataTable getMenuItemsByGroup(string pUserGroupId)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetMenuItemsByUserGroup('" + pUserGroupId + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getAllMenuItems()
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetAllMenuItems()", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable getAllRights(string pItemName)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetAllRights('" + pItemName + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public DataTable getEnableRights(string pItemName, string pUserGroupId)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetEnableRights('" + pItemName + "','" + pUserGroupId + "')", GlobalVariables.Connection);
                _da.Fill(_dt);
                return _dt;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public bool insertUserGroup(object pObject)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                loadAttributes(pObject);
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spInsertUserGroup('" + lUserGroupDesc + "', '" +
                                                                           GlobalVariables.Username + "', '" +
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

        public bool updateUserGroup(object pObject)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                loadAttributes(pObject);
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spUpdateUserGroup('" + lUserGroupId + "', '" +
                                                                             lUserGroupDesc + "', '" +
                                                                             GlobalVariables.Username + "', '" +
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

        public bool updateUserGroupMenuItem(string pUserGroupId, DataTable pMenuItems)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                removeAllUserGroup(pUserGroupId);
                foreach (DataRow _dr in pMenuItems.Rows)
                {
                    if (_dr["Status"].ToString() == "Enable")
                    {
                        _myTrans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            MySqlCommand _cmd = new MySqlCommand("call spUpdateUserGroupMenuItem('" + pUserGroupId + "','" +
                                                                                        _dr["MenuName"].ToString() + "','" +
                                                                                        _dr["ItemName"].ToString() + "')", GlobalVariables.Connection);

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
                        }
                        catch (Exception ex)
                        {
                            _myTrans.Rollback();
                            throw ex;
                        }
                    }
                }
                return _success;
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        public bool updateUserGroupRights(string pUserGroupId, string pItemName, DataTable pRights)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                removeAllRights(pUserGroupId, pItemName);
                foreach (DataRow _dr in pRights.Rows)
                {
                    _success = true;
                    if (_dr["RightStatus"].ToString() == "Enable")
                    {
                        _myTrans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            MySqlCommand _cmd = new MySqlCommand("call spUpdateUserGroupRights('" + pUserGroupId + "','" +
                                                                                        _dr["RightsItemName"].ToString() + "','" +
                                                                                        _dr["Rights"].ToString() + "')", GlobalVariables.Connection);

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
                        }
                        catch (Exception ex)
                        {
                            _myTrans.Rollback();
                            throw new Exception(ex.Message);
                        }
                    }
                }
                return _success;
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }
        public bool removeUserGroup(string pUserGroupId)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spRemoveUserGroup('" + pUserGroupId + "')", GlobalVariables.Connection);
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

        public bool removeAllUserGroup(string pUserGroupId)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spRemoveAllUserGroup('" + pUserGroupId + "')", GlobalVariables.Connection);
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
        public bool removeAllRights(string pUserGroupId, string pItemName)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spRemoveAllRights('" + pUserGroupId + "','" +
                                                                            pItemName + "','" +
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
                    throw new Exception(ex.Message);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        #endregion "END OF METHODS"
    }
}

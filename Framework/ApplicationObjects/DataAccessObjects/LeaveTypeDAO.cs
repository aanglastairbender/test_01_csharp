using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Reflection;

using JBC_PMIS_Government.Global;

namespace JBC_PMIS_Government.ApplicationObjects.DataAccessObjects
{
    class LeaveTypeDAO
    {
        #region "VARIABLES"
        string lLeaveTypeCode;
        string lLeaveTypeDescription;
        string lCategory;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public LeaveTypeDAO()
        {
            lLeaveTypeCode = "";
            lLeaveTypeDescription = "";
            lCategory = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            lLeaveTypeCode = pObject.GetType().GetProperty("LeaveTypeCode").GetValue(pObject, null).ToString();
            lLeaveTypeDescription = pObject.GetType().GetProperty("LeaveTypeDescription").GetValue(pObject, null).ToString();
            lCategory = pObject.GetType().GetProperty("Category").GetValue(pObject, null).ToString();
        }
        public DataTable getLeaveTypes(string pDisplayType, string pSearchString)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetLeaveTypes('" + pDisplayType + "','" + pSearchString + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertLeaveType(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertLeaveType('" + lLeaveTypeCode + "', '" +
                                                                           lLeaveTypeDescription + "','" +
                                                                           lCategory + "','" +
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

        public bool updateLeaveType(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateLeaveType('" + lLeaveTypeCode + "', '" +
                                                                             lLeaveTypeDescription + "','" +
                                                                             lCategory + "','" +
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

        public bool removeLeaveType(string pLeaveTypeCode, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveLeaveType('" + pLeaveTypeCode + "','" +
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
        #endregion "END OF METHODS"
    }
}

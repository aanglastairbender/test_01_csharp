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
    class OvertimeEntryDAO
    {
        #region "VARIABLES"
        string lOvertimeEntryId;
        DateTime lDate;
        string lEmployeeNo;
        DateTime lTimeIn;
        DateTime lTimeOut;
        DateTime lOvertime;
        string lRemarks;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public OvertimeEntryDAO()
        {
            lOvertimeEntryId = "";
            lEmployeeNo = "";
            lRemarks = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            try
            {
                lOvertimeEntryId = pObject.GetType().GetProperty("OvertimeEntryId").GetValue(pObject, null).ToString();
            }
            catch { }
            lDate = DateTime.Parse(pObject.GetType().GetProperty("Date").GetValue(pObject, null).ToString());
            lEmployeeNo = pObject.GetType().GetProperty("EmployeeNo").GetValue(pObject, null).ToString();
            lTimeIn = DateTime.Parse(pObject.GetType().GetProperty("TimeIn").GetValue(pObject, null).ToString());
            lTimeOut = DateTime.Parse(pObject.GetType().GetProperty("TimeOut").GetValue(pObject, null).ToString());
            lOvertime = DateTime.Parse(pObject.GetType().GetProperty("Overtime").GetValue(pObject, null).ToString());
            lRemarks = pObject.GetType().GetProperty("Remarks").GetValue(pObject, null).ToString();
        }

        public DataTable getOvertimeEntries(string pEmploymentNo, DateTime pFromDate, DateTime pToDate)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetOvertimeEntries('" + pEmploymentNo + "','" + 
                                                                        String.Format("{0:yyyy-MM-dd}", pFromDate) + "','" +
                                                                        String.Format("{0:yyyy-MM-dd}", pToDate) + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getOvertimeEntryEmployeeList(string pEmploymentType, DateTime pFromDate, DateTime pToDate,
                                        string pSearchString, string pDepartmentCode)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetOvertimeEntryEmployeeList('" + pEmploymentType + "','" +
                                                                        String.Format("{0:yyyy-MM-dd}", pFromDate) + "','" +
                                                                        String.Format("{0:yyyy-MM-dd}", pToDate) + "','" +
                                                                        String.Format("{0:yyyy-MM-dd}", pSearchString) + "','" +
                                                                        String.Format("{0:yyyy-MM-dd}", pDepartmentCode) + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getOvertimeEntry(string pOvertimeEntryId)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetOvertimeEntry('" + pOvertimeEntryId + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getOvertimeEntryStatus(string pOvertimeEntryId)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetOvertimeEntryStatus('" + pOvertimeEntryId + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertOvertimeEntry(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertOvertimeEntry('" + String.Format("{0:yyyy-MM-dd}", lDate) + "', '" +                                                     
                                                                           lEmployeeNo + "','" +
                                                                           lTimeIn.ToString("yyyy-MM-dd H:mm") + "','" +
                                                                           lTimeOut.ToString("yyyy-MM-dd H:mm") + "','" +
                                                                           lOvertime.ToString("H:mm") + "','" +
                                                                           lRemarks + "','" +
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

        public bool updateOvertimeEntry(object pObject,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateOvertimeEntry('" + lOvertimeEntryId + "', '" +
                                                                           String.Format("{0:yyyy-MM-dd}", lDate) + "', '" +
                                                                           lEmployeeNo + "','" +
                                                                           lTimeIn.ToString("H:mm") + "','" +
                                                                           lTimeOut.ToString("H:mm") + "','" +
                                                                           lOvertime.ToString("H:mm") + "','" +
                                                                           lRemarks + "','" +
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

        public bool removeOvertimeEntry(string pOvertimeEntryId,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveOvertimeEntry('" + pOvertimeEntryId + "','" +
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

        public bool approveOvertimeEntry(string pOvertimeEntryId, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spApproveOvertimeEntry('" + pOvertimeEntryId + "','" +
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

        public bool cancelOvertimeEntry(string pOvertimeEntryId, string pCancelReason, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spCancelOvertimeEntry('" + pOvertimeEntryId + "','" +
                                                                           pCancelReason + "','" +
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

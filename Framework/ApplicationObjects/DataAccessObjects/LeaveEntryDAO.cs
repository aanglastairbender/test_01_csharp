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
    class LeaveEntryDAO
    {
        #region "VARIABLES"
        string lLeaveEntryId;
        string lEmployeeNo;
        string lLeaveTypeCode;
        string lReferenceNo;
        DateTime lDate;
        string lTime;
        string lExplanation;
        string lRemarks;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public LeaveEntryDAO()
        {
            lLeaveEntryId = "";
            lEmployeeNo = "";
            lLeaveTypeCode = "";
            lReferenceNo = "";
            lTime = "";
            lExplanation = "";
            lRemarks = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            try
            {
                lLeaveEntryId = pObject.GetType().GetProperty("LeaveEntryId").GetValue(pObject, null).ToString();
            }
            catch { }
            lEmployeeNo = pObject.GetType().GetProperty("EmployeeNo").GetValue(pObject, null).ToString();
            lLeaveTypeCode = pObject.GetType().GetProperty("LeaveTypeCode").GetValue(pObject, null).ToString();
            lReferenceNo = pObject.GetType().GetProperty("ReferenceNo").GetValue(pObject, null).ToString();
            lDate = DateTime.Parse(pObject.GetType().GetProperty("Date").GetValue(pObject, null).ToString());
            lTime = pObject.GetType().GetProperty("Time").GetValue(pObject, null).ToString();
            lExplanation = pObject.GetType().GetProperty("Explanation").GetValue(pObject, null).ToString();
            lRemarks = pObject.GetType().GetProperty("Remarks").GetValue(pObject, null).ToString();
        }

        public DataTable getLeaveEntries(string pEmploymentType, DateTime pStartDate, DateTime pEndDate, string pSearchString, string pDepartmentCode)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetLeaveEntries('" + pEmploymentType + "','" +
                                string.Format("{0:yyyy-MM-dd}", pStartDate) + "','" +
                                string.Format("{0:yyyy-MM-dd}", pEndDate) + "','" +
                                pSearchString + "','" + 
                                pDepartmentCode + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getLeaveEntry(string pLeaveEntryId)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetLeaveEntry('" + pLeaveEntryId + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getLeaveEntryStatus(string pLeaveEntryId)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetLeaveEntryStatus('" + pLeaveEntryId + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertLeaveEntry(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertLeaveEntry('" + lEmployeeNo + "', '" +
                                                                           lLeaveTypeCode + "','" +
                                                                           lReferenceNo + "','" +
                                                                           String.Format("{0:yyyy-MM-dd}", lDate) + "','" +
                                                                           lTime + "','" +
                                                                           lExplanation + "','" +
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

        public bool updateLeaveEntry(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateLeaveEntry('" + lLeaveEntryId + "', '" +
                                                                           lEmployeeNo + "', '" +
                                                                           lLeaveTypeCode + "','" +
                                                                           lReferenceNo + "','" +
                                                                           String.Format("{0:yyyy-MM-dd}", lDate) + "','" +
                                                                           lTime + "','" +
                                                                           lExplanation + "','" +
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

        public bool removeLeaveEntry(string pLeaveEntryId, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveLeaveEntry('" + pLeaveEntryId + "','" +
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

        public bool approveLeaveEntry(string pLeaveEntryId, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spApproveLeaveEntry('" + pLeaveEntryId + "','" +
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

        public bool cancelLeaveEntry(string pLeaveEntryId,string pCancelReason, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spCancelLeaveEntry('" + pLeaveEntryId + "','" +
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

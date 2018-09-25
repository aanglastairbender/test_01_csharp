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
    class OfficialBusinessEntryDAO
    {
        #region "VARIABLES"
        string lOfficialBusinessEntryId;
        DateTime lDate;
        string lEmployeeNo;
        string lType;
        string lReferenceNo;
        string lCheckIn;
        string lBreakOut;
        string lBreakIn;
        string lCheckOut;
        string lPurpose;
        string lRemarks;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public OfficialBusinessEntryDAO()
        {
            lOfficialBusinessEntryId = "";
            lEmployeeNo = "";
            lType = "";
            lReferenceNo = "";
            lCheckIn = "";
            lBreakOut = "";
            lBreakIn = "";
            lCheckOut = "";
            lPurpose = "";
            lRemarks = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            try
            {
                lOfficialBusinessEntryId = pObject.GetType().GetProperty("OfficialBusinessEntryId").GetValue(pObject, null).ToString();
            }
            catch { }
            lDate = DateTime.Parse(pObject.GetType().GetProperty("Date").GetValue(pObject, null).ToString());
            lEmployeeNo = pObject.GetType().GetProperty("EmployeeNo").GetValue(pObject, null).ToString();
            lType = pObject.GetType().GetProperty("Type").GetValue(pObject, null).ToString();
            lReferenceNo = pObject.GetType().GetProperty("ReferenceNo").GetValue(pObject, null).ToString();
            lCheckIn = pObject.GetType().GetProperty("CheckIn").GetValue(pObject, null).ToString();
            lBreakOut = pObject.GetType().GetProperty("BreakOut").GetValue(pObject, null).ToString();
            lBreakIn = pObject.GetType().GetProperty("BreakIn").GetValue(pObject, null).ToString();
            lCheckOut = pObject.GetType().GetProperty("CheckOut").GetValue(pObject, null).ToString();
            lPurpose = pObject.GetType().GetProperty("Purpose").GetValue(pObject, null).ToString();
            lRemarks = pObject.GetType().GetProperty("Remarks").GetValue(pObject, null).ToString();
        }

        public DataTable getOfficialBusinessEntries(string pEmploymentType, DateTime pFromDate, DateTime pToDate,string pSearchString,string pDepartmentCode)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetOfficialBusinessEntries('" + pEmploymentType + "','" + 
                                    string.Format("{0:yyyy-MM-dd}",pFromDate) + "','"+
                                    string.Format("{0:yyyy-MM-dd}", pToDate) + "','" +
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

        public DataTable getOfficialBusinessEntry(string pOfficialBusinessEntryId)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetOfficialBusinessEntry('" + pOfficialBusinessEntryId + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getOfficialBusinessEntryStatus(string pOfficialBusinessEntryId)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetOfficialBusinessEntryStatus('" + pOfficialBusinessEntryId + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertOBEntry(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertOfficialBusinessEntry('" + string.Format("{0:yyyy-MM-dd}",lDate) + "', '" +
                                                                           lEmployeeNo + "','" +
                                                                           lType + "','" +
                                                                           lReferenceNo + "','" +
                                                                           lCheckIn + "','" +
                                                                           lBreakOut + "','" +
                                                                           lBreakIn + "','" +
                                                                           lCheckOut + "','" +
                                                                           lPurpose + "','" +
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

        public bool updateOBEntry(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateOfficialBusinessEntry('" + lOfficialBusinessEntryId + "', '" +
                                                                           string.Format("{0:yyyy-MM-dd}", lDate) + "', '" +
                                                                           lEmployeeNo + "','" +
                                                                           lType + "','" +
                                                                           lReferenceNo + "','" +
                                                                           lCheckIn + "','" +
                                                                           lBreakOut + "','" +
                                                                           lBreakIn + "','" +
                                                                           lCheckOut + "','" +
                                                                           lPurpose + "','" +
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

        public bool removeOfficialBusinessEntry(string pOfficialBusinessEntryId, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveOfficialBusinessEntry('" + pOfficialBusinessEntryId + "','" +
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

        public bool approveOfficialBusinessEntry(string pOfficialBusinessEntryId, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spApproveOfficialBusinessEntry('" + pOfficialBusinessEntryId + "','" +
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

        public bool cancelOfficialBusinessEntry(string pOfficialBusinessEntryId,string pCancelReason, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spCancelOfficialBusinessEntry('" + pOfficialBusinessEntryId + "','" +
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

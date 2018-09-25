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
    class DailyTimeRecordDAO
    {
        #region "VARIABLES"
        string lDailyTimeRecordId;
        DateTime lDate;
        string lEmployeeNo;
        string lTimeIn;
        string lBreakOut;
        string lBreakIn;
        string lTimeOut;
        string lOvertimeIn;
        string lOvertimeOut;
        string lLate;
        string lUndertime;
        string lOvertime;
        string lHoursWork;
        string lRemarks;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public DailyTimeRecordDAO()
        {
            lDailyTimeRecordId = "";
            lEmployeeNo = "";
            lTimeIn = "";
            lBreakOut = "";
            lBreakIn = "";
            lTimeOut = "";
            lOvertimeIn = "";
            lOvertimeOut = "";
            lLate = "";
            lUndertime = "";
            lOvertime = "";
            lHoursWork = "";
            lRemarks = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            try
            {
                lDailyTimeRecordId = pObject.GetType().GetProperty("DailyTimeRecordId").GetValue(pObject, null).ToString();
            }
            catch { }
            lDate = DateTime.Parse(pObject.GetType().GetProperty("Date").GetValue(pObject, null).ToString());
            lEmployeeNo = pObject.GetType().GetProperty("EmployeeNo").GetValue(pObject, null).ToString();

            lTimeIn = pObject.GetType().GetProperty("TimeIn").GetValue(pObject, null).ToString();
            lBreakOut = pObject.GetType().GetProperty("BreakOut").GetValue(pObject, null).ToString();
            lBreakIn = pObject.GetType().GetProperty("BreakIn").GetValue(pObject, null).ToString();
            lTimeOut = pObject.GetType().GetProperty("TimeOut").GetValue(pObject, null).ToString();
            lOvertimeIn = pObject.GetType().GetProperty("OvertimeIn").GetValue(pObject, null).ToString();
            lOvertimeOut = pObject.GetType().GetProperty("OvertimeOut").GetValue(pObject, null).ToString();

            lLate = pObject.GetType().GetProperty("Late").GetValue(pObject, null).ToString();
            lUndertime = pObject.GetType().GetProperty("Undertime").GetValue(pObject, null).ToString();
            lOvertime = pObject.GetType().GetProperty("Overtime").GetValue(pObject, null).ToString();
            lHoursWork = pObject.GetType().GetProperty("HoursWork").GetValue(pObject, null).ToString();
            lRemarks = pObject.GetType().GetProperty("Remarks").GetValue(pObject, null).ToString();
        }

        public DataTable getDailyTimeRecords(string pDisplayType, string pSearchString)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetDailyTimeRecords('"+pDisplayType+"','"+pSearchString+"')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getDailyTimeRecord(string pEmployeeNo, DateTime pDate)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetDailyTimeRecord('" + pEmployeeNo + "','" + string.Format("{0:yyyy-MM-dd}", pDate) + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getEmployeeListRegular(string pEmploymentType,string pSearchString, string pDepartmentCode)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetEmployeeListRegular('" + pEmploymentType + "','" + 
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

        public DataTable getEmployeeListHospital(string pEmploymentType, string pSearchString)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetEmployeeListHospital('" + pEmploymentType + "','" +
                    pSearchString + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getDaiylTimeRecordRegular(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetDailyTimeRecordRegular('" + pEmployeeNo + "','" +
                    string.Format("{0:yyyy-MM-dd}", pFromDate) + "','" +
                    string.Format("{0:yyyy-MM-dd}", pToDate) + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getDaiylTimeRecordHospital(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetDailyTimeRecordHospital('" + pEmployeeNo + "','" +
                    string.Format("{0:yyyy-MM-dd}", pFromDate) + "','" +
                    string.Format("{0:yyyy-MM-dd}", pToDate) + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable createDTRDate(string pEmployeeNo, DateTime pFromDate, DateTime pToDate, string pWorkScheduleCode)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spCreateDTRDate('" + pEmployeeNo + "','" +
                    string.Format("{0:yyyy-MM-dd}", pFromDate) + "','" +
                    string.Format("{0:yyyy-MM-dd}", pToDate) + "','" +
                    pWorkScheduleCode + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable insertAttendanceForNoWorkSchedule(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spInsertAttendanceForNoWorkSchedule('" + pEmployeeNo + "','" +
                    string.Format("{0:yyyy-MM-dd}", pFromDate) + "','" +
                    string.Format("{0:yyyy-MM-dd}", pToDate) + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getLastTimeIn(string pEmployeeNo)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetLastTimeIn('" + pEmployeeNo + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getAttendanceSummary(string pEmploymentType, DateTime pFromDate, DateTime pToDate)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetAttendanceSummary('" + pEmploymentType + "','" + string.Format("{0:yyyy-MM-dd}", pFromDate) + "','" + string.Format("{0:yyyy-MM-dd}", pToDate) + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getCSForm48Details(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetCSForm48Details('" + pEmployeeNo + "','" +
                    string.Format("{0:yyyy-MM-dd}", pFromDate) + "','" +
                    string.Format("{0:yyyy-MM-dd}", pToDate) + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getCSForm48Total(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetCSForm48Total('" + pEmployeeNo + "','" +
                    string.Format("{0:yyyy-MM-dd}", pFromDate) + "','" +
                    string.Format("{0:yyyy-MM-dd}", pToDate) + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertDailyTimeRecord(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertDailyTimeRecord('" + string.Format("{0:yyyy-MM-dd}", lDate) + "', '" +
                                                                           lEmployeeNo + "','" +
                                                                           lTimeIn + "','" +
                                                                           lBreakOut + "','" +
                                                                           lBreakIn + "','" +
                                                                           lTimeOut + "','" +
                                                                           lOvertimeIn + "','" +
                                                                           lOvertimeOut + "','" +
                                                                           lLate + "','" +
                                                                           lUndertime + "','" +
                                                                           lOvertime + "','" +
                                                                           lHoursWork + "','" +
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

        public bool updateDailyTimeRecord(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateDailyTimeRecord('" + lDailyTimeRecordId + "', '" +
                                                                           lTimeIn + "','" +
                                                                           lBreakOut + "','" +
                                                                           lBreakIn + "','" +
                                                                           lTimeOut + "','" +
                                                                           lOvertimeIn + "','" +
                                                                           lOvertimeOut + "','" +
                                                                           lLate + "','" +
                                                                           lUndertime + "','" +
                                                                           lOvertime + "','" +
                                                                           lHoursWork.Replace("#","") + "','" +
                                                                           lRemarks + "')", GlobalVariables.Connection);
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

        #region "INSERT LOGS(IN's and OUT's)"
        public bool insertTimeIn(DateTime pDate,string pEmployeeNo,string pTimeIn,string pLate, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spInsertTimeIn('" + string.Format("{0:yyyy-MM-dd}", pDate) + "', '" +
                                                                           pEmployeeNo + "','" +
                                                                           pTimeIn + "','" +
                                                                           pLate + "','" +
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

        public bool insertBreakOut(DateTime pDate, string pEmployeeNo, string pBreakOut, string pUndertime, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spInsertBreakOut('" + string.Format("{0:yyyy-MM-dd}", pDate) + "', '" +
                                                                           pEmployeeNo + "','" +
                                                                           pBreakOut + "','" +
                                                                           pUndertime + "','" +
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

        public bool insertBreakIn(DateTime pDate, string pEmployeeNo, string pBreakIn, string pLate, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spInsertBreakIn('" + string.Format("{0:yyyy-MM-dd}", pDate) + "', '" +
                                                                           pEmployeeNo + "','" +
                                                                           pBreakIn + "','" +
                                                                           pLate + "','" +
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

        public bool insertTimeOut(DateTime pDate, string pEmployeeNo, string pTimeOut, string pUndertime, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spInsertTimeOut('" + string.Format("{0:yyyy-MM-dd}", pDate) + "', '" +
                                                                           pEmployeeNo + "','" +
                                                                           pTimeOut + "','" +
                                                                           pUndertime + "','" +
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

        public bool insertTimeOutHospital(DateTime pDate, string pEmployeeNo, string pTimeOut, string pUndertime,string pHoursWork, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spInsertTimeOutHospital('" + string.Format("{0:yyyy-MM-dd}", pDate) + "', '" +
                                                                           pEmployeeNo + "','" +
                                                                           pTimeOut + "','" +
                                                                           pUndertime + "','" +
                                                                           pHoursWork.Replace(".00","") + "','" +
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

        public bool insertOvertimeIn(DateTime pDate, string pEmployeeNo, string pOvertimeIn, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spInsertOvertimeIn('" + string.Format("{0:yyyy-MM-dd}", pDate) + "', '" +
                                                                           pEmployeeNo + "','" +
                                                                           pOvertimeIn + "','" +
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

        public bool insertOvertimeOut(DateTime pDate, string pEmployeeNo, string pOvertimeOut, string pOvertime, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spInsertOvertimeOut('" + string.Format("{0:yyyy-MM-dd}", pDate) + "', '" +
                                                                           pEmployeeNo + "','" +
                                                                           pOvertimeOut + "','" +
                                                                           pOvertime + "','" +
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

        public bool removeDailyTimeRecord(string pDailyTimeRecordId,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveDailyTimeRecord('" + pDailyTimeRecordId + "','" +
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

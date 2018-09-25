using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Collections;
using System.Reflection;
using MySql.Data.MySqlClient;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.DataAccessObjects;

namespace JBC_PMIS_Government.ApplicationObjects.Classes
{
    class DailyTimeRecord
    {
        #region "VARIABLES"
        DailyTimeRecordDAO loDailyTimeRecordDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public DailyTimeRecord()
        {
            loDailyTimeRecordDAO = new DailyTimeRecordDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string DailyTimeRecordId
        {
            get;
            set;
        }
        public DateTime Date
        {
            get;
            set;
        }
        public string EmployeeNo
        {
            get;
            set;
        }
        public string TimeIn
        {
            get;
            set;
        }
        public string BreakOut
        {
            get;
            set;
        }
        public string BreakIn
        {
            get;
            set;
        }
        public string TimeOut
        {
            get;
            set;
        }
        public string OvertimeIn
        {
            get;
            set;
        }
        public string OvertimeOut
        {
            get;
            set;
        }
        public string Late
        {
            get;
            set;
        }
        public string Undertime
        {
            get;
            set;
        }
        public string Overtime
        {
            get;
            set;
        }
        public string HoursWork
        {
            get;
            set;
        }
        public string Remarks
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public DataTable getAllData(string pDisplayType, string pSearchString)
        {
            return loDailyTimeRecordDAO.getDailyTimeRecords(pDisplayType,pSearchString);
        }

        public DataTable getEmployeeListRegular(string pEmploymentType,string pSearchString, string pDepartmentCode)
        {
            return loDailyTimeRecordDAO.getEmployeeListRegular(pEmploymentType, pSearchString, pDepartmentCode);
        }

        public DataTable getEmployeeListHospital(string pEmploymentType, string pSearchString)
        {
            return loDailyTimeRecordDAO.getEmployeeListHospital(pEmploymentType, pSearchString);
        }

        public DataTable getDaiylTimeRecordRegular(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            return loDailyTimeRecordDAO.getDaiylTimeRecordRegular(pEmployeeNo, pFromDate, pToDate);
        }

        public DataTable getDaiylTimeRecordHospital(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            return loDailyTimeRecordDAO.getDaiylTimeRecordHospital(pEmployeeNo, pFromDate, pToDate);
        }

        public DataTable createDTRDate(string pEmployeeNo, DateTime pFromDate, DateTime pToDate, string pWorkScheduleCode)
        {
            return loDailyTimeRecordDAO.createDTRDate(pEmployeeNo, pFromDate, pToDate, pWorkScheduleCode);
        }

        public DataTable insertAttendanceForNoWorkSchedule(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            return loDailyTimeRecordDAO.insertAttendanceForNoWorkSchedule(pEmployeeNo, pFromDate, pToDate);
        }

        public DataTable getLastTimeIn(string pEmployeeNo)
        {
            return loDailyTimeRecordDAO.getLastTimeIn(pEmployeeNo);
        }

        public DataTable getAttendanceSummary(string pEmploymentType, DateTime pFromDate, DateTime pToDate)
        {
            return loDailyTimeRecordDAO.getAttendanceSummary(pEmploymentType, pFromDate, pToDate);
        }

        public DataTable getCSForm48Details(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            return loDailyTimeRecordDAO.getCSForm48Details(pEmployeeNo, pFromDate, pToDate);
        }

        public DataTable getCSForm48Total(string pEmployeeNo, DateTime pFromDate, DateTime pToDate)
        {
            return loDailyTimeRecordDAO.getCSForm48Total(pEmployeeNo, pFromDate, pToDate);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loDailyTimeRecordDAO.insertDailyTimeRecord(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loDailyTimeRecordDAO.updateDailyTimeRecord(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        #region "Insert Logs"

        public bool insertTimeIn(DateTime pDate,string pEmployeeNo,string pTimeIn,string pLate, ref MySqlTransaction pTrans)
        {
            return loDailyTimeRecordDAO.insertTimeIn(pDate,pEmployeeNo,pTimeIn,pLate, ref pTrans);
        }

        public bool insertBreakOut(DateTime pDate, string pEmployeeNo, string pBreakOut, string pUndertime, ref MySqlTransaction pTrans)
        {
            return loDailyTimeRecordDAO.insertBreakOut(pDate, pEmployeeNo, pBreakOut, pUndertime, ref pTrans);
        }

        public bool insertBreakIn(DateTime pDate, string pEmployeeNo, string pBreakIn, string pLate, ref MySqlTransaction pTrans)
        {
            return loDailyTimeRecordDAO.insertBreakIn(pDate, pEmployeeNo, pBreakIn, pLate, ref pTrans);
        }

        public bool insertTimeOut(DateTime pDate, string pEmployeeNo, string pTimeOut, string pUndertime, ref MySqlTransaction pTrans)
        {
            return loDailyTimeRecordDAO.insertTimeOut(pDate, pEmployeeNo, pTimeOut, pUndertime, ref pTrans);
        }

        public bool insertTimeOutHospital(DateTime pDate, string pEmployeeNo, string pTimeOut, string pUndertime,string pHoursWork, ref MySqlTransaction pTrans)
        {
            return loDailyTimeRecordDAO.insertTimeOutHospital(pDate, pEmployeeNo, pTimeOut, pUndertime, pHoursWork, ref pTrans);
        }

        public bool insertOvertimeIn(DateTime pDate, string pEmployeeNo, string pOvertimeIn,ref MySqlTransaction pTrans)
        {
            return loDailyTimeRecordDAO.insertOvertimeIn(pDate, pEmployeeNo, pOvertimeIn,ref pTrans);
        }

        public bool insertOvertimeOut(DateTime pDate, string pEmployeeNo, string pOvertimeOut, string pOvertime, ref MySqlTransaction pTrans)
        {
            return loDailyTimeRecordDAO.insertTimeIn(pDate, pEmployeeNo, pOvertimeOut, pOvertime, ref pTrans);
        }
        #endregion

        public bool remove(string pDailyTimeRecordCode, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loDailyTimeRecordDAO.removeDailyTimeRecord(pDailyTimeRecordCode, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }
        #endregion "END OF METHODS"
    }
}

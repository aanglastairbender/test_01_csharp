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
    class OvertimeEntry
    {
        #region "VARIABLES"
        OvertimeEntryDAO loOvertimeEntryDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public OvertimeEntry()
        {
            loOvertimeEntryDAO = new OvertimeEntryDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string OvertimeEntryId
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
        public DateTime TimeIn
        {
            get;
            set;
        }
        public DateTime TimeOut
        {
            get;
            set;
        }
        public DateTime Overtime
        {
            get;
            set;
        }
        public string Approve
        {
            get;
            set;
        }
        public string ApprovedBy
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
        public DataTable getOvertimeEntries(string pEmploymentNo,DateTime pFromDate, DateTime pToDate)
        {
            return loOvertimeEntryDAO.getOvertimeEntries(pEmploymentNo, pFromDate, pToDate);
        }

        public DataTable getOvertimeEntryEmployeeList(string pEmploymentType, DateTime pFromDate, DateTime pToDate,
                                    string pSearchString, string pDepartmentCode)
        {
            return loOvertimeEntryDAO.getOvertimeEntryEmployeeList(pEmploymentType, pFromDate, pToDate,pSearchString,pDepartmentCode);
        }

        public DataTable getOvertimeEntry(string pOvertimeEntryId)
        {
            return loOvertimeEntryDAO.getOvertimeEntry(pOvertimeEntryId);
        }

        public DataTable getOvertimeEntryStatus(string pOvertimeEntryId)
        {
            return loOvertimeEntryDAO.getOvertimeEntryStatus(pOvertimeEntryId);
        }


        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loOvertimeEntryDAO.insertOvertimeEntry(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loOvertimeEntryDAO.updateOvertimeEntry(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool remove(string pOvertimeEntryCode, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loOvertimeEntryDAO.removeOvertimeEntry(pOvertimeEntryCode, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }

        public bool approve(string pOvertimeEntryId, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loOvertimeEntryDAO.approveOvertimeEntry(pOvertimeEntryId, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }

        public bool cancel(string pOvertimeEntryId,string pCancelReason, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loOvertimeEntryDAO.cancelOvertimeEntry(pOvertimeEntryId,pCancelReason, ref pTrans);
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

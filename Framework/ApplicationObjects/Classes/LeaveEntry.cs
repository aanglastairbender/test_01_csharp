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
    class LeaveEntry
    {
        #region "VARIABLES"
        LeaveEntryDAO loLeaveEntryDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public LeaveEntry()
        {
            loLeaveEntryDAO = new LeaveEntryDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string LeaveEntryId
        {
            get;
            set;
        }
        public string EmployeeNo
        {
            get;
            set;
        }
        public string LeaveTypeCode
        {
            get;
            set;
        }
        public string ReferenceNo
        {
            get;
            set;
        }
        public DateTime Date
        {
            get;
            set;
        }
        public string Time
        {
            get;
            set;
        }
        public string Explanation
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
        public DateTime DateFiled
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
        public DataTable getLeaveEntries(string pEmploymentType, DateTime pFromDate, DateTime pToDate,string pSearchString,string pDepartmentCode)
        {
            return loLeaveEntryDAO.getLeaveEntries(pEmploymentType, pFromDate, pToDate,pSearchString,pDepartmentCode);
        }

        public DataTable getLeaveEntry(string pLeaveEntryId)
        {
            return loLeaveEntryDAO.getLeaveEntry(pLeaveEntryId);
        }

        public DataTable getLeaveEntryStatus(string pLeaveEntryId)
        {
            return loLeaveEntryDAO.getLeaveEntryStatus(pLeaveEntryId);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _success = loLeaveEntryDAO.insertLeaveEntry(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _success = loLeaveEntryDAO.updateLeaveEntry(this, ref pTrans);
                    break;
            }
            return _success;
        }

        public bool remove(string pLeaveEntryId, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loLeaveEntryDAO.removeLeaveEntry(pLeaveEntryId, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }

        public bool approve(string pLeaveEntryId, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loLeaveEntryDAO.approveLeaveEntry(pLeaveEntryId, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }

        public bool cancel(string pLeaveEntryId,string pCancelReason, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loLeaveEntryDAO.cancelLeaveEntry(pLeaveEntryId,pCancelReason, ref pTrans);
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

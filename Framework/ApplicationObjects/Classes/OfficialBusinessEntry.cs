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
    class OfficialBusinessEntry
    {
        #region "VARIABLES"
        OfficialBusinessEntryDAO loOBEntryDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public OfficialBusinessEntry()
        {
            loOBEntryDAO = new OfficialBusinessEntryDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string OfficialBusinessEntryId
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
        public string Type
        {
            get;
            set;
        }
        public string ReferenceNo
        {
            get;
            set;
        }
        public string CheckIn
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
        public string CheckOut
        {
            get;
            set;
        }
        public string Purpose
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
        public DataTable getOfficialBusinessEntries(string pEmploymentType, DateTime pFromDate, DateTime pToDate,string pSearchString,string pDepartment)
        {
            return loOBEntryDAO.getOfficialBusinessEntries(pEmploymentType, pFromDate,pToDate,pSearchString,pDepartment);
        }

        public DataTable getOfficialBusinessEntry(string pOfficialBusinessEntryId)
        {
            return loOBEntryDAO.getOfficialBusinessEntry(pOfficialBusinessEntryId);
        }

        public DataTable getOfficialBusinessEntryStatus(string pOvertimeEntryId)
        {
            return loOBEntryDAO.getOfficialBusinessEntryStatus(pOvertimeEntryId);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loOBEntryDAO.insertOBEntry(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loOBEntryDAO.updateOBEntry(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool remove(string pOBEntryId, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loOBEntryDAO.removeOfficialBusinessEntry(pOBEntryId, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }
        public bool approve(string pOfficialBusinessEntryId, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loOBEntryDAO.approveOfficialBusinessEntry(pOfficialBusinessEntryId, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }

        public bool cancel(string pOfficialBusinessEntryId,string pCancelReason, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loOBEntryDAO.cancelOfficialBusinessEntry(pOfficialBusinessEntryId,pCancelReason, ref pTrans);
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

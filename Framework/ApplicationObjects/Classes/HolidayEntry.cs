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
    class HolidayEntry
    {
        #region "VARIABLES"
        HolidayEntryDAO loHolidayEntryDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public HolidayEntry()
        {
            loHolidayEntryDAO = new HolidayEntryDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string HolidayEntryId
        {
            get;
            set;
        }
        public DateTime Date
        {
            get;
            set;
        }
        public string HolidayCode
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
        public DataTable getHolidayEntries()
        {
            return loHolidayEntryDAO.getHolidayEntries();
        }

        public DataTable getHolidayEntry(string pHolidayEntryId)
        {
            return loHolidayEntryDAO.getHolidayEntry(pHolidayEntryId);
        }

        public DataTable getHolidayEntryStatus(string pHolidayEntryId)
        {
            return loHolidayEntryDAO.getHolidayEntryStatus(pHolidayEntryId);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _success = loHolidayEntryDAO.insertHolidayEntry(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _success = loHolidayEntryDAO.updateHolidayEntry(this, ref pTrans);
                    break;
            }
            return _success;
        }

        public bool remove(string pHolidayEntryId, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loHolidayEntryDAO.removeHolidayEntry(pHolidayEntryId, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }

        public bool approve(string pHolidayEntryId, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loHolidayEntryDAO.approveHolidayEntry(pHolidayEntryId, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }

        public bool cancel(string pHolidayEntryId, string pCancelReason, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loHolidayEntryDAO.cancelHolidayEntry(pHolidayEntryId,pCancelReason, ref pTrans);
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

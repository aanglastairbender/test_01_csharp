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
    class LeaveType
    {
        #region "VARIABLES"
        LeaveTypeDAO loLeaveTypeDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public LeaveType()
        {
            loLeaveTypeDAO = new LeaveTypeDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string LeaveTypeCode
        {
            get;
            set;
        }
        public string LeaveTypeDescription
        {
            get;
            set;
        }
        public string Category
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public DataTable getAllData(string pDisplayType, string pSearchString)
        {
            return loLeaveTypeDAO.getLeaveTypes(pDisplayType, pSearchString);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loLeaveTypeDAO.insertLeaveType(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loLeaveTypeDAO.updateLeaveType(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool remove(string pLeaveTypeCode, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loLeaveTypeDAO.removeLeaveType(pLeaveTypeCode, ref pTrans);
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

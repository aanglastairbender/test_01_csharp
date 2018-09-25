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
    class WorkScheduleDetail
    {
        #region "VARIABLES"
        WorkScheduleDetailDAO loWorkScheduleDetailDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public WorkScheduleDetail()
        {
            loWorkScheduleDetailDAO = new WorkScheduleDetailDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string WorkScheduleDetailId
        {
            get;
            set;
        }
        public string WorkScheduleCode
        {
            get;
            set;
        }
        public string Day
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
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public DataTable getWorkScheduleDetails(string pWorkScheduleId)
        {
            return loWorkScheduleDetailDAO.getWorkScheduleDetails(pWorkScheduleId);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loWorkScheduleDetailDAO.insertWorkScheduleDetail(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loWorkScheduleDetailDAO.updateWorkScheduleDetail(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool remove(string pWorkScheduleDetailCode, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loWorkScheduleDetailDAO.removeWorkScheduleDetail(pWorkScheduleDetailCode, ref pTrans);
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

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
    class WorkSchedule
    {
        #region "VARIABLES"
        WorkScheduleDAO loWorkScheduleDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public WorkSchedule()
        {
            loWorkScheduleDAO = new WorkScheduleDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string WorkScheduleCode
        {
            get;
            set;
        }
        public string WorkScheduleDescription
        {
            get;
            set;
        }

        //public string HospitalEmployee { get; set; }

        public string Remarks
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public DataTable getAllData(string pDisplayType, string pSearchString)
        {
            return loWorkScheduleDAO.getWorkSchedules(pDisplayType,pSearchString);
        }

        public DataTable getWorkSchedule(string pWorkScheduleCode)
        {
            return loWorkScheduleDAO.getWorkSchedule(pWorkScheduleCode);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loWorkScheduleDAO.insertWorkSchedule(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loWorkScheduleDAO.updateWorkSchedule(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool remove(string pWorkScheduleCode, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loWorkScheduleDAO.removeWorkSchedule(pWorkScheduleCode, ref pTrans);
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

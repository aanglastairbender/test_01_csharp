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
    class Holiday
    {
        #region "VARIABLES"
        HolidayDAO loHolidayDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public Holiday()
        {
            loHolidayDAO = new HolidayDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string HolidayCode
        {
            get;
            set;
        }
        public string HolidayDescription
        {
            get;
            set;
        }
        public string Type
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
            return loHolidayDAO.getHolidays(pDisplayType,pSearchString);
        }

        public DataTable getHolidaysRegular(string pDisplayType, string pSearchString)
        {
            return loHolidayDAO.getHolidaysRegular(pDisplayType, pSearchString);
        }

        public DataTable getHolidayType(string pHolidayCode)
        {
            return loHolidayDAO.getHolidayType(pHolidayCode);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loHolidayDAO.insertHoliday(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loHolidayDAO.updateHoliday(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool remove(string pHolidayCode, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loHolidayDAO.removeHoliday(pHolidayCode, ref pTrans);
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

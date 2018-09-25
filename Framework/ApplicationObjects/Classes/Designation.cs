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
    class Designation
    {
        #region "VARIABLES"
        DesignationDAO loDesignationDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public Designation()
        {
            loDesignationDAO = new DesignationDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string DesignationCode
        {
            get;
            set;
        }
        public string DesignationDescription
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
            return loDesignationDAO.getDesignations(pDisplayType,pSearchString);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loDesignationDAO.insertDesignation(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loDesignationDAO.updateDesignation(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool remove(string pDesignationCode, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loDesignationDAO.removeDesignation(pDesignationCode, ref pTrans);
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

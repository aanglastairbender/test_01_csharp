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
    class Support
    {
        #region "VARIABLES"
        SupportDAO loSupportDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public Support()
        {
            loSupportDAO = new SupportDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string SupportId
        {
            get;
            set;
        }
        public string Type
        {
            get;
            set;
        }
        public string Priority
        {
            get;
            set;
        }
        public string RequestParticulars
        {
            get;
            set;
        }
        public string RequestedBy
        {
            get;
            set;
        }
        public string ContactNo
        {
            get;
            set;
        }
        public string EmailAddress
        {
            get;
            set;
        }
        public string Picture
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public DataTable getSupportByCustomerSoftwares()
        {
            return loSupportDAO.getSupportByCustomerSoftwares();
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loSupportDAO.insertSupport(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loSupportDAO.updateSupport(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool saveUpdate(string pSupportId,string pRequestParticulars, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loSupportDAO.saveUpdate(pSupportId,pRequestParticulars, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }

        public bool remove(string pSupportCode, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loSupportDAO.removeSupport(pSupportCode, ref pTrans);
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

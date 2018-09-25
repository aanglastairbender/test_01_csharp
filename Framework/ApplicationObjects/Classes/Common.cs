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
    class Common
    {
        #region "VARIABLES"
        CommonDAO loCommonDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public Common()
        {
            loCommonDAO = new CommonDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"

        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public DataTable getDataFromSearch(string pQuery)
        {
            try
            {
                return loCommonDAO.getDataFromSearch(pQuery);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public string getNextNo(string pTableName)
        {
            try
            {
                return loCommonDAO.getNextNo(pTableName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion "END OF METHODS"

        #region "SEARCH"
        //displayfields
        public string MenuName
        {
            get;
            set;
        }
        public string TemplateName
        {
            get;
            set;
        }
        public string DisplayFields
        {
            get;
            set;
        }
        public int SequenceNo
        {
            get;
            set;
        }
        public string Private
        {
            get;
            set;
        }
        //filters
        public string Fields
        {
            get;
            set;
        }
        public string Operator
        {
            get;
            set;
        }
        public string OperatorSign
        {
            get;
            set;
        }
        public string Values
        {
            get;
            set;
        }
        public string CheckAnd
        {
            get;
            set;
        }
        public string CheckOr
        {
            get;
            set;
        }
        //groupings
        public string FieldName
        {
            get;
            set;
        }
        public string GroupBy
        {
            get;
            set;
        }
        public string SortBy
        {
            get;
            set;
        }
        public DataTable getTemplateNames(string pMenuName)
        {
            try
            {
                return loCommonDAO.getTemplateNames(pMenuName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable getDisplayFields(string pTableName, string pTemplateName)
        {
            try
            {
                return loCommonDAO.getDisplayFields(pTableName, pTemplateName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool saveDisplayField(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loCommonDAO.insertDisplayFields(this, ref pTrans);
                    break;
                default:
                    break;
            }
            return _status;
        }
        public bool removeSearchFields(string pTableName, string pTemplateName, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loCommonDAO.removeSearchFields(pTableName, pTemplateName, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }
        public bool removeTemplateName(string pTableName, string pTemplateName, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loCommonDAO.removeTemplateName(pTableName, pTemplateName, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }
        public bool renameTemplateName(string pTableName, string pTemplateName, string pNewTemplateName, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loCommonDAO.renameTemplateName(pTableName, pTemplateName, pNewTemplateName, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }
        //filters
        public DataTable getFilters(string pTableName, string pTemplateName)
        {
            try
            {
                return loCommonDAO.getFilters(pTableName, pTemplateName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool saveFilters(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loCommonDAO.insertFilters(this, ref pTrans);
                    break;
                default:
                    break;
            }
            return _status;
        }
        //groupings
        public DataTable getGroups(string pTableName, string pTemplateName)
        {
            try
            {
                return loCommonDAO.getGroups(pTableName, pTemplateName);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool saveGroupings(GlobalVariables.Operation pOperation)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loCommonDAO.insertGroupings(this);
                    break;
                default:
                    break;
            }
            return _status;
        }
        #endregion "END OF SEARCH"

        //For Database Import
        public DataTable getCheckInOutByEmployee(DateTime pDateFrom, DateTime pDateTo, string pSource,string pBiometricsId)
        {
            try
            {
                return loCommonDAO.getCheckInOutByEmployee(pDateFrom, pDateTo, pSource, pBiometricsId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getTimeLogByEmployee(DateTime pDate, string pSource, string pBiometricsId)
        {
            try
            {
                return loCommonDAO.getTimeLogByEmployee(pDate, pSource, pBiometricsId);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}

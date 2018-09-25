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
    class Department
    {
        #region "VARIABLES"
        DepartmentDAO loDepartmentDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public Department()
        {
            loDepartmentDAO = new DepartmentDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string DepartmentCode
        {
            get;
            set;
        }
        public string DepartmentDescription
        {
            get;
            set;
        }
        public string DepartmentHead
        {
            get;
            set;
        }
        public string Designation
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
            return loDepartmentDAO.getDepartments(pDisplayType,pSearchString);
        }

        public DataTable getDepartmentsRegular(string pDisplayType, string pSearchString)
        {
            return loDepartmentDAO.getDepartmentsRegular(pDisplayType, pSearchString);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loDepartmentDAO.insertDepartment(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loDepartmentDAO.updateDepartment(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool remove(string pDepartmentCode, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loDepartmentDAO.removeDepartment(pDepartmentCode, ref pTrans);
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

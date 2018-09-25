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
    class Employee
    {
        #region "VARIABLES"
        EmployeeDAO loEmployeeDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public Employee()
        {
            loEmployeeDAO = new EmployeeDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string EmployeeNo
        {
            get;
            set;
        }
        public string LastName
        {
            get;
            set;
        }
        public string FirstName
        {
            get;
            set;
        }
        public string MiddleName
        {
            get;
            set;
        }
        public string Active
        {
            get;
            set;
        }
        public string BiometricsId
        {
            get;
            set;
        }
        public string EmploymentType
        {
            get;
            set;
        }

        // public string DesignationCode { get; set; }
        // public string DepartmentCode { get; set;}

        public string WorkScheduleCode
        {
            get;
            set;
        }
        public DateTime Birthday
        {
            get;
            set;
        }

        /*public string TIN { get; set; }
        public string TINDeducted { get; set; }
        public string PhilHealthId{ get; set; }
        public string PhilHealthDeducted{ get; set; }
        public string GSISId { get; set; }
        public string GSISDeducted { get; set; }
        public string PagibigId { get; set; }
        public string PagibigDeducted{ get; set; }
        public decimal PagibigPS { get; set; }
        public decimal PagibigGS { get; set; }
        public int NoOfDependent { get; set; }
        public string RateType { get; set; }
        public decimal BasicPay { get; set; }
        public string RA { get; set; }
        public string TA { get; set; }
        public string PERA { get; set; }
        public string Subsistence { get; set; }
        public string Laundry { get; set; }
        public string Hazard { get; set; }
        public decimal RAAmount { get; set; }
        public decimal TAAmount { get; set; }
        public decimal PERAAmount { get; set; }
        public decimal SubsistenceAmount { get; set; }
        public decimal LaundryAmount { get; set; }
        public decimal HazardAPSPercentage { get; set; }
        public decimal HazardAmount { get; set; }
        public string ImmediateSupervisor { get; set; }
        public string Picture { get; set; }*/

        public string Remarks
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public DataTable getAllData(string pDisplayType, string pSearchString)
        {
            return loEmployeeDAO.getEmployees(pDisplayType, pSearchString);
        }

        public DataTable getEmployee(string pEmployeeName)
        {
            return loEmployeeDAO.getEmployee(pEmployeeName);
        }

        public DataTable getActiveEmployees(string pEmploymentType)
        {
            return loEmployeeDAO.getActiveEmployees(pEmploymentType);
        }

        public DataTable getEmployeeListByEmploymentType(string pEmploymentType)
        {
            return loEmployeeDAO.getEmployeeListByEmploymentType(pEmploymentType);
        }

        public bool save(GlobalVariables.Operation pOperation, ref MySqlTransaction pTrans)
        {
            bool _status = false;
            switch (pOperation)
            {
                case GlobalVariables.Operation.Add:
                    _status = loEmployeeDAO.insertEmployee(this, ref pTrans);
                    break;
                case GlobalVariables.Operation.Edit:
                    _status = loEmployeeDAO.updateEmployee(this, ref pTrans);
                    break;
                default:
                    _status = false;
                    break;
            }
            return _status;
        }

        public bool remove(string pEmployeeNo, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = loEmployeeDAO.removeEmployee(pEmployeeNo, ref pTrans);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return _Status;
        }
    }
}
        #endregion
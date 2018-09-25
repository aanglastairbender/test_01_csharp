using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Reflection;

using JBC_PMIS_Government.Global;

namespace JBC_PMIS_Government.ApplicationObjects.DataAccessObjects
{
    class EmployeeDAO
    {
        #region "VARIABLES"
        string lEmployeeNo;
        string lLastName;
        string lFirstName;
        string lMiddleName;
        string lActive;
        string lBiometricsId;
        string lEmploymentType;
        string lDesignationCode;
        string lDepartmentCode;
        string lWorkScheduleCode;
        DateTime lBirthday;
        string lTIN;
        string lTINDeducted;
        string lPhilHealthId;
        string lPhilHealthDeducted;
        string lGSISId;
        string lGSISDeducted;
        string lPagibigId;
        string lPagibigDeducted;
        decimal lPagibigPS;
        decimal lPagibigGS;
        int lNoOfDependent;
        string lRateType;
        decimal lBasicPay;
        string lRA;
        string lTA;
        string lPERA;
        string lSubsistence;
        string lLaundry;
        string lHazard;
        decimal lRAAmount;
        decimal lTAAmount;
        decimal lPERAAmount;
        decimal lSubsistenceAmount;
        decimal lLaundryAmount;
        decimal lHazardAPSPercentage;
        decimal lHazardAmount;
        string lImmediateSupervisor;
        string lRemarks;
        string lPicture;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public EmployeeDAO()
        {
            lEmployeeNo = "";
            lLastName = "";
            lFirstName = "";
            lMiddleName = "";
            lActive = "";
            lBiometricsId = "";
            lEmploymentType = "";
            lDesignationCode = "";
            lDepartmentCode = "";
            lWorkScheduleCode = "";
            lTIN = "";
            lTINDeducted = "";
            lPhilHealthId = "";
            lPhilHealthDeducted = "";
            lGSISId = "";
            lGSISDeducted = "";
            lPagibigId = "";
            lPagibigDeducted = "";
            lPagibigPS = 0;
            lPagibigGS = 0;
            lNoOfDependent = 0;
            lRateType = "";
            lBasicPay = 0;
            lRA = "";
            lTA = "";
            lPERA = "";
            lSubsistence = "";
            lLaundry = "";
            lHazard = "";
            lRAAmount = 0;
            lTAAmount = 0;
            lPERAAmount = 0;
            lSubsistenceAmount = 0;
            lLaundryAmount = 0;
            lHazardAPSPercentage = 0;
            lHazardAmount = 0;
            lImmediateSupervisor = "";
            lRemarks = "";
            lPicture = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            lEmployeeNo = pObject.GetType().GetProperty("EmployeeNo").GetValue(pObject, null).ToString();
            lLastName = pObject.GetType().GetProperty("LastName").GetValue(pObject, null).ToString();
            lFirstName = pObject.GetType().GetProperty("FirstName").GetValue(pObject, null).ToString();
            lMiddleName = pObject.GetType().GetProperty("MiddleName").GetValue(pObject, null).ToString();
            lActive = pObject.GetType().GetProperty("Active").GetValue(pObject, null).ToString();
            lBiometricsId = pObject.GetType().GetProperty("BiometricsId").GetValue(pObject, null).ToString();
            lEmploymentType = pObject.GetType().GetProperty("EmploymentType").GetValue(pObject, null).ToString();
            //lDesignationCode = pObject.GetType().GetProperty("DesignationCode").GetValue(pObject, null).ToString();
            //lDepartmentCode = pObject.GetType().GetProperty("DepartmentCode").GetValue(pObject, null).ToString();
            lWorkScheduleCode = pObject.GetType().GetProperty("WorkScheduleCode").GetValue(pObject, null).ToString();
            lBirthday = DateTime.Parse(pObject.GetType().GetProperty("Birthday").GetValue(pObject, null).ToString());
            //lTIN = pObject.GetType().GetProperty("TIN").GetValue(pObject, null).ToString();
            //lTINDeducted = pObject.GetType().GetProperty("TINDeducted").GetValue(pObject, null).ToString();
            //lPhilHealthId = pObject.GetType().GetProperty("PhilHealthId").GetValue(pObject, null).ToString();
            //lPhilHealthDeducted = pObject.GetType().GetProperty("PhilHealthDeducted").GetValue(pObject, null).ToString();
            //lGSISId = pObject.GetType().GetProperty("GSISId").GetValue(pObject, null).ToString();
            //lGSISDeducted = pObject.GetType().GetProperty("GSISDeducted").GetValue(pObject, null).ToString();
            //lPagibigId = pObject.GetType().GetProperty("PagibigId").GetValue(pObject, null).ToString();
            //lPagibigDeducted = pObject.GetType().GetProperty("PagibigDeducted").GetValue(pObject, null).ToString();
            //lPagibigPS = decimal.Parse(pObject.GetType().GetProperty("PagibigPS").GetValue(pObject, null).ToString());
            //lPagibigGS = decimal.Parse(pObject.GetType().GetProperty("PagibigGS").GetValue(pObject, null).ToString());
            //lNoOfDependent = int.Parse(pObject.GetType().GetProperty("NoOfDependent").GetValue(pObject, null).ToString());
            //lRateType = pObject.GetType().GetProperty("RateType").GetValue(pObject, null).ToString();
            //lBasicPay = decimal.Parse(pObject.GetType().GetProperty("BasicPay").GetValue(pObject, null).ToString());
            //lRA = pObject.GetType().GetProperty("RA").GetValue(pObject, null).ToString();
            //lTA = pObject.GetType().GetProperty("TA").GetValue(pObject, null).ToString();
            //lPERA = pObject.GetType().GetProperty("PERA").GetValue(pObject, null).ToString();
            //lSubsistence = pObject.GetType().GetProperty("Subsistence").GetValue(pObject, null).ToString();
            //lLaundry = pObject.GetType().GetProperty("Laundry").GetValue(pObject, null).ToString();
            //lHazard = pObject.GetType().GetProperty("Hazard").GetValue(pObject, null).ToString();
            //lRAAmount = decimal.Parse(pObject.GetType().GetProperty("RAAmount").GetValue(pObject, null).ToString());
            //lTAAmount = decimal.Parse(pObject.GetType().GetProperty("TAAmount").GetValue(pObject, null).ToString());
            //lPERAAmount = decimal.Parse(pObject.GetType().GetProperty("PERAAmount").GetValue(pObject, null).ToString());
            //lSubsistenceAmount = decimal.Parse(pObject.GetType().GetProperty("SubsistenceAmount").GetValue(pObject, null).ToString());
            //lLaundryAmount = decimal.Parse(pObject.GetType().GetProperty("LaundryAmount").GetValue(pObject, null).ToString());
            //lHazardAPSPercentage = decimal.Parse(pObject.GetType().GetProperty("HazardAPSPercentage").GetValue(pObject, null).ToString());
            //lHazardAmount = decimal.Parse(pObject.GetType().GetProperty("HazardAmount").GetValue(pObject, null).ToString());
            //lImmediateSupervisor = pObject.GetType().GetProperty("ImmediateSupervisor").GetValue(pObject, null).ToString();
            lRemarks = pObject.GetType().GetProperty("Remarks").GetValue(pObject, null).ToString();
            //lPicture = pObject.GetType().GetProperty("Picture").GetValue(pObject, null).ToString();
        }

        public DataTable getEmployees(string pDisplayType, string pSearchString)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetEmployees('"+pDisplayType+"','"+pSearchString+"')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getEmployeesActive()
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetEmployeesActive()", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getEmployee(string pEmployeeNo)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetEmployee('" + pEmployeeNo + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getActiveEmployees(string pEmploymentType)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetActiveEmployees('" + pEmploymentType + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getEmployeeListByEmploymentType(string pEmploymentType)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetEmployeeListByEmploymentType('" + pEmploymentType + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertEmployee(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertEmployee('" + lEmployeeNo + "', '" +
                                                                            lLastName  + "', '" +
                                                                            lFirstName  + "', '" +
                                                                            lMiddleName  + "', '" +
                                                                            lActive + "', '" +
                                                                            lBiometricsId  + "', '" +
                                                                            lEmploymentType  + "', '" +
                                                                            lDesignationCode  + "', '" +
                                                                            lDepartmentCode  + "', '" +
                                                                            lWorkScheduleCode + "', '" +
                                                                            string.Format("{0:yyyy-MM-dd}", lBirthday) + "', '" +
                                                                            lTIN + "', '" +
                                                                            lTINDeducted + "', '" +
                                                                            lPhilHealthId + "', '" +
                                                                            lPhilHealthDeducted + "', '" +
                                                                            lGSISId + "', '" +
                                                                            lGSISDeducted + "', '" +
                                                                            lPagibigId + "', '" +
                                                                            lPagibigDeducted + "', '" +
                                                                            lPagibigPS + "', '" +
                                                                            lPagibigGS + "', '" +
                                                                            lNoOfDependent + "', '" +
                                                                            lRateType + "', '" +
                                                                            lBasicPay + "', '" +
                                                                            lRA + "', '" +
                                                                            lTA + "', '" +
                                                                            lPERA + "', '" +
                                                                            lSubsistence + "', '" +
                                                                            lLaundry + "', '" +
                                                                            lHazard + "', '" +
                                                                            lRAAmount + "', '" +
                                                                            lTAAmount + "', '" +
                                                                            lPERAAmount + "', '" +
                                                                            lSubsistenceAmount + "', '" +
                                                                            lLaundryAmount + "', '" +
                                                                            lHazardAPSPercentage + "', '" +
                                                                            lHazardAmount + "', '" +
                                                                            lImmediateSupervisor + "', '" +
                                                                            lRemarks + "', '" +
                                                                            lPicture + "', '" +
                                                                           GlobalVariables.Username+"','"+
                                                                           GlobalVariables.Hostname+"')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = pTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    if (_RowsAffected > 0)
                    {
                        _success = true;
                    }
                    else
                    {
                        _success = false;
                    }
                    return _success;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool updateEmployee(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateEmployee('" + lEmployeeNo + "', '" +
                                                                            lLastName + "', '" +
                                                                            lFirstName + "', '" +
                                                                            lMiddleName + "', '" +
                                                                            lActive + "', '" +
                                                                            lBiometricsId + "', '" +
                                                                            lEmploymentType + "', '" +
                                                                            lDesignationCode + "', '" +
                                                                            lDepartmentCode + "', '" +
                                                                            lWorkScheduleCode + "', '" +
                                                                            string.Format("{0:yyyy-MM-dd}", lBirthday) + "', '" +
                                                                            lTIN + "', '" +
                                                                            lTINDeducted + "', '" +
                                                                            lPhilHealthId + "', '" +
                                                                            lPhilHealthDeducted + "', '" +
                                                                            lGSISId + "', '" +
                                                                            lGSISDeducted + "', '" +
                                                                            lPagibigId + "', '" +
                                                                            lPagibigDeducted + "', '" +
                                                                            lPagibigPS + "', '" +
                                                                            lPagibigGS + "', '" +
                                                                            lNoOfDependent + "', '" +
                                                                            lRateType + "', '" +
                                                                            lBasicPay + "', '" +
                                                                            lRA + "', '" +
                                                                            lTA + "', '" +
                                                                            lPERA + "', '" +
                                                                            lSubsistence + "', '" +
                                                                            lLaundry + "', '" +
                                                                            lHazard + "', '" +
                                                                            lRAAmount + "', '" +
                                                                            lTAAmount + "', '" +
                                                                            lPERAAmount + "', '" +
                                                                            lSubsistenceAmount + "', '" +
                                                                            lLaundryAmount + "', '" +
                                                                            lHazardAPSPercentage + "', '" +
                                                                            lHazardAmount + "', '" +
                                                                            lImmediateSupervisor + "', '" +
                                                                            lRemarks + "', '" +
                                                                            lPicture + "', '" +
                                                                           GlobalVariables.Username + "','" +
                                                                           GlobalVariables.Hostname + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = pTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    if (_RowsAffected > 0)
                    {
                        _success = true;
                    }
                    else
                    {
                        _success = false;
                    }
                    return _success;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool removeEmployee(string pEmployeeNo,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveEmployee('" + pEmployeeNo + "','" +
                                                                           GlobalVariables.Username + "','" +
                                                                           GlobalVariables.Hostname + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = pTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    if (_RowsAffected > 0)
                    {
                        _success = true;
                    }
                    else
                    {
                        _success = false;
                    }
                    return _success;
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion "END OF METHODS"
    }
}

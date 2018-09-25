using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Reflection;
using System.Data.OleDb;

using JBC_PMIS_Government.Global;

namespace JBC_PMIS_Government.ApplicationObjects.DataAccessObjects
{
    class CommonDAO
    {
        #region "VARIABLES"
        //MySqlConnection connBackup;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public CommonDAO()
        {
            
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "SEARCH METHOD"
        public DataTable getDataFromSearch(string pQuery)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter(pQuery, GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public string getNextNo(string pTableName)
        {
            DataTable _dt = new DataTable();
            string _nextno = "";
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetNextNo('" + pTableName + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                foreach (DataRow _dr in _dt.Rows)
                {
                    _nextno = _dr["SequenceId"].ToString();
                }
                return _nextno;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        #endregion "END OF SEARCH METHODS"

        //For Import DataBase
        public DataTable getCheckInOutByEmployee(DateTime pDateFrom, DateTime pDateTo, string pSource,string pBiometricsId)
        {
            DataTable _dt = new DataTable();
            OleDbConnection connBioDB = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + pSource + ";");
            try
            {
                connBioDB.Open();
                OleDbDataAdapter _da = new OleDbDataAdapter("Select EMPLOYEES.EMPID, ATTENDANCE.LOGDATE, ATTENDANCE.LOGIN, ATTENDANCE.LOGOUT, ATTENDANCE.LOGIN2, ATTENDANCE.LOGOUT2 from ATTENDANCE left join EMPLOYEES on ATTENDANCE.EMPID = EMPLOYEES.EMPID WHERE EMPLOYEES.EMPID = '" + pBiometricsId + "' AND CDate(LOGDATE) >= CDate('" + string.Format("{0:yyyy-MM-dd}", pDateFrom) + " 00:00:00') AND CDate(LOGDATE) < CDate('" + string.Format("{0:yyyy-MM-dd}", pDateTo) + " 23:59:59') order by LOGDATE ASC;", connBioDB);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getTimeLogByEmployee(DateTime pDate, string pSource, string pBiometricsId)
        {
            DataTable _dt = new DataTable();
            OleDbConnection connBioDB = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + pSource + ";");
            try
            {
                connBioDB.Open();
                OleDbDataAdapter _da = new OleDbDataAdapter("Select USERINFO.Badgenumber,CHECKINOUT.CHECKTIME,CHECKINOUT.CHECKTYPE from CHECKINOUT left join USERINFO on CHECKINOUT.USERID = USERINFO.USERID WHERE USERINFO.Badgenumber = '" + pBiometricsId + "' AND CHECKTIME >= CDate('" + string.Format("{0:yyyy-MM-dd}", pDate) + " 00:00:00') AND CHECKTIME <= CDate('" + string.Format("{0:yyyy-MM-dd}", pDate) + " 23:59:59') order by CHECKTIME ASC;", connBioDB);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //search
        #region "SEARCH"
        string lMenuName = "";
        string lTemplateName = "";
        string lDisplayFields = "";
        string lFields = "";
        string lOperator = "";
        string lValues = "";
        string lCheckAnd = "";
        string lCheckOr = "";
        int lSequenceNo;
        string lPrivate = "";
        string lFieldName = "";
        string lGroupBy = "";
        string lSortBy = "";
        public DataTable getTemplateNames(string pMenuName)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetTemplateNames('" + pMenuName + "','" + GlobalVariables.Username + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable getDisplayFields(string pTableName, string pTemplateName)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetDisplayFields('" + pTableName + "','" + pTemplateName + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void loadDisplayFieldsAttributes(object pObject)
        {
            lMenuName = pObject.GetType().GetProperty("MenuName").GetValue(pObject, null).ToString();
            lTemplateName = pObject.GetType().GetProperty("TemplateName").GetValue(pObject, null).ToString();
            lDisplayFields = pObject.GetType().GetProperty("DisplayFields").GetValue(pObject, null).ToString();
            lSequenceNo = int.Parse(pObject.GetType().GetProperty("SequenceNo").GetValue(pObject, null).ToString());
            lPrivate = pObject.GetType().GetProperty("Private").GetValue(pObject, null).ToString();
        }
        public bool insertDisplayFields(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            //MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                loadDisplayFieldsAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertSearchDisplayFields('" + lMenuName + "', '" +
                                                                           lTemplateName + "','" +
                                                                           lDisplayFields + "','" +
                                                                           lSequenceNo + "','" +
                                                                           lPrivate + "','" +
                                                                           GlobalVariables.Username + "')", GlobalVariables.Connection);
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
                    //_Trans.Rollback();
                    throw new Exception(ex.Message);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public bool removeSearchFields(string pMenuName, string pTemplateName, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveSearchFields('" + pMenuName + "', '" +
                                                                           pTemplateName + "')", GlobalVariables.Connection);
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
                    throw new Exception(ex.Message);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public bool removeTemplateName(string pMenuName, string pTemplateName, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveTemplateName('" + pMenuName + "', '" +
                                                                           pTemplateName + "')", GlobalVariables.Connection);
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
                    throw new Exception(ex.Message);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public bool renameTemplateName(string pTableName, string pTemplateName, string pNewTemplateName, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRenameTemplateName('" + pTableName + "', '" +
                                                                           pTemplateName + "','" +
                                                                           pNewTemplateName + "')", GlobalVariables.Connection);
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
                    throw new Exception(ex.Message);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        //filters
        public DataTable getFilters(string pTableName, string pTemplateName)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetFilters('" + pTableName + "','" + pTemplateName + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void loadFiltersAttributes(object pObject)
        {
            lMenuName = pObject.GetType().GetProperty("MenuName").GetValue(pObject, null).ToString();
            lTemplateName = pObject.GetType().GetProperty("TemplateName").GetValue(pObject, null).ToString();
            lFields = pObject.GetType().GetProperty("Fields").GetValue(pObject, null).ToString();
            lOperator = pObject.GetType().GetProperty("Operator").GetValue(pObject, null).ToString();
            //lOperatorSign = pObject.GetType().GetProperty("OperatorSign").GetValue(pObject, null).ToString();
            lValues = pObject.GetType().GetProperty("Values").GetValue(pObject, null).ToString();
            lCheckAnd = pObject.GetType().GetProperty("CheckAnd").GetValue(pObject, null).ToString();
            lCheckOr = pObject.GetType().GetProperty("CheckOr").GetValue(pObject, null).ToString();
            lSequenceNo = int.Parse(pObject.GetType().GetProperty("SequenceNo").GetValue(pObject, null).ToString());
            lPrivate = pObject.GetType().GetProperty("Private").GetValue(pObject, null).ToString();
        }
        public bool insertFilters(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            //MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                loadFiltersAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertSearchFilters('" + lMenuName + "', '" +
                                                                           lTemplateName + "','" +
                                                                           lFields + "','" +
                                                                           lOperator + "','" +
                                                                           lValues + "','" +
                                                                           lCheckAnd + "','" +
                                                                           lCheckOr + "','" +
                                                                           lSequenceNo + "','" +
                                                                           lPrivate + "','" +
                                                                           GlobalVariables.Username + "')", GlobalVariables.Connection);
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
                    //_Trans.Rollback();
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //groupings
        public DataTable getGroups(string pTableName, string pTemplateName)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetGroups('" + pTableName + "','" + pTemplateName + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public void loadGroupAttributes(object pObject)
        {
            lMenuName = pObject.GetType().GetProperty("MenuName").GetValue(pObject, null).ToString();
            lTemplateName = pObject.GetType().GetProperty("TemplateName").GetValue(pObject, null).ToString();
            lFieldName = pObject.GetType().GetProperty("FieldName").GetValue(pObject, null).ToString();
            lGroupBy = pObject.GetType().GetProperty("GroupBy").GetValue(pObject, null).ToString();
            lSortBy = pObject.GetType().GetProperty("SortBy").GetValue(pObject, null).ToString();
            lSequenceNo = int.Parse(pObject.GetType().GetProperty("SequenceNo").GetValue(pObject, null).ToString());
            lPrivate = pObject.GetType().GetProperty("Private").GetValue(pObject, null).ToString();
        }
        public bool insertGroupings(object pObject)
        {
            bool _success = false;
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                loadGroupAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertSearchGroupings('" + lMenuName + "', '" +
                                                                           lTemplateName + "','" +
                                                                           lFieldName + "','" +
                                                                           lGroupBy + "','" +
                                                                           lSortBy + "','" +
                                                                           lSequenceNo + "','" +
                                                                           lPrivate + "','" +
                                                                           GlobalVariables.Username + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = _Trans;
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
                    _Trans.Rollback();
                    throw new Exception(ex.Message);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        public bool updateGroupings(object pObject)
        {
            bool _success = false;
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                loadGroupAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateSearchGroupings('" + lMenuName + "', '" +
                                                                           lTemplateName + "','" +
                                                                           lFieldName + "','" +
                                                                           lGroupBy + "','" +
                                                                           lSortBy + "','" +
                                                                           lSequenceNo + "','" +
                                                                           lPrivate + "','" +
                                                                           GlobalVariables.Username + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = _Trans;
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
                    _Trans.Rollback();
                    throw new Exception(ex.Message);
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
        #endregion "END OF SEARCH"
    }
}

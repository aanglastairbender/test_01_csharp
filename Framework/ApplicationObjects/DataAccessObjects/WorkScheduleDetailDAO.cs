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
    class WorkScheduleDetailDAO
    {
        #region "VARIABLES"
        string lWorkScheduleDetailId;
        string lWorkScheduleCode;
        string lDay;
        string lTimeIn;
        string lBreakOut;
        string lBreakIn;
        string lTimeOut;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public WorkScheduleDetailDAO()
        {
            lWorkScheduleDetailId = "";
            lWorkScheduleCode = "";
            lDay = "";
            lTimeIn = "";
            lBreakOut = "";
            lBreakIn = "";
            lTimeOut = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            //lWorkScheduleDetailId = pObject.GetType().GetProperty("WorkScheduleDetailId").GetValue(pObject, null).ToString();
            lWorkScheduleCode = pObject.GetType().GetProperty("WorkScheduleCode").GetValue(pObject, null).ToString();
            lDay = pObject.GetType().GetProperty("Day").GetValue(pObject, null).ToString();
            lTimeIn = pObject.GetType().GetProperty("TimeIn").GetValue(pObject, null).ToString();
            lBreakOut = pObject.GetType().GetProperty("BreakOut").GetValue(pObject, null).ToString();
            lBreakIn = pObject.GetType().GetProperty("BreakIn").GetValue(pObject, null).ToString();
            lTimeOut = pObject.GetType().GetProperty("TimeOut").GetValue(pObject, null).ToString();
        }
        public DataTable getWorkScheduleDetails(string WorkScheduleId)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetWorkScheduleDetails('" + WorkScheduleId + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertWorkScheduleDetail(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertWorkScheduleDetail('" + lWorkScheduleCode + "', '" +
                                                                           lDay + "','" +
                                                                           lTimeIn + "','" +
                                                                           lBreakOut + "','" +
                                                                           lBreakIn + "','" +
                                                                           lTimeOut + "','" +
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

        public bool updateWorkScheduleDetail(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateWorkScheduleDetail('" + lWorkScheduleDetailId + "', '" +
                                                                            lWorkScheduleCode + "', '" +
                                                                            lDay + "','" +
                                                                            lTimeIn + "','" +
                                                                            lBreakOut + "','" +
                                                                            lBreakIn + "','" +
                                                                            lTimeOut + "','" +
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

        public bool removeWorkScheduleDetail(string pWorkScheduleDetailId,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveWorkScheduleDetail('" + pWorkScheduleDetailId + "','" +
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

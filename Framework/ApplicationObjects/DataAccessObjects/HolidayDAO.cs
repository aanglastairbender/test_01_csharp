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
    class HolidayDAO
    {
        #region "VARIABLES"
        string lHolidayCode;
        string lHolidayDescription;
        string lType;
        string lRemarks;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public HolidayDAO()
        {
            lHolidayCode = "";
            lHolidayDescription = "";
            lType = "";
            lRemarks = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            lHolidayCode = pObject.GetType().GetProperty("HolidayCode").GetValue(pObject, null).ToString();
            lHolidayDescription = pObject.GetType().GetProperty("HolidayDescription").GetValue(pObject, null).ToString();
            lType = pObject.GetType().GetProperty("Type").GetValue(pObject, null).ToString();
            lRemarks = pObject.GetType().GetProperty("Remarks").GetValue(pObject, null).ToString();
        }

        public DataTable getHolidays(string pDisplayType, string pSearchString)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetHolidays('"+pDisplayType+"','"+pSearchString+"')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getHolidaysRegular(string pDisplayType, string pSearchString)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetHolidaysRegular('" + pDisplayType + "','" + pSearchString + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable getHolidayType(string pHolidayCode)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetHolidayType('" + pHolidayCode + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertHoliday(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertHoliday('" + lHolidayCode + "', '" +
                                                                           lHolidayDescription + "','" +
                                                                           lType + "','" +
                                                                           lRemarks + "','" +
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

        public bool updateHoliday(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateHoliday('" + lHolidayCode + "', '" +
                                                                            lHolidayDescription + "','" +
                                                                            lType + "','" +
                                                                            lRemarks + "','" +
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

        public bool removeHoliday(string pHolidayCode,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveHoliday('" + pHolidayCode + "','" +
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

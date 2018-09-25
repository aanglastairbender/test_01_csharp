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
    class DesignationDAO
    {
        #region "VARIABLES"
        string lDesignationCode;
        string lDesignationDescription;
        string lRemarks;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public DesignationDAO()
        {
            lDesignationCode = "";
            lDesignationDescription = "";
            lRemarks = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            lDesignationCode = pObject.GetType().GetProperty("DesignationCode").GetValue(pObject, null).ToString();
            lDesignationDescription = pObject.GetType().GetProperty("DesignationDescription").GetValue(pObject, null).ToString();
            lRemarks = pObject.GetType().GetProperty("Remarks").GetValue(pObject, null).ToString();
        }
        public DataTable getDesignations(string pDisplayType, string pSearchString)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetDesignations('"+pDisplayType+"','"+pSearchString+"')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertDesignation(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertDesignation('" + lDesignationCode + "', '" +
                                                                           lDesignationDescription + "','" +
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

        public bool updateDesignation(object pObject,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateDesignation('" + lDesignationCode + "', '" +
                                                                             lDesignationDescription + "','" +
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

        public bool removeDesignation(string pDesignationCode,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveDesignation('" + pDesignationCode + "','" +
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

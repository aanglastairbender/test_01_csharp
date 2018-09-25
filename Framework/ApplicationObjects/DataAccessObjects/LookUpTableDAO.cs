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
    class LookUpTableDAO
    {
        #region "VARIABLES"
        string lKey = "";
        string lValue = "";
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public LookUpTableDAO()
        {

        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            lKey = pObject.GetType().GetProperty("Key").GetValue(pObject, null).ToString();
            lValue = pObject.GetType().GetProperty("Value").GetValue(pObject, null).ToString();
        }
        public DataTable getLookUpTables()
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetLookUpTables()", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public DataTable getLookUpTable(string pKey)
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetLookUpTable('" + pKey + "')", GlobalVariables.Connection);
                _da.Fill(_dt);

                return _dt;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool insertLookUpTable(object pObject)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                loadAttributes(pObject);
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spInsertLookUpTable('" + lKey + "', '" +
                                                                           lValue + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = _myTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    _myTrans.Commit();
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
                    _myTrans.Rollback();
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool updateLookUpTable(object pObject)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                loadAttributes(pObject);
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spUpdateLookUpTable('" + lKey + "', '" +
                                                                             lValue + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = _myTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    _myTrans.Commit();
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
                    _myTrans.Rollback();
                    throw ex;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool removeLookUpTable(string pKey)
        {
            bool _success = false;
            MySqlTransaction _myTrans;
            try
            {
                _myTrans = GlobalVariables.Connection.BeginTransaction();
                MySqlCommand _cmd = new MySqlCommand("call spRemoveLookUpTable('" + pKey + "')", GlobalVariables.Connection);
                try
                {
                    _cmd.Transaction = _myTrans;
                    int _RowsAffected = _cmd.ExecuteNonQuery();
                    _myTrans.Commit();
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
                    _myTrans.Rollback();
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

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
    class SupportDAO
    {
        #region "VARIABLES"
        string lSupportId;
        string lType;
        string lPriority;
        string lRequestParticulars;
        string lRequestedBy;
        string lContactNo;
        string lEmailAddress;
        string lPicture;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public SupportDAO()
        {
            lSupportId = "";
            lType = "";
            lPriority = "";
            lRequestParticulars = "";
            lRequestedBy = "";
            lContactNo = "";
            lEmailAddress = "";
            lPicture = "";
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "METHODS"
        public void loadAttributes(object pObject)
        {
            try
            {
                lSupportId = pObject.GetType().GetProperty("SupportId").GetValue(pObject, null).ToString();
            }
            catch { }
            lType = pObject.GetType().GetProperty("Type").GetValue(pObject, null).ToString();
            lPriority = pObject.GetType().GetProperty("Priority").GetValue(pObject, null).ToString();
            lRequestParticulars = pObject.GetType().GetProperty("RequestParticulars").GetValue(pObject, null).ToString();
            lRequestedBy = pObject.GetType().GetProperty("RequestedBy").GetValue(pObject, null).ToString();
            lContactNo = pObject.GetType().GetProperty("ContactNo").GetValue(pObject, null).ToString();
            lEmailAddress = pObject.GetType().GetProperty("EmailAddress").GetValue(pObject, null).ToString();
            lPicture = pObject.GetType().GetProperty("Picture").GetValue(pObject, null).ToString();
        }
        public DataTable getSupportByCustomerSoftwares()
        {
            DataTable _dt = new DataTable();
            try
            {
                MySqlDataAdapter _da = new MySqlDataAdapter("call spGetSupportsByCustomerSoftwares('" + GlobalVariables.LGUName + "','" + GlobalVariables.ApplicationName + "')", GlobalVariables.SupportConnection);
                _da.Fill(_dt);

                return _dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool insertSupport(object pObject, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spInsertSupport('" + GlobalVariables.LGUName + "', '" +
                                                                             GlobalVariables.ApplicationName + "','" +
                                                                             GlobalVariables.VersionNo + "','" +
                                                                             lType + "','" +
                                                                             lPriority + "','" +
                                                                             lRequestParticulars + "','" +
                                                                             lRequestedBy + "','" +
                                                                             lContactNo + "','" +
                                                                             lEmailAddress + "','" +
                                                                             lPicture + "')", GlobalVariables.SupportConnection);
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

        public bool updateSupport(object pObject,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                loadAttributes(pObject);
                MySqlCommand _cmd = new MySqlCommand("call spUpdateSupport('" + lSupportId + "', '" +
                                                                             lType + "','" +
                                                                             lPriority + "','" +
                                                                             lRequestParticulars + "','" +
                                                                             lRequestedBy + "','" +
                                                                             lContactNo + "','" +
                                                                             lEmailAddress + "','" +
                                                                             lPicture + "')", GlobalVariables.SupportConnection);
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

        public bool saveUpdate(string pSupportId,string pRequestParticulars, ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spSaveUpdateSupport('" + pSupportId + "','" +
                                                                           pRequestParticulars + "')", GlobalVariables.SupportConnection);
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

        public bool removeSupport(string pSupportCode,ref MySqlTransaction pTrans)
        {
            bool _success = false;
            try
            {
                MySqlCommand _cmd = new MySqlCommand("call spRemoveSupport('" + pSupportCode + "','" +
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

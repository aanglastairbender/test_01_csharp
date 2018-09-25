using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.DataAccessObjects;

namespace JBC_PMIS_Government.ApplicationObjects.Classes
{
    public class User
    {
        #region "VARIABLES"
        UserDAO lUserDAO;
        #endregion

        #region "CONSTRUCTORS"
        public User()
        {
            lUserDAO = new UserDAO();
        }
        #endregion

        #region "PROPERTIES"
        public string Username
        {
            get;
            set;
        }
        public string Password
        {
            get;
            set;
        }
        public string Fullname
        {
            get;
            set;
        }
        public string UserGroupId
        {
            get;
            set;
        }
        #endregion

        #region "METHODS"
        public DataTable getAllData(string pDisplayType, string pSearchString)
        {
            return lUserDAO.getUsers(pDisplayType, pSearchString);
        }
        public DataTable getUser(string pUsername)
        {
            return lUserDAO.getUser(pUsername);
        }
        public DataTable getUserInfo(string pUsername)
        {
            return lUserDAO.getUserInfo(pUsername);
        }
        public bool connectDatabase()
        {
            return lUserDAO.connectDatabase();
        }
        public bool autenticateUser(string pUserName, string pPassword)
        {
            return lUserDAO.authenticateUser(pUserName, pPassword);
        }
        public bool checkUserPassword(string pCurrentPassword)
        {
            return lUserDAO.checkUserPassword(pCurrentPassword);
        }
        public bool changePassword(string pNewPassword, string pCurrentPassword)
        {
            return lUserDAO.changePassword(pNewPassword, pCurrentPassword);
        }
        public bool saveUser(GlobalVariables.Operation pOperation)
        {
            bool _Status = false;
            try
            {
                switch (pOperation)
                {
                    case GlobalVariables.Operation.Add:
                        _Status = lUserDAO.insertUser(this);
                        break;
                    case GlobalVariables.Operation.Edit:
                        _Status = lUserDAO.updateUser(this);
                        break;
                    default:
                        break;
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
            }
            return _Status;
        }
        public bool remove(string pUsername, ref MySqlTransaction pTrans)
        {
            bool _Status = false;
            try
            {
                _Status = lUserDAO.removeUser(pUsername, ref pTrans);
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
            }
            return _Status;
        }

        #endregion
    }
}

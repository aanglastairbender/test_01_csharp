using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.DataAccessObjects;

namespace JBC_PMIS_Government.ApplicationObjects.Classes
{
    class LookUpTable
    {
        #region "VARIABLES"
        LookUpTableDAO lLookUpTableDAO;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public LookUpTable()
        {
            lLookUpTableDAO = new LookUpTableDAO();
        }
        #endregion "END OF CONSTTRUCTORS"

        #region "PROPERTIES"
        public string Key
        {
            get;
            set;
        }
        public string Value
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public DataTable getAllData()
        {
            return lLookUpTableDAO.getLookUpTables();
        }
        public DataTable getLookUpTable(string pKey)
        {
            return lLookUpTableDAO.getLookUpTable(pKey);
        }
        public bool saveLookUpTable(GlobalVariables.Operation pOperation)
        {
            bool _Status = false;
            try
            {
                switch (pOperation)
                {
                    case GlobalVariables.Operation.Add:
                        _Status = lLookUpTableDAO.insertLookUpTable(this);
                        break;
                    case GlobalVariables.Operation.Edit:
                        _Status = lLookUpTableDAO.updateLookUpTable(this);
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
        public bool removeLookUpTable(string pKey)
        {
            bool _Status = false;
            try
            {
                _Status = lLookUpTableDAO.removeLookUpTable(pKey);
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
            }
            return _Status;
        }
        #endregion "END OF METHODS"
    }
}

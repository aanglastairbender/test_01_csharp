using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Reflection;
using System.Collections;
using MySql.Data.MySqlClient;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.MasterFiles
{
    public partial class DesignationDetailUI : Form
    {
        #region "VARIABLES"
        string[] lRecordData = new string[3];
        GlobalVariables.Operation lOperation;
        Designation loDesignation;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public DesignationDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loDesignation = new Designation();
        }
        public DesignationDetailUI(string[] pRecords)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loDesignation = new Designation();
            lRecordData = pRecords;
        }
        #endregion "END OF CONSTRUCTORS"

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        private void clear()
        {
            txtDesignationCode.Clear();
            txtDesignationDescription.Clear();
            txtRemarks.Clear();
            txtDesignationCode.Focus();
        }
        #endregion "END OF METHODS"

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            loDesignation.DesignationCode = txtDesignationCode.Text;
            loDesignation.DesignationDescription = txtDesignationDescription.Text;
            loDesignation.Remarks = txtRemarks.Text;
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loDesignation.save(lOperation, ref _Trans))
                {
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Designation has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    lRecordData[0] = txtDesignationCode.Text;
                    lRecordData[1] = txtDesignationDescription.Text;
                    lRecordData[2] = txtRemarks.Text;
                    object[] _params = { lRecordData };
                    if (lOperation == GlobalVariables.Operation.Edit)
                    {
                        ParentList.GetType().GetMethod("updateData").Invoke(ParentList, _params);
                        this.Close();
                    }
                    else
                    {
                        ParentList.GetType().GetMethod("addData").Invoke(ParentList, _params);
                        clear();
                    }
                }
            }
            catch (Exception ex)
            {
                _Trans.Rollback();
                if (ex.Message.Contains("Duplicate"))
                {
                    MessageBoxUI _mb = new MessageBoxUI("Designation code already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
        }

        private void DesignationDetailUI_Load(object sender, EventArgs e)
        {
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                txtDesignationCode.Text = lRecordData[0];
                txtDesignationCode.ReadOnly = true;
                txtDesignationCode.BackColor = SystemColors.ControlLight;
                txtDesignationCode.TabStop = false;
                txtDesignationDescription.Text = lRecordData[1];
                txtRemarks.Text = lRecordData[2];
            }
        }
    }
}

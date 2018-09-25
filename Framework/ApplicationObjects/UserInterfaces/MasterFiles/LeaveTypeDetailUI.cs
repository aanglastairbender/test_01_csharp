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
    public partial class LeaveTypeDetailUI : Form
    {
        #region "VARIABLES"
        string[] lRecordData = new string[3];
        GlobalVariables.Operation lOperation;
        LeaveType loLeaveType;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public LeaveTypeDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loLeaveType = new LeaveType();
        }

        public LeaveTypeDetailUI(string[] pRecords)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loLeaveType = new LeaveType();
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
            txtLeaveTypeCode.Clear();
            txtLeaveTypeDescription.Clear();
            txtLeaveTypeCode.Focus();
            cboCategory.Text = "";
        }
        #endregion "END OF METHODS"

        private void LeaveTypeDetailUI_Load(object sender, EventArgs e)
        {
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                txtLeaveTypeCode.Text = lRecordData[0];
                txtLeaveTypeCode.ReadOnly = true;
                txtLeaveTypeCode.BackColor = SystemColors.ControlLight;
                txtLeaveTypeCode.TabStop = false;
                txtLeaveTypeDescription.Text = lRecordData[1];
                cboCategory.Text = lRecordData[2];
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            loLeaveType.LeaveTypeCode = txtLeaveTypeCode.Text;
            loLeaveType.LeaveTypeDescription = txtLeaveTypeDescription.Text;
            loLeaveType.Category = cboCategory.Text;
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loLeaveType.save(lOperation, ref _Trans))
                {
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Leave Type has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    lRecordData[0] = txtLeaveTypeCode.Text;
                    lRecordData[1] = txtLeaveTypeDescription.Text;
                    lRecordData[2] = cboCategory.Text;
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
                    MessageBoxUI _mb = new MessageBoxUI("LeaveType code already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
        }
    }
}

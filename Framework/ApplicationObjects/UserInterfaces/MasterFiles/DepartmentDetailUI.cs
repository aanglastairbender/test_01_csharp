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
    public partial class DepartmentDetailUI : Form
    {
        #region "VARIABLES"
        string[] lRecordData = new string[5];
        LookUpValueUI loLookupValue;
        GlobalVariables.Operation lOperation;
        Department loDepartment;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public DepartmentDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loLookupValue = new LookUpValueUI();
            loDepartment = new Department();
        }
        public DepartmentDetailUI(string[] pRecords)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loLookupValue = new LookUpValueUI();
            loDepartment = new Department();
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
            txtDepartmentCode.Clear();
            txtDepartmentDescription.Clear();
            txtDepartmentHead.Clear();
            txtDesignation.Clear();
            txtRemarks.Clear();
            txtDepartmentCode.Focus();
        }
        #endregion "END OF METHODS"

        private void DepartmentDetailUI_Load(object sender, EventArgs e)
        {
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                txtDepartmentCode.Text = lRecordData[0];
                txtDepartmentCode.ReadOnly = true;
                txtDepartmentCode.BackColor = SystemColors.ControlLight;
                txtDepartmentCode.TabStop = false;
                txtDepartmentDescription.Text = lRecordData[1];
                txtDepartmentHead.Text = lRecordData[2];
                txtDesignation.Text = lRecordData[3];
                txtRemarks.Text = lRecordData[4];
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            loDepartment.DepartmentCode = txtDepartmentCode.Text;
            loDepartment.DepartmentDescription = txtDepartmentDescription.Text;
            loDepartment.DepartmentHead = txtDepartmentHead.Text;
            loDepartment.Designation = txtDesignation.Text;
            loDepartment.Remarks = txtRemarks.Text;
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loDepartment.save(lOperation, ref _Trans))
                {
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Department has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    lRecordData[0] = txtDepartmentCode.Text;
                    lRecordData[1] = txtDepartmentDescription.Text;
                    lRecordData[2] = txtDepartmentHead.Text;
                    lRecordData[3] = txtDesignation.Text;
                    lRecordData[4] = txtRemarks.Text;
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
                    MessageBoxUI _mb = new MessageBoxUI("Department code already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
        }
    }
}

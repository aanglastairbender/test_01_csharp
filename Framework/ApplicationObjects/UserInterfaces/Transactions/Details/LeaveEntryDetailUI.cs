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

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions.Details
{
    public partial class LeaveEntryDetailUI : Form
    {
        #region "VARIABLES"
        string lLeaveEntryId = "";
        LookUpValueUI loLookupValue;
        GlobalVariables.Operation lOperation;
        LeaveEntry loLeaveEntry;
        LeaveType loLeaveType;
        Employee loEmployee;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public LeaveEntryDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loLookupValue = new LookUpValueUI();
            loLeaveEntry = new LeaveEntry();
            loLeaveType = new LeaveType();
            loEmployee = new Employee();
            lLeaveEntryId = "";
        }

        public LeaveEntryDetailUI(string pLeaveEntryId)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loLookupValue = new LookUpValueUI();
            loLeaveEntry = new LeaveEntry();
            loLeaveType = new LeaveType();
            loEmployee = new Employee();
            lLeaveEntryId = pLeaveEntryId;
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
            txtEmployeeNo.Clear();
            txtEmployeeName.Clear();
            cboLeaveType.SelectedIndex = 0;
            txtReferenceNo.Clear();
            dtpDate.Value = DateTime.Now;
            cboTime.SelectedIndex = 0;
            txtExplanation.Clear();
            txtRemarks.Clear();
        }
        #endregion "END OF METHODS"

        private void LeaveEntryDetailUI_Load(object sender, EventArgs e)
        {
            cboLeaveType.DataSource = loLeaveType.getAllData("ViewAll","");
            cboLeaveType.ValueMember = "Code";
            cboLeaveType.DisplayMember = "Leave Type Description";
            cboLeaveType.SelectedIndex = -1;
            cboTime.SelectedIndex = 0;

            if (lOperation == GlobalVariables.Operation.Edit)
            {
                foreach (DataRow _dr in loLeaveEntry.getLeaveEntry(lLeaveEntryId).Rows)
                {
                    txtEmployeeNo.Text = _dr["Emp. No."].ToString();
                    txtEmployeeName.Text = _dr["Employee Name"].ToString();
                    cboLeaveType.Text = _dr["Leave Type"].ToString();
                    txtReferenceNo.Text = _dr["Ref. No."].ToString();
                    dtpDate.Value = DateTime.Parse(_dr["Date"].ToString());
                    cboTime.Text = _dr["Time"].ToString();
                    txtExplanation.Text = _dr["Explanation"].ToString();
                    txtRemarks.Text = _dr["Remarks"].ToString();
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (cboLeaveType.Text == "")
            {
                MessageBoxUI _mb = new MessageBoxUI("You must select a Leave Type!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                _mb.showDialog();
                return;
            }
            loLeaveEntry.LeaveEntryId = lLeaveEntryId;
            loLeaveEntry.EmployeeNo = txtEmployeeNo.Text;
            loLeaveEntry.LeaveTypeCode = cboLeaveType.SelectedValue.ToString();
            loLeaveEntry.ReferenceNo = txtReferenceNo.Text;
            loLeaveEntry.Date = dtpDate.Value;
            loLeaveEntry.Time = cboTime.Text;
            loLeaveEntry.Explanation = txtExplanation.Text;
            loLeaveEntry.Remarks = txtRemarks.Text;
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loLeaveEntry.save(lOperation, ref _Trans))
                {
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Leave Entry has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    object[] _params = { "", "" };
                    ParentList.GetType().GetMethod("refresh").Invoke(ParentList, _params);
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                _Trans.Rollback();
                if (ex.Message.Contains("Duplicate"))
                {
                    MessageBoxUI _mb = new MessageBoxUI("Other Income Id already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
        }

        private void btnLookupEmployee_Click(object sender, EventArgs e)
        {
            loLookupValue.lObject = loEmployee;
            loLookupValue.lType = typeof(Employee);
            loLookupValue.lTableName = "Employees";
            loLookupValue.ShowDialog();
            if (loLookupValue.lCode != null)
            {
                txtEmployeeNo.Text = loLookupValue.lCode;
                txtEmployeeName.Text = loLookupValue.lValue3 + ", " + loLookupValue.lValue4 + " " + loLookupValue.lValue5;
            }
        }

        private void dtpDate_ValueChanged(object sender, EventArgs e)
        {
            lblDay.Text = dtpDate.Value.DayOfWeek.ToString();
        }
    }
}

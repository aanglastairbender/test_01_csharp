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
    public partial class OvertimeEntryDetailUI : Form
    {
        #region "VARIABLES"
        LookUpValueUI loLookupValue;
        GlobalVariables.Operation lOperation;
        OvertimeEntry loOvertimeEntry;
        Employee loEmployee;
        string lOvertimeEntryId;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public OvertimeEntryDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loLookupValue = new LookUpValueUI();
            loOvertimeEntry = new OvertimeEntry();
            loEmployee = new Employee();
            lOvertimeEntryId = "";
        }
        public OvertimeEntryDetailUI(string pOvertimeEntryId)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loLookupValue = new LookUpValueUI();
            loOvertimeEntry = new OvertimeEntry();
            loEmployee = new Employee();
            lOvertimeEntryId = pOvertimeEntryId;
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
            dtpDate.Value = DateTime.Now;
            lblDay.Text = "";
        }
        #endregion "END OF METHODS"
        private void OvertimeEntryDetialUI_Load(object sender, EventArgs e)
        {
             lblDay.Text = DateTime.Now.DayOfWeek.ToString();
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                foreach (DataRow _dr in loOvertimeEntry.getOvertimeEntry(lOvertimeEntryId).Rows)
                {
                    dtpDate.Value = DateTime.Parse(_dr["Date"].ToString());
                    txtEmployeeNo.Text = _dr["EmployeeNo"].ToString();
                    txtEmployeeName.Text = _dr["EmployeeName"].ToString();
                    dtpTimeIn.Value = DateTime.Parse(_dr["TimeIn"].ToString());
                    dtpTimeOut.Value = DateTime.Parse(_dr["TimeOut"].ToString());
                    mtxtOvertime.Text = _dr["Overtime"].ToString();
                    txtRemarks.Text = _dr["Remarks"].ToString();
                }
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            loOvertimeEntry.OvertimeEntryId = lOvertimeEntryId;
            loOvertimeEntry.Date = dtpDate.Value;
            loOvertimeEntry.EmployeeNo = txtEmployeeNo.Text;
            loOvertimeEntry.TimeIn = dtpTimeIn.Value;
            loOvertimeEntry.TimeOut = dtpTimeOut.Value;
            loOvertimeEntry.Overtime = DateTime.Parse(mtxtOvertime.Text);
            loOvertimeEntry.Remarks = txtRemarks.Text;

            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loOvertimeEntry.save(lOperation, ref _Trans))
                {
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Overtime Entry has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    object[] _params = { "","" };
                    ParentList.GetType().GetMethod("refresh").Invoke(ParentList, _params);
                    this.Close();
                }
                else
                {
                    _Trans.Rollback();
                    MessageBoxUI _mb = new MessageBoxUI("Duplication of Employee's Overtime per Date is not allowed!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
            catch (Exception ex)
            {
                _Trans.Rollback();
                if (ex.Message.Contains("Duplicate"))
                {
                    MessageBoxUI _mb = new MessageBoxUI("Overtime Entry Id already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dtpDate_ValueChanged(object sender, EventArgs e)
        {
            lblDay.Text = dtpDate.Value.DayOfWeek.ToString();
        }

        private void btnLookUpEmployee_Click(object sender, EventArgs e)
        {
            loLookupValue.lObject = loEmployee;
            loLookupValue.lType = typeof(Employee);
            loLookupValue.lTableName = "Employees";
            loLookupValue.ShowDialog();
            if (loLookupValue.lFromSelection)
            {
                txtEmployeeNo.Text = loLookupValue.lCode;
                txtEmployeeName.Text = loLookupValue.lValue3 + ", " + loLookupValue.lValue4 + " " + loLookupValue.lValue5;
            }
        }

        private void dtpTimeIn_ValueChanged(object sender, EventArgs e)
        {
            try
            {
                mtxtOvertime.Text = string.Format("{0:HH:mm}", DateTime.Parse(dtpTimeOut.Value.Subtract(dtpTimeIn.Value).ToString()));
            }
            catch { }
        }

        private void dtpTimeOut_ValueChanged(object sender, EventArgs e)
        {
            try
            {
                mtxtOvertime.Text = string.Format("{0:HH:mm}", DateTime.Parse(dtpTimeOut.Value.Subtract(dtpTimeIn.Value).ToString()));
            }
            catch { }
        }
    }
}

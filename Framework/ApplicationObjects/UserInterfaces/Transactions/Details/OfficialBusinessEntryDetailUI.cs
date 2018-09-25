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
    public partial class OfficialBusinessEntryDetailUI : Form
    {
        #region "VARIABLES"
        LookUpValueUI loLookupValue;
        GlobalVariables.Operation lOperation;
        OfficialBusinessEntry loOfficialBusinessEntry;
        Employee loEmployee;
        string lOBEntryId;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public OfficialBusinessEntryDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loLookupValue = new LookUpValueUI();
            loOfficialBusinessEntry = new OfficialBusinessEntry();
            loEmployee = new Employee();
            lOBEntryId = "";
        }
        public OfficialBusinessEntryDetailUI(string pOBEntryId)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loLookupValue = new LookUpValueUI();
            loOfficialBusinessEntry = new OfficialBusinessEntry();
            loEmployee = new Employee();
            lOBEntryId = pOBEntryId;
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

        private void OfficialBusinessEntryDetailUI_Load(object sender, EventArgs e)
        {
            lblDay.Text = DateTime.Now.DayOfWeek.ToString();
            cboType.SelectedIndex = 0;
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                foreach (DataRow _dr in loOfficialBusinessEntry.getOfficialBusinessEntry(lOBEntryId).Rows)
                {
                    dtpDate.Value = DateTime.Parse(_dr["Date"].ToString());
                    txtEmployeeNo.Text = _dr["Emp. No."].ToString();
                    txtEmployeeName.Text = _dr["Employee Name"].ToString();
                    cboType.Text = _dr["Type"].ToString();
                    txtReferenceNo.Text = _dr["Ref. No."].ToString();
                    chkTimeIn.Checked = _dr["Time In"].ToString() == "Y" ? true : false;
                    chkBreakOut.Checked = _dr["Break Out"].ToString() == "Y" ? true : false;
                    chkBreakIn.Checked = _dr["Break In"].ToString() == "Y" ? true : false;
                    chkTimeOut.Checked = _dr["Time Out"].ToString() == "Y" ? true : false;
                    txtPurpose.Text = _dr["Purpose"].ToString();
                    txtRemarks.Text = _dr["Remarks"].ToString();
                }
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            loOfficialBusinessEntry.OfficialBusinessEntryId = lOBEntryId;
            loOfficialBusinessEntry.Date = dtpDate.Value;
            loOfficialBusinessEntry.EmployeeNo = txtEmployeeNo.Text;
            loOfficialBusinessEntry.Type = cboType.Text;
            loOfficialBusinessEntry.ReferenceNo = txtReferenceNo.Text;
            loOfficialBusinessEntry.CheckIn = chkTimeIn.Checked ? "Y" : "N";
            loOfficialBusinessEntry.BreakOut = chkBreakOut.Checked ? "Y" : "N";
            loOfficialBusinessEntry.BreakIn = chkBreakIn.Checked ? "Y" : "N";
            loOfficialBusinessEntry.CheckOut = chkTimeOut.Checked ? "Y" : "N";
            loOfficialBusinessEntry.Purpose = txtPurpose.Text;
            loOfficialBusinessEntry.Remarks = txtRemarks.Text;

            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loOfficialBusinessEntry.save(lOperation, ref _Trans))
                {
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Official Business Entry has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    object[] _params = { "","" };
                    ParentList.GetType().GetMethod("refresh").Invoke(ParentList, _params);
                    this.Close();
                }
                else
                {
                    _Trans.Rollback();
                    MessageBoxUI _mb = new MessageBoxUI("Duplication of Employee's Official Business per Date is not allowed!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
            catch (Exception ex)
            {
                _Trans.Rollback();
                if (ex.Message.Contains("Duplicate"))
                {
                    MessageBoxUI _mb = new MessageBoxUI("Official Business Entry Id already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
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
    }
}

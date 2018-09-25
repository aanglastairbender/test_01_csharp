using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Reflection;
using MySql.Data.MySqlClient;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions.Details;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report.TransactionRpt;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions
{
    public partial class LeaveEntryUI : Form
    {
        LeaveEntry loLeaveEntry;
        Department loDepartment;
        Common loCommon;
        SearchesUI loSearches;
        DataTable ldtLeaveEntry;
        LeaveEntryRpt loLeaveEntryRpt;
        ReportViewerUI loReportViewer;

        public LeaveEntryUI()
        {
            InitializeComponent();
            loLeaveEntry = new LeaveEntry();
            loDepartment = new Department();
            loCommon = new Common();
            ldtLeaveEntry = new DataTable();
            loLeaveEntryRpt = new LeaveEntryRpt();
            loReportViewer = new ReportViewerUI();
        }

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public void refresh(string pSearchString,string pDepartmentCode)
        {
            try
            {
                dgvLeaveEntryList.DataSource = null;
                ldtLeaveEntry = loLeaveEntry.getLeaveEntries(cboEmploymentType.Text, dtpFrom.Value, dtpTo.Value,pSearchString,pDepartmentCode);
                dgvLeaveEntryList.DataSource = ldtLeaveEntry;
                dgvLeaveEntryList.Columns[0].Frozen = true;
                dgvLeaveEntryList.Columns[1].Frozen = true;
                dgvLeaveEntryList.Columns[2].Frozen = true;
                dgvLeaveEntryList.Columns[3].Frozen = true;
                dgvLeaveEntryList.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvLeaveEntryList.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvLeaveEntryList.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvLeaveEntryList.Columns[3].DefaultCellStyle.BackColor = SystemColors.Control;
            }
            catch { }
        }
        #endregion "END OF METHODS"

        private void LeaveEntryUI_Load(object sender, EventArgs e)
        {
            Type _Type = typeof(LeaveEntry);
            FieldInfo[] myFieldInfo;
            myFieldInfo = _Type.GetFields(BindingFlags.NonPublic | BindingFlags.Instance
            | BindingFlags.Public);
            loSearches = new SearchesUI(myFieldInfo, _Type, "tsmLeaveEntry");

            cboEmploymentType.SelectedIndex = 0;
            cboDepartment.DataSource = loDepartment.getAllData("ViewAll", "");
            cboDepartment.ValueMember = "Code";
            cboDepartment.DisplayMember = "Department Description";
            cboDepartment.SelectedIndex = -1;
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmLeaveEntry", "Refresh"))
            {
                return;
            }
            cboDepartment.SelectedIndex = -1;
            txtSearch.Clear();
            refresh("","");
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmLeaveEntry", "Create"))
            {
                return;
            }
            LeaveEntryDetailUI loLeaveEntryDetailUI = new LeaveEntryDetailUI();
            loLeaveEntryDetailUI.ParentList = this;
            loLeaveEntryDetailUI.ShowDialog();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }

        private void dgvLeaveEntryList_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (this.dgvLeaveEntryList.Columns[e.ColumnIndex].Name == "Id" ||
                this.dgvLeaveEntryList.Columns[e.ColumnIndex].Name == "Approve" ||
                this.dgvLeaveEntryList.Columns[e.ColumnIndex].Name == "Cancel" || 
                this.dgvLeaveEntryList.Columns[e.ColumnIndex].Name == "Emp. No." ||
                this.dgvLeaveEntryList.Columns[e.ColumnIndex].Name == "Leave Type")
            {
                if (e.Value != null)
                {
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
            }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmLeaveEntry", "Update"))
            {
                return;
            }
            try
            {
                if (dgvLeaveEntryList.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loLeaveEntry.getLeaveEntryStatus(dgvLeaveEntryList.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You cannot update an approved Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    LeaveEntryDetailUI loLeaveEntryDetailUI = new LeaveEntryDetailUI(dgvLeaveEntryList.CurrentRow.Cells[0].Value.ToString());
                    loLeaveEntryDetailUI.ParentList = this;
                    loLeaveEntryDetailUI.ShowDialog();
                }
            }
            catch { }
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmLeaveEntry", "Remove"))
            {
                return;
            }
            try
            {
                if (dgvLeaveEntryList.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loLeaveEntry.getLeaveEntryStatus(dgvLeaveEntryList.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You cannot remove an approved Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue removing this Leave Entry record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            if (loLeaveEntry.remove(dgvLeaveEntryList.CurrentRow.Cells[0].Value.ToString(), ref Trans))
                            {
                                Trans.Commit();
                                MessageBoxUI _mb1 = new MessageBoxUI("Leave Entry has been successfully removed!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                _mb1.ShowDialog();
                                cboDepartment.SelectedIndex = -1;
                                txtSearch.Clear();
                                refresh("", "");
                            }
                        }
                        catch (Exception ex)
                        {
                            Trans.Rollback();
                            MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                            mb.ShowDialog();
                            return;
                        }
                    }
                }
            }
            catch { }
        }

        private void dgvLeaveEntryList_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnUpdate_Click(null, new EventArgs());
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmLeaveEntry", "Preview"))
            {
                return;
            }
            if (dgvLeaveEntryList.Rows.Count > 0)
            {
                loLeaveEntryRpt.SetDataSource(GlobalVariables.DTLGULogo);
                loLeaveEntryRpt.Database.Tables[1].SetDataSource(ldtLeaveEntry);
                loLeaveEntryRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                loLeaveEntryRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                loLeaveEntryRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                loLeaveEntryRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                loLeaveEntryRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                loLeaveEntryRpt.SetParameterValue("Title", "Leave Entry");
                loLeaveEntryRpt.SetParameterValue("SubTitle", "Leave Entry");
                loLeaveEntryRpt.SetParameterValue("EmploymentType", cboEmploymentType.Text);
                loLeaveEntryRpt.SetParameterValue("FromDate", dtpFrom.Value.ToShortDateString());
                loLeaveEntryRpt.SetParameterValue("ToDate", dtpTo.Value.ToShortDateString());
                loReportViewer.crystalReportViewer.ReportSource = loLeaveEntryRpt;
                loReportViewer.ShowDialog();
            }
        }

        private void dgvLeaveEntryList_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                Point pt = dgvLeaveEntryList.PointToScreen(e.Location);
                cmsFunction.Show(pt);
            }
        }

        private void refreshToolStripMenuItem_Click(object sender, EventArgs e)
        {
            btnRefresh_Click(null, new EventArgs());
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmLeaveEntry", "Search"))
            {
                return;
            }
            try
            {
                string _DisplayFields = "SELECT le.LeaveEntryId AS `Id`,le.EmployeeNo AS `Emp. No.`,le.Approve,le.Cancel, "+
		            "CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`, "+
		            "d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation, "+
		            "lt.LeaveTypeDescription AS `Leave Type`,le.ReferenceNo AS `Ref. No.`, "+
		            "DATE_FORMAT(le.Date,'%m-%d-%Y') AS `Date`,DAYNAME(le.Date) AS `Day`,le.Time, "+
		            "le.Explanation,le.ApprovedBy AS `Approved By`, "+
		            "DATE_FORMAT(le.DateFiled,'%m-%d-%Y') AS `Date Filed`, "+
                    "le.CancelledBy AS `Cancelled By`,le.CancelledReason AS `Cancelled Reason`, " +
		            "le.Remarks "+
			        "FROM leaveentry le "+
			        "LEFT JOIN employee e "+
			        "ON le.EmployeeNo = e.EmployeeNo "+
			        "LEFT JOIN department d "+
			        "ON e.DepartmentCode = d.DepartmentCode "+
			        "LEFT JOIN designation des "+
			        "ON e.DesignationCode = des.DesignationCode "+
			        "LEFT JOIN leavetype lt "+
                    "ON lt.LeaveTypeCode = le.LeaveTypeCode ";
                string _WhereFields = "AND le.`Status` = 'Active' ORDER BY d.DepartmentDescription,e.LastName,e.FirstName,le.Date ASC;";
                loSearches.lAlias = "le.";
                loSearches.ShowDialog();
                if (loSearches.lFromShow)
                {
                    try
                    {
                        cboDepartment.SelectedIndex = -1;
                        txtSearch.Clear();
                        dgvLeaveEntryList.DataSource = null;
                        ldtLeaveEntry = loCommon.getDataFromSearch(_DisplayFields + loSearches.lQuery + _WhereFields);
                        dgvLeaveEntryList.DataSource = ldtLeaveEntry;
                        dgvLeaveEntryList.Columns[0].Frozen = true;
                        dgvLeaveEntryList.Columns[1].Frozen = true;
                        dgvLeaveEntryList.Columns[2].Frozen = true;
                        dgvLeaveEntryList.Columns[3].Frozen = true;
                        dgvLeaveEntryList.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                        dgvLeaveEntryList.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                        dgvLeaveEntryList.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
                        dgvLeaveEntryList.Columns[3].DefaultCellStyle.BackColor = SystemColors.Control;
                    }
                    catch { }
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void btnApprove_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmLeaveEntry", "Approve"))
            {
                return;
            }
            try
            {
                if (dgvLeaveEntryList.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loLeaveEntry.getLeaveEntryStatus(dgvLeaveEntryList.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("Leave Entry is already approved!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue approving this Leave Entry record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            if (loLeaveEntry.approve(dgvLeaveEntryList.CurrentRow.Cells[0].Value.ToString(), ref Trans))
                            {
                                Trans.Commit();
                                MessageBoxUI _mb1 = new MessageBoxUI("Leave Entry has been successfully approved!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                _mb1.ShowDialog();
                                cboDepartment.SelectedIndex = -1;
                                txtSearch.Clear();
                                refresh("", "");
                            }
                        }
                        catch (Exception ex)
                        {
                            Trans.Rollback();
                            MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                            mb.ShowDialog();
                            return;
                        }
                    }
                }
            }
            catch { }
        }

        private void tsmViewAllRecords_Click(object sender, EventArgs e)
        {
            GlobalFunctions.refreshAll(ref dgvLeaveEntryList, ldtLeaveEntry);
        }

        private void tsmApprove_Click(object sender, EventArgs e)
        {
            btnApprove_Click(null, new EventArgs());
        }

        private void cboDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboDepartment.SelectedIndex >= 0)
            {
                txtSearch.Clear();
                refresh("", cboDepartment.SelectedValue.ToString());
            }
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmLeaveEntry", "Search"))
            {
                return;
            }
            if (txtSearch.Text != "")
            {
                cboDepartment.SelectedIndex = -1;
                refresh(txtSearch.Text, "");
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmLeaveEntry", "Cancel"))
            {
                return;
            }
            try
            {
                if (dgvLeaveEntryList.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loLeaveEntry.getLeaveEntryStatus(dgvLeaveEntryList.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "N")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You can only cancel an approved Leave Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                        if (_drStatus[2].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("Entry is already Cancelled!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue cancelling this Leave record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        CancelReasonUI loCancelReason = new CancelReasonUI();
                        loCancelReason.ShowDialog();
                        if (loCancelReason.lFromSave)
                        {
                            if (loCancelReason.lReason == "")
                            {
                                MessageBoxUI _mbStatus = new MessageBoxUI("Cancel Reason must not be empty!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                                _mbStatus.ShowDialog();
                                return;
                            }
                            MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                            try
                            {
                                if (loLeaveEntry.cancel(dgvLeaveEntryList.CurrentRow.Cells[0].Value.ToString(), loCancelReason.lReason, ref Trans))
                                {
                                    Trans.Commit();
                                    MessageBoxUI _mb1 = new MessageBoxUI("Leave has been successfully cancelled!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                    _mb1.ShowDialog();
                                    cboDepartment.SelectedIndex = -1;
                                    txtSearch.Clear();
                                    refresh("", "");
                                }
                            }
                            catch (Exception ex)
                            {
                                Trans.Rollback();
                                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                                mb.ShowDialog();
                                return;
                            }
                        }
                    }
                }
            }
            catch { }
        }

        private void tsmCreate_Click(object sender, EventArgs e)
        {
            btnCreate_Click(null, new EventArgs());
        }

        private void tsmiUpdate_Click(object sender, EventArgs e)
        {
            btnUpdate_Click(null, new EventArgs());
        }

        private void tsmRemove_Click(object sender, EventArgs e)
        {
            btnRemove_Click(null, new EventArgs());
        }

        private void tsmiCancel_Click(object sender, EventArgs e)
        {
            btnCancel_Click(null, new EventArgs());
        }

        private void tsmiSearch_Click(object sender, EventArgs e)
        {
            btnSearch_Click(null, new EventArgs());
        }

        private void tsmiPreview_Click(object sender, EventArgs e)
        {
            btnPreview_Click(null, new EventArgs());
        }

        private void toolStripSeparator1_Click(object sender, EventArgs e)
        {

        }
    }
}

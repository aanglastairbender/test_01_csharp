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
    public partial class OvertimeEntryUI : Form
    {
        OvertimeEntry loOvertimeEntry;
        Department loDepartment;
        DataTable ldtOvertimeEntry;
        Common loCommon;
        SearchesUI loSearches;
        OvertimeEntryRpt loOvertimeEntryRpt;
        ReportViewerUI loReportViewer;

        public OvertimeEntryUI()
        {
            InitializeComponent();
            loOvertimeEntry = new OvertimeEntry();
            loDepartment = new Department();
            ldtOvertimeEntry = new DataTable();
            loCommon = new Common();
            loOvertimeEntryRpt = new OvertimeEntryRpt();
            loReportViewer = new ReportViewerUI();
        }

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        public void refresh(string pSearchString, string pDepartmentCode)
        {
            try
            {
                dgvEmployeeList.DataSource = null;
                dgvOvertimeEntry.DataSource = null;
                dgvEmployeeList.DataSource = loOvertimeEntry.getOvertimeEntryEmployeeList(cboEmploymentType.Text, dtpFrom.Value, dtpTo.Value,pSearchString,pDepartmentCode);
                if(dgvEmployeeList.Rows.Count > 0)
                {
                    ldtOvertimeEntry = loOvertimeEntry.getOvertimeEntries(dgvEmployeeList.CurrentRow.Cells[0].Value.ToString(), dtpFrom.Value, dtpTo.Value);
                    dgvOvertimeEntry.DataSource = ldtOvertimeEntry;
                }
            }
            catch { }
        }


        private void OvertimeEntryUI_Load(object sender, EventArgs e)
        {
            Type _Type = typeof(OvertimeEntry);
            FieldInfo[] myFieldInfo;
            myFieldInfo = _Type.GetFields(BindingFlags.NonPublic | BindingFlags.Instance
            | BindingFlags.Public);
            loSearches = new SearchesUI(myFieldInfo, _Type, "tsmOvertimeEntry");

            cboEmploymentType.SelectedIndex = 0;
            cboDepartment.DataSource = loDepartment.getAllData("ViewAll", "");
            cboDepartment.ValueMember = "Code";
            cboDepartment.DisplayMember = "Department Description";
            cboDepartment.SelectedIndex = -1;
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
             if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Refresh"))
            {
                return;
            }
            cboDepartment.SelectedIndex = -1;
            txtEmployeeName.Clear();
            refresh("", "");
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Create"))
            {
                return;
            }
            OvertimeEntryDetailUI loOvertimeEntryDetail = new OvertimeEntryDetailUI();
            loOvertimeEntryDetail.ParentList = this;
            loOvertimeEntryDetail.ShowDialog();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Update"))
            {
                return;
            }
            try
            {
                if (dgvOvertimeEntry.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loOvertimeEntry.getOvertimeEntryStatus(dgvOvertimeEntry.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You cannot update an approved Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }
                    if (dgvOvertimeEntry.Rows.Count > 0)
                    {
                        OvertimeEntryDetailUI loOvertimeEntryDetail = new OvertimeEntryDetailUI(dgvOvertimeEntry.CurrentRow.Cells[0].Value.ToString());
                        loOvertimeEntryDetail.ParentList = this;
                        loOvertimeEntryDetail.ShowDialog();
                    }
                }
            }
            catch
            { 
            
            }
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Remove"))
            {
                return;
            }
            try
            {
                if (dgvOvertimeEntry.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loOvertimeEntry.getOvertimeEntryStatus(dgvOvertimeEntry.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You cannot remove an approved Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue removing this Overtime record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            if (loOvertimeEntry.remove(dgvOvertimeEntry.CurrentRow.Cells[0].Value.ToString(), ref Trans))
                            {
                                Trans.Commit();
                                MessageBoxUI _mb1 = new MessageBoxUI("Overtime has been successfully removed!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                _mb1.ShowDialog();
                                cboDepartment.SelectedIndex = -1;
                                txtEmployeeName.Clear();
                                refresh("","");
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

        private void btnApproved_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Approve"))
            {
                return;
            }
            try
            {
                if (dgvOvertimeEntry.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loOvertimeEntry.getOvertimeEntryStatus(dgvOvertimeEntry.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("Overtime Entry is already approved!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue approving this Overtime record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            if (loOvertimeEntry.approve(dgvOvertimeEntry.CurrentRow.Cells[0].Value.ToString(), ref Trans))
                            {
                                Trans.Commit();
                                MessageBoxUI _mb1 = new MessageBoxUI("Overtime has been successfully approved!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                _mb1.ShowDialog();
                                /*
                                cboDepartment.SelectedIndex = -1;
                                txtEmployeeName.Clear();
                                refresh("","");
                                */
                                ldtOvertimeEntry = loOvertimeEntry.getOvertimeEntries(dgvEmployeeList.CurrentRow.Cells[0].Value.ToString(), dtpFrom.Value, dtpTo.Value);
                                dgvOvertimeEntry.DataSource = ldtOvertimeEntry;
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

        private void dgvOvertimeEntry_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
             btnUpdate_Click(null, new EventArgs());
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Preview"))
            {
                return;
            }
            if (dgvOvertimeEntry.Rows.Count > 0)
            {
                loOvertimeEntryRpt.SetDataSource(GlobalVariables.DTLGULogo);
                loOvertimeEntryRpt.Database.Tables[1].SetDataSource(GlobalFunctions.convertDataGridToDataTableDateTime(dgvOvertimeEntry));
                loOvertimeEntryRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                loOvertimeEntryRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                loOvertimeEntryRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                loOvertimeEntryRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                loOvertimeEntryRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                loOvertimeEntryRpt.SetParameterValue("Title", "Overtime Entries");
                loOvertimeEntryRpt.SetParameterValue("SubTitle", "Overtime Entries");
                loOvertimeEntryRpt.SetParameterValue("EmployeeName", dgvEmployeeList.CurrentRow.Cells[1].Value.ToString());
                loOvertimeEntryRpt.SetParameterValue("Department", dgvEmployeeList.CurrentRow.Cells[2].Value.ToString());
                loOvertimeEntryRpt.SetParameterValue("Designation", dgvEmployeeList.CurrentRow.Cells[3].Value.ToString());
                loOvertimeEntryRpt.SetParameterValue("EmploymentType", cboEmploymentType.Text);
                loOvertimeEntryRpt.SetParameterValue("FromDate", dtpFrom.Value.ToShortDateString());
                loOvertimeEntryRpt.SetParameterValue("ToDate", dtpTo.Value.ToShortDateString());
                loReportViewer.crystalReportViewer.ReportSource = loOvertimeEntryRpt;
                loReportViewer.ShowDialog();
            }
        }

        private void dgvOvertimeEntry_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                Point pt = dgvOvertimeEntry.PointToScreen(e.Location);
                cmsFunction.Show(pt);
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }

        private void refreshToolStripMenuItem_Click(object sender, EventArgs e)
        {
            btnRefresh_Click(null, new EventArgs());
        }

        private void tsmApproveAll_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Approve"))
            {
                return;
            }
            try
            {
                if (dgvOvertimeEntry.Rows.Count > 0)
                {
                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue approving All Overtime details?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            bool _status = false;
                            foreach (DataRow _drOT in ldtOvertimeEntry.Rows)
                            {
                                _status = loOvertimeEntry.approve(_drOT[0].ToString(), ref Trans);
                            }
                            if (_status)
                            {
                                Trans.Commit();
                                MessageBoxUI _mb1 = new MessageBoxUI("All Overtime has been successfully approved!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                _mb1.ShowDialog();
                                cboDepartment.SelectedIndex = -1;
                                txtEmployeeName.Clear();
                                refresh("","");
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
            GlobalFunctions.refreshAll(ref dgvOvertimeEntry, ldtOvertimeEntry);
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Search"))
            {
                return;
            }
            try
            {
                string _DisplayFields = "SELECT ot.OvertimeEntryId AS `Id`,ot.EmployeeNo AS `Emp. No.`, "+
	                            "CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`, "+
	                            "d.DepartmentDescription AS `Department`, "+
	                            "DATE_FORMAT(ot.`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(ot.`Date`) AS `Day`, "+
	                            "DATE_FORMAT(ot.TimeIn,'%h:%i %p') AS `Time In`,DATE_FORMAT(ot.TimeOut,'%h:%i %p') AS `Time Out`, "+
	                            "DATE_FORMAT(ot.Overtime,'%H:%i')  AS `Overtime`, "+
	                            "ot.Approve AS `Approve`, "+
	                            "ot.ApprovedBy AS `Approved By`, "+
	                            "ot.Remarks "+
	                            "FROM overtimeEntry ot "+
	                            "LEFT JOIN employee e "+
	                            "ON ot.EmployeeNo = e.EmployeeNo "+
                                "LEFT JOIN department d " +
	                            "ON e.DepartmentCode = d.DepartmentCode ";
                string _WhereFields = "AND ot.`Status` = 'Active' ORDER BY e.LastName,ot.`Date` ASC;";
                loSearches.lAlias = "ot.";
                loSearches.ShowDialog();
                if (loSearches.lFromShow)
                {
                    cboDepartment.SelectedIndex = -1;
                    txtEmployeeName.Clear();
                    dgvOvertimeEntry.DataSource = null;
                    ldtOvertimeEntry = loCommon.getDataFromSearch(_DisplayFields + loSearches.lQuery + _WhereFields);
                    dgvOvertimeEntry.DataSource = ldtOvertimeEntry;
                    dgvOvertimeEntry.Columns[0].Frozen = true;
                    dgvOvertimeEntry.Columns[1].Frozen = true;
                    dgvOvertimeEntry.Columns[2].Frozen = true;
                    dgvOvertimeEntry.Columns[3].Frozen = true;
                    dgvOvertimeEntry.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                    dgvOvertimeEntry.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                    dgvOvertimeEntry.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
                    dgvOvertimeEntry.Columns[3].DefaultCellStyle.BackColor = SystemColors.Control;
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void cboDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboDepartment.SelectedIndex >= 0)
            {
                txtEmployeeName.Clear();
                refresh("", cboDepartment.SelectedValue.ToString());
            }
        }

        private void txtEmployeeName_TextChanged(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Search"))
            {
                return;
            }
            if (txtEmployeeName.Text != "")
            {
                cboDepartment.SelectedIndex = -1;
                refresh(txtEmployeeName.Text, "");
            }
        }

        private void dgvEmployeeList_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (this.dgvEmployeeList.Columns[e.ColumnIndex].Name == "No.")
            {
                if (e.Value != null)
                {
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
            }
        }

        private void cboEmploymentType_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboDepartment.SelectedIndex = -1;
            txtEmployeeName.Clear();
            refresh("", "");
        }

        private void dgvOvertimeEntry_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            try
            {
                if (this.dgvOvertimeEntry.Columns[e.ColumnIndex].Name == "Id" ||
                    this.dgvOvertimeEntry.Columns[e.ColumnIndex].Name == "Emp. No." ||
                    this.dgvOvertimeEntry.Columns[e.ColumnIndex].Name == "Overtime")
                {
                    if (e.Value != null)
                    {
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                    }
                }
                else if (this.dgvOvertimeEntry.Columns[e.ColumnIndex].Name == "Approve")
                {
                    if (e.Value != null)
                    {
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                        if (e.Value.ToString() == "Y")
                        {
                            dgvOvertimeEntry.Rows[e.RowIndex].DefaultCellStyle.BackColor = SystemColors.Info;
                        }
                    }
                }
                else if (this.dgvOvertimeEntry.Columns[e.ColumnIndex].Name == "Cancel")
                {
                    if (e.Value != null)
                    {
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                        if (e.Value.ToString() == "Y")
                        {
                            dgvOvertimeEntry.Rows[e.RowIndex].DefaultCellStyle.BackColor = SystemColors.Control;
                        }
                    }
                }
                else if (this.dgvOvertimeEntry.Columns[e.ColumnIndex].Name == "Day")
                {
                    if (e.Value != null && (e.Value.ToString() == "Saturday" || e.Value.ToString() == "Sunday"))
                    {
                        e.CellStyle.ForeColor = Color.Red;
                    }
                }
                else if (this.dgvOvertimeEntry.Columns[e.ColumnIndex].Name == "Time In" ||
                    this.dgvOvertimeEntry.Columns[e.ColumnIndex].Name == "Time Out")
                {
                    if (e.Value != null && e.Value.ToString() != "00:00" && e.Value.ToString() != "12:00 AM")
                    {
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
                    }
                    else
                    {
                        e.Value = "";
                    }
                }
            }
            catch { }
        }

        private void dgvEmployeeList_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvEmployeeList.Rows.Count > 0)
            {
                ldtOvertimeEntry = loOvertimeEntry.getOvertimeEntries(dgvEmployeeList.CurrentRow.Cells[0].Value.ToString(), dtpFrom.Value, dtpTo.Value);
                dgvOvertimeEntry.DataSource = ldtOvertimeEntry;
            }
        }

        private void dgvEmployeeList_KeyUp(object sender, KeyEventArgs e)
        {
            if (dgvEmployeeList.Rows.Count > 0)
            {
                ldtOvertimeEntry = loOvertimeEntry.getOvertimeEntries(dgvEmployeeList.CurrentRow.Cells[0].Value.ToString(), dtpFrom.Value, dtpTo.Value);
                dgvOvertimeEntry.DataSource = ldtOvertimeEntry;
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOvertimeEntry", "Cancel"))
            {
                return;
            }
            try
            {
                if (dgvOvertimeEntry.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loOvertimeEntry.getOvertimeEntryStatus(dgvOvertimeEntry.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "N")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You can only cancel an approved OT Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
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
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue cancelling this Overtime record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
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
                                if (loOvertimeEntry.cancel(dgvOvertimeEntry.CurrentRow.Cells[0].Value.ToString(),loCancelReason.lReason, ref Trans))
                                {
                                    Trans.Commit();
                                    MessageBoxUI _mb1 = new MessageBoxUI("Overtime has been successfully cancelled!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                    _mb1.ShowDialog();
                                    /*
                                    cboDepartment.SelectedIndex = -1;
                                    txtEmployeeName.Clear();
                                    refresh("", "");
                                    */
                                    ldtOvertimeEntry = loOvertimeEntry.getOvertimeEntries(dgvEmployeeList.CurrentRow.Cells[0].Value.ToString(), dtpFrom.Value, dtpTo.Value);
                                    dgvOvertimeEntry.DataSource = ldtOvertimeEntry;
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

        private void tsmiCreate_Click(object sender, EventArgs e)
        {
            btnCreate_Click(null, new EventArgs());
        }

        private void tsmiUpdate_Click(object sender, EventArgs e)
        {
            btnUpdate_Click(null, new EventArgs());
        }

        private void tsmiRemove_Click(object sender, EventArgs e)
        {
            btnRemove_Click(null, new EventArgs());
        }

        private void tsmiApprove_Click(object sender, EventArgs e)
        {
            btnApproved_Click(null, new EventArgs());
        }

        private void tsmiCancel_Click(object sender, EventArgs e)
        {
            btnCancel_Click(null, new EventArgs());
        }

        private void tsmiPreview_Click(object sender, EventArgs e)
        {
            btnPreview_Click(null, new EventArgs());
        }
    }
}

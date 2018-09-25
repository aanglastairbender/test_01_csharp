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
    public partial class OfficialBusinessEntryUI : Form
    {
        LookUpValueUI loLookupValue;
        OfficialBusinessEntry loOfficialBusinessEntry;
        Department loDepartment;
        DataTable ldtOfficialBusinessEntrys;
        Common loCommon;
        SearchesUI loSearches;
        OfficialBusinessEntryRpt loOfficialBusinessEntryRpt;
        ReportViewerUI loReportViewer;
        public OfficialBusinessEntryUI()
        {
            InitializeComponent();
            loLookupValue = new LookUpValueUI();
            loOfficialBusinessEntry = new OfficialBusinessEntry();
            loDepartment = new Department();
            ldtOfficialBusinessEntrys = new DataTable();
            loCommon = new Common();
            loOfficialBusinessEntryRpt = new OfficialBusinessEntryRpt();
            loReportViewer = new ReportViewerUI();
        }

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        public void refresh(string pSearchString,string pDepartmentCode)
        {
            try
            {
                dgvOfficialBusinessEntry.DataSource = null;
                ldtOfficialBusinessEntrys = loOfficialBusinessEntry.getOfficialBusinessEntries(cboEmploymentType.Text, dtpFrom.Value, dtpTo.Value,pSearchString,pDepartmentCode);
                dgvOfficialBusinessEntry.DataSource = ldtOfficialBusinessEntrys;
                dgvOfficialBusinessEntry.Columns[0].Frozen = true;
                dgvOfficialBusinessEntry.Columns[1].Frozen = true;
                dgvOfficialBusinessEntry.Columns[2].Frozen = true;
                dgvOfficialBusinessEntry.Columns[3].Frozen = true;
                dgvOfficialBusinessEntry.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvOfficialBusinessEntry.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvOfficialBusinessEntry.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvOfficialBusinessEntry.Columns[3].DefaultCellStyle.BackColor = SystemColors.Control;
            }
            catch { }
        }

        private void OfficialBusinessEntryUI_Load(object sender, EventArgs e)
        {
            Type _Type = typeof(OfficialBusinessEntry);
            FieldInfo[] myFieldInfo;
            myFieldInfo = _Type.GetFields(BindingFlags.NonPublic | BindingFlags.Instance
            | BindingFlags.Public);
            loSearches = new SearchesUI(myFieldInfo, _Type, "tsmOfficialBusinessEntry");
            
            cboEmploymentType.SelectedIndex = 0;
            cboDepartment.DataSource = loDepartment.getAllData("ViewAll", "");
            cboDepartment.ValueMember = "Code";
            cboDepartment.DisplayMember = "Department Description";
            cboDepartment.SelectedIndex = -1;
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOfficialBusinessEntry", "Create"))
            {
                return;
            }
            OfficialBusinessEntryDetailUI loOfficialBusinessEntryDetail = new OfficialBusinessEntryDetailUI();
            loOfficialBusinessEntryDetail.ParentList = this;
            loOfficialBusinessEntryDetail.ShowDialog();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOfficialBusinessEntry", "Update"))
            {
                return;
            }
            try
            {
                if (dgvOfficialBusinessEntry.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loOfficialBusinessEntry.getOfficialBusinessEntryStatus(dgvOfficialBusinessEntry.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You cannot update an approved Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    OfficialBusinessEntryDetailUI loOfficialBusinessEntryDetail = new OfficialBusinessEntryDetailUI(dgvOfficialBusinessEntry.CurrentRow.Cells[0].Value.ToString());
                    loOfficialBusinessEntryDetail.ParentList = this;
                    loOfficialBusinessEntryDetail.ShowDialog();
                }
            }
            catch { }
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOfficialBusinessEntry", "Remove"))
            {
                return;
            }
            try
            {
                if (dgvOfficialBusinessEntry.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loOfficialBusinessEntry.getOfficialBusinessEntryStatus(dgvOfficialBusinessEntry.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You cannot remove an approved Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue removing this Official Business record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            if (loOfficialBusinessEntry.remove(dgvOfficialBusinessEntry.CurrentRow.Cells[0].Value.ToString(), ref Trans))
                            {
                                Trans.Commit();
                                MessageBoxUI _mb1 = new MessageBoxUI("Official Business has been successfully removed!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
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

        private void dgvOfficialBusinessEntry_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            try
            {
                if (this.dgvOfficialBusinessEntry.Columns[e.ColumnIndex].Name == "Id" || 
                    this.dgvOfficialBusinessEntry.Columns[e.ColumnIndex].Name == "Approve" ||
                    this.dgvOfficialBusinessEntry.Columns[e.ColumnIndex].Name == "Cancel" || 
                    this.dgvOfficialBusinessEntry.Columns[e.ColumnIndex].Name == "Emp. No.")
                {
                    if (e.Value != null)
                    {
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                    }
                }
                else if (this.dgvOfficialBusinessEntry.Columns[e.ColumnIndex].Name.Contains("In") ||
                    this.dgvOfficialBusinessEntry.Columns[e.ColumnIndex].Name.Contains("Out"))
                {
                    if (e.Value != null)
                    {
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                    }
                }
            }
            catch { }
        }

        private void btnApproved_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOfficialBusinessEntry", "Approve"))
            {
                return;
            }
            try
            {
                if (dgvOfficialBusinessEntry.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loOfficialBusinessEntry.getOfficialBusinessEntryStatus(dgvOfficialBusinessEntry.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("Official Business Entry is already approved!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }
                    
                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue approving this Official Business record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            if (loOfficialBusinessEntry.approve(dgvOfficialBusinessEntry.CurrentRow.Cells[0].Value.ToString(), ref Trans))
                            {
                                Trans.Commit();
                                MessageBoxUI _mb1 = new MessageBoxUI("Official Business has been successfully approved!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                _mb1.ShowDialog();
                                cboDepartment.SelectedIndex = -1;
                                txtSearch.Clear();
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

        private void dgvOfficialBusinessEntry_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnUpdate_Click(null, new EventArgs());
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOfficialBusinessEntry", "Preview"))
            {
                return;
            }
            if (dgvOfficialBusinessEntry.Rows.Count > 0)
            {
                loOfficialBusinessEntryRpt.SetDataSource(GlobalVariables.DTLGULogo);
                loOfficialBusinessEntryRpt.Database.Tables[1].SetDataSource(ldtOfficialBusinessEntrys);
                loOfficialBusinessEntryRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                loOfficialBusinessEntryRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                loOfficialBusinessEntryRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                loOfficialBusinessEntryRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                loOfficialBusinessEntryRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                loOfficialBusinessEntryRpt.SetParameterValue("Title", "Official Business Entries");
                loOfficialBusinessEntryRpt.SetParameterValue("SubTitle", "Official Business Entries");
                loOfficialBusinessEntryRpt.SetParameterValue("EmploymentType", cboEmploymentType.Text);
                loOfficialBusinessEntryRpt.SetParameterValue("FromDate", dtpFrom.Value.ToShortDateString());
                loOfficialBusinessEntryRpt.SetParameterValue("ToDate", dtpTo.Value.ToShortDateString());
                loReportViewer.crystalReportViewer.ReportSource = loOfficialBusinessEntryRpt;
                loReportViewer.ShowDialog();
            }
        }

        private void dgvOfficialBusinessEntry_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                Point pt = dgvOfficialBusinessEntry.PointToScreen(e.Location);
                cmsFunction.Show(pt);
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }

        private void createToolStripMenuItem_Click(object sender, EventArgs e)
        {
            btnCreate_Click(null, new EventArgs());
        }

        private void refreshToolStripMenuItem_Click(object sender, EventArgs e)
        {
            btnRefresh_Click(null, new EventArgs());
        }

        private void cboDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboDepartment.SelectedIndex >= 0)
            {
                txtSearch.Clear();
                refresh("",cboDepartment.SelectedValue.ToString());
            }
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOfficialBusinessEntry", "Search"))
            {
                return;
            }
            if (txtSearch.Text != "")
            {
                cboDepartment.SelectedIndex = -1;
                refresh(txtSearch.Text,"");
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOfficialBusinessEntry", "Search"))
            {
                return;
            }
            try
            {
                string _DisplayFields = "SELECT obe.OfficialBusinessEntryId AS `Id`,obe.EmployeeNo AS `Emp. No.`,obe.Approve,obe.Cancel, "+
		                "CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`, "+
		                "d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation, "+
		                "DATE_FORMAT(obe.`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(obe.`Date`) AS `Day`, "+
		                "obe.Type,obe.ReferenceNo AS `Ref. No.`, "+
		                "obe.TimeIn AS `Time In`,obe.BreakOut AS `Break Out`, "+
		                "obe.BreakIn AS `Break In`, obe.TimeOut AS `Time Out`, "+
		                "obe.Purpose,obe.ApprovedBy AS `Approved By`, "+
                        "obe.CancelledBy AS `Cancelled By`, " +
		                "obe.CancelledReason AS `Cancelled Reason`,obe.Remarks "+
			            "FROM officialbusinessentry obe "+
			            "LEFT JOIN employee e "+
			            "ON obe.EmployeeNo = e.EmployeeNo "+
			            "LEFT JOIN department d "+
			            "ON e.DepartmentCode = d.DepartmentCode "+
                        "LEFT JOIN designation des " +
			            "ON e.DesignationCode = des.DesignationCode ";
                string _WhereFields = "AND obe.`Status` = 'Active' ORDER BY d.DepartmentDescription,e.LastName,e.FirstName,obe.Date ASC;";
                loSearches.lAlias = "obe.";
                loSearches.ShowDialog();
                if (loSearches.lFromShow)
                {
                    cboDepartment.SelectedIndex = -1;
                    txtSearch.Clear();
                    dgvOfficialBusinessEntry.DataSource = null;
                    ldtOfficialBusinessEntrys = loCommon.getDataFromSearch(_DisplayFields + loSearches.lQuery + _WhereFields);
                    dgvOfficialBusinessEntry.DataSource = ldtOfficialBusinessEntrys;
                    dgvOfficialBusinessEntry.Columns[0].Frozen = true;
                    dgvOfficialBusinessEntry.Columns[1].Frozen = true;
                    dgvOfficialBusinessEntry.Columns[2].Frozen = true;
                    dgvOfficialBusinessEntry.Columns[3].Frozen = true;
                    dgvOfficialBusinessEntry.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                    dgvOfficialBusinessEntry.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                    dgvOfficialBusinessEntry.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
                    dgvOfficialBusinessEntry.Columns[3].DefaultCellStyle.BackColor = SystemColors.Control;
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOfficialBusinessAuthorization", "Refresh"))
            {
                return;
            }
            cboDepartment.SelectedIndex = -1;
            txtSearch.Clear();
            refresh("", "");
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmOfficialBusinessEntry", "Cancel"))
            {
                return;
            }
            try
            {
                if (dgvOfficialBusinessEntry.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loOfficialBusinessEntry.getOfficialBusinessEntryStatus(dgvOfficialBusinessEntry.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "N")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You can only cancel an approved OB Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
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
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue cancelling this Official Business record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
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
                                if (loOfficialBusinessEntry.cancel(dgvOfficialBusinessEntry.CurrentRow.Cells[0].Value.ToString(), loCancelReason.lReason, ref Trans))
                                {
                                    Trans.Commit();
                                    MessageBoxUI _mb1 = new MessageBoxUI("Official Business has been successfully cancelled!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
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

        private void tsmViewAllRecords_Click(object sender, EventArgs e)
        {
            GlobalFunctions.refreshAll(ref dgvOfficialBusinessEntry, ldtOfficialBusinessEntrys);
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

        private void tsmiSearch_Click(object sender, EventArgs e)
        {
            btnSearch_Click(null, new EventArgs());
        }

        private void tsmiPreview_Click(object sender, EventArgs e)
        {
            btnPreview_Click(null, new EventArgs());
        }
    }
}

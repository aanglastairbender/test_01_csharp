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
    public partial class HolidayEntryUI : Form
    {
        HolidayEntry loHolidayEntry;
        Department loDepartment;
        Common loCommon;
        SearchesUI loSearches;
        DataTable ldtHolidayEntry;
        HolidayEntryRpt loHolidayEntryRpt;
        ReportViewerUI loReportViewer;

        public HolidayEntryUI()
        {
            InitializeComponent();
            loHolidayEntry = new HolidayEntry();
            loDepartment = new Department();
            loCommon = new Common();
            ldtHolidayEntry = new DataTable();
            loHolidayEntryRpt = new HolidayEntryRpt();
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
        public void refresh()
        {
            try
            {
                dgvHolidayEntryList.DataSource = null;
                ldtHolidayEntry = loHolidayEntry.getHolidayEntries();
                dgvHolidayEntryList.DataSource = ldtHolidayEntry;
            }
            catch { }
        }
        #endregion "END OF METHODS"

        private void HolidayEntryUI_Load(object sender, EventArgs e)
        {
            Type _Type = typeof(HolidayEntry);
            FieldInfo[] myFieldInfo;
            myFieldInfo = _Type.GetFields(BindingFlags.NonPublic | BindingFlags.Instance
            | BindingFlags.Public);
            loSearches = new SearchesUI(myFieldInfo, _Type, "tsmHolidayEntry");
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmHolidayEntry", "Refresh"))
            {
                return;
            }
            refresh();
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmHolidayEntry", "Create"))
            {
                return;
            }
            HolidayEntryDetailUI loHolidayEntryDetailUI = new HolidayEntryDetailUI();
            loHolidayEntryDetailUI.ParentList = this;
            loHolidayEntryDetailUI.ShowDialog();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }

        private void dgvHolidayEntryList_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (this.dgvHolidayEntryList.Columns[e.ColumnIndex].Name == "Id" ||
                this.dgvHolidayEntryList.Columns[e.ColumnIndex].Name == "Approve" ||
                this.dgvHolidayEntryList.Columns[e.ColumnIndex].Name == "Cancel" ||
                this.dgvHolidayEntryList.Columns[e.ColumnIndex].Name == "Emp. No." ||
                this.dgvHolidayEntryList.Columns[e.ColumnIndex].Name == "Holiday Type")
            {
                if (e.Value != null)
                {
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
            }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmHolidayEntry", "Update"))
            {
                return;
            }
            try
            {
                if (dgvHolidayEntryList.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loHolidayEntry.getHolidayEntryStatus(dgvHolidayEntryList.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You cannot update an approved Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    HolidayEntryDetailUI loHolidayEntryDetailUI = new HolidayEntryDetailUI(dgvHolidayEntryList.CurrentRow.Cells[0].Value.ToString());
                    loHolidayEntryDetailUI.ParentList = this;
                    loHolidayEntryDetailUI.ShowDialog();
                }
            }
            catch { }
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmHolidayEntry", "Remove"))
            {
                return;
            }
            try
            {
                if (dgvHolidayEntryList.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loHolidayEntry.getHolidayEntryStatus(dgvHolidayEntryList.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You cannot remove an approved Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue removing this Holiday Entry record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            if (loHolidayEntry.remove(dgvHolidayEntryList.CurrentRow.Cells[0].Value.ToString(), ref Trans))
                            {
                                Trans.Commit();
                                MessageBoxUI _mb1 = new MessageBoxUI("Holiday Entry has been successfully removed!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                _mb1.ShowDialog();
                                refresh();
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

        private void dgvHolidayEntryList_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnUpdate_Click(null, new EventArgs());
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmHolidayEntry", "Preview"))
            {
                return;
            }
            if (dgvHolidayEntryList.Rows.Count > 0)
            {
                loHolidayEntryRpt.SetDataSource(GlobalVariables.DTLGULogo);
                loHolidayEntryRpt.Database.Tables[1].SetDataSource(ldtHolidayEntry);
                loHolidayEntryRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                loHolidayEntryRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                loHolidayEntryRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                loHolidayEntryRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                loHolidayEntryRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                loHolidayEntryRpt.SetParameterValue("Title", "Holiday Entries");
                loHolidayEntryRpt.SetParameterValue("SubTitle", "Holiday Entries");
                loReportViewer.crystalReportViewer.ReportSource = loHolidayEntryRpt;
                loReportViewer.ShowDialog();
            }
        }

        private void dgvHolidayEntryList_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                Point pt = dgvHolidayEntryList.PointToScreen(e.Location);
                cmsFunction.Show(pt);
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmHolidayEntry", "Search"))
            {
                return;
            }
            try
            {
                string _DisplayFields = "SELECT he.HolidayEntryId AS `Id`, "+
	                            "he.Approve,he.Cancel, "+
	                            "DATE_FORMAT(he.`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(he.`Date`) AS `Day`, "+
	                            "h.HolidayDescription AS `Holiday Description`,h.Type, "+
	                            "he.ApprovedBy AS `Approved By`, "+
                                "he.CancelledBy AS `Cancelled By`,he.CancelledReason AS `Cancelled Reason`, " +
	                            "he.Remarks "+
	                            "FROM holidayentry he "+
	                            "LEFT JOIN holiday h "+
                                "ON he.HolidayCode = h.HolidayCode ";
                string _WhereFields = " AND he.Status = 'Active' ORDER BY he.Date DESC;";
                loSearches.lAlias = "he.";
                loSearches.ShowDialog();
                if (loSearches.lFromShow)
                {
                    try
                    {
                        dgvHolidayEntryList.DataSource = null;
                        ldtHolidayEntry = loCommon.getDataFromSearch(_DisplayFields + loSearches.lQuery + _WhereFields);
                        dgvHolidayEntryList.DataSource = ldtHolidayEntry;
                        dgvHolidayEntryList.Columns[0].Frozen = true;
                        dgvHolidayEntryList.Columns[1].Frozen = true;
                        dgvHolidayEntryList.Columns[2].Frozen = true;
                        dgvHolidayEntryList.Columns[3].Frozen = true;
                        dgvHolidayEntryList.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                        dgvHolidayEntryList.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                        dgvHolidayEntryList.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
                        dgvHolidayEntryList.Columns[3].DefaultCellStyle.BackColor = SystemColors.Control;
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
            if (!GlobalFunctions.checkRights("tsmHolidayEntry", "Approve"))
            {
                return;
            }
            try
            {
                if (dgvHolidayEntryList.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loHolidayEntry.getHolidayEntryStatus(dgvHolidayEntryList.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "Y")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("Holiday Entry is already approved!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                            _mbStatus.ShowDialog();
                            return;
                        }
                    }

                    DialogResult _dr = new DialogResult();
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue approving this Holiday Entry record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                    _mb.ShowDialog();
                    _dr = _mb.Operation;
                    if (_dr == DialogResult.Yes)
                    {
                        MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                        try
                        {
                            if (loHolidayEntry.approve(dgvHolidayEntryList.CurrentRow.Cells[0].Value.ToString(), ref Trans))
                            {
                                Trans.Commit();
                                MessageBoxUI _mb1 = new MessageBoxUI("Holiday Entry has been successfully approved!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                _mb1.ShowDialog();
                                refresh();
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
            GlobalFunctions.refreshAll(ref dgvHolidayEntryList, ldtHolidayEntry);
        }

        private void tsmiRefresh_Click(object sender, EventArgs e)
        {
            btnRefresh_Click(null, new EventArgs());
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
            btnApprove_Click(null, new EventArgs());
        }

        private void tsmiSearch_Click(object sender, EventArgs e)
        {
            btnSearch_Click(null, new EventArgs());
        }

        private void tsmiPreview_Click(object sender, EventArgs e)
        {
            btnPreview_Click(null, new EventArgs());
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmHolidayEntry", "Cancel"))
            {
                return;
            }
            try
            {
                if (dgvHolidayEntryList.Rows.Count > 0)
                {
                    foreach (DataRow _drStatus in loHolidayEntry.getHolidayEntryStatus(dgvHolidayEntryList.CurrentRow.Cells[0].Value.ToString()).Rows)
                    {
                        if (_drStatus[0].ToString() == "N")
                        {
                            MessageBoxUI _mbStatus = new MessageBoxUI("You can only cancel an approved Holiday Entry!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
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
                    MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue cancelling this Holiday record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
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
                                if (loHolidayEntry.cancel(dgvHolidayEntryList.CurrentRow.Cells[0].Value.ToString(), loCancelReason.lReason, ref Trans))
                                {
                                    Trans.Commit();
                                    MessageBoxUI _mb1 = new MessageBoxUI("Holiday has been successfully cancelled!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                    _mb1.ShowDialog();
                                    refresh();
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

        private void tsmiCancel_Click(object sender, EventArgs e)
        {
            btnCancel_Click(null, new EventArgs());
        }
    }
}

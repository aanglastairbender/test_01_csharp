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
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Systems;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report.MasterfileRpt;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.MasterFiles
{
    public partial class WorkScheduleListUI : Form
    {
        #region "VARIABLES"
        WorkSchedule loWorkSchedule;
        WorkScheduleDetail loWorkScheduleDetail;
        SearchesUI loSearches;
        Common loCommon;
        DataTable ldtList;
        DataTable ldtDetails;
        WorkScheduleListRpt loWorkScheduleListRpt;
        WorkScheduleDetailRpt loWorkScheduleDetailRpt;
        ReportViewerUI loReportViewer;
        #endregion "END OF VARIABLES"

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "CONSTRUCTORS"
        public WorkScheduleListUI(object pObject, Type pType)
        {
            InitializeComponent();
            loWorkSchedule = new WorkSchedule();
            loWorkScheduleDetail = new WorkScheduleDetail();
            this.Text = pObject.GetType().Name + " List";
            loCommon = new Common();
            ldtList = new DataTable();
            ldtDetails = new DataTable();
            loWorkScheduleListRpt = new WorkScheduleListRpt();
            loWorkScheduleDetailRpt = new WorkScheduleDetailRpt();
            loReportViewer = new ReportViewerUI();
        }
        #endregion "END OF CONSTRUCTORS"

        #region "METHODS"
        public void refresh(string pDisplayType, string pSearchString)
        {
            ldtList = loWorkSchedule.getAllData(pDisplayType, pSearchString);
            GlobalFunctions.refreshGrid(ref dgvLists, ldtList);
            try
            {
                dgvListDetails.DataSource = null;
                ldtDetails = loWorkScheduleDetail.getWorkScheduleDetails(dgvLists.CurrentRow.Cells[0].Value.ToString());
                dgvListDetails.DataSource = ldtDetails;
            }
            catch
            { }
        }

        public void addData(string[] pRecordData)
        {
            try
            {
                int n = dgvLists.Rows.Add();
                for (int i = 0; i < pRecordData.Length; i++)
                {
                    dgvLists.Rows[n].Cells[i].Value = pRecordData[i];
                }
                dgvLists.CurrentRow.Selected = false;
                dgvLists.FirstDisplayedScrollingRowIndex = dgvLists.Rows[n].Index;
                dgvLists.Rows[n].Selected = true;
            }
            catch { }
        }

        public void updateData(string[] pRecordData)
        {
            for (int i = 0; i < pRecordData.Length; i++)
            {
                dgvLists.CurrentRow.Cells[i].Value = pRecordData[i];
            }
        }
        #endregion "END OF METHODS"

        private void WorkScheduleListUI_Load(object sender, EventArgs e)
        {
            Type _Type = typeof(WorkSchedule);
            FieldInfo[] myFieldInfo;
            myFieldInfo = _Type.GetFields(BindingFlags.NonPublic | BindingFlags.Instance
            | BindingFlags.Public);
            loSearches = new SearchesUI(myFieldInfo, _Type, "tsmEmployee");
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmEmployee", "Refresh"))
            {
                return;
            }
            refresh("ViewAll", "");
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmEmployee", "Create"))
            {
                return;
            }
            if (dgvLists.Rows.Count == 0)
            {
                refresh("ViewAll", "");
            }
            WorkScheduleDetailUI loWorkScheduleDetail = new WorkScheduleDetailUI();
            loWorkScheduleDetail.ParentList = this;
            loWorkScheduleDetail.ShowDialog();
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmEmployee", "Remove"))
            {
                return;
            }
            try
            {
                if (dgvLists.Rows.Count > 0)
                {
                    if (dgvLists.CurrentRow.Cells[0].Value.ToString() != "")
                    {
                        DialogResult _dr = new DialogResult();
                        MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue removing this record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                        _mb.ShowDialog();
                        _dr = _mb.Operation;
                        if (_dr == DialogResult.Yes)
                        {
                            MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                            try
                            {
                                if (loWorkSchedule.remove(dgvLists.CurrentRow.Cells["Code"].Value.ToString(), ref Trans))
                                {
                                    Trans.Commit();
                                    MessageBoxUI _mb1 = new MessageBoxUI("Work Schedule has been successfully removed!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                    _mb1.ShowDialog();
                                    refresh("ViewAll", "");
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

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmEmployee", "Update"))
            {
                return;
            }
            try
            {
                if (dgvLists.Rows.Count > 0)
                {
                    WorkScheduleDetailUI loWorkScheduleDetail = new WorkScheduleDetailUI(dgvLists.CurrentRow.Cells[0].Value.ToString(),
                        dgvLists.CurrentRow.Cells[1].Value.ToString(), dgvLists.CurrentRow.Cells[2].Value.ToString());
                    loWorkScheduleDetail.ParentList = this;
                    loWorkScheduleDetail.ShowDialog();
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmEmployee", "Search"))
            {
                return;
            }
            try
            {
                string _DisplayFields = "SELECT WorkScheduleCode AS `Code`, " +
                    "WorkScheduleDescription AS `Work Schedule Description`, " +
                    "Remarks " +
                    "FROM workschedule ";
                string _WhereFields = "AND `Status` = 'Active'";
                loSearches.lAlias = "";
                loSearches.ShowDialog();
                if (loSearches.lFromShow)
                {
                    ldtList = loCommon.getDataFromSearch(_DisplayFields + loSearches.lQuery + _WhereFields);
                    GlobalFunctions.refreshGrid(ref dgvLists, ldtList);
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmEmployee", "Preview"))
            {
                return;
            }
            if (dgvLists.Rows.Count > 0)
            {
                loWorkScheduleListRpt.SetDataSource(GlobalVariables.DTLGULogo);
                loWorkScheduleListRpt.Database.Tables[1].SetDataSource(ldtList);
                loWorkScheduleListRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                loWorkScheduleListRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                loWorkScheduleListRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                loWorkScheduleListRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                loWorkScheduleListRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                loWorkScheduleListRpt.SetParameterValue("Title", "Work Schedule List");
                loWorkScheduleListRpt.SetParameterValue("SubTitle", "Work Schedule List");
                loReportViewer.crystalReportViewer.ReportSource = loWorkScheduleListRpt;
                loReportViewer.ShowDialog();
            }
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmEmployee", "Search"))
            {
                return;
            }
            refresh("", txtSearch.Text);
        }

        private void dgvLists_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnUpdate_Click(null, new EventArgs());
        }

        private void dgvLists_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            try
            {
                if (this.dgvLists.Columns[e.ColumnIndex].Name == "Code" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Hospital Employee")
                {
                    if (e.Value != null)
                    {
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                    }
                }
            }
            catch { }
        }

        private void dgvLists_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                Point pt = dgvLists.PointToScreen(e.Location);
                cmsFunction.Show(pt);
            }
        }

        private void tsmiViewAllRecords_Click(object sender, EventArgs e)
        {
            try
            {
                dgvLists.Rows.Clear();
                dgvLists.Columns.Clear();
            }
            catch { }
            try
            {
                dgvLists.DataSource = ldtList;
            }
            catch { }
        }

        private void dgvLists_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                dgvListDetails.DataSource = null;
                ldtDetails = loWorkScheduleDetail.getWorkScheduleDetails(dgvLists.CurrentRow.Cells[0].Value.ToString());
                dgvListDetails.DataSource = ldtDetails;
            }
            catch
            { }
        }

        private void dgvLists_KeyUp(object sender, KeyEventArgs e)
        {
            try
            {
                dgvListDetails.DataSource = null;
                ldtDetails = loWorkScheduleDetail.getWorkScheduleDetails(dgvLists.CurrentRow.Cells[0].Value.ToString());
                dgvListDetails.DataSource = ldtDetails;
            }
            catch
            { }
        }

        private void dgvListDetails_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                Point pt = dgvListDetails.PointToScreen(e.Location);
                cmsFunctionDetails.Show(pt);
            }
        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmWorkSchedule", "Preview"))
            {
                return;
            }
            if (dgvListDetails.Rows.Count > 0)
            {
                loWorkScheduleDetailRpt.SetDataSource(GlobalVariables.DTLGULogo);
                loWorkScheduleDetailRpt.Database.Tables[1].SetDataSource(ldtDetails);
                loWorkScheduleDetailRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                loWorkScheduleDetailRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                loWorkScheduleDetailRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                loWorkScheduleDetailRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                loWorkScheduleDetailRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                loWorkScheduleDetailRpt.SetParameterValue("Title", "Work Schedule Details");
                loWorkScheduleDetailRpt.SetParameterValue("SubTitle", "Work Schedule Details");
                loWorkScheduleDetailRpt.SetParameterValue("WorkScheduleDescription", dgvLists.CurrentRow.Cells[1].Value.ToString());
                loWorkScheduleDetailRpt.SetParameterValue("HospitalEmployee", dgvLists.CurrentRow.Cells[2].Value.ToString());
                loReportViewer.crystalReportViewer.ReportSource = loWorkScheduleDetailRpt;
                loReportViewer.ShowDialog();
            }
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

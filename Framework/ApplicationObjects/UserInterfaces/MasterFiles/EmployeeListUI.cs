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
    public partial class EmployeeListUI : Form
    {
        #region "VARIABLES"
        Employee loEmployee;
        SearchesUI loSearches;
        Common loCommon;
        DataTable ldtList;
        DataTable ldtDetails;
        EmployeeListRpt loEmployeeListRpt;
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
        public EmployeeListUI(object pObject, Type pType)
        {
            InitializeComponent();
            loEmployee = new Employee();
            this.Text = pObject.GetType().Name + " List";
            loCommon = new Common();
            ldtList = new DataTable();
            ldtDetails = new DataTable();
            loEmployeeListRpt = new EmployeeListRpt();
            loReportViewer = new ReportViewerUI();
        }
        #endregion "END OF CONSTRUCTORS"

        #region "METHODS"
        public void refresh(string pDisplayType, string pSearchString)
        {
            try
            {
                ldtList = loEmployee.getAllData(pDisplayType, pSearchString);
                GlobalFunctions.refreshGrid(ref dgvLists, ldtList);
                dgvLists.Columns[0].Frozen = true;
                dgvLists.Columns[1].Frozen = true;
                dgvLists.Columns[2].Frozen = true;
                dgvLists.Columns[3].Frozen = true;
                dgvLists.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvLists.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvLists.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvLists.Columns[3].DefaultCellStyle.BackColor = SystemColors.Control;
            }
            catch { }
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
            EmployeeDetailUI loEmployeeDetail = new EmployeeDetailUI();
            loEmployeeDetail.ParentList = this;
            loEmployeeDetail.ShowDialog();
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
                                if (loEmployee.remove(dgvLists.CurrentRow.Cells[0].Value.ToString(),ref Trans))
                                {
                                    Trans.Commit();
                                    MessageBoxUI _mb1 = new MessageBoxUI("Employee has been successfully removed!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
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
                    EmployeeDetailUI loEmployeeDetail = new EmployeeDetailUI(dgvLists.CurrentRow.Cells["No."].Value.ToString());
                    loEmployeeDetail.ParentList = this;
                    loEmployeeDetail.ShowDialog();
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
                string _DisplayFields = "SELECT e.EmployeeNo AS `No.`,e.LastName AS `Last Name`, "+
			                    "e.FirstName AS `First Name`,e.MiddleName AS `Middle Name`, "+
			                    "e.Active,e.BiometricsId AS `Bio. Id No.`, "+
			                    "e.EmploymentType AS `Employment Type`, "+
			                    "ws.WorkScheduleDescription AS `Work Schedule`, "+
			                    "DATE_FORMAT(e.Birthday,'%m-%d-%Y') AS Birthday, e.Remarks "+
			                    "FROM employee e "+
			                    "LEFT JOIN workschedule ws "+
			                    "ON e.WorkScheduleCode = ws.WorkScheduleCode ";
                string _WhereFields = "AND e.Status = 'Active'";
                loSearches.lAlias = "e.";
                loSearches.ShowDialog();
                if (loSearches.lFromShow)
                {
                    ldtList = loCommon.getDataFromSearch(_DisplayFields + loSearches.lQuery + _WhereFields);
                    GlobalFunctions.refreshGrid(ref dgvLists, ldtList);
                    dgvLists.Columns[0].Frozen = true;
                    dgvLists.Columns[1].Frozen = true;
                    dgvLists.Columns[2].Frozen = true;
                    dgvLists.Columns[3].Frozen = true;
                    dgvLists.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                    dgvLists.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                    dgvLists.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
                    dgvLists.Columns[3].DefaultCellStyle.BackColor = SystemColors.Control;
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
                loEmployeeListRpt.SetDataSource(GlobalVariables.DTLGULogo);
                loEmployeeListRpt.Database.Tables[1].SetDataSource(ldtList);
                loEmployeeListRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                loEmployeeListRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                loEmployeeListRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                loEmployeeListRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                loEmployeeListRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                loEmployeeListRpt.SetParameterValue("Title", "Employee List");
                loEmployeeListRpt.SetParameterValue("SubTitle", "Employee List");
                loReportViewer.crystalReportViewer.ReportSource = loEmployeeListRpt;
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
                if (this.dgvLists.Columns[e.ColumnIndex].Name == "Basic Pay" || 
                    this.dgvLists.Columns[e.ColumnIndex].Name == "RA Amount" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "TA Amount" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "PERA Amount" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Subsistence Amount" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Laundry Amount" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Hazard APS(%)")
                {
                    if (e.Value != null)
                    {
                        e.Value = string.Format("{0:n}", decimal.Parse(e.Value.ToString()));
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
                    }
                }
                else if (this.dgvLists.Columns[e.ColumnIndex].Name == "Last Name" || this.dgvLists.Columns[e.ColumnIndex].Name == "First Name" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Middle Name" || this.dgvLists.Columns[e.ColumnIndex].Name == "Department" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Designation" || this.dgvLists.Columns[e.ColumnIndex].Name == "Immediate Supervisor" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Remarks")
                {
                    if (e.Value != null)
                    {
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleLeft;
                    }
                }
            }
            catch { }
        }

        private void EmployeeListUI_Load(object sender, EventArgs e)
        {
            Type _Type = typeof(Employee);
            FieldInfo[] myFieldInfo;
            myFieldInfo = _Type.GetFields(BindingFlags.NonPublic | BindingFlags.Instance
            | BindingFlags.Public);
            loSearches = new SearchesUI(myFieldInfo, _Type, "tsmEmployee");
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
                dgvLists.Columns[0].Frozen = true;
                dgvLists.Columns[1].Frozen = true;
                dgvLists.Columns[2].Frozen = true;
                dgvLists.Columns[3].Frozen = true;
                dgvLists.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvLists.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvLists.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvLists.Columns[3].DefaultCellStyle.BackColor = SystemColors.Control;
            }
            catch { }
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

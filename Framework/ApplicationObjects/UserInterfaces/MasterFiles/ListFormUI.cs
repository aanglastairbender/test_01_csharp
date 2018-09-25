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
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report.MasterfileRpt;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Systems;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.MasterFiles
{
    public partial class ListFormUI : Form
    {
        #region "VARIABLES"
        public object lObject;
        Type lType;
        string[] lRecord;
        string[] lColumnName;
        int lCountCol;
        SearchUI loSearch;
        Common loCommon;
        DataTable ldtShow;
        DataTable ldtReport;
        DataTable ldtReportSum;
        bool lFromRefresh;
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
        public ListFormUI(object pObject, Type pType)
        {
            InitializeComponent();
            lObject = pObject;
            lType = pType;
            this.Text = pObject.GetType().Name + " List";
            loCommon = new Common();
            ldtShow = new DataTable();
            ldtReport = new DataTable();
            ldtReportSum = new DataTable();
            lFromRefresh = false;
            loReportViewer = new ReportViewerUI();
        }
        #endregion "END OF CONSTRUCTORS"

        #region "METHODS"
        public void refresh(string pDisplayType, string pSearchString, bool pShowRecord)
        {
            lFromRefresh = true;
            try
            {
                dgvLists.Rows.Clear();
                dgvLists.Columns.Clear();
            }
            catch 
            {
                dgvLists.DataSource = null;
            }
            tsmiViewAllRecords.Visible = false;
            object[] _params = { pDisplayType, pSearchString };

            ldtShow = (DataTable)lObject.GetType().GetMethod("getAllData").Invoke(lObject, _params);
            if(ldtShow == null)
            {
                return;
            }
            lCountCol = ldtShow.Columns.Count;
            lColumnName = new string[lCountCol];
            lRecord = new string[lCountCol];
            for (int i = 0; i < lCountCol; i++)
            {
                dgvLists.Columns.Add(ldtShow.Columns[i].ColumnName, ldtShow.Columns[i].ColumnName);
            }
            if (pShowRecord)
            {
                foreach (DataRow _dr in ldtShow.Rows)
                {
                    int n = dgvLists.Rows.Add();
                    if (n < GlobalVariables.DisplayRecordLimit)
                    {
                        for (int i = 0; i < lCountCol; i++)
                        {
                            dgvLists.Rows[n].Cells[i].Value = _dr[i].ToString();
                        }
                    }
                    else
                    {
                        dgvLists.Rows[n].DefaultCellStyle.BackColor = Color.Red;
                        dgvLists.Rows[n].DefaultCellStyle.ForeColor = Color.White;
                        dgvLists.Rows[n].Height = 5;
                        dgvLists.Rows[n].ReadOnly = true;
                        tsmiViewAllRecords.Visible = true;
                        break;
                    }
                }
            }
            try
            {
                for (int i = 0; i < lCountCol; i++)
                {
                    lRecord[i] = dgvLists.CurrentRow.Cells[i].Value.ToString();
                }
            }
            catch { }
        }
        
        public void refreshAll()
        {
            tsmiViewAllRecords.Visible = false;
            dgvLists.Rows.Clear();
            foreach (DataRow _dr in ldtShow.Rows)
            {
                int n = dgvLists.Rows.Add();
                for (int i = 0; i < lCountCol; i++)
                {
                    dgvLists.Rows[n].Cells[i].Value = _dr[i].ToString();
                }
            }

            for (int i = 0; i < lCountCol; i++)
            {
                lRecord[i] = dgvLists.CurrentRow.Cells[i].Value.ToString();
            }
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
            catch 
            {
                refresh("ViewAll", "", true);
            }
        }

        public void updateData(string[] pRecordData)
        {
            for (int i = 0; i < pRecordData.Length; i++)
            {
                dgvLists.CurrentRow.Cells[i].Value = pRecordData[i];
            }
        }
        #endregion "END OF METHODS"

        #region "EVENTS"
        private void ListFormUI_Load(object sender, EventArgs e)
        {
            FieldInfo[] myFieldInfo;
            myFieldInfo = lType.GetFields(BindingFlags.NonPublic | BindingFlags.Instance
            | BindingFlags.Public);
            loSearch = new SearchUI(myFieldInfo, lType, "tsm" + lType.Name);
        }

        private void dgvLists_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                for (int i = 0; i < lCountCol; i++)
                {
                    lRecord[i] = dgvLists.CurrentRow.Cells[i].Value.ToString();
                }
            }
            catch { }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsm" + lType.Name, "Update"))
            {
                return;
            }
            try
            {
                for (int i = 0; i < lCountCol; i++)
                {
                    lRecord[i] = dgvLists.CurrentRow.Cells[i].Value.ToString();
                }
            }
            catch { }
            try
            {
                if (lRecord.Length > 0)
                {
                    try
                    {
                        if (lRecord[0].ToString() != "")
                        {
                            switch (lType.Name)
                            {
                                case "Department":
                                    DepartmentDetailUI loDepartmentDetail = new DepartmentDetailUI(lRecord);
                                    loDepartmentDetail.ParentList = this;
                                    loDepartmentDetail.ShowDialog();
                                    break;
                                case "Designation":
                                    DesignationDetailUI loDesignationDetail = new DesignationDetailUI(lRecord);
                                    loDesignationDetail.ParentList = this;
                                    loDesignationDetail.ShowDialog();
                                    break;
                                case "LeaveType":
                                    LeaveTypeDetailUI loLeaveTypeDetail = new LeaveTypeDetailUI(lRecord);
                                    loLeaveTypeDetail.ParentList = this;
                                    loLeaveTypeDetail.ShowDialog();
                                    break;
                                case "Holiday":
                                    HolidayDetailUI loHolidayDetail = new HolidayDetailUI(lRecord);
                                    loHolidayDetail.ParentList = this;
                                    loHolidayDetail.ShowDialog();
                                    break;
                                case "User":
                                    UserDetailUI loUserDetailUI = new UserDetailUI(lRecord);
                                    loUserDetailUI.ParentList = this;
                                    loUserDetailUI.ShowDialog();
                                    break;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                        mb.ShowDialog();
                        return;
                    }
                }
            }
            catch { }
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsm" + lType.Name, "Create"))
            {
                return;
            }
            if (dgvLists.Rows.Count == 0)
            {
                refresh("ViewAll", "", false);
            }
            switch (lType.Name)
            {
                case "Department":
                    DepartmentDetailUI loDepartmentDetail = new DepartmentDetailUI();
                    loDepartmentDetail.ParentList = this;
                    loDepartmentDetail.ShowDialog();
                    break;
                case "Designation":
                    DesignationDetailUI loDesignationDetail = new DesignationDetailUI();
                    loDesignationDetail.ParentList = this;
                    loDesignationDetail.ShowDialog();
                    break;
                case "LeaveType":
                    LeaveTypeDetailUI loLeaveTypeDetail = new LeaveTypeDetailUI();
                    loLeaveTypeDetail.ParentList = this;
                    loLeaveTypeDetail.ShowDialog();
                    break;
                case "Holiday":
                    HolidayDetailUI loHolidayDetail = new HolidayDetailUI();
                    loHolidayDetail.ParentList = this;
                    loHolidayDetail.ShowDialog();
                    break;
                case "User":
                    UserDetailUI loUserDetailUI = new UserDetailUI();
                    loUserDetailUI.ParentList = this;
                    loUserDetailUI.ShowDialog();
                    break;
            }
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsm" + lType.Name, "Refresh"))
            {
                return;
            }
            refresh("ViewAll","",true);
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsm" + lType.Name, "Remove"))
            {
                return;
            }
            try
            {
                if (lRecord.Length > 0)
                {
                    if (lRecord[0].ToString() != null)
                    {
                        DialogResult _dr = new DialogResult();
                        MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue removing this record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                        _mb.ShowDialog();
                        _dr = _mb.Operation;
                        if (_dr == DialogResult.Yes)
                        {
                            MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
                            object[] param = { lRecord[0].ToString(), Trans };
                            try
                            {
                                if ((bool)lObject.GetType().GetMethod("remove").Invoke(lObject, param))
                                {
                                    Trans.Commit();
                                    MessageBoxUI _mb1 = new MessageBoxUI(lType.Name + " has been successfully removed!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                                    _mb1.ShowDialog();
                                    refresh("ViewAll","",true);
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

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsm" + lType.Name, "Search"))
            {
                return;
            }
            try
            {
                loSearch.ShowDialog();
                if (loSearch.lFromShow)
                {
                    ldtShow = loCommon.getDataFromSearch(loSearch.lQueryShow);
                    GlobalFunctions.refreshGrid(ref dgvLists, ldtShow);
                    lFromRefresh = false;
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }
        #endregion "END OF EVENTS"

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
            //GlobalFunctions.refreshAll(ref dgvLists, ldtShow);
            try
            {
                dgvLists.Rows.Clear();
                dgvLists.Columns.Clear();
            }
            catch { }
            try
            {
                dgvLists.DataSource = ldtShow;
            }
            catch { }
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsm" + lType.Name, "Preview"))
            {
                return;
            }
            if (dgvLists.Rows.Count > 0)
            {
                switch (lType.Name)
                {
                    case "Department":
                        DepartmentListRpt loDepartmentListRpt = new DepartmentListRpt();
                        loDepartmentListRpt.SetDataSource(GlobalVariables.DTLGULogo);
                        loDepartmentListRpt.Database.Tables[1].SetDataSource(ldtShow);
                        loDepartmentListRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                        loDepartmentListRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                        loDepartmentListRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                        loDepartmentListRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                        loDepartmentListRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                        loDepartmentListRpt.SetParameterValue("Title", "Department List");
                        loDepartmentListRpt.SetParameterValue("SubTitle", "Department List");
                        loReportViewer.crystalReportViewer.ReportSource = loDepartmentListRpt;
                        loReportViewer.ShowDialog();
                        break;
                    case "Designation":
                        DesignationListRpt loDesignationListRpt = new DesignationListRpt();
                        loDesignationListRpt.SetDataSource(GlobalVariables.DTLGULogo);
                        loDesignationListRpt.Database.Tables[1].SetDataSource(ldtShow);
                        loDesignationListRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                        loDesignationListRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                        loDesignationListRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                        loDesignationListRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                        loDesignationListRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                        loDesignationListRpt.SetParameterValue("Title", "Designation List");
                        loDesignationListRpt.SetParameterValue("SubTitle", "Designation List");
                        loReportViewer.crystalReportViewer.ReportSource = loDesignationListRpt;
                        loReportViewer.ShowDialog();
                        break;
                    case "LeaveType":
                        LeaveTypeListRpt loLeaveTypeListRpt = new LeaveTypeListRpt();
                        loLeaveTypeListRpt.SetDataSource(GlobalVariables.DTLGULogo);
                        loLeaveTypeListRpt.Database.Tables[1].SetDataSource(ldtShow);
                        loLeaveTypeListRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                        loLeaveTypeListRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                        loLeaveTypeListRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                        loLeaveTypeListRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                        loLeaveTypeListRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                        loLeaveTypeListRpt.SetParameterValue("Title", "Leave Type List");
                        loLeaveTypeListRpt.SetParameterValue("SubTitle", "Leave Type List");
                        loReportViewer.crystalReportViewer.ReportSource = loLeaveTypeListRpt;
                        loReportViewer.ShowDialog();
                        break;
                    case "Holiday":
                        HolidayListRpt loHolidayListRpt = new HolidayListRpt();
                        loHolidayListRpt.SetDataSource(GlobalVariables.DTLGULogo);
                        loHolidayListRpt.Database.Tables[1].SetDataSource(ldtShow);
                        loHolidayListRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                        loHolidayListRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                        loHolidayListRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                        loHolidayListRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                        loHolidayListRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                        loHolidayListRpt.SetParameterValue("Title", "Holiday List");
                        loHolidayListRpt.SetParameterValue("SubTitle", "Holiday List");
                        loReportViewer.crystalReportViewer.ReportSource = loHolidayListRpt;
                        loReportViewer.ShowDialog();
                        break;
                    case "User":
                        UserListRpt loUserListRpt = new UserListRpt();
                        loUserListRpt.SetDataSource(GlobalVariables.DTLGULogo);
                        loUserListRpt.Database.Tables[1].SetDataSource(ldtShow);
                        loUserListRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                        loUserListRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                        loUserListRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                        loUserListRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                        loUserListRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                        loUserListRpt.SetParameterValue("Title", "User List");
                        loUserListRpt.SetParameterValue("SubTitle", "User List");
                        loReportViewer.crystalReportViewer.ReportSource = loUserListRpt;
                        loReportViewer.ShowDialog();
                        break;
                }
                /*
                if (lFromRefresh)
                {
                    DataTable dtReportViewer = GlobalFunctions.convertDataGridToReportViewerDataTable(dgvLists);
                    GlobalFunctions.displayReportPreview(dgvLists, dtReportViewer, lType.Name, lType.Name);
                }
                else
                {
                    ldtReport = loCommon.getDataFromSearch(loSearch.lQueryReport);
                    try
                    {
                        ldtReportSum = loCommon.getDataFromSearch(loSearch.lQuerySum);
                    }
                    catch { }
                    GlobalFunctions.displayReportPreviewFromSearch(ldtReport, ldtReportSum, loSearch.lParamFields,
                        loSearch.lTitle, loSearch.lSubTitle, loSearch.lPaperLayout, loSearch.lPaperSize);
                }
                */
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsm" + lType.Name, "Search"))
            {
                return;
            }
            refresh("",txtSearch.Text,true);
        }

        private void txtSearch_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '\r')
            {
                btnUpdate_Click(null, new EventArgs());
            }
        }

        private void dgvLists_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            btnUpdate_Click(null, new EventArgs());
        }

        private void dgvLists_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            try
            {
                if (this.dgvLists.Columns[e.ColumnIndex].Name == "Working Days" || this.dgvLists.Columns[e.ColumnIndex].Name == "Working Hours" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "No. of Dependent")
                {
                    if (e.Value != null)
                    {
                        e.Value = String.Format("{0:0}", decimal.Parse(e.Value.ToString()));
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                    }
                }
                else if (this.dgvLists.Columns[e.ColumnIndex].Name == "Over" || this.dgvLists.Columns[e.ColumnIndex].Name == "But Not Over" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Base Tax" || this.dgvLists.Columns[e.ColumnIndex].Name == "Percent Over" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Monthly Rate From" || this.dgvLists.Columns[e.ColumnIndex].Name == "Monthly Rate To" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "EC Base Amount" || this.dgvLists.Columns[e.ColumnIndex].Name == "EC Rate" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Bracket Start" || this.dgvLists.Columns[e.ColumnIndex].Name == "Bracket End" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name.Contains("Share"))
                {
                    if (e.Value != null)
                    {
                        e.Value = String.Format("{0:n}", decimal.Parse(e.Value.ToString()));
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
                    }
                }
                else if (this.dgvLists.Columns[e.ColumnIndex].Name == "Code" || this.dgvLists.Columns[e.ColumnIndex].Name == "Id" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Close" || this.dgvLists.Columns[e.ColumnIndex].Name == "Username")
                {
                    if (e.Value != null)
                    {
                        e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                    }
                }
                else if (this.dgvLists.Columns[e.ColumnIndex].Name == "Time In" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "Time Out")
                {
                    if (e.Value != null && e.Value.ToString() == "12:00 AM")
                    {
                        e.Value = "";
                    }
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
                }
                else if (this.dgvLists.Columns[e.ColumnIndex].Name == "No. of Hours Break" ||
                    this.dgvLists.Columns[e.ColumnIndex].Name == "No. of Day")
                {
                    if (e.Value != null && e.Value.ToString() == "12:00")
                    {
                        e.Value = "-";
                    }
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
                }
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

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
    public partial class ProcessDailyTimeRecordUI : Form
    {
        Employee loEmployee;
        DailyTimeRecord loDailyTimeRecord;
        Department loDepartment;
        DataTable ldtDailyTimeRecord;
        DailyTimeRecordRpt loDailyTimeRecordRpt;
        ReportViewerUI loReportViewer;
        TimeLogUI loTimeLog;

        public ProcessDailyTimeRecordUI()
        {
            InitializeComponent();
            loEmployee = new Employee();
            loDailyTimeRecord = new DailyTimeRecord();
            loDepartment = new Department();
            ldtDailyTimeRecord = new DataTable();
            loDailyTimeRecordRpt = new DailyTimeRecordRpt();
            loReportViewer = new ReportViewerUI();
        }

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        private void refresh(string pSearchString,string pDepartmentCode)
        { 
            try
            {
                dgvEmployeeList.DataSource = null;
                dgvDailyTimeRecord.DataSource = null;
                dgvEmployeeList.DataSource = loDailyTimeRecord.getEmployeeListRegular(cboEmploymentType.Text, pSearchString, pDepartmentCode);
                displaDetails();
            }
            catch {}
        }

        private void displaDetails()
        {
            try
            {
                dgvDailyTimeRecord.DataSource = null;
                ldtDailyTimeRecord = loDailyTimeRecord.getDaiylTimeRecordRegular(dgvEmployeeList.CurrentRow.Cells[0].Value.ToString(), dtpFrom.Value, dtpTo.Value);
                dgvDailyTimeRecord.DataSource = ldtDailyTimeRecord;

                dgvDailyTimeRecord.Columns[0].Frozen = true;
                dgvDailyTimeRecord.Columns[1].Frozen = true;
                dgvDailyTimeRecord.Columns[2].Frozen = true;
                dgvDailyTimeRecord.Columns[0].ReadOnly = true;
                dgvDailyTimeRecord.Columns[1].ReadOnly = true;
                dgvDailyTimeRecord.Columns[2].ReadOnly = true;
                dgvDailyTimeRecord.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvDailyTimeRecord.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvDailyTimeRecord.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;

                dgvDailyTimeRecord.Columns[9].DefaultCellStyle.BackColor = SystemColors.Info;
                dgvDailyTimeRecord.Columns[10].DefaultCellStyle.BackColor = SystemColors.Info;
                dgvDailyTimeRecord.Columns[11].DefaultCellStyle.BackColor = SystemColors.Info;
            }
            catch { }
        }

        private void ProcessDailyTimeRecordRegularUI_Load(object sender, EventArgs e)
        {
            cboDepartment.DataSource = loDepartment.getDepartmentsRegular("ViewAll", "");
            cboDepartment.ValueMember = "Code";
            cboDepartment.DisplayMember = "Department Description";
            cboDepartment.SelectedIndex = -1;

            cboEmploymentType.SelectedIndex = 0;
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmProcessDailyTimeRecord", "Refresh"))
            {
                return;
            }
            cboDepartment.SelectedIndex = -1;
            txtEmployeeName.Clear();
            refresh("","");
        }

        private void cboDepartment_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboDepartment.SelectedIndex >= 0)
            {
                txtEmployeeName.Clear();
                refresh("",cboDepartment.SelectedValue.ToString());
            }
        }

        private void txtEmployeeName_TextChanged(object sender, EventArgs e)
        {
            if (txtEmployeeName.Text != "")
            {
                cboDepartment.SelectedIndex = -1;
                refresh(txtEmployeeName.Text, "");
            }
        }

        private void dgvEmployeeList_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            displaDetails();
        }

        private void dgvEmployeeList_KeyUp(object sender, KeyEventArgs e)
        {
            displaDetails();
        }

        private void dgvDailyTimeRecord_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (this.dgvDailyTimeRecord.Columns[e.ColumnIndex].Name == "Late" ||
                this.dgvDailyTimeRecord.Columns[e.ColumnIndex].Name == "Undertime" ||
                this.dgvDailyTimeRecord.Columns[e.ColumnIndex].Name == "Overtime")
            {
                if (e.Value != null && e.Value.ToString() != "00:00:00")
                {
                    string[] time = e.Value.ToString().Split(':');
                    try
                    {
                        e.Value = time[0] + ":" + time[1];
                    }
                    catch
                    {
                        e.Value = "";
                    }
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
                else
                {
                    e.Value = "";
                }
            }
            else if (this.dgvDailyTimeRecord.Columns[e.ColumnIndex].Name == "Day")
            {
                if (e.Value != null && (e.Value.ToString() == "Saturday" || e.Value.ToString() == "Sunday"))
                {
                    e.CellStyle.ForeColor = Color.Red;
                }
            }
            else if (this.dgvDailyTimeRecord.Columns[e.ColumnIndex].Name == "Time In" ||
                this.dgvDailyTimeRecord.Columns[e.ColumnIndex].Name == "Break Out" ||
                this.dgvDailyTimeRecord.Columns[e.ColumnIndex].Name == "Break In"||
                this.dgvDailyTimeRecord.Columns[e.ColumnIndex].Name == "Time Out")
            {
                if (e.Value != null && e.Value.ToString() == "Day Off")
                {
                    e.CellStyle.ForeColor = Color.Blue;
                }
            }
            else if (this.dgvDailyTimeRecord.Columns[e.ColumnIndex].Name == "Id")
            {
                if (e.Value != null)
                {
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
            }
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmProcessDailyTimeRecord", "Save"))
            {
                return;
            }
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                for (int i = 0; i < dgvDailyTimeRecord.Rows.Count; i++)
                {
                    if (dgvDailyTimeRecord.Rows[i].DefaultCellStyle.BackColor == Color.PaleGreen)
                    {
                    loDailyTimeRecord.DailyTimeRecordId = dgvDailyTimeRecord.Rows[i].Cells[0].Value.ToString();
                    loDailyTimeRecord.Date = DateTime.Now;
                    loDailyTimeRecord.EmployeeNo = "";
                    loDailyTimeRecord.TimeIn = dgvDailyTimeRecord.Rows[i].Cells[3].Value.ToString();
                    loDailyTimeRecord.BreakOut = dgvDailyTimeRecord.Rows[i].Cells[4].Value.ToString();
                    loDailyTimeRecord.BreakIn = dgvDailyTimeRecord.Rows[i].Cells[5].Value.ToString();
                    loDailyTimeRecord.TimeOut = dgvDailyTimeRecord.Rows[i].Cells[6].Value.ToString();
                    loDailyTimeRecord.OvertimeIn = dgvDailyTimeRecord.Rows[i].Cells[7].Value.ToString();
                    loDailyTimeRecord.OvertimeOut = dgvDailyTimeRecord.Rows[i].Cells[8].Value.ToString();
                    if (dgvDailyTimeRecord.Rows[i].Cells[9].Value.ToString() != "")
                    {
                        loDailyTimeRecord.Late = dgvDailyTimeRecord.Rows[i].Cells[9].Value.ToString();
                    }
                    else
                    {
                        loDailyTimeRecord.Late = "00:00:00";
                    }
                    if (dgvDailyTimeRecord.Rows[i].Cells[10].Value.ToString() != "")
                    {
                        loDailyTimeRecord.Undertime = dgvDailyTimeRecord.Rows[i].Cells[10].Value.ToString();
                    }
                    else
                    { 
                    loDailyTimeRecord.Undertime = "00:00:00";
                    }
                    if (dgvDailyTimeRecord.Rows[i].Cells[11].Value.ToString() != "")
                    {
                        loDailyTimeRecord.Overtime = dgvDailyTimeRecord.Rows[i].Cells[11].Value.ToString();
                    }
                    else
                    {
                        loDailyTimeRecord.Overtime = "00:00:00";
                    }
                    loDailyTimeRecord.HoursWork = "00:00:00";
                    loDailyTimeRecord.Remarks = dgvDailyTimeRecord.Rows[i].Cells[12].Value.ToString();
                    loDailyTimeRecord.save(GlobalVariables.Operation.Edit, ref _Trans);
                    }
                }
                _Trans.Commit();
                MessageBoxUI _mb = new MessageBoxUI("Daily Time Record has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                _mb.showDialog();
                displaDetails();
            }
            catch{}
        }

        private void dgvDailyTimeRecord_CellEndEdit(object sender, DataGridViewCellEventArgs e)
        {
            dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }

        private void dgvDailyTimeRecord_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                Point pt = dgvDailyTimeRecord.PointToScreen(e.Location);
                cmsFunction.Show(pt);
            }
        }

        private void tsmiLate4hrs_Click(object sender, EventArgs e)
        {
            dgvDailyTimeRecord.CurrentRow.Cells[9].Value = "04:00:00";
            dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
        }

        private void tsmiLate8hrs_Click(object sender, EventArgs e)
        {
            dgvDailyTimeRecord.CurrentRow.Cells[9].Value = "08:00:00";
            dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
        }

        private void tsmiUndertime4hrs_Click(object sender, EventArgs e)
        {
            dgvDailyTimeRecord.CurrentRow.Cells[10].Value = "04:00:00";
            dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
        }

        private void tsmiUndertime8hrs_Click(object sender, EventArgs e)
        {
            dgvDailyTimeRecord.CurrentRow.Cells[10].Value = "08:00:00";
            dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
        }

        private void tsmiOpenTime_Click(object sender, EventArgs e)
        {
            dgvDailyTimeRecord.CurrentRow.Cells[11].Value = string.Format("{0:HH:mm}", DateTime.Parse(dgvDailyTimeRecord.CurrentRow.Cells[8].Value.ToString()).TimeOfDay.Subtract(DateTime.Parse(dgvDailyTimeRecord.CurrentRow.Cells[7].Value.ToString()).TimeOfDay).ToString());
            dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
        }

        private void tsmiOvertime5_Click(object sender, EventArgs e)
        {
            DateTime _InSched = DateTime.Parse("05:30 PM");
            DateTime _OutSched = DateTime.Parse("07:30 PM");
            DateTime _In = DateTime.Parse(dgvDailyTimeRecord.CurrentRow.Cells[7].Value.ToString());
            DateTime _Out = DateTime.Parse(dgvDailyTimeRecord.CurrentRow.Cells[8].Value.ToString());
            if (_In.TimeOfDay <= _InSched.TimeOfDay && _Out.TimeOfDay >= _OutSched.TimeOfDay)
            {
                dgvDailyTimeRecord.CurrentRow.Cells[11].Value = "02:00:00";
            }
            else if (_In.TimeOfDay > _InSched.TimeOfDay && _Out.TimeOfDay >= _OutSched.TimeOfDay)
            {
                dgvDailyTimeRecord.CurrentRow.Cells[11].Value =string.Format("{0:HH:mm}", DateTime.Parse(_OutSched.TimeOfDay.Subtract(_In.TimeOfDay).ToString()));
            }
            else if (_In.TimeOfDay <= _InSched.TimeOfDay && _Out.TimeOfDay < _OutSched.TimeOfDay)
            {
                dgvDailyTimeRecord.CurrentRow.Cells[11].Value = string.Format("{0:HH:mm}", DateTime.Parse(_Out.TimeOfDay.Subtract(_InSched.TimeOfDay).ToString()));
            }
            else
            {
                dgvDailyTimeRecord.CurrentRow.Cells[11].Value = string.Format("{0:HH:mm}", DateTime.Parse(_Out.TimeOfDay.Subtract(_In.TimeOfDay).ToString()));
            }
            dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
        }

        private void tsmOvertime6_Click(object sender, EventArgs e)
        {
            DateTime _InSched = DateTime.Parse("06:30 PM");
            DateTime _OutSched = DateTime.Parse("08:30 PM");
            DateTime _In = DateTime.Parse(dgvDailyTimeRecord.CurrentRow.Cells[7].Value.ToString());
            DateTime _Out = DateTime.Parse(dgvDailyTimeRecord.CurrentRow.Cells[8].Value.ToString());
            if (_In.TimeOfDay <= _InSched.TimeOfDay && _Out.TimeOfDay >= _OutSched.TimeOfDay)
            {
                dgvDailyTimeRecord.CurrentRow.Cells[11].Value = "02:00:00";
            }
            else if (_In.TimeOfDay > _InSched.TimeOfDay && _Out.TimeOfDay >= _OutSched.TimeOfDay)
            {
                dgvDailyTimeRecord.CurrentRow.Cells[11].Value = string.Format("{0:HH:mm}", DateTime.Parse(_OutSched.TimeOfDay.Subtract(_In.TimeOfDay).ToString()));
            }
            else if (_In.TimeOfDay <= _InSched.TimeOfDay && _Out.TimeOfDay < _OutSched.TimeOfDay)
            {
                dgvDailyTimeRecord.CurrentRow.Cells[11].Value = string.Format("{0:HH:mm}", DateTime.Parse(_Out.TimeOfDay.Subtract(_InSched.TimeOfDay).ToString()));
            }
            else
            {
                dgvDailyTimeRecord.CurrentRow.Cells[11].Value = string.Format("{0:HH:mm}", DateTime.Parse(_Out.TimeOfDay.Subtract(_In.TimeOfDay).ToString()));
            }
            dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmProcessDailyTimeRecord", "Preview"))
            {
                return;
            }
            if (dgvDailyTimeRecord.Rows.Count > 0)
            {
                loDailyTimeRecordRpt.SetDataSource(GlobalVariables.DTLGULogo);
                loDailyTimeRecordRpt.Database.Tables[1].SetDataSource(GlobalFunctions.convertDataGridToDataTableDateTime(dgvDailyTimeRecord));
                loDailyTimeRecordRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                loDailyTimeRecordRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                loDailyTimeRecordRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                loDailyTimeRecordRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                loDailyTimeRecordRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                loDailyTimeRecordRpt.SetParameterValue("Title", "Daily Time Records");
                loDailyTimeRecordRpt.SetParameterValue("SubTitle", "Daily Time Records");
                loDailyTimeRecordRpt.SetParameterValue("EmployeeName", dgvEmployeeList.CurrentRow.Cells[1].Value.ToString());
                loDailyTimeRecordRpt.SetParameterValue("Department", dgvEmployeeList.CurrentRow.Cells[2].Value.ToString());
                loDailyTimeRecordRpt.SetParameterValue("Designation", dgvEmployeeList.CurrentRow.Cells[3].Value.ToString());
                loDailyTimeRecordRpt.SetParameterValue("EmploymentType", "Regular");
                loDailyTimeRecordRpt.SetParameterValue("FromDate", dtpFrom.Value.ToShortDateString());
                loDailyTimeRecordRpt.SetParameterValue("ToDate", dtpTo.Value.ToShortDateString());
                loReportViewer.crystalReportViewer.ReportSource = loDailyTimeRecordRpt;
                loReportViewer.ShowDialog();
            }
        }

        private void checkInToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                loTimeLog = new TimeLogUI(dgvEmployeeList.CurrentRow.Cells[1].Value.ToString(), dgvEmployeeList.CurrentRow.Cells[4].Value.ToString(), GlobalFunctions.ConvertToDate(dgvDailyTimeRecord.CurrentRow.Cells[1].Value.ToString()));
                loTimeLog.ShowDialog();
                if (loTimeLog.lFromSelection)
                {
                    dgvDailyTimeRecord.CurrentRow.Cells[3].Value = loTimeLog.lTime;
                    dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
                }
            }
            catch { }
        }

        private void breakOutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                loTimeLog = new TimeLogUI(dgvEmployeeList.CurrentRow.Cells[1].Value.ToString(), dgvEmployeeList.CurrentRow.Cells[4].Value.ToString(), GlobalFunctions.ConvertToDate(dgvDailyTimeRecord.CurrentRow.Cells[1].Value.ToString()));
                loTimeLog.ShowDialog();
                if (loTimeLog.lFromSelection)
                {
                    dgvDailyTimeRecord.CurrentRow.Cells[4].Value = loTimeLog.lTime;
                    dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
                }
            }
            catch { }
        }

        private void breakInToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                loTimeLog = new TimeLogUI(dgvEmployeeList.CurrentRow.Cells[1].Value.ToString(), dgvEmployeeList.CurrentRow.Cells[4].Value.ToString(), GlobalFunctions.ConvertToDate(dgvDailyTimeRecord.CurrentRow.Cells[1].Value.ToString()));
                loTimeLog.ShowDialog();
                if (loTimeLog.lFromSelection)
                {
                    dgvDailyTimeRecord.CurrentRow.Cells[5].Value = loTimeLog.lTime;
                    dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
                }
            }
            catch { }
        }

        private void checkOutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                loTimeLog = new TimeLogUI(dgvEmployeeList.CurrentRow.Cells[1].Value.ToString(), dgvEmployeeList.CurrentRow.Cells[4].Value.ToString(), GlobalFunctions.ConvertToDate(dgvDailyTimeRecord.CurrentRow.Cells[1].Value.ToString()));
                loTimeLog.ShowDialog();
                if (loTimeLog.lFromSelection)
                {
                    dgvDailyTimeRecord.CurrentRow.Cells[6].Value = loTimeLog.lTime;
                    dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
                }
            }
            catch
            { }
        }

        private void overtimeInToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                loTimeLog = new TimeLogUI(dgvEmployeeList.CurrentRow.Cells[1].Value.ToString(), dgvEmployeeList.CurrentRow.Cells[4].Value.ToString(), GlobalFunctions.ConvertToDate(dgvDailyTimeRecord.CurrentRow.Cells[1].Value.ToString()));
                loTimeLog.ShowDialog();
                if (loTimeLog.lFromSelection)
                {
                    dgvDailyTimeRecord.CurrentRow.Cells[7].Value = loTimeLog.lTime;
                    dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
                }
            }
            catch { }
        }

        private void overtimeOutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                loTimeLog = new TimeLogUI(dgvEmployeeList.CurrentRow.Cells[1].Value.ToString(), dgvEmployeeList.CurrentRow.Cells[4].Value.ToString(), GlobalFunctions.ConvertToDate(dgvDailyTimeRecord.CurrentRow.Cells[1].Value.ToString()));
                loTimeLog.ShowDialog();
                if (loTimeLog.lFromSelection)
                {
                    dgvDailyTimeRecord.CurrentRow.Cells[8].Value = loTimeLog.lTime;
                    dgvDailyTimeRecord.CurrentRow.DefaultCellStyle.BackColor = Color.PaleGreen;
                }
            }
            catch { }
        }
    }
}

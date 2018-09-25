using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report.ReportRpt;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report
{
    public partial class AttendanceSummaryUI : Form
    {
        DailyTimeRecord loDailyTimeRecord;
        Department loDepartment;
        DataTable ldtEmployeesAttendance;
        AttendanceSummaryRpt loAttendanceSummaryRpt;
        ReportViewerUI loReportViewer;

        public AttendanceSummaryUI()
        {
            InitializeComponent();
            loDailyTimeRecord = new DailyTimeRecord();
            loDepartment = new Department();
            ldtEmployeesAttendance = new DataTable();
            loAttendanceSummaryRpt = new AttendanceSummaryRpt();
            loReportViewer = new ReportViewerUI();
        }

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        private void refresh()
        {
            DateTime _FromDate;
            DateTime _ToDate;
            if (cboPeriod.Text == "1")
            {
                _FromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                _ToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "15");
            }
            else
            {
                if (cboPeriod.Text == "2")
                {
                    _FromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "16");
                }
                else
                {
                    _FromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                }
                try
                {
                    _ToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "31");
                }
                catch
                {
                    try
                    {
                        _ToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "30");
                    }
                    catch
                    {
                        try
                        {
                            _ToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "29");
                        }
                        catch
                        {
                            _ToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "28");
                        }
                    }
                }
            }

            try
            {
                dgvAttendanceSummary.DataSource = null;
                ldtEmployeesAttendance = loDailyTimeRecord.getAttendanceSummary(cboEmploymentType.Text, _FromDate, _ToDate);
                dgvAttendanceSummary.DataSource = ldtEmployeesAttendance;
                dgvAttendanceSummary.Columns[0].Frozen = true;
                dgvAttendanceSummary.Columns[1].Frozen = true;
                dgvAttendanceSummary.Columns[2].Frozen = true;
                dgvAttendanceSummary.Columns[0].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvAttendanceSummary.Columns[1].DefaultCellStyle.BackColor = SystemColors.Control;
                dgvAttendanceSummary.Columns[2].DefaultCellStyle.BackColor = SystemColors.Control;
            }
            catch { }
        }

        private void AttendanceSummaryUI_Load(object sender, EventArgs e)
        {
            cboEmploymentType.SelectedIndex = 0;
            if (DateTime.Now.Day <= 15)
            {
                cboPeriod.SelectedIndex = 0;
            }
            else
            {
                cboPeriod.SelectedIndex = 1;
            }
            cboMonth.Text = string.Format("{0:MMMM}", DateTime.Now);
            cboYear.Text = string.Format("{0:yyyy}", DateTime.Now);
            for (int i = 0; i <= 5; i++)
            {
                cboYear.Items.Add(DateTime.Now.Year - i);
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmAttendanceSummary", "Refresh"))
            {
                return;
            }
            refresh();
        }

        private void dgvAttendanceSummary_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (this.dgvAttendanceSummary.Columns[e.ColumnIndex].Name.Contains("No.") ||
                this.dgvAttendanceSummary.Columns[e.ColumnIndex].Name.Contains("Days") ||
                this.dgvAttendanceSummary.Columns[e.ColumnIndex].Name.Contains("Count"))
            {
                if (e.Value != null && e.Value.ToString() != "0")
                {
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
                else
                {
                    e.Value = "";
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
            }
            else if (this.dgvAttendanceSummary.Columns[e.ColumnIndex].Name == "Late" ||
                this.dgvAttendanceSummary.Columns[e.ColumnIndex].Name == "Undertime" ||
                this.dgvAttendanceSummary.Columns[e.ColumnIndex].Name == "Overtime" ||
                this.dgvAttendanceSummary.Columns[e.ColumnIndex].Name == "OT Day Off" ||
                this.dgvAttendanceSummary.Columns[e.ColumnIndex].Name == "OT Reg. Holiday" ||
                this.dgvAttendanceSummary.Columns[e.ColumnIndex].Name == "OT Spe. Holiday")
            {
                if (e.Value != null && e.Value.ToString() != "#00:00:00#")
                {
                    string[] time = e.Value.ToString().Replace("#", "").Split(':');
                    e.Value = time[0] + ":" + time[1];
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
                else
                {
                    e.Value = "";
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
            }
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmAttendanceSummary", "Preview"))
            {
                return;
            }
            if (dgvAttendanceSummary.Rows.Count > 0)
            {
                loAttendanceSummaryRpt.SetDataSource(GlobalVariables.DTLGULogo);
                loAttendanceSummaryRpt.Database.Tables[1].SetDataSource(GlobalFunctions.convertDataGridToDataTableNoHashTag(dgvAttendanceSummary));
                loAttendanceSummaryRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                loAttendanceSummaryRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                loAttendanceSummaryRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                loAttendanceSummaryRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                loAttendanceSummaryRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                loAttendanceSummaryRpt.SetParameterValue("Title", "Attendance Summary");
                loAttendanceSummaryRpt.SetParameterValue("SubTitle", "Attendance Summary");
                loAttendanceSummaryRpt.SetParameterValue("EmploymentType", cboEmploymentType.Text);
                loAttendanceSummaryRpt.SetParameterValue("Period", cboPeriod.Text);
                loAttendanceSummaryRpt.SetParameterValue("Month", cboMonth.Text);
                loAttendanceSummaryRpt.SetParameterValue("Year", cboYear.Text);
                loReportViewer.crystalReportViewer.ReportSource = loAttendanceSummaryRpt;
                loReportViewer.ShowDialog();
            }
        }
    }
}

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
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report.ReportRpt;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report
{
    public partial class CSForm48UI : Form
    {
        DailyTimeRecord loDailyTimeRecord;
        Employee loEmployee;
        DataTable ldtCSForm48;
        CSForm48_1_Rpt loCSForm48_1_Rpt;
        CSForm48_3_Rpt loCSForm48_3_Rpt;
        TestingRpt loTestingRpt;
        DateTime lFromDate;
        DateTime lToDate;
        ReportViewerUI loReportViewer;

        public CSForm48UI()
        {
            InitializeComponent();
            loDailyTimeRecord = new DailyTimeRecord();
            loEmployee = new Employee();
            ldtCSForm48 = new DataTable();
            loCSForm48_1_Rpt = new CSForm48_1_Rpt();
            loCSForm48_3_Rpt = new CSForm48_3_Rpt();
            loTestingRpt = new TestingRpt();
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
            try
            {
                if (cboPeriod.Text == "1")
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                    lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "15");
                }
                else
                {
                    if (cboPeriod.Text == "2")
                    {
                        lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "16");
                    }
                    else
                    {
                        lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                    }
                    try
                    {
                        lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "31");
                    }
                    catch
                    {
                        try
                        {
                            lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "30");
                        }
                        catch
                        {
                            try
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "29");
                            }
                            catch
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "28");
                            }
                        }
                    }
                }
            }
            catch { }
            try
            {
                dgvCSForm46.DataSource = null;
                ldtCSForm48 = loEmployee.getEmployeeListByEmploymentType(cboEmploymentType.Text);
                dgvCSForm46.DataSource = ldtCSForm48;
                preview();
            }
            catch { }
        }

        private void preview()
        {
            #region "INSERT DEFAULT VALUE"
            loCSForm48_1_Rpt.SetParameterValue("EmployeeName", dgvCSForm46.CurrentRow.Cells[1].Value.ToString().ToUpper());
            loCSForm48_1_Rpt.SetParameterValue("Month", cboMonth.Text + " " + string.Format("{0:dd}", lFromDate) + "-" + string.Format("{0:dd}", lToDate) + ", " + cboYear.Text);
            string[] str = dgvCSForm46.CurrentRow.Cells[1].Value.ToString().Split(',');
            loCSForm48_1_Rpt.SetParameterValue("EmployeeSignature", string.Concat(str[1], " ", str[0]).ToUpper());
            // loCSForm48_1_Rpt.SetParameterValue("Supervisor", dgvCSForm46.CurrentRow.Cells[4].Value.ToString().ToUpper());
            loCSForm48_1_Rpt.SetParameterValue("01-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("01-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("01-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("01-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("01-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("01-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("01-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("01-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("02-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("02-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("02-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("02-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("02-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("02-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("02-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("02-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("03-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("03-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("03-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("03-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("03-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("03-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("03-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("03-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("04-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("04-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("04-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("04-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("04-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("04-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("04-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("04-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("05-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("05-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("05-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("05-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("05-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("05-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("05-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("05-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("06-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("06-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("06-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("06-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("06-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("06-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("06-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("06-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("07-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("07-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("07-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("07-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("07-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("07-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("07-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("07-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("08-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("08-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("08-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("08-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("08-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("08-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("08-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("08-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("09-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("09-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("09-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("09-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("09-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("09-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("09-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("09-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("10-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("10-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("10-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("10-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("10-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("10-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("10-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("10-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("11-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("11-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("11-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("11-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("11-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("11-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("11-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("11-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("12-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("12-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("12-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("12-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("12-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("12-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("12-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("12-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("13-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("13-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("13-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("13-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("13-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("13-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("13-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("13-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("14-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("14-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("14-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("14-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("14-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("14-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("14-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("14-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("15-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("15-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("15-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("15-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("15-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("15-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("15-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("15-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("16-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("16-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("16-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("16-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("16-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("16-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("16-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("16-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("17-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("17-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("17-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("17-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("17-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("17-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("17-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("17-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("18-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("18-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("18-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("18-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("18-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("18-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("18-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("18-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("19-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("19-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("19-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("19-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("19-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("19-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("19-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("19-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("20-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("20-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("20-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("20-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("20-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("20-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("20-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("20-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("21-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("21-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("21-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("21-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("21-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("21-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("21-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("21-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("22-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("22-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("22-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("22-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("22-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("22-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("22-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("22-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("23-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("23-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("23-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("23-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("23-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("23-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("23-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("23-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("24-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("24-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("24-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("24-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("24-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("24-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("24-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("24-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("25-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("25-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("25-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("25-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("25-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("25-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("25-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("25-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("26-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("26-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("26-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("26-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("26-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("26-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("26-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("26-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("27-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("27-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("27-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("27-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("27-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("27-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("27-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("27-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("28-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("28-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("28-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("28-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("28-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("28-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("28-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("28-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("29-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("29-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("29-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("29-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("29-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("29-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("29-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("29-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("30-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("30-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("30-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("30-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("30-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("30-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("30-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("30-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("31-AM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("31-AM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("31-PM-In", "");
            loCSForm48_1_Rpt.SetParameterValue("31-PM-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("31-OT-In", "");
            loCSForm48_1_Rpt.SetParameterValue("31-OT-Out", "");
            loCSForm48_1_Rpt.SetParameterValue("31-OT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("31-LateUT-Total", "");
            loCSForm48_1_Rpt.SetParameterValue("TotalOvertime", "");
            loCSForm48_1_Rpt.SetParameterValue("TotalLateUT", "");
            #endregion

            #region "GET TIME IN and OUT"
            foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Details(dgvCSForm46.CurrentRow.Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
            {
                switch (_dr[0].ToString())
                {
                    case "01":
                        loCSForm48_1_Rpt.SetParameterValue("01-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("01-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("01-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("01-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("01-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("01-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("01-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("01-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("01-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("01-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "02":
                        loCSForm48_1_Rpt.SetParameterValue("02-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("02-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("02-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("02-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("02-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("02-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("02-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("02-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("02-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("02-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "03":
                        loCSForm48_1_Rpt.SetParameterValue("03-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("03-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("03-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("03-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("03-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("03-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("03-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("03-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("03-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("03-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "04":
                        loCSForm48_1_Rpt.SetParameterValue("04-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("04-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("04-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("04-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("04-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("04-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("04-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("04-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("04-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("04-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "05":
                        loCSForm48_1_Rpt.SetParameterValue("05-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("05-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("05-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("05-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("05-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("05-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("05-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("05-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("05-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("05-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "06":
                        loCSForm48_1_Rpt.SetParameterValue("06-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("06-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("06-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("06-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("06-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("06-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("06-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("06-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("06-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("06-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "07":
                        loCSForm48_1_Rpt.SetParameterValue("07-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("07-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("07-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("07-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("07-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("07-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("07-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("07-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("07-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("07-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "08":
                        loCSForm48_1_Rpt.SetParameterValue("08-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("08-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("08-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("08-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("08-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("08-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("08-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("08-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("08-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("08-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "09":
                        loCSForm48_1_Rpt.SetParameterValue("09-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("09-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("09-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("09-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("09-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("09-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("09-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("09-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("09-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("09-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "10":
                        loCSForm48_1_Rpt.SetParameterValue("10-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("10-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("10-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("10-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("10-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("10-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("10-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("10-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("10-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("10-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "11":
                        loCSForm48_1_Rpt.SetParameterValue("11-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("11-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("11-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("11-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("11-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("11-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("11-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("11-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("11-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("11-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "12":
                        loCSForm48_1_Rpt.SetParameterValue("12-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("12-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("12-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("12-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("12-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("12-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("12-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("12-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("12-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("12-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "13":
                        loCSForm48_1_Rpt.SetParameterValue("13-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("13-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("13-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("13-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("13-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("13-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("13-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("13-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("13-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("13-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "14":
                        loCSForm48_1_Rpt.SetParameterValue("14-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("14-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("14-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("14-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("14-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("14-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("14-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("14-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("14-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("14-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "15":
                        loCSForm48_1_Rpt.SetParameterValue("15-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("15-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("15-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("15-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("15-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("15-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("15-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("15-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("15-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("15-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "16":
                        loCSForm48_1_Rpt.SetParameterValue("16-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("16-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("16-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("16-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("16-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("16-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("16-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("16-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("16-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("16-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "17":
                        loCSForm48_1_Rpt.SetParameterValue("17-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("17-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("17-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("17-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("17-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("17-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("17-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("17-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("17-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("17-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "18":
                        loCSForm48_1_Rpt.SetParameterValue("18-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("18-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("18-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("18-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("18-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("18-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("18-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("18-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("18-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("18-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "19":
                        loCSForm48_1_Rpt.SetParameterValue("19-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("19-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("19-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("19-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("19-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("19-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("19-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("19-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("19-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("19-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "20":
                        loCSForm48_1_Rpt.SetParameterValue("20-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("20-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("20-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("20-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("20-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("20-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("20-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("20-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("20-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("20-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "21":
                        loCSForm48_1_Rpt.SetParameterValue("21-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("21-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("21-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("21-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("21-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("21-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("21-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("21-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("21-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("21-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "22":
                        loCSForm48_1_Rpt.SetParameterValue("22-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("22-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("22-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("22-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("22-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("22-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("22-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("22-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("22-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("22-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "23":
                        loCSForm48_1_Rpt.SetParameterValue("23-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("23-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("23-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("23-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("23-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("23-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("23-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("23-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("23-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("23-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "24":
                        loCSForm48_1_Rpt.SetParameterValue("24-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("24-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("24-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("24-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("24-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("24-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("24-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("24-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("24-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("24-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "25":
                        loCSForm48_1_Rpt.SetParameterValue("25-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("25-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("25-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("25-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("25-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("25-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("25-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("25-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("25-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("25-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "26":
                        loCSForm48_1_Rpt.SetParameterValue("26-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("26-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("26-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("26-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("26-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("26-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("26-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("26-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("26-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("26-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "27":
                        loCSForm48_1_Rpt.SetParameterValue("27-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("27-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("27-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("27-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("27-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("27-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("27-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("27-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("27-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("27-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "28":
                        loCSForm48_1_Rpt.SetParameterValue("28-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("28-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("28-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("28-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("28-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("28-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("28-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("28-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("28-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("28-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "29":
                        loCSForm48_1_Rpt.SetParameterValue("29-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("29-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("29-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("29-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("29-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("29-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("29-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("29-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("29-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("29-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "30":
                        loCSForm48_1_Rpt.SetParameterValue("30-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("30-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("30-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("30-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("30-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("30-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("30-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("30-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("30-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("30-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                    case "31":
                        loCSForm48_1_Rpt.SetParameterValue("31-AM-In", _dr[1].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("31-AM-Out", _dr[2].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("31-PM-In", _dr[3].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("31-PM-Out", _dr[4].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("31-OT-In", _dr[5].ToString());
                        loCSForm48_1_Rpt.SetParameterValue("31-OT-Out", _dr[6].ToString());
                        if (_dr[7].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("31-OT-Total", "");
                        }
                        else
                        {
                            string[] _OTTotal = _dr[7].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("31-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                        }
                        if (_dr[8].ToString() == "00:00:00")
                        {
                            loCSForm48_1_Rpt.SetParameterValue("31-LateUT-Total", "");
                        }
                        else
                        {
                            string[] _LateUTTotal = _dr[8].ToString().Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("31-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                        }
                        break;
                }
            }
            #endregion

            #region "INSERT TOTAL"
            foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Total(dgvCSForm46.CurrentRow.Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
            {
                try
                {
                    string[] _TotalOvertime = _dr[0].ToString().Replace("#", "").Split(':');
                    loCSForm48_1_Rpt.SetParameterValue("TotalOvertime", _TotalOvertime[0] + ":" + _TotalOvertime[1]);
                }
                catch { }
                try
                {
                    string[] _TotalLateUT = _dr[1].ToString().Replace("#", "").Split(':');
                    loCSForm48_1_Rpt.SetParameterValue("TotalLateUT", _TotalLateUT[0] + ":" + _TotalLateUT[1]);
                }
                catch { }
            }
            #endregion ""

            ReportViewer.ReportSource = loCSForm48_1_Rpt;
        }

        private void print()
        {
            try
            {
                loCSForm48_1_Rpt.PrintOptions.PrinterName = GlobalVariables.PrinterName;
            }
            catch { };
            loCSForm48_1_Rpt.PrintToPrinter(0, false, 0, 0);
        }

        private void printAll()
        {
            try
            {
                for (int i = 0; i < dgvCSForm46.Rows.Count; i++)
                {
                    #region "INSERT DEFAULT VALUE"
                    loCSForm48_1_Rpt.SetParameterValue("EmployeeName", dgvCSForm46.Rows[i].Cells[1].Value.ToString().ToUpper());
                    loCSForm48_1_Rpt.SetParameterValue("Month", cboMonth.Text + " " + string.Format("{0:dd}", lFromDate) + "-" + string.Format("{0:dd}", lToDate) + ", " + cboYear.Text);
                    string[] str = dgvCSForm46.Rows[i].Cells[1].Value.ToString().Split(',');
                    loCSForm48_1_Rpt.SetParameterValue("EmployeeSignature", string.Concat(str[1], " ", str[0]).ToUpper());
                    loCSForm48_1_Rpt.SetParameterValue("Supervisor", dgvCSForm46.Rows[i].Cells[4].Value.ToString().ToUpper());
                    loCSForm48_1_Rpt.SetParameterValue("01-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("01-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("01-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("01-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("01-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("01-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("01-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("01-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("02-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("02-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("02-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("02-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("02-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("02-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("02-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("02-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("03-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("03-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("03-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("03-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("03-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("03-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("03-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("03-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("04-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("04-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("04-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("04-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("04-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("04-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("04-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("04-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("05-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("05-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("05-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("05-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("05-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("05-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("05-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("05-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("06-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("06-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("06-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("06-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("06-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("06-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("06-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("06-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("07-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("07-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("07-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("07-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("07-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("07-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("07-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("07-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("08-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("08-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("08-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("08-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("08-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("08-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("08-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("08-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("09-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("09-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("09-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("09-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("09-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("09-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("09-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("09-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("10-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("10-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("10-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("10-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("10-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("10-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("10-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("10-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("11-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("11-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("11-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("11-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("11-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("11-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("11-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("11-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("12-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("12-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("12-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("12-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("12-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("12-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("12-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("12-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("13-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("13-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("13-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("13-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("13-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("13-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("13-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("13-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("14-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("14-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("14-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("14-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("14-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("14-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("14-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("14-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("15-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("15-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("15-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("15-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("15-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("15-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("15-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("15-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("16-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("16-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("16-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("16-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("16-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("16-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("16-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("16-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("17-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("17-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("17-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("17-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("17-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("17-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("17-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("17-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("18-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("18-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("18-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("18-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("18-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("18-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("18-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("18-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("19-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("19-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("19-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("19-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("19-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("19-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("19-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("19-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("20-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("20-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("20-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("20-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("20-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("20-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("20-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("20-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("21-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("21-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("21-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("21-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("21-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("21-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("21-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("21-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("22-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("22-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("22-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("22-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("22-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("22-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("22-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("22-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("23-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("23-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("23-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("23-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("23-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("23-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("23-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("23-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("24-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("24-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("24-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("24-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("24-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("24-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("24-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("24-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("25-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("25-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("25-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("25-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("25-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("25-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("25-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("25-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("26-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("26-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("26-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("26-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("26-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("26-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("26-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("26-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("27-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("27-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("27-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("27-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("27-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("27-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("27-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("27-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("28-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("28-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("28-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("28-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("28-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("28-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("28-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("28-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("29-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("29-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("29-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("29-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("29-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("29-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("29-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("29-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("30-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("30-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("30-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("30-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("30-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("30-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("30-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("30-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("31-AM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("31-AM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("31-PM-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("31-PM-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("31-OT-In", "");
                    loCSForm48_1_Rpt.SetParameterValue("31-OT-Out", "");
                    loCSForm48_1_Rpt.SetParameterValue("31-OT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("31-LateUT-Total", "");
                    loCSForm48_1_Rpt.SetParameterValue("TotalOvertime", "");
                    loCSForm48_1_Rpt.SetParameterValue("TotalLateUT", "");
                    #endregion

                    #region "GET TIME IN and OUT"
                    foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Details(dgvCSForm46.Rows[i].Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
                    {
                        switch (_dr[0].ToString())
                        {
                            case "01":
                                loCSForm48_1_Rpt.SetParameterValue("01-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("01-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("01-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("01-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("01-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("01-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("01-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("01-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("01-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("01-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "02":
                                loCSForm48_1_Rpt.SetParameterValue("02-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("02-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("02-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("02-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("02-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("02-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("02-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("02-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("02-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("02-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "03":
                                loCSForm48_1_Rpt.SetParameterValue("03-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("03-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("03-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("03-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("03-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("03-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("03-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("03-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("03-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("03-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "04":
                                loCSForm48_1_Rpt.SetParameterValue("04-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("04-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("04-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("04-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("04-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("04-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("04-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("04-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("04-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("04-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "05":
                                loCSForm48_1_Rpt.SetParameterValue("05-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("05-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("05-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("05-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("05-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("05-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("05-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("05-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("05-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("05-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "06":
                                loCSForm48_1_Rpt.SetParameterValue("06-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("06-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("06-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("06-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("06-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("06-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("06-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("06-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("06-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("06-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "07":
                                loCSForm48_1_Rpt.SetParameterValue("07-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("07-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("07-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("07-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("07-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("07-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("07-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("07-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("07-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("07-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "08":
                                loCSForm48_1_Rpt.SetParameterValue("08-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("08-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("08-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("08-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("08-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("08-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("08-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("08-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("08-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("08-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "09":
                                loCSForm48_1_Rpt.SetParameterValue("09-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("09-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("09-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("09-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("09-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("09-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("09-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("09-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("09-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("09-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "10":
                                loCSForm48_1_Rpt.SetParameterValue("10-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("10-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("10-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("10-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("10-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("10-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("10-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("10-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("10-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("10-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "11":
                                loCSForm48_1_Rpt.SetParameterValue("11-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("11-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("11-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("11-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("11-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("11-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("11-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("11-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("11-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("11-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "12":
                                loCSForm48_1_Rpt.SetParameterValue("12-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("12-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("12-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("12-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("12-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("12-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("12-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("12-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("12-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("12-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "13":
                                loCSForm48_1_Rpt.SetParameterValue("13-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("13-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("13-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("13-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("13-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("13-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("13-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("13-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("13-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("13-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "14":
                                loCSForm48_1_Rpt.SetParameterValue("14-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("14-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("14-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("14-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("14-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("14-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("14-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("14-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("14-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("14-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "15":
                                loCSForm48_1_Rpt.SetParameterValue("15-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("15-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("15-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("15-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("15-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("15-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("15-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("15-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("15-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("15-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "16":
                                loCSForm48_1_Rpt.SetParameterValue("16-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("16-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("16-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("16-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("16-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("16-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("16-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("16-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("16-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("16-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "17":
                                loCSForm48_1_Rpt.SetParameterValue("17-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("17-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("17-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("17-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("17-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("17-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("17-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("17-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("17-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("17-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "18":
                                loCSForm48_1_Rpt.SetParameterValue("18-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("18-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("18-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("18-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("18-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("18-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("18-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("18-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("18-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("18-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "19":
                                loCSForm48_1_Rpt.SetParameterValue("19-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("19-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("19-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("19-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("19-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("19-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("19-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("19-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("19-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("19-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "20":
                                loCSForm48_1_Rpt.SetParameterValue("20-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("20-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("20-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("20-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("20-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("20-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("20-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("20-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("20-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("20-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "21":
                                loCSForm48_1_Rpt.SetParameterValue("21-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("21-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("21-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("21-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("21-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("21-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("21-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("21-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("21-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("21-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "22":
                                loCSForm48_1_Rpt.SetParameterValue("22-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("22-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("22-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("22-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("22-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("22-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("22-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("22-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("22-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("22-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "23":
                                loCSForm48_1_Rpt.SetParameterValue("23-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("23-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("23-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("23-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("23-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("23-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("23-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("23-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("23-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("23-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "24":
                                loCSForm48_1_Rpt.SetParameterValue("24-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("24-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("24-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("24-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("24-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("24-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("24-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("24-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("24-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("24-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "25":
                                loCSForm48_1_Rpt.SetParameterValue("25-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("25-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("25-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("25-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("25-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("25-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("25-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("25-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("25-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("25-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "26":
                                loCSForm48_1_Rpt.SetParameterValue("26-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("26-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("26-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("26-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("26-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("26-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("26-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("26-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("26-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("26-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "27":
                                loCSForm48_1_Rpt.SetParameterValue("27-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("27-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("27-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("27-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("27-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("27-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("27-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("27-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("27-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("27-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "28":
                                loCSForm48_1_Rpt.SetParameterValue("28-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("28-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("28-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("28-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("28-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("28-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("28-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("28-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("28-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("28-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "29":
                                loCSForm48_1_Rpt.SetParameterValue("29-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("29-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("29-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("29-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("29-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("29-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("29-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("29-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("29-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("29-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "30":
                                loCSForm48_1_Rpt.SetParameterValue("30-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("30-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("30-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("30-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("30-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("30-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("30-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("30-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("30-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("30-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                            case "31":
                                loCSForm48_1_Rpt.SetParameterValue("31-AM-In", _dr[1].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("31-AM-Out", _dr[2].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("31-PM-In", _dr[3].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("31-PM-Out", _dr[4].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("31-OT-In", _dr[5].ToString());
                                loCSForm48_1_Rpt.SetParameterValue("31-OT-Out", _dr[6].ToString());
                                if (_dr[7].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("31-OT-Total", "");
                                }
                                else
                                {
                                    string[] _OTTotal = _dr[7].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("31-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                }
                                if (_dr[8].ToString() == "00:00:00")
                                {
                                    loCSForm48_1_Rpt.SetParameterValue("31-LateUT-Total", "");
                                }
                                else
                                {
                                    string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                    loCSForm48_1_Rpt.SetParameterValue("31-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                }
                                break;
                        }
                    }
                    #endregion

                    #region "INSERT TOTAL"
                    foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Total(dgvCSForm46.Rows[i].Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
                    {
                        try
                        {
                            string[] _TotalOvertime = _dr[0].ToString().Replace("#", "").Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("TotalOvertime", _TotalOvertime[0] + ":" + _TotalOvertime[1]);
                        }
                        catch { }
                        try
                        {
                            string[] _TotalLateUT = _dr[1].ToString().Replace("#", "").Split(':');
                            loCSForm48_1_Rpt.SetParameterValue("TotalLateUT", _TotalLateUT[0] + ":" + _TotalLateUT[1]);
                        }
                        catch { }
                    }
                    #endregion ""
                    
                    try
                    {
                        loCSForm48_1_Rpt.PrintOptions.PrinterName = GlobalVariables.PrinterName;
                    }
                    catch { };
                    loCSForm48_1_Rpt.PrintToPrinter(0, false, 0, 0);
                }
            }
            catch { }
        }

        private void printAll3()
        {
            try
            {
                for (int i = 0; i < dgvCSForm46.Rows.Count;)
                {

                    #region "1st DTR"
                    int i1 = i++;
                    try
                    {
                        #region "INSERT DEFAULT VALUE"
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeName", "");
                        loCSForm48_3_Rpt.SetParameterValue("Month", "");
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeSignature", "");
                        loCSForm48_3_Rpt.SetParameterValue("Supervisor", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-AM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-AM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-PM-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-PM-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-OT-In", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Out", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-LateUT-Total", "");
                        loCSForm48_3_Rpt.SetParameterValue("TotalOvertime", "");
                        loCSForm48_3_Rpt.SetParameterValue("TotalLateUT", "");
                        #endregion

                        #region "GET TIME IN and OUT"
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeName", dgvCSForm46.Rows[i1].Cells[1].Value.ToString().ToUpper());
                        loCSForm48_3_Rpt.SetParameterValue("Month", cboMonth.Text + " " + string.Format("{0:dd}", lFromDate) + "-" + string.Format("{0:dd}", lToDate) + ", " + cboYear.Text);
                        string[] str = dgvCSForm46.Rows[i1].Cells[1].Value.ToString().Split(',');
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeSignature", string.Concat(str[1], " ", str[0]).ToUpper());
                        loCSForm48_3_Rpt.SetParameterValue("Supervisor", dgvCSForm46.Rows[i1].Cells[4].Value.ToString().ToUpper());
                        foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Details(dgvCSForm46.Rows[i1].Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
                        {
                            switch (_dr[0].ToString())
                            {
                                case "01":
                                    loCSForm48_3_Rpt.SetParameterValue("01-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("01-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("01-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "02":
                                    loCSForm48_3_Rpt.SetParameterValue("02-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("02-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("02-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "03":
                                    loCSForm48_3_Rpt.SetParameterValue("03-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("03-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("03-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "04":
                                    loCSForm48_3_Rpt.SetParameterValue("04-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("04-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("04-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "05":
                                    loCSForm48_3_Rpt.SetParameterValue("05-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("05-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("05-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "06":
                                    loCSForm48_3_Rpt.SetParameterValue("06-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("06-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("06-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "07":
                                    loCSForm48_3_Rpt.SetParameterValue("07-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("07-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("07-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "08":
                                    loCSForm48_3_Rpt.SetParameterValue("08-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("08-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("08-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "09":
                                    loCSForm48_3_Rpt.SetParameterValue("09-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("09-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("09-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "10":
                                    loCSForm48_3_Rpt.SetParameterValue("10-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("10-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("10-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "11":
                                    loCSForm48_3_Rpt.SetParameterValue("11-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("11-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("11-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "12":
                                    loCSForm48_3_Rpt.SetParameterValue("12-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("12-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("12-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "13":
                                    loCSForm48_3_Rpt.SetParameterValue("13-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("13-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("13-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "14":
                                    loCSForm48_3_Rpt.SetParameterValue("14-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("14-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("14-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "15":
                                    loCSForm48_3_Rpt.SetParameterValue("15-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("15-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("15-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "16":
                                    loCSForm48_3_Rpt.SetParameterValue("16-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("16-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("16-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "17":
                                    loCSForm48_3_Rpt.SetParameterValue("17-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("17-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("17-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "18":
                                    loCSForm48_3_Rpt.SetParameterValue("18-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("18-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("18-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "19":
                                    loCSForm48_3_Rpt.SetParameterValue("19-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("19-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("19-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "20":
                                    loCSForm48_3_Rpt.SetParameterValue("20-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("20-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("20-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "21":
                                    loCSForm48_3_Rpt.SetParameterValue("21-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("21-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("21-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "22":
                                    loCSForm48_3_Rpt.SetParameterValue("22-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("22-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("22-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "23":
                                    loCSForm48_3_Rpt.SetParameterValue("23-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("23-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("23-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "24":
                                    loCSForm48_3_Rpt.SetParameterValue("24-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("24-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("24-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "25":
                                    loCSForm48_3_Rpt.SetParameterValue("25-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("25-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("25-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "26":
                                    loCSForm48_3_Rpt.SetParameterValue("26-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("26-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("26-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "27":
                                    loCSForm48_3_Rpt.SetParameterValue("27-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("27-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("27-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "28":
                                    loCSForm48_3_Rpt.SetParameterValue("28-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("28-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("28-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "29":
                                    loCSForm48_3_Rpt.SetParameterValue("29-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("29-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("29-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "30":
                                    loCSForm48_3_Rpt.SetParameterValue("30-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("30-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("30-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "31":
                                    loCSForm48_3_Rpt.SetParameterValue("31-AM-In", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-AM-Out", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-PM-In", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-PM-Out", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-OT-In", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-OT-Out", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Total", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("31-LateUT-Total", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("31-LateUT-Total", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                            }
                        }
                        #endregion

                        #region "INSERT TOTAL"
                        foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Total(dgvCSForm46.Rows[i1].Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
                        {
                            try
                            {
                                string[] _TotalOvertime = _dr[0].ToString().Replace("#", "").Split(':');
                                loCSForm48_3_Rpt.SetParameterValue("TotalOvertime", _TotalOvertime[0] + ":" + _TotalOvertime[1]);
                            }
                            catch { }
                            try
                            {
                                string[] _TotalLateUT = _dr[1].ToString().Replace("#", "").Split(':');
                                loCSForm48_3_Rpt.SetParameterValue("TotalLateUT", _TotalLateUT[0] + ":" + _TotalLateUT[1]);
                            }
                            catch { }
                        }
                        #endregion ""
                    }
                    catch { }
                    #endregion "End of 1st DTR"

                    #region "2nd DTR"
                    int i2 = i++;
                    try
                    {
                        #region "INSERT DEFAULT VALUE"
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeName2", "");
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeSignature2", "");
                        loCSForm48_3_Rpt.SetParameterValue("Supervisor2", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-AM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-AM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-PM-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-PM-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-OT-In2", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Out2", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-LateUT-Total2", "");
                        loCSForm48_3_Rpt.SetParameterValue("TotalOvertime2", "");
                        loCSForm48_3_Rpt.SetParameterValue("TotalLateUT2", "");
                        #endregion

                        #region "GET TIME IN and OUT"
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeName2", dgvCSForm46.Rows[i2].Cells[1].Value.ToString().ToUpper());
                        string[] str2 = dgvCSForm46.Rows[i2].Cells[1].Value.ToString().Split(',');
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeSignature2", string.Concat(str2[1], " ", str2[0]).ToUpper());
                        loCSForm48_3_Rpt.SetParameterValue("Supervisor2", dgvCSForm46.Rows[i2].Cells[4].Value.ToString().ToUpper());
                        foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Details(dgvCSForm46.Rows[i2].Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
                        {
                            switch (_dr[0].ToString())
                            {
                                case "01":
                                    loCSForm48_3_Rpt.SetParameterValue("01-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("01-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("01-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "02":
                                    loCSForm48_3_Rpt.SetParameterValue("02-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("02-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("02-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "03":
                                    loCSForm48_3_Rpt.SetParameterValue("03-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("03-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("03-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "04":
                                    loCSForm48_3_Rpt.SetParameterValue("04-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("04-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("04-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "05":
                                    loCSForm48_3_Rpt.SetParameterValue("05-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("05-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("05-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "06":
                                    loCSForm48_3_Rpt.SetParameterValue("06-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("06-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("06-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "07":
                                    loCSForm48_3_Rpt.SetParameterValue("07-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("07-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("07-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "08":
                                    loCSForm48_3_Rpt.SetParameterValue("08-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("08-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("08-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "09":
                                    loCSForm48_3_Rpt.SetParameterValue("09-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("09-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("09-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "10":
                                    loCSForm48_3_Rpt.SetParameterValue("10-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("10-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("10-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "11":
                                    loCSForm48_3_Rpt.SetParameterValue("11-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("11-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("11-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "12":
                                    loCSForm48_3_Rpt.SetParameterValue("12-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("12-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("12-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "13":
                                    loCSForm48_3_Rpt.SetParameterValue("13-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("13-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("13-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "14":
                                    loCSForm48_3_Rpt.SetParameterValue("14-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("14-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("14-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "15":
                                    loCSForm48_3_Rpt.SetParameterValue("15-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("15-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("15-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "16":
                                    loCSForm48_3_Rpt.SetParameterValue("16-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("16-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("16-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "17":
                                    loCSForm48_3_Rpt.SetParameterValue("17-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("17-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("17-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "18":
                                    loCSForm48_3_Rpt.SetParameterValue("18-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("18-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("18-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "19":
                                    loCSForm48_3_Rpt.SetParameterValue("19-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("19-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("19-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "20":
                                    loCSForm48_3_Rpt.SetParameterValue("20-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("20-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("20-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "21":
                                    loCSForm48_3_Rpt.SetParameterValue("21-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("21-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("21-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "22":
                                    loCSForm48_3_Rpt.SetParameterValue("22-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("22-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("22-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "23":
                                    loCSForm48_3_Rpt.SetParameterValue("23-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("23-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("23-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "24":
                                    loCSForm48_3_Rpt.SetParameterValue("24-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("24-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("24-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "25":
                                    loCSForm48_3_Rpt.SetParameterValue("25-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("25-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("25-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "26":
                                    loCSForm48_3_Rpt.SetParameterValue("26-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("26-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("26-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "27":
                                    loCSForm48_3_Rpt.SetParameterValue("27-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("27-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("27-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "28":
                                    loCSForm48_3_Rpt.SetParameterValue("28-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("28-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("28-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "29":
                                    loCSForm48_3_Rpt.SetParameterValue("29-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("29-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("29-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "30":
                                    loCSForm48_3_Rpt.SetParameterValue("30-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("30-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("30-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "31":
                                    loCSForm48_3_Rpt.SetParameterValue("31-AM-In2", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-AM-Out2", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-PM-In2", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-PM-Out2", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-OT-In2", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-OT-Out2", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Total2", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("31-LateUT-Total2", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("31-LateUT-Total2", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                            }
                        }
                        #endregion

                        #region "INSERT TOTAL"
                        foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Total(dgvCSForm46.Rows[i2].Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
                        {
                            try
                            {
                                string[] _TotalOvertime = _dr[0].ToString().Replace("#", "").Split(':');
                                loCSForm48_3_Rpt.SetParameterValue("TotalOvertime2", _TotalOvertime[0] + ":" + _TotalOvertime[1]);
                            }
                            catch { }
                            try
                            {
                                string[] _TotalLateUT = _dr[1].ToString().Replace("#", "").Split(':');
                                loCSForm48_3_Rpt.SetParameterValue("TotalLateUT2", _TotalLateUT[0] + ":" + _TotalLateUT[1]);
                            }
                            catch { }
                        }
                        #endregion ""
                    }
                    catch { }
                    #endregion "End of 2nd DTR"

                    #region "3rd DTR"
                    int i3 = i++;
                    try
                    {
                        #region "INSERT DEFAULT VALUE"
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeName3", "");
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeSignature3", "");
                        loCSForm48_3_Rpt.SetParameterValue("Supervisor3", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("01-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("02-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("03-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("04-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("05-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("06-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("07-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("08-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("09-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("10-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("11-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("12-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("13-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("14-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("15-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("16-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("17-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("18-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("19-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("20-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("21-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("22-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("23-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("24-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("25-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("26-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("27-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("28-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("29-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("30-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-AM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-AM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-PM-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-PM-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-OT-In3", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Out3", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("31-LateUT-Total3", "");
                        loCSForm48_3_Rpt.SetParameterValue("TotalOvertime3", "");
                        loCSForm48_3_Rpt.SetParameterValue("TotalLateUT3", "");
                        #endregion

                        #region "GET TIME IN and OUT"
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeName3", dgvCSForm46.Rows[i3].Cells[1].Value.ToString().ToUpper());
                        string[] str3 = dgvCSForm46.Rows[i3].Cells[1].Value.ToString().Split(',');
                        loCSForm48_3_Rpt.SetParameterValue("EmployeeSignature3", string.Concat(str3[1], " ", str3[0]).ToUpper());
                        loCSForm48_3_Rpt.SetParameterValue("Supervisor3", dgvCSForm46.Rows[i3].Cells[4].Value.ToString().ToUpper());
                        foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Details(dgvCSForm46.Rows[i3].Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
                        {
                            switch (_dr[0].ToString())
                            {
                                case "01":
                                    loCSForm48_3_Rpt.SetParameterValue("01-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("01-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("01-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("01-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("01-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "02":
                                    loCSForm48_3_Rpt.SetParameterValue("02-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("02-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("02-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("02-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("02-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "03":
                                    loCSForm48_3_Rpt.SetParameterValue("03-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("03-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("03-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("03-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("03-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "04":
                                    loCSForm48_3_Rpt.SetParameterValue("04-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("04-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("04-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("04-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("04-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "05":
                                    loCSForm48_3_Rpt.SetParameterValue("05-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("05-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("05-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("05-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("05-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "06":
                                    loCSForm48_3_Rpt.SetParameterValue("06-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("06-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("06-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("06-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("06-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "07":
                                    loCSForm48_3_Rpt.SetParameterValue("07-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("07-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("07-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("07-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("07-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "08":
                                    loCSForm48_3_Rpt.SetParameterValue("08-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("08-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("08-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("08-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("08-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "09":
                                    loCSForm48_3_Rpt.SetParameterValue("09-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("09-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("09-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("09-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("09-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "10":
                                    loCSForm48_3_Rpt.SetParameterValue("10-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("10-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("10-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("10-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("10-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "11":
                                    loCSForm48_3_Rpt.SetParameterValue("11-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("11-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("11-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("11-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("11-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "12":
                                    loCSForm48_3_Rpt.SetParameterValue("12-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("12-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("12-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("12-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("12-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "13":
                                    loCSForm48_3_Rpt.SetParameterValue("13-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("13-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("13-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("13-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("13-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "14":
                                    loCSForm48_3_Rpt.SetParameterValue("14-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("14-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("14-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("14-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("14-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "15":
                                    loCSForm48_3_Rpt.SetParameterValue("15-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("15-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("15-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("15-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("15-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "16":
                                    loCSForm48_3_Rpt.SetParameterValue("16-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("16-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("16-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("16-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("16-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "17":
                                    loCSForm48_3_Rpt.SetParameterValue("17-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("17-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("17-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("17-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("17-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "18":
                                    loCSForm48_3_Rpt.SetParameterValue("18-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("18-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("18-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("18-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("18-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "19":
                                    loCSForm48_3_Rpt.SetParameterValue("19-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("19-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("19-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("19-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("19-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "20":
                                    loCSForm48_3_Rpt.SetParameterValue("20-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("20-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("20-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("20-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("20-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "21":
                                    loCSForm48_3_Rpt.SetParameterValue("21-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("21-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("21-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("21-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("21-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "22":
                                    loCSForm48_3_Rpt.SetParameterValue("22-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("22-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("22-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("22-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("22-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "23":
                                    loCSForm48_3_Rpt.SetParameterValue("23-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("23-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("23-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("23-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("23-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "24":
                                    loCSForm48_3_Rpt.SetParameterValue("24-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("24-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("24-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("24-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("24-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "25":
                                    loCSForm48_3_Rpt.SetParameterValue("25-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("25-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("25-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("25-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("25-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "26":
                                    loCSForm48_3_Rpt.SetParameterValue("26-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("26-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("26-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("26-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("26-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "27":
                                    loCSForm48_3_Rpt.SetParameterValue("27-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("27-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("27-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("27-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("27-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "28":
                                    loCSForm48_3_Rpt.SetParameterValue("28-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("28-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("28-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("28-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("28-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "29":
                                    loCSForm48_3_Rpt.SetParameterValue("29-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("29-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("29-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("29-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("29-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "30":
                                    loCSForm48_3_Rpt.SetParameterValue("30-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("30-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("30-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("30-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("30-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                                case "31":
                                    loCSForm48_3_Rpt.SetParameterValue("31-AM-In3", _dr[1].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-AM-Out3", _dr[2].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-PM-In3", _dr[3].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-PM-Out3", _dr[4].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-OT-In3", _dr[5].ToString());
                                    loCSForm48_3_Rpt.SetParameterValue("31-OT-Out3", _dr[6].ToString());
                                    if (_dr[7].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _OTTotal = _dr[7].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("31-OT-Total3", _OTTotal[0] + ":" + _OTTotal[1]);
                                    }
                                    if (_dr[8].ToString() == "00:00:00")
                                    {
                                        loCSForm48_3_Rpt.SetParameterValue("31-LateUT-Total3", "");
                                    }
                                    else
                                    {
                                        string[] _LateUTTotal = _dr[8].ToString().Split(':');
                                        loCSForm48_3_Rpt.SetParameterValue("31-LateUT-Total3", _LateUTTotal[0] + ":" + _LateUTTotal[1]);
                                    }
                                    break;
                            }
                        }
                        #endregion

                        #region "INSERT TOTAL"
                        foreach (DataRow _dr in loDailyTimeRecord.getCSForm48Total(dgvCSForm46.Rows[i3].Cells[0].Value.ToString(), lFromDate, lToDate).Rows)
                        {
                            try
                            {
                                string[] _TotalOvertime = _dr[0].ToString().Replace("#", "").Split(':');
                                loCSForm48_3_Rpt.SetParameterValue("TotalOvertime3", _TotalOvertime[0] + ":" + _TotalOvertime[1]);
                            }
                            catch { }
                            try
                            {
                                string[] _TotalLateUT = _dr[1].ToString().Replace("#", "").Split(':');
                                loCSForm48_3_Rpt.SetParameterValue("TotalLateUT3", _TotalLateUT[0] + ":" + _TotalLateUT[1]);
                            }
                            catch { }
                        }
                        #endregion ""
                    }
                    catch { }
                    #endregion "End of 3rd DTR"

                    //loReportViewer.crystalReportViewer.ReportSource = loCSForm48_3_Rpt;
                    //loReportViewer.ShowDialog();
                    try
                    {
                        loCSForm48_3_Rpt.PrintOptions.PrinterName = GlobalVariables.PrinterName;
                    }
                    catch { };
                    loCSForm48_3_Rpt.PrintToPrinter(0, false, 0, 0);
                }
            }
            catch { }
        }

        private void CSForm48UI_Load(object sender, EventArgs e)
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

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmCSForm48", "Refresh"))
            {
                return;
            }
            refresh();
        }

        private void dgvCSForm46_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (this.dgvCSForm46.Columns[e.ColumnIndex].Name == "No.")
            {
                if (e.Value != null)
                {
                    e.CellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
                }
            }
        }

        private void dgvCSForm46_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            preview();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }

        private void dgvCSForm46_KeyUp(object sender, KeyEventArgs e)
        {
            preview();
        }

        private void cboPeriod_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (cboPeriod.Text == "1")
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                    lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "15");
                }
                else if (cboPeriod.Text == "2")
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "16");
                    try
                    {
                        lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "31");
                    }
                    catch
                    {
                        try
                        {
                            lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "30");
                        }
                        catch
                        {
                            try
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "29");
                            }
                            catch
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "28");
                            }
                        }
                    }
                }
                else
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                    try
                    {
                        lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "31");
                    }
                    catch
                    {
                        try
                        {
                            lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "30");
                        }
                        catch
                        {
                            try
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "29");
                            }
                            catch
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "28");
                            }
                        }
                    }
                }
                preview();
            }
            catch { }
        }

        private void cboMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (cboPeriod.Text == "1")
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                    lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "15");
                }
                else if (cboPeriod.Text == "2")
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "16");
                    try
                    {
                        lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "31");
                    }
                    catch
                    {
                        try
                        {
                            lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "30");
                        }
                        catch
                        {
                            try
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "29");
                            }
                            catch
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "28");
                            }
                        }
                    }
                }
                else
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                    try
                    {
                        lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "31");
                    }
                    catch
                    {
                        try
                        {
                            lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "30");
                        }
                        catch
                        {
                            try
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "29");
                            }
                            catch
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "28");
                            }
                        }
                    }
                }
                preview();
            }
            catch { }
        }

        private void cboYear_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (cboPeriod.Text == "1")
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                    lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "15");
                }
                else if (cboPeriod.Text == "2")
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "16");
                    try
                    {
                        lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "31");
                    }
                    catch
                    {
                        try
                        {
                            lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "30");
                        }
                        catch
                        {
                            try
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "29");
                            }
                            catch
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "28");
                            }
                        }
                    }
                }
                else
                {
                    lFromDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "01");
                    try
                    {
                        lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "31");
                    }
                    catch
                    {
                        try
                        {
                            lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "30");
                        }
                        catch
                        {
                            try
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "29");
                            }
                            catch
                            {
                                lToDate = DateTime.Parse(cboYear.Text + "-" + cboMonth.Text + "-" + "28");
                            }
                        }
                    }
                }
                preview();
            }
            catch { }
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmCSForm48", "Print"))
            {
                return;
            }
            print();
        }

        private void btnPrintAll_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmCSForm48", "Print All"))
            {
                return;
            }
            //printAll();
            printAll3();
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.Data.OleDb;
using System.IO;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions
{
    public partial class ImportDataFromBiometricsUI : Form
    {
        Employee loEmployee;
        DailyTimeRecord loDailyTimeRecord;
        WorkScheduleDetail loWorkScheduleDetail;

        CryptorEngine loCryptoEngine;
        Common loCommon;
        DataTable ldtEmployee;
        DataTable ldtWorkSchedule;
        DataTable ldtDTRDetails;
        DataTable ldtTimeInOut;
        
        public ImportDataFromBiometricsUI()
        {
            InitializeComponent();
            loEmployee = new Employee();
            loDailyTimeRecord = new DailyTimeRecord();
            loWorkScheduleDetail = new WorkScheduleDetail();

            loCryptoEngine = new CryptorEngine();
            loCommon = new Common();
            ldtEmployee = new DataTable();
            ldtWorkSchedule = new DataTable();
            ldtDTRDetails = new DataTable();
            ldtTimeInOut = new DataTable();
        }

        #region "METHOD"
        //CheckIn
        private void TimeIn(string pEmployeeNo, DateTime pScheduledTimeIn, DateTime pTimeIn)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                string _late = "00:00";
                try
                {
                    _late = string.Format("{0:HH:mm}", DateTime.Parse(pTimeIn.TimeOfDay.Subtract(pScheduledTimeIn.TimeOfDay).ToString()));
                }
                catch
                {
                    _late = "00:00";
                }
                //insert check in
                _status = loDailyTimeRecord.insertTimeIn(pTimeIn, pEmployeeNo, string.Format("{0:hh:mm tt}", pTimeIn), _late, ref _Trans);

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        //Break Out
        private void BreakOut(string pEmployeeNo, DateTime pScheduledBreakOut, DateTime pTimeOut)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                //for breakout...
                string _undertime = "";
                try
                {
                    _undertime = string.Format("{0:HH:mm}", DateTime.Parse(pScheduledBreakOut.TimeOfDay.Subtract(pTimeOut.TimeOfDay).ToString()));
                }
                catch
                {
                    _undertime = "00:00";
                }
                //insert break out....
                string[] ut = _undertime.Split(':');
                TimeSpan undertime = new TimeSpan(0, int.Parse(ut[0]), int.Parse(ut[1]), 0);
                try
                {
                    _status = loDailyTimeRecord.insertBreakOut(pTimeOut, pEmployeeNo, string.Format("{0:hh:mm tt}", pTimeOut), _undertime, ref _Trans);
                }
                catch
                {
                    _status = false;
                }

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        //BreakIn
        private void BreakIn(string pEmployeeNo, DateTime pScheduledBreakIn, DateTime pTimeIn)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                string _late = "00:00";
                try
                {
                    _late = string.Format("{0:HH:mm}", DateTime.Parse(pTimeIn.TimeOfDay.Subtract(pScheduledBreakIn.TimeOfDay).ToString()));
                }
                catch
                {
                    _late = "00:00";
                }
                //insert break in....
                _status = loDailyTimeRecord.insertBreakIn(pTimeIn, pEmployeeNo, string.Format("{0:hh:mm tt}", pTimeIn), _late, ref _Trans);

                if (_status) 
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        //Check Out
        private void TimeOut(string pEmployeeNo, DateTime pScheduledTimeOut,DateTime pTimeOut)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                string _undertime = "";
                try
                {
                    _undertime = string.Format("{0:HH:mm}", DateTime.Parse(pScheduledTimeOut.TimeOfDay.Subtract(pTimeOut.TimeOfDay).ToString()));
                }
                catch
                {
                    _undertime = "00:00";
                }
                //insert check out....
                string[] ut = _undertime.Split(':');
                TimeSpan undertime = new TimeSpan(0, int.Parse(ut[0]), int.Parse(ut[1]), 0);
                try
                {
                    _status = loDailyTimeRecord.insertTimeOut(pTimeOut, pEmployeeNo, string.Format("{0:hh:mm tt}", pTimeOut), _undertime, ref _Trans);
                }
                catch
                {
                    _status = false;
                }

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        //CheckIn for Open Time Schedule
        private void TimeInForOpenTimeSchedule(string pEmployeeNo, DateTime pTimeIn)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                string _late = "00:00";
                //insert check in
                _status = loDailyTimeRecord.insertTimeIn(pTimeIn, pEmployeeNo, string.Format("{0:hh:mm tt}", pTimeIn), _late, ref _Trans);

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        //Break Out for Open Time Schedule
        private void BreakOutForOpenTimeSchedule(string pEmployeeNo, DateTime pTimeOut)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                //insert break out....
                string _undertime = "00:00";
                try
                {
                    _status = loDailyTimeRecord.insertBreakOut(pTimeOut, pEmployeeNo, string.Format("{0:hh:mm tt}", pTimeOut), _undertime, ref _Trans);
                }
                catch
                {
                    _status = false;
                }

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        //BreakIn for Open Time Schedule
        private void BreakInForOpenTimeSchedule(string pEmployeeNo, DateTime pTimeIn)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                string _late = "00:00";
                //insert break in....
                _status = loDailyTimeRecord.insertBreakIn(pTimeIn, pEmployeeNo, string.Format("{0:hh:mm tt}", pTimeIn), _late, ref _Trans);

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        //Check Out for Open Time Schedule
        private void TimeOutForOpenTimeSchedule(string pEmployeeNo, DateTime pTimeOut)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                string _undertime = "00:00";
                try
                {
                    _status = loDailyTimeRecord.insertTimeOut(pTimeOut, pEmployeeNo, string.Format("{0:hh:mm tt}", pTimeOut), _undertime, ref _Trans);
                }
                catch
                {
                    _status = false;
                }

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        //Check Out Hospital
        private void TimeOutHospital(string pEmployeeNo, DateTime pScheduledTimeOut, DateTime pTimeOut,DateTime pLastTimeIn)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                string _undertime = "";
                try
                {
                    _undertime = string.Format("{0:HH:mm}", DateTime.Parse(pScheduledTimeOut.TimeOfDay.Subtract(pTimeOut.TimeOfDay).ToString()));
                }
                catch
                {
                    _undertime = "00:00";
                }
                string _hourswork = "";
                try
                {
                    _hourswork = string.Format("{0:HH:mm}",pTimeOut.Subtract(pLastTimeIn).ToString());
                    if (_hourswork.Contains('.'))
                    { 
                        string[] _str = _hourswork.Split(':');
                        _hourswork = (decimal.Parse(_str[0].ToString()) * 24).ToString() + ":" + _str[1].ToString() + ":" + _str[2].ToString();
                    }
                }
                catch
                {
                    _hourswork = "00:00";
                }
                //insert check out....
                string[] ut = _undertime.Split(':');
                TimeSpan undertime = new TimeSpan(0, int.Parse(ut[0]), int.Parse(ut[1]), 0);
                try
                {
                    _status = loDailyTimeRecord.insertTimeOutHospital(pTimeOut, pEmployeeNo, string.Format("{0:hh:mm tt}", pTimeOut), _undertime, _hourswork,ref _Trans);
                }
                catch
                {
                    _status = false;
                }

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        private void OvertimeIn(string pEmployeeNo, DateTime pTimeIn)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                //insert overtime
                _status = loDailyTimeRecord.insertOvertimeIn(pTimeIn,pEmployeeNo,string.Format("{0:HH:mm:00}", pTimeIn), ref _Trans);

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        private void OvertimeOut(string pEmployeeNo, DateTime pTimeOut)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                //insert overtime
                _status = loDailyTimeRecord.insertOvertimeOut(pTimeOut, pEmployeeNo, string.Format("{0:HH:mm:00}", pTimeOut),"00:00", ref _Trans);

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        private void OvertimeInOut(string pEmployeeNo, DateTime pDate, string pTimeIn, string pTimeOut)
        {
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                bool _status = false;
                //insert overtime
                //_status = loDailyTimeRecord.insertOvertimeInOut(pDate, pEmployeeNo, pTimeIn, string.Format("{0:HH:mm:00}", pTimeOut), ref _Trans);

                if (_status)
                {
                    _Trans.Commit();
                }
                else
                {
                    _Trans.Rollback();
                }
            }
            catch
            {
                _Trans.Rollback();
                return;
            }
        }

        public void rememberDatabaseURL()
        {
            try
            {
                string _StringToWrite = txtDabaseAddress.Text;
                _StringToWrite = loCryptoEngine.EncryptString(_StringToWrite);
                System.IO.TextWriter writeFile = new StreamWriter(".../Main/text/databaseURL.txt");
                writeFile.WriteLine(_StringToWrite);
                writeFile.Flush();
                writeFile.Close();
                writeFile = null;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public void readDatabaseURL()
        {
            string line = null;
            char[] splitter1 = { ';' };
            char[] splitter2 = { ':' };
            System.IO.TextReader readFile = new StreamReader(".../Main/text/databaseURL.txt");
            line = readFile.ReadLine();
            if (line != null)
            {
                string _StringToWrite = loCryptoEngine.DecryptString(line);
                txtDabaseAddress.Text = _StringToWrite;
            }
            readFile.Close();
            readFile = null;
        }
        #endregion "END METHOD"

        private void ImportDataFromBiometricsUI_Load(object sender, EventArgs e)
        {
            cboEmploymentType.Text = "Regular";
            readDatabaseURL();
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmDownloadAttendanceLogs", "Import"))
            {
                return;
            }
            if (txtDabaseAddress.Text == "")
            {
                MessageBoxUI _mb = new MessageBoxUI("You must provide a database url.", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                _mb.showDialog();
                return;
            }
            if (cboEmploymentType.Text == "")
            {
                MessageBoxUI _mb = new MessageBoxUI("You must select an employment type", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                _mb.showDialog();
                return;
            }
            try
            {
                int i = 0;
                pgbImport.Value = 0;
                pgbImport.Minimum = 0;
                DataTable _dtEmployees = loEmployee.getActiveEmployees(cboEmploymentType.Text);
                foreach (DataRow _drEmployee in _dtEmployees.Rows)
                {
                    if (_drEmployee[4].ToString() == "NWS")
                    {
                        loDailyTimeRecord.insertAttendanceForNoWorkSchedule(_drEmployee[0].ToString(), dtpFrom.Value, dtpTo.Value);
                    }
                    else
                    {
                        loDailyTimeRecord.createDTRDate(_drEmployee[0].ToString(), dtpFrom.Value, dtpTo.Value, _drEmployee[2].ToString());
                        ldtWorkSchedule = loWorkScheduleDetail.getWorkScheduleDetails(_drEmployee[2].ToString());
                        ldtTimeInOut = loCommon.getCheckInOutByEmployee(dtpFrom.Value, dtpTo.Value.AddDays(1), txtDabaseAddress.Text, _drEmployee[1].ToString());

                        pgbImport.Maximum = _dtEmployees.Rows.Count;
                        foreach (DataRow _dr in ldtTimeInOut.Rows)
                        {
                            string _TimeInSchedule = "";
                            string _BreakOutSchedule = "";
                            string _BreakInSchedule = "";
                            string _TimeOutSchedule = "";

                            foreach (DataRow _drSchedule in ldtWorkSchedule.Rows)
                            {
                                if (_drSchedule[0].ToString() == DateTime.Parse(_dr[1].ToString()).DayOfWeek.ToString())
                                {
                                    _TimeInSchedule = _drSchedule[1].ToString();
                                    _BreakOutSchedule = _drSchedule[2].ToString();
                                    _BreakInSchedule = _drSchedule[3].ToString();
                                    _TimeOutSchedule = _drSchedule[4].ToString();
                                    break;
                                }
                            }

                            string _logDate = _dr[1].ToString() + " ";
                            bool _hasBreakOut = !String.IsNullOrEmpty(_dr[3].ToString());
                            bool _hasBreakIn = !String.IsNullOrEmpty(_dr[4].ToString());

                            string _TimeInActual = _logDate + _dr[2].ToString(),
                                   _BreakOutActual = _hasBreakOut ? _logDate + _dr[3].ToString() : "",
                                   _BreakInActual = _hasBreakIn ? _logDate + _dr[4].ToString() : "",
                                   _TimeOutActual = _logDate + _dr[5].ToString();

                            if (_drEmployee[4].ToString() == "OTS")
                            {
                                TimeInForOpenTimeSchedule(_drEmployee[0].ToString(), DateTime.Parse(_TimeInActual));
                                if(_hasBreakOut) BreakOutForOpenTimeSchedule(_drEmployee[0].ToString(), DateTime.Parse(_BreakOutActual));
                                if(_hasBreakIn) BreakInForOpenTimeSchedule(_drEmployee[0].ToString(), DateTime.Parse(_BreakInActual));
                                TimeOutForOpenTimeSchedule(_drEmployee[0].ToString(), DateTime.Parse(_TimeOutActual));
                            }
                            else
                            {
                                try
                                {
                                    TimeIn(_drEmployee[0].ToString(), DateTime.Parse(_TimeInSchedule), DateTime.Parse(_TimeInActual));
                                    if (_hasBreakOut) BreakOut(_drEmployee[0].ToString(), DateTime.Parse(_BreakOutSchedule), DateTime.Parse(_BreakOutActual));
                                    if (_hasBreakIn) BreakIn(_drEmployee[0].ToString(), DateTime.Parse(_BreakInSchedule), DateTime.Parse(_BreakInActual));
                                    TimeOut(_drEmployee[0].ToString(), DateTime.Parse(_TimeOutSchedule), DateTime.Parse(_TimeOutActual));
                                }
                                catch
                                {
                                    TimeInForOpenTimeSchedule(_drEmployee[0].ToString(), DateTime.Parse(_TimeInActual));
                                    if (!String.IsNullOrEmpty(_BreakOutActual)) BreakOutForOpenTimeSchedule(_drEmployee[0].ToString(), DateTime.Parse(_BreakOutActual));
                                    if (!String.IsNullOrEmpty(_BreakInActual)) BreakInForOpenTimeSchedule(_drEmployee[0].ToString(), DateTime.Parse(_BreakInActual));
                                    TimeOutForOpenTimeSchedule(_drEmployee[0].ToString(), DateTime.Parse(_TimeOutActual));
                                }
                            }
                        }
                    }
                    pgbImport.Value = i;
                    pgbImport.PerformStep();
                    i++;
                }
                lblImported.Visible = true;
                lblConnected.Visible = false;
            }
            catch { }

            MessageBoxUI _mb1 = new MessageBoxUI("Successfully Imported!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
            _mb1.showDialog();
            //this.Close();
        }

        private void btnFindDatabaseAddress_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmImportDatabase", "Find Database"))
            {
                return;
            }
            OpenFileDialog openFD = new OpenFileDialog();
            openFD.InitialDirectory = "";
            openFD.Title = "Find database biometrics database";
            openFD.Filter = "MS Access Database|*.mdb";
            if (openFD.ShowDialog() != DialogResult.Cancel)
            {
                txtDabaseAddress.Text = openFD.FileName;
                rememberDatabaseURL();
            }
        }
    }
}

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

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.MasterFiles
{
    public partial class WorkScheduleDetailUI : Form
    {
        #region "VARIABLES"
        string lWorkScheduleCode;
        string lWorkScheduleDescription;
        string lRemarks;
        GlobalVariables.Operation lOperation;
        WorkSchedule loWorkSchedule;
        WorkScheduleDetail loWorkScheduleDetail;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public WorkScheduleDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loWorkSchedule = new WorkSchedule();
            loWorkScheduleDetail = new WorkScheduleDetail();
            lWorkScheduleCode = "";
            lWorkScheduleDescription = "";
            lRemarks = "";
        }
        public WorkScheduleDetailUI(string pWorkScheduleCode,string pWorkScheduleDescription, string pRemarks)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loWorkSchedule = new WorkSchedule();
            loWorkScheduleDetail = new WorkScheduleDetail();
            lWorkScheduleCode = pWorkScheduleCode;
            lWorkScheduleDescription = pWorkScheduleDescription;
            lRemarks = pRemarks;
        }
        #endregion "END OF CONSTRUCTORS"

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        private void clear()
        {
            txtWorkScheduleCode.Clear();
            txtWorkScheduleDescription.Clear();
            chkHospitalEmployee.Checked = false;
            txtRemarks.Clear();
            txtWorkScheduleCode.Focus();
        }
        #endregion "END OF METHODS"

        private void WorkScheduleUI_Load(object sender, EventArgs e)
        {
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                txtWorkScheduleCode.Text = lWorkScheduleCode;
                txtWorkScheduleCode.ReadOnly = true;
                txtWorkScheduleCode.BackColor = SystemColors.ControlLight;
                txtWorkScheduleCode.TabStop = false;
                txtWorkScheduleDescription.Text = lWorkScheduleDescription;
                txtRemarks.Text = lRemarks;
               
                foreach (DataRow _dr in loWorkScheduleDetail.getWorkScheduleDetails(lWorkScheduleCode).Rows)
                {
                    if (_dr[0].ToString() == "Sunday")
                    {
                        chkSunday.Checked = true;
                        dtpSundayTimeIn.Value = DateTime.Parse(_dr[1].ToString());
                        if (_dr[2].ToString() != "")
                        {
                            dtpSundayBreakOut.Value = DateTime.Parse(_dr[2].ToString());
                            dtpSundayBreakIn.Value = DateTime.Parse(_dr[3].ToString());
                        }
                        else
                        {
                            chkSundayBreak.Checked = false;
                        }
                        dtpSundayTimeOut.Value = DateTime.Parse(_dr[4].ToString());
                    }
                    else if (_dr[0].ToString() == "Monday")
                    {
                        chkMonday.Checked = true;
                        dtpMondayTimeIn.Value = DateTime.Parse(_dr[1].ToString());
                        if (_dr[2].ToString() != "")
                        {
                            dtpMondayBreakOut.Value = DateTime.Parse(_dr[2].ToString());
                            dtpMondayBreakIn.Value = DateTime.Parse(_dr[3].ToString());
                        }
                        else
                        {
                            chkMondayBreak.Checked = false;
                        }
                        dtpMondayTimeOut.Value = DateTime.Parse(_dr[4].ToString());
                    }
                    else if (_dr[0].ToString() == "Tuesday")
                    {
                        chkTuesday.Checked = true;
                        dtpTuesdayTimeIn.Value = DateTime.Parse(_dr[1].ToString());
                        if (_dr[2].ToString() != "")
                        {
                            dtpTuesdayBreakOut.Value = DateTime.Parse(_dr[2].ToString());
                            dtpTuesdayBreakIn.Value = DateTime.Parse(_dr[3].ToString());
                        }
                        else
                        {
                            chkTuesdayBreak.Checked = false;
                        }
                        dtpTuesdayTimeOut.Value = DateTime.Parse(_dr[4].ToString());
                    }
                    else if (_dr[0].ToString() == "Wednesday")
                    {
                        chkWednesday.Checked = true;
                        dtpWednesdayTimeIn.Value = DateTime.Parse(_dr[1].ToString());
                        if (_dr[2].ToString() != "")
                        {
                            dtpWednesdayBreakOut.Value = DateTime.Parse(_dr[2].ToString());
                            dtpWednesdayBreakIn.Value = DateTime.Parse(_dr[3].ToString());
                        }
                        else
                        {
                            chkWednesdayBreak.Checked = false;
                        }
                        dtpWednesdayTimeOut.Value = DateTime.Parse(_dr[4].ToString());
                    }
                    else if (_dr[0].ToString() == "Thursday")
                    {
                        chkThursday.Checked = true;
                        dtpThursdayTimeIn.Value = DateTime.Parse(_dr[1].ToString());
                        if (_dr[2].ToString() != "")
                        {
                            dtpThursdayBreakOut.Value = DateTime.Parse(_dr[2].ToString());
                            dtpThursdayBreakIn.Value = DateTime.Parse(_dr[3].ToString());
                        }
                        else
                        {
                            chkThursdayBreak.Checked = false;
                        }
                        dtpThursdayTimeOut.Value = DateTime.Parse(_dr[4].ToString());
                    }
                    else if (_dr[0].ToString() == "Friday")
                    {
                        chkFriday.Checked = true;
                        dtpFridayTimeIn.Value = DateTime.Parse(_dr[1].ToString());
                        if (_dr[2].ToString() != "")
                        {
                            dtpFridayBreakOut.Value = DateTime.Parse(_dr[2].ToString());
                            dtpFridayBreakIn.Value = DateTime.Parse(_dr[3].ToString());
                        }
                        else
                        {
                            chkFridayBreak.Checked = false;
                        }
                        dtpFridayTimeOut.Value = DateTime.Parse(_dr[4].ToString());
                    }
                    else if (_dr[0].ToString() == "Saturday")
                    {
                        chkSaturday.Checked = true;
                        dtpSaturdayTimeIn.Value = DateTime.Parse(_dr[1].ToString());
                        if (_dr[2].ToString() != "")
                        {
                            dtpSaturdayBreakOut.Value = DateTime.Parse(_dr[2].ToString());
                            dtpSaturdayBreakIn.Value = DateTime.Parse(_dr[3].ToString());
                        }
                        else
                        {
                            chkSaturdayBreak.Checked = false;
                        }
                        dtpSaturdayTimeOut.Value = DateTime.Parse(_dr[4].ToString());
                    }
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            loWorkSchedule.WorkScheduleCode = txtWorkScheduleCode.Text;
            loWorkSchedule.WorkScheduleDescription = txtWorkScheduleDescription.Text;
            loWorkSchedule.Remarks = txtRemarks.Text;
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loWorkSchedule.save(lOperation, ref _Trans))
                {
                    insertWorkScheduleDetails(txtWorkScheduleCode.Text,ref _Trans);
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Work Schedule has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    object[] _params = { "ViewAll", "" };
                    ParentList.GetType().GetMethod("refresh").Invoke(ParentList, _params);
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                _Trans.Rollback();
                MessageBoxUI _mb = new MessageBoxUI(ex.Message, GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                _mb.showDialog();
                return;
            }
        }

        private void insertWorkScheduleDetails(string pWorkScheduleCode,ref MySqlTransaction pTrans)
        {
            if (chkSunday.Checked)
            {
                loWorkScheduleDetail.WorkScheduleCode = pWorkScheduleCode;
                loWorkScheduleDetail.Day = "Sunday";
                loWorkScheduleDetail.TimeIn = string.Format("{0:hh:mm tt}", dtpSundayTimeIn.Value);
                if (chkSundayBreak.Checked)
                {
                    loWorkScheduleDetail.BreakOut = string.Format("{0:hh:mm tt}", dtpSundayBreakOut.Value);
                    loWorkScheduleDetail.BreakIn = string.Format("{0:hh:mm tt}", dtpSundayBreakIn.Value);
                }
                else
                {
                    loWorkScheduleDetail.BreakOut = "";
                    loWorkScheduleDetail.BreakIn = "";
                }
                loWorkScheduleDetail.TimeOut = string.Format("{0:hh:mm tt}", dtpSundayTimeOut.Value);
                loWorkScheduleDetail.save(GlobalVariables.Operation.Add, ref pTrans);
            }
            if (chkMonday.Checked)
            {
                loWorkScheduleDetail.WorkScheduleCode = pWorkScheduleCode;
                loWorkScheduleDetail.Day = "Monday";
                loWorkScheduleDetail.TimeIn = string.Format("{0:hh:mm tt}", dtpMondayTimeIn.Value);
                if (chkMondayBreak.Checked)
                {
                    loWorkScheduleDetail.BreakOut = string.Format("{0:hh:mm tt}", dtpMondayBreakOut.Value);
                    loWorkScheduleDetail.BreakIn = string.Format("{0:hh:mm tt}", dtpMondayBreakIn.Value);
                }
                else
                {
                    loWorkScheduleDetail.BreakOut = "";
                    loWorkScheduleDetail.BreakIn = "";
                }
                loWorkScheduleDetail.TimeOut = string.Format("{0:hh:mm tt}", dtpMondayTimeOut.Value);
                loWorkScheduleDetail.save(GlobalVariables.Operation.Add, ref pTrans);
            }
            if (chkTuesday.Checked)
            {
                loWorkScheduleDetail.WorkScheduleCode = pWorkScheduleCode;
                loWorkScheduleDetail.Day = "Tuesday";
                loWorkScheduleDetail.TimeIn = string.Format("{0:hh:mm tt}", dtpTuesdayTimeIn.Value);
                if (chkTuesdayBreak.Checked)
                {
                    loWorkScheduleDetail.BreakOut = string.Format("{0:hh:mm tt}", dtpTuesdayBreakOut.Value);
                    loWorkScheduleDetail.BreakIn = string.Format("{0:hh:mm tt}", dtpTuesdayBreakIn.Value);
                }
                else
                {
                    loWorkScheduleDetail.BreakOut = "";
                    loWorkScheduleDetail.BreakIn = "";
                }
                loWorkScheduleDetail.TimeOut = string.Format("{0:hh:mm tt}", dtpTuesdayTimeOut.Value);
                loWorkScheduleDetail.save(GlobalVariables.Operation.Add, ref pTrans);
            }
            if (chkWednesday.Checked)
            {
                loWorkScheduleDetail.WorkScheduleCode = pWorkScheduleCode;
                loWorkScheduleDetail.Day = "Wednesday";
                loWorkScheduleDetail.TimeIn = string.Format("{0:hh:mm tt}", dtpWednesdayTimeIn.Value);
                if (chkWednesdayBreak.Checked)
                {
                    loWorkScheduleDetail.BreakOut = string.Format("{0:hh:mm tt}", dtpWednesdayBreakOut.Value);
                    loWorkScheduleDetail.BreakIn = string.Format("{0:hh:mm tt}", dtpWednesdayBreakIn.Value);
                }
                else
                {
                    loWorkScheduleDetail.BreakOut = "";
                    loWorkScheduleDetail.BreakIn = "";
                }
                loWorkScheduleDetail.TimeOut = string.Format("{0:hh:mm tt}", dtpWednesdayTimeOut.Value);
                loWorkScheduleDetail.save(GlobalVariables.Operation.Add, ref pTrans);
            }
            if (chkThursday.Checked)
            {
                loWorkScheduleDetail.WorkScheduleCode = pWorkScheduleCode;
                loWorkScheduleDetail.Day = "Thursday";
                loWorkScheduleDetail.TimeIn = string.Format("{0:hh:mm tt}", dtpThursdayTimeIn.Value);
                if (chkThursdayBreak.Checked)
                {
                    loWorkScheduleDetail.BreakOut = string.Format("{0:hh:mm tt}", dtpThursdayBreakOut.Value);
                    loWorkScheduleDetail.BreakIn = string.Format("{0:hh:mm tt}", dtpThursdayBreakIn.Value);
                }
                else
                {
                    loWorkScheduleDetail.BreakOut = "";
                    loWorkScheduleDetail.BreakIn = "";
                }
                loWorkScheduleDetail.TimeOut = string.Format("{0:hh:mm tt}", dtpThursdayTimeOut.Value);
                loWorkScheduleDetail.save(GlobalVariables.Operation.Add, ref pTrans);
            }
            if (chkFriday.Checked)
            {
                loWorkScheduleDetail.WorkScheduleCode = pWorkScheduleCode;
                loWorkScheduleDetail.Day = "Friday";
                loWorkScheduleDetail.TimeIn = string.Format("{0:hh:mm tt}", dtpFridayTimeIn.Value);
                if (chkFridayBreak.Checked)
                {
                    loWorkScheduleDetail.BreakOut = string.Format("{0:hh:mm tt}", dtpFridayBreakOut.Value);
                    loWorkScheduleDetail.BreakIn = string.Format("{0:hh:mm tt}", dtpFridayBreakIn.Value);
                }
                else
                {
                    loWorkScheduleDetail.BreakOut = "";
                    loWorkScheduleDetail.BreakIn = "";
                }
                loWorkScheduleDetail.TimeOut = string.Format("{0:hh:mm tt}", dtpFridayTimeOut.Value);
                loWorkScheduleDetail.save(GlobalVariables.Operation.Add, ref pTrans);
            }
            if (chkSaturday.Checked)
            {
                loWorkScheduleDetail.WorkScheduleCode = pWorkScheduleCode;
                loWorkScheduleDetail.Day = "Saturday";
                loWorkScheduleDetail.TimeIn = string.Format("{0:hh:mm tt}", dtpSaturdayTimeIn.Value);
                if (chkSaturdayBreak.Checked)
                {
                    loWorkScheduleDetail.BreakOut = string.Format("{0:hh:mm tt}", dtpSaturdayBreakOut.Value);
                    loWorkScheduleDetail.BreakIn = string.Format("{0:hh:mm tt}", dtpSaturdayBreakIn.Value);
                }
                else
                {
                    loWorkScheduleDetail.BreakOut = "";
                    loWorkScheduleDetail.BreakIn = "";
                }
                loWorkScheduleDetail.TimeOut = string.Format("{0:hh:mm tt}", dtpSaturdayTimeOut.Value);
                loWorkScheduleDetail.save(GlobalVariables.Operation.Add, ref pTrans);
            }
        }

        private void chkSunday_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSunday.Checked)
            {
                dtpSundayTimeIn.Visible = true;
                dtpSundayBreakOut.Visible = true;
                dtpSundayBreakIn.Visible = true;
                dtpSundayTimeOut.Visible = true;
                chkSundayBreak.Visible = true;
                chkSundayBreak.Checked = true;
            }
            else
            {
                dtpSundayTimeIn.Visible = false;
                dtpSundayBreakOut.Visible = false;
                dtpSundayBreakIn.Visible = false;
                dtpSundayTimeOut.Visible = false;
                chkSundayBreak.Visible = false;
            }
        }

        private void chkMonday_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMonday.Checked)
            {
                dtpMondayTimeIn.Visible = true;
                dtpMondayBreakOut.Visible = true;
                dtpMondayBreakIn.Visible = true;
                dtpMondayTimeOut.Visible = true;
                chkMondayBreak.Visible = true;
                chkMondayBreak.Checked = true;
            }
            else
            {
                dtpMondayTimeIn.Visible = false;
                dtpMondayBreakOut.Visible = false;
                dtpMondayBreakIn.Visible = false;
                dtpMondayTimeOut.Visible = false;
                chkMondayBreak.Visible = false;
            }
        }

        private void chkTuesday_CheckedChanged(object sender, EventArgs e)
        {
            if (chkTuesday.Checked)
            {
                dtpTuesdayTimeIn.Visible = true;
                dtpTuesdayBreakOut.Visible = true;
                dtpTuesdayBreakIn.Visible = true;
                dtpTuesdayTimeOut.Visible = true;
                chkTuesdayBreak.Visible = true;
                chkTuesdayBreak.Checked = true;
            }
            else
            {
                dtpTuesdayTimeIn.Visible = false;
                dtpTuesdayBreakOut.Visible = false;
                dtpTuesdayBreakIn.Visible = false;
                dtpTuesdayTimeOut.Visible = false;
                chkTuesdayBreak.Visible = false;
            }
        }

        private void chkWednesday_CheckedChanged(object sender, EventArgs e)
        {
            if (chkWednesday.Checked)
            {
                dtpWednesdayTimeIn.Visible = true;
                dtpWednesdayBreakOut.Visible = true;
                dtpWednesdayBreakIn.Visible = true;
                dtpWednesdayTimeOut.Visible = true;
                chkWednesdayBreak.Visible = true;
                chkWednesdayBreak.Checked = true;
            }
            else
            {
                dtpWednesdayTimeIn.Visible = false;
                dtpWednesdayBreakOut.Visible = false;
                dtpWednesdayBreakIn.Visible = false;
                dtpWednesdayTimeOut.Visible = false;
                chkWednesdayBreak.Visible = false;
            }
        }

        private void chkThursday_CheckedChanged(object sender, EventArgs e)
        {
            if (chkThursday.Checked)
            {
                dtpThursdayTimeIn.Visible = true;
                dtpThursdayBreakOut.Visible = true;
                dtpThursdayBreakIn.Visible = true;
                dtpThursdayTimeOut.Visible = true;
                chkThursdayBreak.Visible = true;
                chkThursdayBreak.Checked = true;
            }
            else
            {
                dtpThursdayTimeIn.Visible = false;
                dtpThursdayBreakOut.Visible = false;
                dtpThursdayBreakIn.Visible = false;
                dtpThursdayTimeOut.Visible = false;
                chkThursdayBreak.Visible = false;
            }
        }

        private void chkFriday_CheckedChanged(object sender, EventArgs e)
        {
            if (chkFriday.Checked)
            {
                dtpFridayTimeIn.Visible = true;
                dtpFridayBreakOut.Visible = true;
                dtpFridayBreakIn.Visible = true;
                dtpFridayTimeOut.Visible = true;
                chkFridayBreak.Visible = true;
                chkFridayBreak.Checked = true;
            }
            else
            {
                dtpFridayTimeIn.Visible = false;
                dtpFridayBreakOut.Visible = false;
                dtpFridayBreakIn.Visible = false;
                dtpFridayTimeOut.Visible = false;
                chkFridayBreak.Visible = false;
            }
        }

        private void chkSaturday_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSaturday.Checked)
            {
                dtpSaturdayTimeIn.Visible = true;
                dtpSaturdayBreakOut.Visible = true;
                dtpSaturdayBreakIn.Visible = true;
                dtpSaturdayTimeOut.Visible = true;
                chkSaturdayBreak.Visible = true;
                chkSaturdayBreak.Checked = true;
            }
            else
            {
                dtpSaturdayTimeIn.Visible = false;
                dtpSaturdayBreakOut.Visible = false;
                dtpSaturdayBreakIn.Visible = false;
                dtpSaturdayTimeOut.Visible = false;
                chkSaturdayBreak.Visible = false;
            }
        }

        private void chkSundayBreak_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSundayBreak.Checked)
            {
                dtpSundayBreakIn.Visible = true;
                dtpSundayBreakOut.Visible = true;
            }
            else
            {
                dtpSundayBreakIn.Visible = false;
                dtpSundayBreakOut.Visible = false;
            }
        }

        private void chkMondayBreak_CheckedChanged(object sender, EventArgs e)
        {
            if (chkMondayBreak.Checked)
            {
                dtpMondayBreakIn.Visible = true;
                dtpMondayBreakOut.Visible = true;
            }
            else
            {
                dtpMondayBreakIn.Visible = false;
                dtpMondayBreakOut.Visible = false;
            }
        }

        private void chkTuesdayBreak_CheckedChanged(object sender, EventArgs e)
        {
            if (chkTuesdayBreak.Checked)
            {
                dtpTuesdayBreakIn.Visible = true;
                dtpTuesdayBreakOut.Visible = true;
            }
            else
            {
                dtpTuesdayBreakIn.Visible = false;
                dtpTuesdayBreakOut.Visible = false;
            }
        }

        private void chkWednesdayBreak_CheckedChanged(object sender, EventArgs e)
        {
            if (chkWednesdayBreak.Checked)
            {
                dtpWednesdayBreakIn.Visible = true;
                dtpWednesdayBreakOut.Visible = true;
            }
            else
            {
                dtpWednesdayBreakIn.Visible = false;
                dtpWednesdayBreakOut.Visible = false;
            }
        }

        private void chkThursdayBreak_CheckedChanged(object sender, EventArgs e)
        {
            if (chkThursdayBreak.Checked)
            {
                dtpThursdayBreakIn.Visible = true;
                dtpThursdayBreakOut.Visible = true;
            }
            else
            {
                dtpThursdayBreakIn.Visible = false;
                dtpThursdayBreakOut.Visible = false;
            }
        }

        private void chkFridayBreak_CheckedChanged(object sender, EventArgs e)
        {
            if (chkFridayBreak.Checked)
            {
                dtpFridayBreakIn.Visible = true;
                dtpFridayBreakOut.Visible = true;
            }
            else
            {
                dtpFridayBreakIn.Visible = false;
                dtpFridayBreakOut.Visible = false;
            }
        }

        private void chkSaturdayBreak_CheckedChanged(object sender, EventArgs e)
        {
            if (chkSaturdayBreak.Checked)
            {
                dtpSaturdayBreakIn.Visible = true;
                dtpSaturdayBreakOut.Visible = true;
            }
            else
            {
                dtpSaturdayBreakIn.Visible = false;
                dtpSaturdayBreakOut.Visible = false;
            }
        }
    }
}

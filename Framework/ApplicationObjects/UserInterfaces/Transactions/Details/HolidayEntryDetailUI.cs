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

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions.Details
{
    public partial class HolidayEntryDetailUI : Form
    {
        #region "VARIABLES"
        string lHolidayEntryId = "";
        GlobalVariables.Operation lOperation;
        HolidayEntry loHolidayEntry;
        Holiday loHoliday;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public HolidayEntryDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loHolidayEntry = new HolidayEntry();
            loHoliday = new Holiday();
            lHolidayEntryId = "";
        }

        public HolidayEntryDetailUI(string pHolidayEntryId)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loHolidayEntry = new HolidayEntry();
            loHoliday = new Holiday();
            lHolidayEntryId = pHolidayEntryId;
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
            dtpDate.Value = DateTime.Now;
            cboHoliday.SelectedIndex = 0;
            txtType.Clear();
            txtRemarks.Clear();
        }
        #endregion "END OF METHODS"

        private void HolidayEntryDetailUI_Load(object sender, EventArgs e)
        {
            cboHoliday.DataSource = loHoliday.getAllData("ViewAll","");
            cboHoliday.ValueMember = "Code";
            cboHoliday.DisplayMember = "Holiday Description";
            cboHoliday.SelectedIndex = -1;

            if (lOperation == GlobalVariables.Operation.Edit)
            {
                foreach (DataRow _dr in loHolidayEntry.getHolidayEntry(lHolidayEntryId).Rows)
                {
                    cboHoliday.Text = _dr["HolidayDescription"].ToString();
                    txtType.Text = _dr["Type"].ToString();
                    dtpDate.Value = DateTime.Parse(_dr["Date"].ToString());
                    txtRemarks.Text = _dr["Remarks"].ToString();
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (cboHoliday.Text == "")
            {
                MessageBoxUI _mb = new MessageBoxUI("You must select a Holiday Type!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                _mb.showDialog();
                return;
            }
            loHolidayEntry.HolidayEntryId = lHolidayEntryId;
            loHolidayEntry.Date = dtpDate.Value;
            loHolidayEntry.HolidayCode = cboHoliday.SelectedValue.ToString();
            loHolidayEntry.Remarks = txtRemarks.Text;
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loHolidayEntry.save(lOperation, ref _Trans))
                {
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Holiday Entry has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();

                    ParentList.GetType().GetMethod("refresh").Invoke(ParentList, null);
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

        private void cboHoliday_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboHoliday.SelectedIndex >= 0)
            {
                foreach (DataRow _dr in loHoliday.getHolidayType(cboHoliday.SelectedValue.ToString()).Rows)
                {
                    txtType.Text = _dr[0].ToString();
                }
            }
            else
            {
                txtType.Text = "";
            }
        }

        private void dtpDate_ValueChanged(object sender, EventArgs e)
        {
            lblDay.Text = dtpDate.Value.DayOfWeek.ToString();
        }
    }
}

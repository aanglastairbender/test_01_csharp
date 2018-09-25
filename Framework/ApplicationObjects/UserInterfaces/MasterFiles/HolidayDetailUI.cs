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
    public partial class HolidayDetailUI : Form
    {
        #region "VARIABLES"
        string[] lRecordData = new string[4];
        LookUpValueUI loLookupValue;
        GlobalVariables.Operation lOperation;
        Holiday loHoliday;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public HolidayDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loLookupValue = new LookUpValueUI();
            loHoliday = new Holiday();
        }
        public HolidayDetailUI(string[] pRecords)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loLookupValue = new LookUpValueUI();
            loHoliday = new Holiday();
            lRecordData = pRecords;
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
            txtHolidayCode.Clear();
            txtHolidayDescription.Clear();
            txtType.Clear();
            txtRemarks.Clear();
            txtHolidayCode.Focus();
        }
        #endregion "END OF METHODS"

        private void HolidayDetailUI_Load(object sender, EventArgs e)
        {
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                txtHolidayCode.Text = lRecordData[0];
                txtHolidayCode.ReadOnly = true;
                txtHolidayCode.BackColor = SystemColors.ControlLight;
                txtHolidayCode.TabStop = false;
                txtHolidayDescription.Text = lRecordData[1];
                txtType.Text = lRecordData[2];
                txtRemarks.Text = lRecordData[3];
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            loHoliday.HolidayCode = txtHolidayCode.Text;
            loHoliday.HolidayDescription = txtHolidayDescription.Text;
            loHoliday.Type = txtType.Text;
            loHoliday.Remarks = txtRemarks.Text;
            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loHoliday.save(lOperation, ref _Trans))
                {
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Holiday has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    lRecordData[0] = txtHolidayCode.Text;
                    lRecordData[1] = txtHolidayDescription.Text;
                    lRecordData[2] = txtType.Text;
                    lRecordData[3] = txtRemarks.Text;
                    object[] _params = { lRecordData };
                    if (lOperation == GlobalVariables.Operation.Edit)
                    {
                        ParentList.GetType().GetMethod("updateData").Invoke(ParentList, _params);
                        this.Close();
                    }
                    else
                    {
                        ParentList.GetType().GetMethod("addData").Invoke(ParentList, _params);
                        clear();
                    }
                }
            }
            catch (Exception ex)
            {
                _Trans.Rollback();
                if (ex.Message.Contains("Duplicate"))
                {
                    MessageBoxUI _mb = new MessageBoxUI("Holiday code already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
        }
    }
}

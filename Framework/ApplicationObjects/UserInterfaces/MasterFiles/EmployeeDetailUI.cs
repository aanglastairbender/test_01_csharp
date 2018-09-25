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
using System.IO;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.MasterFiles
{
    public partial class EmployeeDetailUI : Form
    {
        #region "VARIABLES"
        string[] lRecordData = new string[10];
        LookUpValueUI loLookupValue;
        GlobalVariables.Operation lOperation;
        Employee loEmployee;
        Designation loDesignation;
        Department loDepartment;
        WorkSchedule loWorkSchedule;
        WorkScheduleDetail loWorkScheduleDetail;
        string lEmployeeNo;
        string lEmployeePicture = "";
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public EmployeeDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loLookupValue = new LookUpValueUI();
            loEmployee = new Employee();
            loDesignation = new Designation();
            loDepartment = new Department();
            loWorkSchedule = new WorkSchedule();
            loWorkScheduleDetail = new WorkScheduleDetail();
        }

        public EmployeeDetailUI(string pEmployeeNo)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loLookupValue = new LookUpValueUI();
            loEmployee = new Employee();
            loDesignation = new Designation();
            loDepartment = new Department();
            loWorkSchedule = new WorkSchedule();
            loWorkScheduleDetail = new WorkScheduleDetail();
            lEmployeeNo = pEmployeeNo;
        }
        #endregion "END OF CONSTRUCTORS"

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        private void clear()
        {
            txtEmployeeNo.Clear();
            txtLastName.Clear();
            txtFirstName.Clear();
            txtMiddleName.Clear();
            txtBiometricsId.Clear();
            cboEmploymentType.SelectedIndex = 0;
            cboDesignation.SelectedIndex = -1;
            cboDepartment.SelectedIndex = -1;
            cboWorkSchedule.SelectedIndex = -1;
            txtPagibigPS.Text = "0.00";
            txtPagibigGS.Text = "0.00";
            txtEmployeeNo.Focus();
        }

        private void clearAllSchedules()
        {
            lblSundayTI.Text = "";
            lblSundayBO.Text = "";
            lblSundayBI.Text = "";
            lblSundayTO.Text = "";
            lblMondayTI.Text = "";
            lblMondayBO.Text = "";
            lblMondayBI.Text = "";
            lblMondayTO.Text = "";
            lblTuesdayTI.Text = "";
            lblTuesdayBO.Text = "";
            lblTuesdayBI.Text = "";
            lblTuesdayTO.Text = "";
            lblWednesdayTI.Text = "";
            lblWednesdayBO.Text = "";
            lblWednesdayBI.Text = "";
            lblWednesdayTO.Text = "";
            lblThursdayTI.Text = "";
            lblThursdayBO.Text = "";
            lblThursdayBI.Text = "";
            lblThursdayTO.Text = "";
            lblFridayTI.Text = "";
            lblFridayBO.Text = "";
            lblFridayBI.Text = "";
            lblFridayTO.Text = "";
            lblSaturdayTI.Text = "";
            lblSaturdayBO.Text = "";
            lblSaturdayBI.Text = "";
            lblSaturdayTO.Text = "";
        }

        private void EmployeeDetailUI_Load(object sender, EventArgs e)
        {
            System.Windows.Forms.ToolTip ToolTip1 = new System.Windows.Forms.ToolTip();
            ToolTip1.SetToolTip(this.pctEmployeePicture, "Double click to add employee`s picture.");

            cboDesignation.DataSource = loDesignation.getAllData("ViewAll", "");
            cboDesignation.DisplayMember = "Designation Description";
            cboDesignation.ValueMember = "Code";
            cboDesignation.SelectedIndex = -1;

            cboDepartment.DataSource = loDepartment.getAllData("ViewAll", "");
            cboDepartment.DisplayMember = "Department Description";
            cboDepartment.ValueMember = "Code";
            cboDepartment.SelectedIndex = -1;

            cboWorkSchedule.DataSource = loWorkSchedule.getAllData("ViewAll", "");
            cboWorkSchedule.DisplayMember = "Work Schedule Description";
            cboWorkSchedule.ValueMember = "Code";
            cboWorkSchedule.SelectedIndex = -1;
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                foreach (DataRow _dr in loEmployee.getEmployee(lEmployeeNo).Rows)
                {
                    txtEmployeeNo.ReadOnly = true;
                    txtEmployeeNo.BackColor = SystemColors.Info;
                    txtEmployeeNo.TabStop = false;
                    txtEmployeeNo.Text = _dr["EmployeeNo"].ToString();
                    txtLastName.Text = _dr["LastName"].ToString();
                    txtFirstName.Text = _dr["FirstName"].ToString();
                    txtMiddleName.Text = _dr["MiddleName"].ToString();
                    chkActive.Checked = _dr["Active"].ToString() == "Y" ? true : false;
                    txtBiometricsId.Text = _dr["BiometricsId"].ToString();
                    cboEmploymentType.Text = _dr["EmploymentType"].ToString();
                    cboDesignation.SelectedValue = _dr["DesignationCode"].ToString();
                    cboDepartment.SelectedValue = _dr["DepartmentCode"].ToString();
                    cboWorkSchedule.SelectedValue = _dr["WorkScheduleCode"].ToString();
                    dtpBirthday.Value = DateTime.Parse(_dr["Birthday"].ToString());
                    txtPagibigPS.Text = string.Format("{0:n}", decimal.Parse(_dr["PagibigPS"].ToString()));
                    txtPagibigGS.Text = string.Format("{0:n}", decimal.Parse(_dr["PagibigGS"].ToString()));
                    txtRemarks.Text = _dr["Remarks"].ToString();
                    lEmployeePicture = _dr["Picture"].ToString();
                    try
                    {
                        byte[] hextobyte = GlobalFunctions.HexToBytes(lEmployeePicture);
                        pctEmployeePicture.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(hextobyte);
                        pctEmployeePicture.BackgroundImageLayout = ImageLayout.Stretch;
                    }
                    catch { }
                }
            }
            else
            { 
                chkActive.Checked = true;
                cboEmploymentType.SelectedIndex = 0;
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {

            if (txtEmployeeNo.Text == "")
            {
                MessageBoxUI mb = new MessageBoxUI("Employee No. must have a value!",GlobalVariables.Icons.Warning,GlobalVariables.Buttons.OK);
                mb.ShowDialog();
                return;
            }

            if (txtLastName.Text == "")
            {
                MessageBoxUI mb = new MessageBoxUI("Last Name must have a value!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
                return;
            }

            if (txtFirstName.Text == "")
            {
                MessageBoxUI mb = new MessageBoxUI("First Name must have a value!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
                return;
            }

            loEmployee.EmployeeNo = txtEmployeeNo.Text;
            loEmployee.LastName = txtLastName.Text;
            loEmployee.FirstName = txtFirstName.Text;
            loEmployee.MiddleName = txtMiddleName.Text;
            loEmployee.Active = chkActive.Checked == true ? "Y" : "N";
            loEmployee.BiometricsId = txtBiometricsId.Text;
            loEmployee.EmploymentType = cboEmploymentType.Text;
            
            try
            {
                loEmployee.WorkScheduleCode = cboWorkSchedule.SelectedValue.ToString();
            }
            catch
            {
                loEmployee.WorkScheduleCode = "";
            }

            loEmployee.Birthday = dtpBirthday.Value;
            loEmployee.Remarks = txtRemarks.Text;

            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                if (loEmployee.save(lOperation, ref _Trans))
                {
                    _Trans.Commit();
                    MessageBoxUI _mb = new MessageBoxUI("Employee has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();

                    lRecordData[0] = txtEmployeeNo.Text;
                    lRecordData[1] = txtLastName.Text;
                    lRecordData[2] = txtFirstName.Text;
                    lRecordData[3] = txtMiddleName.Text;
                    lRecordData[4] = chkActive.Checked == true ? "Y" : "N";
                    lRecordData[5] = txtBiometricsId.Text;
                    lRecordData[6] = cboEmploymentType.Text;
                    lRecordData[7] = cboWorkSchedule.Text;
                    lRecordData[8] = string.Format("{0:MM-dd-yyyy}",dtpBirthday.Value);
                    lRecordData[9] = txtRemarks.Text;
                    object[] _params = { lRecordData };
                    if (lOperation == GlobalVariables.Operation.Edit)
                    {
                        ParentList.GetType().GetMethod("updateData").Invoke(ParentList, _params);
                        this.Close();
                    }
                    else
                    {
                        ParentList.GetType().GetMethod("addData").Invoke(ParentList, _params);
                        this.clear();
                    }
                }
            }
            catch (Exception ex)
            {
                _Trans.Rollback();
                if (ex.Message.Contains("Duplicate"))
                {
                    MessageBoxUI _mb = new MessageBoxUI("Employee No already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
        }

        private void cboWorkSchedule_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                clearAllSchedules();
                foreach (DataRow _dr in loWorkScheduleDetail.getWorkScheduleDetails(cboWorkSchedule.SelectedValue.ToString()).Rows)
                {
                    if (_dr[0].ToString() == "Sunday")
                    {
                        lblSundayTI.Text = _dr[1].ToString();
                        if (_dr[2].ToString() != "")
                        {
                            lblSundayBO.Text = _dr[2].ToString();
                            lblSundayBI.Text = _dr[3].ToString();
                        }
                        lblSundayTO.Text = _dr[4].ToString();
                    }
                    else if (_dr[0].ToString() == "Monday")
                    {
                        lblMondayTI.Text = _dr[1].ToString();
                        if (_dr[2].ToString() != "")
                        {
                            lblMondayBO.Text = _dr[2].ToString();
                            lblMondayBI.Text = _dr[3].ToString();
                        }
                        lblMondayTO.Text = _dr[4].ToString();
                    }
                    else if (_dr[0].ToString() == "Tuesday")
                    {
                        lblTuesdayTI.Text = _dr[1].ToString();
                        if (_dr[2].ToString() != "")
                        {
                            lblTuesdayBO.Text = _dr[2].ToString();
                            lblTuesdayBI.Text = _dr[3].ToString();
                        }
                        lblTuesdayTO.Text = _dr[4].ToString();
                    }
                    else if (_dr[0].ToString() == "Wednesday")
                    {
                        lblWednesdayTI.Text = _dr[1].ToString();
                        if (_dr[2].ToString() != "")
                        {
                            lblWednesdayBO.Text = _dr[2].ToString();
                            lblWednesdayBI.Text = _dr[3].ToString();
                        }
                        lblWednesdayTO.Text = _dr[4].ToString();
                    }
                    else if (_dr[0].ToString() == "Thursday")
                    {
                        lblThursdayTI.Text = _dr[1].ToString();
                        if (_dr[2].ToString() != "")
                        {
                            lblThursdayBO.Text = _dr[2].ToString();
                            lblThursdayBI.Text = _dr[3].ToString();
                        }
                        lblThursdayTO.Text = _dr[4].ToString();
                    }
                    else if (_dr[0].ToString() == "Friday")
                    {
                        lblFridayTI.Text = _dr[1].ToString();
                        if (_dr[2].ToString() != "")
                        {
                            lblFridayBO.Text = _dr[2].ToString();
                            lblFridayBI.Text = _dr[3].ToString();
                        }
                        lblFridayTO.Text = _dr[4].ToString();
                    }
                    else if (_dr[0].ToString() == "Saturday")
                    {
                        lblSaturdayTI.Text = _dr[1].ToString();
                        if (_dr[2].ToString() != "")
                        {
                            lblSaturdayBO.Text = _dr[2].ToString();
                            lblSaturdayBI.Text = _dr[3].ToString();
                        }
                        lblSaturdayTO.Text = _dr[4].ToString();
                    }
                }
            }
            catch { }
        }

        private void pctEmployeePicture_DoubleClick(object sender, EventArgs e)
        {
            try
            {
                OpenFileDialog openFD = new OpenFileDialog();
                openFD.InitialDirectory = ".../Main/ScreenSaverImages/";
                openFD.Title = "Insert an Image";
                openFD.Filter = "JPEG Images|*.jpg|GIF Images|*.gif|PNG Images|*.png";
                if (openFD.ShowDialog() == DialogResult.OK)
                {
                    string _ChosenFile = openFD.FileName;
                    string _FileName = openFD.SafeFileName;

                    byte[] m_Bitmap = null;

                    FileStream fs = new FileStream(_ChosenFile, FileMode.Open);
                    BinaryReader br = new BinaryReader(fs);
                    int length = (int)br.BaseStream.Length;
                    m_Bitmap = new byte[length];
                    m_Bitmap = br.ReadBytes(length);
                    br.Close();
                    fs.Close();

                    lEmployeePicture = GlobalFunctions.ToHex(m_Bitmap);

                    pctEmployeePicture.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(m_Bitmap);
                    pctEmployeePicture.BackgroundImageLayout = ImageLayout.Stretch;
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
                return;
            }
        }
    }
}

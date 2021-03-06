﻿using System;
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

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.MasterFiles
{
    public partial class FormUI : Form
    {
        #region "VARIABLES"
        string[] lRecords;
        string[] lColumnName;
        Hashtable lObjectArgHash = new Hashtable();
        object[] lObjectArg;
        object lObject;
        Type lType;
        bool lFromAdd = true;
        string lButtonClassName;
        string lClassName;
        LookUpValueUI loLookupValue;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public FormUI()
        {
            InitializeComponent();
        }

        public FormUI(string[] pColumnName, object pObject, Type pType)
        {
            InitializeComponent();
            lColumnName = pColumnName;
            lObject = pObject;
            lType = pType;
            lFromAdd = true;
            lClassName = lType.Name;
            this.Text = pType.Name;
            this.Location = new Point(GlobalVariables.xLocation+150, GlobalVariables.yLocation+100);
            loLookupValue = new LookUpValueUI();
        }

        public FormUI(string[] pRecords, string[] pColumnName, object pObject, Type pType)
        {
            InitializeComponent();
            lRecords = pRecords;
            lColumnName = pColumnName;
            lObject = pObject;
            lType = pType;
            lFromAdd = false;
            lClassName = lType.Name;
            this.Text = pType.Name;
            this.Location = new Point(GlobalVariables.xLocation+150, GlobalVariables.yLocation+100);
            loLookupValue = new LookUpValueUI();
        }
        #endregion "END OF VARIABLES"

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "EVENTS"
        private void FormUI_Load(object sender, EventArgs e)
        {
            pnlBody.Controls.Clear();
            int x = 10;
            int y = 19;
            int width = 170;
            int height = 16;

            int xtxt = 180;
            int ytxt = 16;
            int widthtxt = 190;
            int heighttxt = 22;
            int widhttxtbtn = 160;

            int ybtn = 16;
            int widthbtn = 30;
            int heightbtn = 25;

            //pnlBody.Width = 370;
            pnlBody.Height = 46;
            this.Width = 423;
            this.Height = 165;
            bool withbtn = false;

            var er = from colname in lColumnName
                     select colname;

            for (int i = 0; i < er.Count(); i++)
            {
                #region "For Combo Box like Account Side"
                if (lColumnName[i].Equals(" Account Side") || lColumnName[i].Equals(" Classification") || 
                    lColumnName[i].Equals(" Journal Type"))
                {
                    this.Height += height * 2;
                    Label lblComboBoxName = new Label();
                    lblComboBoxName.Text = lColumnName[i];
                    lblComboBoxName.Width = width;
                    lblComboBoxName.Height = height;
                    lblComboBoxName.Location = new Point(x, y);

                    ComboBox cboComboBox = new ComboBox();
                    object item1 = "";
                    object item2 = "";
                    if (lColumnName[i].Equals(" Account Side"))
                    {
                        cboComboBox.Items.Add("Debit");
                        cboComboBox.Items.Add("Credit");
                    }
                    if (lColumnName[i].Equals(" Classification"))
                    {
                        cboComboBox.Items.Add("Balance Sheet");
                        cboComboBox.Items.Add("Income Statement");
                    }
                    if (lColumnName[i].Equals(" Journal Type"))
                    {
                        cboComboBox.Items.Add("General");
                        cboComboBox.Items.Add("Sales");
                        cboComboBox.Items.Add("Purchase");
                        cboComboBox.Items.Add("Cash Disbursement");
                        cboComboBox.Items.Add("Cash Receipts");
                        cboComboBox.Items.Add("Transitory");
                        cboComboBox.Items.Add("Others");
                    }
                    
                    cboComboBox.SelectedIndex = 0;
                    if (!lFromAdd)
                    {
                        cboComboBox.SelectedItem = lRecords[i];
                    }
                    cboComboBox.DropDownStyle = ComboBoxStyle.DropDownList;
                    cboComboBox.Text = lColumnName[i];
                    cboComboBox.Name = lColumnName[i];
                    cboComboBox.Width = widthtxt;
                    cboComboBox.Height = heighttxt;
                    cboComboBox.TabIndex = i;
                    cboComboBox.Location = new Point(xtxt, ytxt);

                    pnlBody.Height += height * 2;
                    pnlBody.Controls.Add(cboComboBox);
                    pnlBody.Controls.Add(lblComboBoxName);
                    y += height * 2;
                    ytxt += height * 2;
                    ybtn += height * 2;
                    continue;
                }
                #endregion

                #region "For CheckBox like Breakfast"
                if (lColumnName[i].Equals(" Subsidiary") || lColumnName[i].Contains("Inclusive") || 
                    lColumnName[i].Contains(" Active"))
                {
                    this.Height += height * 2;
                    CheckBox chkCheckBox = new CheckBox();
                    if (!lFromAdd)
                    {
                        if (lRecords[i] == "Y")
                        {
                            chkCheckBox.Checked = true;
                        }
                        else
                        {
                            chkCheckBox.Checked = false;
                        }
                    }
                    chkCheckBox.Text = lColumnName[i];
                    chkCheckBox.Name = lColumnName[i];
                    chkCheckBox.Width = widthtxt+100;
                    chkCheckBox.Height = heighttxt;
                    chkCheckBox.TabIndex = i;
                    chkCheckBox.Location = new Point(xtxt, ytxt);

                    pnlBody.Height += height * 2;
                    pnlBody.Controls.Add(chkCheckBox);
                    y += height * 2;
                    ytxt += height * 2;
                    ybtn += height * 2;
                    continue;
                }
                #endregion

                #region "For Time like Departure and Arrival Time"
                if (lColumnName[i].Contains("Time") || lColumnName[i].Contains("Date"))
                {
                    if (lColumnName[i].ToString() == " Date Created")
                    {
                        continue;
                    }
                    this.Height += height * 2;
                    Label lblDateTimeName = new Label();
                    lblDateTimeName.Text = lColumnName[i];
                    lblDateTimeName.Width = width;
                    lblDateTimeName.Height = height;
                    lblDateTimeName.Location = new Point(x, y);

                    DateTimePicker dtpDateTimePicker = new DateTimePicker();
                    if (!lFromAdd)
                    {
                        dtpDateTimePicker.Value = DateTime.Parse(lRecords[i]);
                    }
                    dtpDateTimePicker.Name = lColumnName[i];
                    dtpDateTimePicker.Width = widthtxt;
                    dtpDateTimePicker.Height = heighttxt;
                    if (lColumnName[i].Contains("Time"))
                    {
                        dtpDateTimePicker.Format = DateTimePickerFormat.Time;
                    }
                    else
                    {
                        dtpDateTimePicker.Format = DateTimePickerFormat.Short;
                    }
                    dtpDateTimePicker.ShowUpDown = true;
                    dtpDateTimePicker.TabIndex = i;
                    dtpDateTimePicker.Location = new Point(xtxt, ytxt);

                    pnlBody.Height += height * 2;
                    pnlBody.Controls.Add(dtpDateTimePicker);
                    pnlBody.Controls.Add(lblDateTimeName);
                    y += height * 2;
                    ytxt += height * 2;
                    ybtn += height * 2;
                    continue;
                }
                #endregion

                #region "For Color"
                if (lColumnName[i].Contains("Color"))
                {
                    this.Height += height * 2;
                    Label lblColorName = new Label();
                    lblColorName.Text = lColumnName[i];
                    lblColorName.Width = width;
                    lblColorName.Height = height;
                    lblColorName.Location = new Point(x, y);

                    Label lblColor = new Label();
                    if (!lFromAdd)
                    {
                        lblColor.Text = lRecords[i];
                        lblColor.BackColor = Color.FromArgb(int.Parse(lRecords[i].ToString()));
                        lblColor.ForeColor = Color.FromArgb(int.Parse(lRecords[i].ToString()));
                    }
                    lblColor.Name = lColumnName[i];
                    lblColor.Width = widhttxtbtn;
                    lblColor.Height = heighttxt;
                    lblColor.TabIndex = i;
                    lblColor.TabStop = false;
                    lblColor.BorderStyle = BorderStyle.FixedSingle;
                    lblColor.AutoSize = false;
                    lblColor.Location = new Point(xtxt, ytxt);
                    Button btnColorButton = new Button();
                    btnColorButton.Name = lColumnName[i];
                    btnColorButton.Width = widthbtn;
                    btnColorButton.Height = heightbtn;
                    btnColorButton.TabIndex = i;
                    btnColorButton.Image = Image.FromFile(".../Main/Images/Common/lookup.PNG");
                    btnColorButton.Location = new Point(xtxt + widhttxtbtn + 2, ytxt);
                    btnColorButton.Click += new EventHandler(btnColorButton_Click);

                    pnlBody.Controls.Add(btnColorButton);

                    pnlBody.Height += height * 2;
                    pnlBody.Controls.Add(lblColorName);
                    pnlBody.Controls.Add(lblColor);

                    y += height * 2;
                    ytxt += height * 2;
                    ybtn += height * 2;
                    continue;
                }
                #endregion

                #region "For Texboxes"
                this.Height += height * 2;
                Label lblName = new Label();
                lblName.Text = lColumnName[i];
                lblName.Width = width;
                lblName.Height = heighttxt;
                lblName.Location = new Point(x, y);

                TextBox txtTextBox = new TextBox();
                if (i == 0)
                {
                    if (!lFromAdd)
                    {
                        txtTextBox.Text = lRecords[i];
                        txtTextBox.TabStop = false;
                        txtTextBox.ReadOnly = true;
                        txtTextBox.BackColor = Color.FromName("Info");
                    }
                    else
                    {
                        if (lColumnName[i].Contains("Id") && lColumnName[i] != " Employee Id")
                        {
                            txtTextBox.Text = "AUTO";
                            txtTextBox.TextAlign = HorizontalAlignment.Center;
                            txtTextBox.TabStop = false;
                            txtTextBox.ReadOnly = true;
                            txtTextBox.BackColor = Color.FromName("Info");
                        }
                    }
                    txtTextBox.Name = lColumnName[i];
                    txtTextBox.Width = widthtxt;
                    txtTextBox.Height = heighttxt;
                    txtTextBox.Location = new Point(xtxt, ytxt);
                }
                else
                {
                    if ((lColumnName[i].ToString().Contains("Code") || lColumnName[i].ToString().Contains("Id")) 
                        && (lColumnName[i] != (" Required Id") && (lColumnName[i] != (" Name Code"))))
                    {
                        if (!lFromAdd)
                        {
                            txtTextBox.Text = lRecords[i];
                        }
                        txtTextBox.Name = lColumnName[i];
                        txtTextBox.Width = widhttxtbtn;
                        txtTextBox.Height = heighttxt;
                        txtTextBox.TabIndex = i;
                        txtTextBox.TabStop = false;
                        txtTextBox.ReadOnly = true;
                        txtTextBox.Location = new Point(xtxt, ytxt);
                        Button btnButton = new Button();
                        btnButton.Name = lColumnName[i];
                        btnButton.Width = widthbtn;
                        btnButton.Height = heightbtn;
                        btnButton.TabIndex = i;
                        btnButton.Image = Image.FromFile(".../Main/Images/Common/lookup.PNG");
                        btnButton.Location = new Point(xtxt + widhttxtbtn + 2, ytxt);
                        btnButton.Click += new EventHandler(btnButton_Click);
                        pnlBody.Controls.Add(btnButton);
                        withbtn = true;
                    }
                    else
                    {
                        if (withbtn)
                        {
                            if (!lFromAdd)
                            {
                                txtTextBox.Text = lRecords[i];
                            }
                            txtTextBox.Name = lColumnName[i];
                            txtTextBox.Width = widthtxt;
                            txtTextBox.Height = heighttxt;
                            txtTextBox.TabStop = false;
                            txtTextBox.ReadOnly = true;
                            txtTextBox.BackColor = Color.FromName("Info");
                            txtTextBox.Location = new Point(xtxt, ytxt);
                            withbtn = false;
                        }
                        else
                        {
                            if (lColumnName[i].ToString().Contains("By"))
                            {
                                continue;
                            }

                            if (!lFromAdd)
                            {
                                txtTextBox.Text = lRecords[i];
                            }
                            if (lColumnName[i].Contains("Amount") || lColumnName[i].Contains("Percentage") ||
                                lColumnName[i].Equals("SellingPrice") ||
                                lColumnName[i].Contains("V A T") || lColumnName[i].Contains("Charge") ||
                                lColumnName[i].Contains("Rate"))
                            {
                                txtTextBox.TextAlign = HorizontalAlignment.Right;
                                if (lFromAdd)
                                {
                                    txtTextBox.Text = "0.00";
                                }
                            }
                            if (lColumnName[i].Contains(" No Of") || lColumnName[i].Contains(" Next Entry No") || 
                                lColumnName[i].Equals(" Days Applied"))
                            {
                                txtTextBox.TextAlign = HorizontalAlignment.Right;
                                if (lFromAdd)
                                {
                                    txtTextBox.Text = "0";
                                }
                            }
                            if (lColumnName[i].Contains(" Next Entry No"))
                            {
                                txtTextBox.TextAlign = HorizontalAlignment.Right;
                                txtTextBox.TabStop = false;
                                txtTextBox.ReadOnly = true;
                                txtTextBox.BackColor = Color.FromName("Info");
                                if (lFromAdd)
                                {
                                    txtTextBox.Text = "0";
                                }
                            }
                            txtTextBox.Name = lColumnName[i];
                            if (lColumnName[i].Equals(" No Of Days") || lColumnName[i].Equals(" Percentage")||
                                lColumnName[i].Equals(" Conversion Rate"))
                            {
                                txtTextBox.Width = widthtxt/2;
                            }
                            else
                            {
                                txtTextBox.Width = widthtxt;
                            }
                            txtTextBox.Height = heighttxt;
                            txtTextBox.TabIndex = i;
                            txtTextBox.Location = new Point(xtxt, ytxt);
                        }
                    }
                }
                pnlBody.Height += height * 2;
                pnlBody.Controls.Add(lblName);
                pnlBody.Controls.Add(txtTextBox);

                y += height * 2;
                ytxt += height * 2;
                ybtn += height * 2;
                #endregion
            }
            pnlBody.Height -= 20;
        }

        private void btnButton_Click(object sender, EventArgs e)
        {
            lButtonClassName = "";
            bool _fromlookup = false;
            int _desctab = 2;
            int _tag = -1;
            if (((Control)sender).Name.Contains("Origin") || ((Control)sender).Name.Contains("Destination"))
            {
                lButtonClassName = "Port";
            }
            else if (((Control)sender).Name.Contains("Username") || ((Control)sender).Name.Contains("Supervisor")||
                ((Control)sender).Name.Contains("By"))
            {
                lButtonClassName = "User";
            }
            else
            {
                char[] splitter = { ' ' };
                string[] name = ((Control)sender).Name.Split(splitter);
                for (int i = 0; i < name.Length - 1; i++)
                {
                    lButtonClassName += name[i];
                }
            }
            GlobalClassHandler ch = new GlobalClassHandler();
            Type _ObjectType = ch.createObjectFromClass(lButtonClassName);
            object ClassInstance = Activator.CreateInstance(_ObjectType);
            loLookupValue.lObject = ClassInstance;
            loLookupValue.lType = _ObjectType;
            loLookupValue.lTableName = lButtonClassName;
            loLookupValue.ShowDialog();
            if (loLookupValue.lCode != null && loLookupValue.lFromSelection)
            {
                foreach (Control ctrl in this.pnlBody.Controls)
                {
                    if (ctrl.Name.Replace(" ", "") == loLookupValue.lCodeName && ctrl is TextBox)
                    {
                        ctrl.Text = loLookupValue.lCode;
                        _tag = ctrl.TabIndex;
                        _fromlookup = true;
                        _desctab++;
                    }
                    else
                    {
                        if (ctrl.Name == ((Control)sender).Name && ctrl is TextBox)
                        {
                            ctrl.Text = loLookupValue.lCode;
                            _tag = ctrl.TabIndex;
                            _fromlookup = true;
                        }
                    }
                    if (_fromlookup)
                    {
                        if (ctrl.Name.Replace(" ", "") == loLookupValue.lDescName && ctrl is TextBox)
                        {
                            ctrl.Text = loLookupValue.lDesc;
                        }
                    }
                }
                _tag = -1;
            }
        }

        private void btnColorButton_Click(object sender, EventArgs e)
        {
            ColorDialog clrColorDialog = new ColorDialog();
            string txtBoxName = ((Control)sender).Name;
            if (clrColorDialog.ShowDialog() == DialogResult.OK)
            {
                foreach (Control ctrl in this.pnlBody.Controls)
                {
                    if (ctrl.Name == txtBoxName && ctrl is Label)
                    {
                        ctrl.Text = clrColorDialog.Color.ToArgb().ToString();
                        ctrl.BackColor = clrColorDialog.Color;
                        ctrl.ForeColor = clrColorDialog.Color;
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
            try
            {
                char[] splitter = { '_' };
                foreach (Control ctrl in this.pnlBody.Controls)
                {
                    if (ctrl is TextBox && (ctrl.Name.Contains("Code") || ctrl.Name.Contains("Id")) && ((ctrl.Name != " Required Id") || ctrl.Name != " Name Code" || ctrl.Name != " Employee Id") && ctrl.Text == "")
                    {
                        MessageBoxUI mb = new MessageBoxUI(ctrl.Name + " must have a value!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                        mb.ShowDialog();
                        ctrl.Focus();
                        return;
                    }
                    else if (ctrl is TextBox)
                    {
                        string namestr = ctrl.Name.ToString().Replace(" ", "");
                        string textstr = ctrl.Text.ToString();
                        lObjectArgHash.Add(namestr, textstr);
                    }
                    else if (ctrl is DateTimePicker)
                    {
                        string namestr = ctrl.Name.ToString().Replace(" ", "");
                        DateTimePicker dtp = ctrl as DateTimePicker;
                        lObjectArgHash.Add(namestr, dtp.Value);
                    }
                    else if (ctrl is CheckBox)
                    {
                        string namestr = ctrl.Name.ToString().Replace(" ", "");
                        CheckBox chk = ctrl as CheckBox;
                        if (chk.Checked)
                        {
                            lObjectArgHash.Add(namestr, "Y");
                        }
                        else
                        {
                            lObjectArgHash.Add(namestr, "N");
                        }
                    }
                    else if (ctrl is ComboBox)
                    {
                        string namestr = ctrl.Name.ToString().Replace(" ", "");
                        ComboBox cbo = ctrl as ComboBox;
                        lObjectArgHash.Add(namestr, cbo.SelectedItem.ToString());
                    }
                }
                if (!lFromAdd)
                {
                    lObjectArgHash["Operation"] = "Edit";
                }
                else
                {
                    lObjectArgHash["Operation"] = "Add";
                }
                lObjectArg = new object[1];
                lObjectArg[0] = lObjectArgHash;
            }
            catch (Exception ex)
            {
                this.Show();
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
                return;
            }
            MySqlTransaction Trans = GlobalVariables.Connection.BeginTransaction();
            object[] param = { lObjectArgHash,Trans };
            
            try
            {
                if ((bool)lObject.GetType().GetMethod("save").Invoke(lObject, param))
                {
                    Trans.Commit();
                    this.Hide();
                    MessageBoxUI _mb = new MessageBoxUI(lClassName + " has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    try
                    {
                        object[] _params = { "ViewAll", "" };
                        ParentList.GetType().GetMethod("refresh").Invoke(ParentList, _params);
                    }
                    catch { }
                    this.Close();
                }
                else
                {
                    this.Close();
                }
            }
            catch(Exception ex)
            {
                Trans.Rollback();
                this.Show();
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
                return;
            }
        }
        #endregion "END OF EVENTS"
    }
}

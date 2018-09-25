using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Drawing.Imaging;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.MasterFiles;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Systems
{
    public partial class UserDetailUI : Form
    {
        #region "VARIABLES"
        string[] lRecordData = new string[3];
        LookUpValueUI loLookupValue;
        GlobalVariables.Operation lOperation;
        User loUser;
        Employee loEmployee;
        UserGroup loUserGroup;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public UserDetailUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
            loLookupValue = new LookUpValueUI();
            loUser = new User();
            loEmployee = new Employee();
            loUserGroup = new UserGroup();
        }
        public UserDetailUI(string[] pRecords)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            loLookupValue = new LookUpValueUI();
            loUser = new User();
            loEmployee = new Employee();
            loUserGroup = new UserGroup();
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

        private void clear()
        {
            txtUsername.Clear();
            txtFullname.Clear();
            txtUserGroupId.Clear();
            txtUserGroupDesc.Clear();
            txtPassword.Clear();
            txtConfirmPassword.Clear();
            txtUsername.Focus();
        }

        #region "EVENTS"
        private void UserUI_Load(object sender, EventArgs e)
        {
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                foreach (DataRow _dr in loUser.getUser(lRecordData[0]).Rows)
                {
                    txtUsername.Text = _dr[0].ToString();
                    txtUsername.ReadOnly = true;
                    txtUsername.BackColor = SystemColors.Info;
                    txtUsername.TabStop = false;
                    txtFullname.Text = _dr[1].ToString();
                    txtUserGroupId.Text = _dr[2].ToString();
                    txtUserGroupDesc.Text = _dr[3].ToString();
                }
            }
        }

        private void btnLookupUserGroup_Click(object sender, EventArgs e)
        {
            loLookupValue.lObject = loUserGroup;
            loLookupValue.lType = typeof(UserGroup);
            loLookupValue.lTableName = "UserGroup";
            loLookupValue.ShowDialog();
            if (loLookupValue.lCode != null)
            {
                txtUserGroupId.Text = loLookupValue.lCode;
                txtUserGroupDesc.Text = loLookupValue.lDesc;
            }
        }
        #endregion "END OF EVENTS"

        private void btnSave_Click(object sender, EventArgs e)
        {
            User _User = new User();
            if (txtUsername.Text != "")
            {
                _User.Username = GlobalFunctions.replaceChar(txtUsername.Text);
                pctKey.Visible = false;
            }
            else
            {
                MessageBoxUI ms = new MessageBoxUI("Username must have a value!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                ms.showDialog();
                pctKey.Visible = true;
                txtUsername.Focus();
                return;
            }
            //check if the password is the same.
            if (txtPassword.Text == txtConfirmPassword.Text)
            {
                _User.Password = GlobalFunctions.replaceChar(txtPassword.Text);
                pctError5.Visible = false;
            }
            else
            {
                MessageBoxUI ms = new MessageBoxUI("Password must be the same!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                ms.showDialog();
                pctError5.Visible = true;
                txtConfirmPassword.Focus();
                return;
            }
            _User.Fullname = GlobalFunctions.replaceChar(txtFullname.Text);

            if (txtUserGroupId.Text == "")
            {
                MessageBoxUI ms = new MessageBoxUI("User group name must have a value!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                ms.showDialog();
                btnLookupUserGroup.Focus();
                pctError4.Visible = true;
                return;
            }
            else
            {
                _User.UserGroupId = txtUserGroupId.Text;
                pctError4.Visible = false;
            }
            try
            {
                if (_User.saveUser(lOperation))
                {
                    MessageBoxUI _mb = new MessageBoxUI("Employee has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    lRecordData[0] = txtUsername.Text;
                    lRecordData[1] = txtFullname.Text;
                    lRecordData[2] = txtUserGroupDesc.Text;
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
                if (ex.Message.Contains("Duplicate"))
                {
                    MessageBoxUI _mb = new MessageBoxUI("Username already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}

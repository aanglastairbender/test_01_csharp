using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Systems
{
    public partial class UserGroupUI : Form
    {
        #region "VARIABLES"
        public GlobalVariables.Operation lOperation;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public UserGroupUI()
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Add;
        }
        public UserGroupUI(string pUserGroupId, string pUserGroupDesc)
        {
            InitializeComponent();
            lOperation = GlobalVariables.Operation.Edit;
            txtUserGroupId.Text = pUserGroupId;
            txtUserGroupDesc.Text = pUserGroupDesc;
        }
        #endregion "END OF CONSTRUCTORS"

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "EVENTS"
        private void UserGroupUI_Load(object sender, EventArgs e)
        {

        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        #endregion "END OF EVENTS"

        private void btnSave_Click(object sender, EventArgs e)
        {
            UserGroup _UserGroup = new UserGroup();
            if (txtUserGroupDesc.Text != "")
            {
                _UserGroup.UserGroupDesc = GlobalFunctions.replaceChar(txtUserGroupDesc.Text);
                pctError1.Visible = false;
            }
            else
            {
                MessageBoxUI ms = new MessageBoxUI("UserGroup description must have a value!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                ms.showDialog();
                pctError1.Visible = true;
                txtUserGroupDesc.Focus();
                return;
            }

            _UserGroup.UserGroupId = GlobalFunctions.replaceChar(txtUserGroupId.Text);

            try
            {
                if (_UserGroup.saveUserGroup(lOperation))
                {
                    MessageBoxUI _mb = new MessageBoxUI("UserGroup has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    try
                    {
                        ParentList.GetType().GetMethod("refresh").Invoke(ParentList, null);
                    }
                    catch { }
                    this.Close();
                }
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("Duplicate"))
                {
                    MessageBoxUI _mb = new MessageBoxUI("UserGroup code already exist!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb.showDialog();
                    return;
                }
            }
        }
    }
}

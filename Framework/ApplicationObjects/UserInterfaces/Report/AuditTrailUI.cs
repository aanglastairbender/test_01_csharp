using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Reflection;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report.ReportRpt;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report
{
    public partial class AuditTrailUI : Form
    {
        #region "VARIABLES"
        AuditTrail loAuditTrail;
        DataTable ldtAuditTrail;
        SearchesUI loSearches;
        Common loCommon;
        ReportViewerUI loReportViewer;
        AuditTrailRpt loAuditTrailRpt;
        #endregion

        #region "CONTRUCTORS"
        public AuditTrailUI()
        {
            InitializeComponent();
            loAuditTrail = new AuditTrail();
            ldtAuditTrail = new DataTable();
            loCommon = new Common();
            loReportViewer = new ReportViewerUI();
            loAuditTrailRpt = new AuditTrailRpt();
        }
        #endregion 

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"

        #region "METHODS"
        public void refresh()
        {
            try
            {
                ldtAuditTrail = loAuditTrail.getAuditTrailByDate(dtpFrom.Value, dtpTo.Value);
                GlobalFunctions.refreshGrid(ref dgvAuditTrail, ldtAuditTrail);
            }
            catch { }
        }

        public void remove()
        {
            try
            {
                DialogResult _dr = new DialogResult();
                MessageBoxUI _mb = new MessageBoxUI("Are sure you want to continue removing this record?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                _mb.ShowDialog();
                _dr = _mb.Operation;
                if (_dr == DialogResult.Yes)
                {
                    loAuditTrail.removeAuditTrail(dtpFrom.Value, dtpTo.Value);
                    MessageBoxUI _mb1 = new MessageBoxUI("Audit Trail from " + dtpFrom.Value.ToShortDateString() + " until " + dtpTo.Value.ToShortDateString() + " has been successfully removed!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    _mb1.ShowDialog();
                    refresh();
                }
            }
            catch { }
        }
        #endregion

        private void btnSearch_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmAuditTrail", "Search"))
            {
                return;
            }
            try
            {
                string _AuditTrailDisplayFields = "SELECT DATE_FORMAT(`Date`,'%M %d, %Y') AS `TransactionDate`,DATE_FORMAT(`Date`,'%h:%i:%s %p') AS `Transaction Time`,LogDescription AS `Log Description`, Hostname AS `Computer Name` " +
                        "FROM audittrail ";
                string _AuditTrailWhereFields = " ORDER BY `Date` ASC;";
                loSearches.lAlias = "";
                loSearches.ShowDialog();
                if (loSearches.lFromShow)
                {
                    ldtAuditTrail = loCommon.getDataFromSearch(_AuditTrailDisplayFields + loSearches.lQuery + _AuditTrailWhereFields);
                    GlobalFunctions.refreshGrid(ref dgvAuditTrail, ldtAuditTrail);
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void btnPreview_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmAuditTrail", "Preview"))
            {
                return;
            }
            try
            {
                if (dgvAuditTrail.Rows.Count > 0)
                {
                    loAuditTrailRpt.SetDataSource(GlobalVariables.DTLGULogo);
                    loAuditTrailRpt.Database.Tables[1].SetDataSource(ldtAuditTrail);
                    loAuditTrailRpt.SetParameterValue("LGUName", GlobalVariables.LGUName);
                    loAuditTrailRpt.SetParameterValue("LGUProvince", GlobalVariables.LGUProvince);
                    loAuditTrailRpt.SetParameterValue("LGUAddress", GlobalVariables.LGUAddress);
                    loAuditTrailRpt.SetParameterValue("ContactNumber", GlobalVariables.ContactNumber);
                    loAuditTrailRpt.SetParameterValue("Username", GlobalVariables.Userfullname);
                    loAuditTrailRpt.SetParameterValue("Title", "Audit Trail");
                    loAuditTrailRpt.SetParameterValue("SubTitle", "Audit Trail");
                    loReportViewer.crystalReportViewer.ReportSource = loAuditTrailRpt;
                    loReportViewer.ShowDialog();
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void btnRefresh_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmAuditTrail", "Refresh"))
            {
                return;
            }
            refresh();
        }

        private void AuditTrailUI_Load(object sender, EventArgs e)
        {
            Type _Type = typeof(AuditTrail);
            FieldInfo[] myFieldInfo;
            myFieldInfo = _Type.GetFields(BindingFlags.NonPublic | BindingFlags.Instance
            | BindingFlags.Public);
            loSearches = new SearchesUI(myFieldInfo, _Type, "tsmAuditTrail");
        }

        private void dgvAuditTrail_MouseClick(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                Point pt = dgvAuditTrail.PointToScreen(e.Location);
                cmsFunctions.Show(pt);
            }
        }

        private void viewHiddenRecordsToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            GlobalFunctions.refreshAll(ref dgvAuditTrail, ldtAuditTrail);
        }

        private void btnView_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmAuditTrail", "View"))
            {
                return;
            }
            refresh();
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmAuditTrail", "Remove"))
            {
                return;
            }
            remove();
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmAuditTrail", "Search"))
            {
                return;
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }
    }
}

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Diagnostics;
using System.Speech.Recognition;
using System.Speech.Synthesis;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.MasterFiles;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Systems;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces
{
    public partial class MDIUI : Form
    {
        #region "VARIABLES"
        UserGroup loUserGroup;
        DataView ldvUserGroup;
        DataTable ldtUserGroup;
        //for speech recognition
        SpeechRecognitionEngine speechRecognitionEngine;
        List<Word> words = new List<Word>();
        //for text to speak.
        SpeechSynthesizer voice = new SpeechSynthesizer();
        Voice loVoice;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public MDIUI()
        {
            InitializeComponent();
            loUserGroup = new UserGroup();
            ldtUserGroup = new DataTable();
            loVoice = new Voice();
        }
        #endregion "END OF CONSTRUCTORS"

        #region "METHODS"
        private void disabledMenuStrip()
        {
            foreach (ToolStripMenuItem item in mnsMainList.Items)
            {
                item.Enabled = false;
                foreach (ToolStripItem subitem in item.DropDownItems)
                {
                    if (subitem is ToolStripMenuItem)
                    {
                        subitem.Enabled = false;
                    }
                }
            }
        }

        private void enabledMenuStrip()
        {
            ldtUserGroup = loUserGroup.getUserGroupMenuItems();
            GlobalVariables.DVRights = new DataView(loUserGroup.getUserGroupRights());
            ldvUserGroup = new DataView(ldtUserGroup);
            foreach (ToolStripMenuItem item in mnsMainList.Items)
            {
                ldvUserGroup.RowFilter = "Menu = '" + item.Name + "'";
                if (ldvUserGroup.Count != 0)
                {
                    item.Enabled = true;
                    processMenuItems(item);
                }
            }
        }

        private void processMenuItems(ToolStripMenuItem pitem)
        {
            if (true)
            {
                pitem.Enabled = true;
            }

            foreach (ToolStripItem subitem in pitem.DropDownItems)
            {
                if (subitem is ToolStripMenuItem)
                {
                    ldvUserGroup.RowFilter = "Item = '" + subitem.Name + "'";
                    if (ldvUserGroup.Count != 0)
                    {
                        subitem.Enabled = true;
                    }
                }
            }
        }

        private int displayControlOnTab(Control pControl, TabPage pTabPage)
        {
            // The tabpage.
            Form _FormControl = new Form();
            _FormControl = (Form)pControl;

            // Add to the tab control.
            pTabPage.Text = _FormControl.Text;
            pTabPage.Name = _FormControl.Name;
            tbcJBC_PMIS_Government.TabPages.Add(pTabPage);
            tbcJBC_PMIS_Government.SelectTab(pTabPage);
            _FormControl.TopLevel = false;
            _FormControl.Parent = this;
            _FormControl.Dock = DockStyle.Fill;
            _FormControl.FormBorderStyle = FormBorderStyle.None;
            pTabPage.Controls.Add(_FormControl);
            tbcJBC_PMIS_Government.SelectTab(tbcJBC_PMIS_Government.SelectedIndex);
            _FormControl.Show();
            return tbcJBC_PMIS_Government.SelectedIndex;
        }

        public void closeTabPage()
        {
            tbcJBC_PMIS_Government.TabPages.RemoveAt(tbcJBC_PMIS_Government.SelectedIndex);
        }

        public void changeHomeImage()
        {
            try
            {
                byte[] hextobyte = GlobalFunctions.HexToBytes(GlobalVariables.ScreenSaverImage);
                pctScreenSaver.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(hextobyte);
                pctScreenSaver.BackgroundImageLayout = ImageLayout.Stretch;
            }
            catch
            {
                pctScreenSaver.BackgroundImage = null;
            }
        }

        //for speech recognition
        private SpeechRecognitionEngine createSpeechEngine(string preferredCulture)
        {
            foreach (RecognizerInfo config in SpeechRecognitionEngine.InstalledRecognizers())
            {
                if (config.Culture.ToString() == preferredCulture)
                {
                    speechRecognitionEngine = new SpeechRecognitionEngine(config);
                    break;
                }
            }

            // if the desired culture is not found, then load default
            if (speechRecognitionEngine == null)
            {
                speechRecognitionEngine = new SpeechRecognitionEngine(SpeechRecognitionEngine.InstalledRecognizers()[0]);
            }

            return speechRecognitionEngine;
        }

        private void loadGrammarAndCommands()
        {
            try
            {
                Choices texts = new Choices();
                string[] lines = File.ReadAllLines(Environment.CurrentDirectory + "\\mdi.txt");
                foreach (string line in lines)
                {
                    // skip commentblocks and empty lines..
                    if (line.StartsWith("--") || line == String.Empty) continue;

                    // split the line
                    var parts = line.Split(new char[] { '|' });

                    // add commandItem to the list for later lookup or execution
                    words.Add(new Word() { Text = parts[0], AttachedText = parts[1], IsShellCommand = (parts[2] == "true") });

                    // add the text to the known choices of speechengine
                    texts.Add(parts[0]);
                }
                Grammar wordsList = new Grammar(new GrammarBuilder(texts));
                speechRecognitionEngine.LoadGrammar(wordsList);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string getKnownTextOrExecute(string command)
        {
            try
            {
                var cmd = words.Where(c => c.Text == command).First();

                if (cmd.IsShellCommand)
                {
                    Process proc = new Process();
                    proc.EnableRaisingEvents = false;
                    proc.StartInfo.FileName = cmd.AttachedText;
                    proc.Start();
                    return "you just started : " + cmd.AttachedText;
                }
                else
                {
                    return cmd.AttachedText;
                }
            }
            catch (Exception)
            {
                return command;
            }
        }

        void engine_SpeechRecognized(object sender, SpeechRecognizedEventArgs e)
        {
            string _Spoken = getKnownTextOrExecute(e.Result.Text);
            switch (_Spoken)
            { 
                case "close":
                    this.Close();
                    break;
            }
        }

        void engine_AudioLevelUpdated(object sender, AudioLevelUpdatedEventArgs e)
        {
            prgLevel.Value = e.AudioLevel;
        }

        private void applySpeechRecognition()
        {
            try
            {
                speechRecognitionEngine = null;
                // create the engine
                speechRecognitionEngine = createSpeechEngine("de-DE");

                // hook to events
                speechRecognitionEngine.AudioLevelUpdated += new EventHandler<AudioLevelUpdatedEventArgs>(engine_AudioLevelUpdated);
                speechRecognitionEngine.SpeechRecognized += new EventHandler<SpeechRecognizedEventArgs>(engine_SpeechRecognized);

                // load dictionary
                loadGrammarAndCommands();

                // use the system's default microphone
                speechRecognitionEngine.SetInputToDefaultAudioDevice();

                // start listening
                speechRecognitionEngine.RecognizeAsync(RecognizeMode.Multiple);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Voice recognition failed");
            }
        }

        private void stopSpeechRecognition()
        {
            speechRecognitionEngine.RecognizeAsyncStop();
        }
        #endregion "END OF METHODS"

        #region "EVENTS"
        private void MDIFrameWork_Load(object sender, EventArgs e)
        {
            if (GlobalVariables.RecognizedSpeech)
            {
                applySpeechRecognition();
                prgLevel.Visible = true;
            }
            loVoice.speak("Welcome " + GlobalVariables.Userfullname);
            try
            {
                byte[] hextobyte = GlobalFunctions.HexToBytes(GlobalVariables.ScreenSaverImage);
                pctScreenSaver.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(hextobyte);
                pctScreenSaver.BackgroundImageLayout = ImageLayout.Stretch;

                byte[] hextobyteLogo = GlobalFunctions.HexToBytes(GlobalVariables.LGULogo);
                pctLogo.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(hextobyteLogo);
            }
            catch { }
            try
            {
                switch (GlobalVariables.TabAlignment)
                {
                    case "Top":
                        tbcJBC_PMIS_Government.Alignment = TabAlignment.Top;
                        break;
                    case "Bottom":
                        tbcJBC_PMIS_Government.Alignment = TabAlignment.Bottom;
                        break;
                    case "Left":
                        tbcJBC_PMIS_Government.Alignment = TabAlignment.Left;
                        break;
                    case "Right":
                        tbcJBC_PMIS_Government.Alignment = TabAlignment.Right;
                        break;
                    default:
                        tbcJBC_PMIS_Government.Alignment = TabAlignment.Top;
                        break;
                }
            }
            catch { }
            lblUsername.Text = "Welcome!  " + GlobalVariables.Username;
            tssDateTime.Text = DateTime.Now.ToLongDateString();
            lblOwnerName.UseMnemonic = false;
            lblOwnerName.Text = GlobalVariables.LGUName;
            lblApplicationName.Text = GlobalVariables.ApplicationName;
            if (GlobalVariables.Username != "admin")
            {
                disabledMenuStrip();
                enabledMenuStrip();
            }
        }
        private void tsmSystemConfiguration_Click(object sender, EventArgs e)
        {
            loVoice.speak("System Configuration");
            SystemConfigurationUI _SystemConfiguration = new SystemConfigurationUI();
            TabPage _SystemConfigurationTab = new TabPage();
            _SystemConfigurationTab.ImageIndex =1;
            _SystemConfiguration.ParentList = this;
            displayControlOnTab(_SystemConfiguration, _SystemConfigurationTab);
        }
        private void tsmUser_Click(object sender, EventArgs e)
        {
            loVoice.speak("User");
            User _User = new User();
            Type _Type = typeof(User);
            ListFormUI _ListForm = new ListFormUI((object)_User,_Type);
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 2;
            _ListForm.ParentList = this;
            displayControlOnTab(_ListForm, _ListFormTab);
        }
        private void tsmUserGroup_Click(object sender, EventArgs e)
        {
            loVoice.speak("User Group");
            UserGroupListUI _UserGroupList = new UserGroupListUI();
            TabPage _UserGroupTab = new TabPage();
            _UserGroupTab.ImageIndex = 3;
            _UserGroupList.ParentList = this;
            displayControlOnTab(_UserGroupList, _UserGroupTab);
        }
        private void tsmChangeUserPassword_Click(object sender, EventArgs e)
        {
            loVoice.speak("Change Password");
            ChangePasswordUI _ChangePassword = new ChangePasswordUI();
            TabPage _ChangePasswordTab = new TabPage();
            _ChangePasswordTab.ImageIndex = 4;
            _ChangePassword.ParentList = this;
            displayControlOnTab(_ChangePassword, _ChangePasswordTab);
        }

        private void tsmLockScreen_Click(object sender, EventArgs e)
        {
            loVoice.speak("Lock Screen");
            UnlockScreenUI _UnlockScreen = new UnlockScreenUI();
            _UnlockScreen.ShowDialog();
        }

        private void tsmBackupRestoreDatabase_Click(object sender, EventArgs e)
        {
            loVoice.speak("Backup or Restore Database");
            BackupRestoreDataUI _ImportExportData = new BackupRestoreDataUI();
            _ImportExportData.ShowDialog();
            /*
            TabPage _ImportExportDataTab = new TabPage();
            _ImportExportDataTab.ImageIndex = 34;
            _ImportExportData.ParentList = this;
            displayControlOnTab(_ImportExportData, _ImportExportDataTab);
            */
        }
        private void tsmExit_Click(object sender, EventArgs e)
        {
            loVoice.speak("Exit");
            Application.Exit();
        }
        #endregion "END OF EVENTS"

        private void tsmScreenSaver_Click(object sender, EventArgs e)
        {
            loVoice.speak("Screen Saver");
            ScreenSaverUI _ScreenSaver = new ScreenSaverUI();
            TabPage _ScreenSaverTab = new TabPage();
            _ScreenSaverTab.ImageIndex =5;
            _ScreenSaver.ParentList = this;
            displayControlOnTab(_ScreenSaver, _ScreenSaverTab);
        }

        private void tsmAuditTrail_Click(object sender, EventArgs e)
        {
            loVoice.speak("Audit Trail");
            AuditTrailUI _ListForm = new AuditTrailUI();
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 22;
            _ListForm.ParentList = this;
            displayControlOnTab(_ListForm, _ListFormTab);
        }

        private void tsmEmployee_Click(object sender, EventArgs e)
        {
            loVoice.speak("Employee");
            Employee _Employee = new Employee();
            Type _Type = typeof(Employee);
            EmployeeListUI _ListForm = new EmployeeListUI((object)_Employee, _Type);
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex =8;
            _ListForm.ParentList = this;
            displayControlOnTab(_ListForm, _ListFormTab);
        }

        private void tsmDepartment_Click(object sender, EventArgs e)
        {
            loVoice.speak("Department");
            Department _Department = new Department();
            Type _Type = typeof(Department);
            ListFormUI _ListForm = new ListFormUI((object)_Department, _Type);
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 10;
            _ListForm.ParentList = this;
            displayControlOnTab(_ListForm, _ListFormTab);
        }

        private void tsmDesignation_Click(object sender, EventArgs e)
        {
            loVoice.speak("Designation");
            Designation _Designation = new Designation();
            Type _Type = typeof(Designation);
            ListFormUI _ListForm = new ListFormUI((object)_Designation, _Type);
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 9;
            _ListForm.ParentList = this;
            displayControlOnTab(_ListForm, _ListFormTab);
        }

        private void tsmWorkSchedule_Click(object sender, EventArgs e)
        {
            loVoice.speak("Work Schedule");
            WorkSchedule _WorkSchedule = new WorkSchedule();
            Type _Type = typeof(WorkSchedule);
            WorkScheduleListUI _ListForm = new WorkScheduleListUI((object)_WorkSchedule, _Type);
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 11;
            _ListForm.ParentList = this;
            displayControlOnTab(_ListForm, _ListFormTab);
        }

        private void tsmProcessDailyTimeRecordRegular_Click(object sender, EventArgs e)
        {
            loVoice.speak("Daily Time Record Regular Employee");
            ProcessDailyTimeRecordUI _ProcessDailyTimeRecordRegular = new ProcessDailyTimeRecordUI();
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 15;
            _ProcessDailyTimeRecordRegular.ParentList = this;
            displayControlOnTab(_ProcessDailyTimeRecordRegular, _ListFormTab);
        }

        private void tsmImportDataFromBiometrics_Click(object sender, EventArgs e)
        {
            loVoice.speak("Import Data from Biometrics");
            ImportDataFromBiometricsUI loImportDataFromBiometrics = new ImportDataFromBiometricsUI();
            loImportDataFromBiometrics.ShowDialog();
        }

        private void tsmCSForm48_Click(object sender, EventArgs e)
        {
            loVoice.speak("Civil Service Form 48");
            CSForm48UI _DTR = new CSForm48UI();
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 21;
            _DTR.ParentList = this;
            displayControlOnTab(_DTR, _ListFormTab);
        }

        private void tsmAttendanceSummary_Click(object sender, EventArgs e)
        {
            loVoice.speak("Attendance Summary");
            AttendanceSummaryUI _AttendanceSummary = new AttendanceSummaryUI();
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 20;
            _AttendanceSummary.ParentList = this;
            displayControlOnTab(_AttendanceSummary, _ListFormTab);
        }

        private void tsmLeaveType_Click(object sender, EventArgs e)
        {
            loVoice.speak("Leave Type");
            LeaveType _LeaveType = new LeaveType();
            Type _Type = typeof(LeaveType);
            ListFormUI _ListForm = new ListFormUI((object)_LeaveType, _Type);
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 12;
            _ListForm.ParentList = this;
            displayControlOnTab(_ListForm, _ListFormTab);
        }

        private void tsmOvertimeEntry_Click(object sender, EventArgs e)
        {
            loVoice.speak("Overtime Entry");
            OvertimeEntryUI _OvertimeEntry = new OvertimeEntryUI();
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 16;
            _OvertimeEntry.ParentList = this;
            displayControlOnTab(_OvertimeEntry, _ListFormTab);
        }

        private void tsmOfficialBusinessEntry_Click(object sender, EventArgs e)
        {
            loVoice.speak("Official Business Entry");
            OfficialBusinessEntryUI _OfficialBusinessEntry = new OfficialBusinessEntryUI();
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 17;
            _OfficialBusinessEntry.ParentList = this;
            displayControlOnTab(_OfficialBusinessEntry, _ListFormTab);
        }

        private void tsmLeaveEntry_Click(object sender, EventArgs e)
        {
            loVoice.speak("Leave Entry");
            LeaveEntryUI _LeaveEntry = new LeaveEntryUI();
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 18;
            _LeaveEntry.ParentList = this;
            displayControlOnTab(_LeaveEntry, _ListFormTab);
        }

        private void tsmHoliday_Click(object sender, EventArgs e)
        {
            loVoice.speak("Holiday");
            Holiday _Holiday = new Holiday();
            Type _Type = typeof(Holiday);
            ListFormUI _ListForm = new ListFormUI((object)_Holiday, _Type);
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 13;
            _ListForm.ParentList = this;
            displayControlOnTab(_ListForm, _ListFormTab);
        }

        private void tsmHolidayEntry_Click(object sender, EventArgs e)
        {
            loVoice.speak("Holiday Entry");
            HolidayEntryUI _HolidayEntry = new HolidayEntryUI();
            TabPage _ListFormTab = new TabPage();
            _ListFormTab.ImageIndex = 19;
            _HolidayEntry.ParentList = this;
            displayControlOnTab(_HolidayEntry, _ListFormTab);
        }
    }
}

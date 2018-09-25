namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces
{
    partial class MDIUI
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MDIUI));
            this.pnlMenu = new System.Windows.Forms.Panel();
            this.prgLevel = new System.Windows.Forms.ProgressBar();
            this.mnsMainList = new System.Windows.Forms.MenuStrip();
            this.MasterFilesMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmEmployee = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmWorkSchedule = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator3 = new System.Windows.Forms.ToolStripSeparator();
            this.TransactionsMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmImportDataFromBiometrics = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.tsmProcessDailyTimeRecord = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.ReportsMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmCSForm48 = new System.Windows.Forms.ToolStripMenuItem();
            this.SystemsMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmSystemConfiguration = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmUser = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmUserGroup = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmChangeUserPassword = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmScreenSaver = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmLockScreen = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmBackupRestoreDatabase = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmExit = new System.Windows.Forms.ToolStripMenuItem();
            this.tbpHome = new System.Windows.Forms.TabPage();
            this.pnlDashboard = new System.Windows.Forms.Panel();
            this.pctScreenSaver = new System.Windows.Forms.PictureBox();
            this.tbcJBC_PMIS_Government = new System.Windows.Forms.TabControl();
            this.imgList = new System.Windows.Forms.ImageList(this.components);
            this.lblUsername = new System.Windows.Forms.Label();
            this.lblOwnerName = new System.Windows.Forms.Label();
            this.lblApplicationName = new System.Windows.Forms.Label();
            this.pnlHeader = new System.Windows.Forms.Panel();
            this.tssDateTime = new System.Windows.Forms.Label();
            this.pnlBody = new System.Windows.Forms.Panel();
            this.pctLogo = new System.Windows.Forms.PictureBox();
            this.pnlMenu.SuspendLayout();
            this.mnsMainList.SuspendLayout();
            this.tbpHome.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pctScreenSaver)).BeginInit();
            this.tbcJBC_PMIS_Government.SuspendLayout();
            this.pnlHeader.SuspendLayout();
            this.pnlBody.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pctLogo)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlMenu
            // 
            this.pnlMenu.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlMenu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(207)))), ((int)(((byte)(140)))));
            this.pnlMenu.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlMenu.Controls.Add(this.prgLevel);
            this.pnlMenu.Controls.Add(this.mnsMainList);
            this.pnlMenu.Location = new System.Drawing.Point(89, 54);
            this.pnlMenu.Name = "pnlMenu";
            this.pnlMenu.Size = new System.Drawing.Size(910, 30);
            this.pnlMenu.TabIndex = 15;
            // 
            // prgLevel
            // 
            this.prgLevel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.prgLevel.Location = new System.Drawing.Point(721, 8);
            this.prgLevel.Name = "prgLevel";
            this.prgLevel.Size = new System.Drawing.Size(180, 12);
            this.prgLevel.TabIndex = 44;
            this.prgLevel.Visible = false;
            // 
            // mnsMainList
            // 
            this.mnsMainList.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.mnsMainList.AutoSize = false;
            this.mnsMainList.BackColor = System.Drawing.Color.Transparent;
            this.mnsMainList.Dock = System.Windows.Forms.DockStyle.None;
            this.mnsMainList.Font = new System.Drawing.Font("Century Gothic", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mnsMainList.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.mnsMainList.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.MasterFilesMenu,
            this.TransactionsMenu,
            this.ReportsMenu,
            this.SystemsMenu});
            this.mnsMainList.Location = new System.Drawing.Point(-5, -5);
            this.mnsMainList.Name = "mnsMainList";
            this.mnsMainList.Padding = new System.Windows.Forms.Padding(5, 0, 0, 2);
            this.mnsMainList.Size = new System.Drawing.Size(632, 39);
            this.mnsMainList.TabIndex = 0;
            this.mnsMainList.Text = "MenuStrip";
            // 
            // MasterFilesMenu
            // 
            this.MasterFilesMenu.AutoSize = false;
            this.MasterFilesMenu.BackColor = System.Drawing.Color.Transparent;
            this.MasterFilesMenu.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.MasterFilesMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmEmployee,
            this.tsmWorkSchedule,
            this.toolStripSeparator3});
            this.MasterFilesMenu.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.MasterFilesMenu.ForeColor = System.Drawing.Color.Black;
            this.MasterFilesMenu.ImageTransparentColor = System.Drawing.Color.Transparent;
            this.MasterFilesMenu.Name = "MasterFilesMenu";
            this.MasterFilesMenu.Padding = new System.Windows.Forms.Padding(40, 0, 4, 0);
            this.MasterFilesMenu.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.M)));
            this.MasterFilesMenu.Size = new System.Drawing.Size(120, 40);
            this.MasterFilesMenu.Text = "&Master Files";
            // 
            // tsmEmployee
            // 
            this.tsmEmployee.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmEmployee.Image = ((System.Drawing.Image)(resources.GetObject("tsmEmployee.Image")));
            this.tsmEmployee.Name = "tsmEmployee";
            this.tsmEmployee.ShowShortcutKeys = false;
            this.tsmEmployee.Size = new System.Drawing.Size(191, 28);
            this.tsmEmployee.Text = "&Employee";
            this.tsmEmployee.Click += new System.EventHandler(this.tsmEmployee_Click);
            // 
            // tsmWorkSchedule
            // 
            this.tsmWorkSchedule.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmWorkSchedule.Image = ((System.Drawing.Image)(resources.GetObject("tsmWorkSchedule.Image")));
            this.tsmWorkSchedule.ImageTransparentColor = System.Drawing.Color.Black;
            this.tsmWorkSchedule.Name = "tsmWorkSchedule";
            this.tsmWorkSchedule.ShowShortcutKeys = false;
            this.tsmWorkSchedule.Size = new System.Drawing.Size(191, 28);
            this.tsmWorkSchedule.Text = "&Work Schedule";
            this.tsmWorkSchedule.Click += new System.EventHandler(this.tsmWorkSchedule_Click);
            // 
            // toolStripSeparator3
            // 
            this.toolStripSeparator3.Name = "toolStripSeparator3";
            this.toolStripSeparator3.Size = new System.Drawing.Size(188, 6);
            // 
            // TransactionsMenu
            // 
            this.TransactionsMenu.AutoSize = false;
            this.TransactionsMenu.BackColor = System.Drawing.Color.Transparent;
            this.TransactionsMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmImportDataFromBiometrics,
            this.toolStripSeparator1,
            this.tsmProcessDailyTimeRecord,
            this.toolStripSeparator2});
            this.TransactionsMenu.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Bold);
            this.TransactionsMenu.ForeColor = System.Drawing.Color.Black;
            this.TransactionsMenu.Name = "TransactionsMenu";
            this.TransactionsMenu.Padding = new System.Windows.Forms.Padding(20, 0, 4, 0);
            this.TransactionsMenu.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.T)));
            this.TransactionsMenu.Size = new System.Drawing.Size(120, 40);
            this.TransactionsMenu.Text = "&Transactions";
            // 
            // tsmImportDataFromBiometrics
            // 
            this.tsmImportDataFromBiometrics.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold);
            this.tsmImportDataFromBiometrics.Image = ((System.Drawing.Image)(resources.GetObject("tsmImportDataFromBiometrics.Image")));
            this.tsmImportDataFromBiometrics.Name = "tsmImportDataFromBiometrics";
            this.tsmImportDataFromBiometrics.Size = new System.Drawing.Size(307, 28);
            this.tsmImportDataFromBiometrics.Text = "Import Data from Biometrics";
            this.tsmImportDataFromBiometrics.Click += new System.EventHandler(this.tsmImportDataFromBiometrics_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(304, 6);
            // 
            // tsmProcessDailyTimeRecord
            // 
            this.tsmProcessDailyTimeRecord.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold);
            this.tsmProcessDailyTimeRecord.Image = ((System.Drawing.Image)(resources.GetObject("tsmProcessDailyTimeRecord.Image")));
            this.tsmProcessDailyTimeRecord.Name = "tsmProcessDailyTimeRecord";
            this.tsmProcessDailyTimeRecord.Size = new System.Drawing.Size(307, 28);
            this.tsmProcessDailyTimeRecord.Text = "Process Daily Time Record";
            this.tsmProcessDailyTimeRecord.Click += new System.EventHandler(this.tsmProcessDailyTimeRecordRegular_Click);
            // 
            // toolStripSeparator2
            // 
            this.toolStripSeparator2.Name = "toolStripSeparator2";
            this.toolStripSeparator2.Size = new System.Drawing.Size(304, 6);
            // 
            // ReportsMenu
            // 
            this.ReportsMenu.AutoSize = false;
            this.ReportsMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmCSForm48});
            this.ReportsMenu.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ReportsMenu.Name = "ReportsMenu";
            this.ReportsMenu.Padding = new System.Windows.Forms.Padding(20, 0, 4, 0);
            this.ReportsMenu.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.R)));
            this.ReportsMenu.Size = new System.Drawing.Size(110, 40);
            this.ReportsMenu.Text = "&Reports";
            // 
            // tsmCSForm48
            // 
            this.tsmCSForm48.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmCSForm48.Image = ((System.Drawing.Image)(resources.GetObject("tsmCSForm48.Image")));
            this.tsmCSForm48.Name = "tsmCSForm48";
            this.tsmCSForm48.Size = new System.Drawing.Size(216, 28);
            this.tsmCSForm48.Text = "CS Form 48";
            this.tsmCSForm48.Click += new System.EventHandler(this.tsmCSForm48_Click);
            // 
            // SystemsMenu
            // 
            this.SystemsMenu.AutoSize = false;
            this.SystemsMenu.BackColor = System.Drawing.Color.Transparent;
            this.SystemsMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmSystemConfiguration,
            this.tsmUser,
            this.tsmUserGroup,
            this.tsmChangeUserPassword,
            this.tsmScreenSaver,
            this.tsmLockScreen,
            this.tsmBackupRestoreDatabase,
            this.tsmExit});
            this.SystemsMenu.Font = new System.Drawing.Font("Segoe UI", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SystemsMenu.ForeColor = System.Drawing.Color.Black;
            this.SystemsMenu.Name = "SystemsMenu";
            this.SystemsMenu.Padding = new System.Windows.Forms.Padding(20, 0, 4, 0);
            this.SystemsMenu.Size = new System.Drawing.Size(110, 40);
            this.SystemsMenu.Text = "&Systems";
            // 
            // tsmSystemConfiguration
            // 
            this.tsmSystemConfiguration.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmSystemConfiguration.Image = ((System.Drawing.Image)(resources.GetObject("tsmSystemConfiguration.Image")));
            this.tsmSystemConfiguration.Name = "tsmSystemConfiguration";
            this.tsmSystemConfiguration.Size = new System.Drawing.Size(285, 28);
            this.tsmSystemConfiguration.Text = "System Configuration";
            this.tsmSystemConfiguration.Click += new System.EventHandler(this.tsmSystemConfiguration_Click);
            // 
            // tsmUser
            // 
            this.tsmUser.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmUser.Image = ((System.Drawing.Image)(resources.GetObject("tsmUser.Image")));
            this.tsmUser.Name = "tsmUser";
            this.tsmUser.Size = new System.Drawing.Size(285, 28);
            this.tsmUser.Text = "User";
            this.tsmUser.Click += new System.EventHandler(this.tsmUser_Click);
            // 
            // tsmUserGroup
            // 
            this.tsmUserGroup.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmUserGroup.Image = ((System.Drawing.Image)(resources.GetObject("tsmUserGroup.Image")));
            this.tsmUserGroup.Name = "tsmUserGroup";
            this.tsmUserGroup.Size = new System.Drawing.Size(285, 28);
            this.tsmUserGroup.Text = "User Group";
            this.tsmUserGroup.Visible = false;
            this.tsmUserGroup.Click += new System.EventHandler(this.tsmUserGroup_Click);
            // 
            // tsmChangeUserPassword
            // 
            this.tsmChangeUserPassword.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmChangeUserPassword.Image = ((System.Drawing.Image)(resources.GetObject("tsmChangeUserPassword.Image")));
            this.tsmChangeUserPassword.Name = "tsmChangeUserPassword";
            this.tsmChangeUserPassword.Size = new System.Drawing.Size(285, 28);
            this.tsmChangeUserPassword.Text = "Change User Password";
            this.tsmChangeUserPassword.Click += new System.EventHandler(this.tsmChangeUserPassword_Click);
            // 
            // tsmScreenSaver
            // 
            this.tsmScreenSaver.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmScreenSaver.Image = ((System.Drawing.Image)(resources.GetObject("tsmScreenSaver.Image")));
            this.tsmScreenSaver.Name = "tsmScreenSaver";
            this.tsmScreenSaver.Size = new System.Drawing.Size(285, 28);
            this.tsmScreenSaver.Text = "Screen Saver";
            this.tsmScreenSaver.Click += new System.EventHandler(this.tsmScreenSaver_Click);
            // 
            // tsmLockScreen
            // 
            this.tsmLockScreen.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmLockScreen.Image = ((System.Drawing.Image)(resources.GetObject("tsmLockScreen.Image")));
            this.tsmLockScreen.Name = "tsmLockScreen";
            this.tsmLockScreen.Size = new System.Drawing.Size(285, 28);
            this.tsmLockScreen.Text = "Lock Screen";
            this.tsmLockScreen.Click += new System.EventHandler(this.tsmLockScreen_Click);
            // 
            // tsmBackupRestoreDatabase
            // 
            this.tsmBackupRestoreDatabase.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmBackupRestoreDatabase.Image = ((System.Drawing.Image)(resources.GetObject("tsmBackupRestoreDatabase.Image")));
            this.tsmBackupRestoreDatabase.Name = "tsmBackupRestoreDatabase";
            this.tsmBackupRestoreDatabase.Size = new System.Drawing.Size(285, 28);
            this.tsmBackupRestoreDatabase.Text = "Backup/Restore Database";
            this.tsmBackupRestoreDatabase.Click += new System.EventHandler(this.tsmBackupRestoreDatabase_Click);
            // 
            // tsmExit
            // 
            this.tsmExit.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tsmExit.Image = ((System.Drawing.Image)(resources.GetObject("tsmExit.Image")));
            this.tsmExit.Name = "tsmExit";
            this.tsmExit.Size = new System.Drawing.Size(285, 28);
            this.tsmExit.Text = "Exit";
            this.tsmExit.Click += new System.EventHandler(this.tsmExit_Click);
            // 
            // tbpHome
            // 
            this.tbpHome.Controls.Add(this.pnlDashboard);
            this.tbpHome.Controls.Add(this.pctScreenSaver);
            this.tbpHome.ImageIndex = 0;
            this.tbpHome.Location = new System.Drawing.Point(4, 30);
            this.tbpHome.Name = "tbpHome";
            this.tbpHome.Padding = new System.Windows.Forms.Padding(3);
            this.tbpHome.Size = new System.Drawing.Size(988, 386);
            this.tbpHome.TabIndex = 0;
            this.tbpHome.Text = "Home";
            this.tbpHome.UseVisualStyleBackColor = true;
            // 
            // pnlDashboard
            // 
            this.pnlDashboard.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlDashboard.Location = new System.Drawing.Point(3, 3);
            this.pnlDashboard.Name = "pnlDashboard";
            this.pnlDashboard.Size = new System.Drawing.Size(982, 380);
            this.pnlDashboard.TabIndex = 1;
            this.pnlDashboard.Visible = false;
            // 
            // pctScreenSaver
            // 
            this.pctScreenSaver.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pctScreenSaver.Location = new System.Drawing.Point(3, 3);
            this.pctScreenSaver.Name = "pctScreenSaver";
            this.pctScreenSaver.Size = new System.Drawing.Size(982, 380);
            this.pctScreenSaver.TabIndex = 0;
            this.pctScreenSaver.TabStop = false;
            // 
            // tbcJBC_PMIS_Government
            // 
            this.tbcJBC_PMIS_Government.Controls.Add(this.tbpHome);
            this.tbcJBC_PMIS_Government.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tbcJBC_PMIS_Government.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tbcJBC_PMIS_Government.ImageList = this.imgList;
            this.tbcJBC_PMIS_Government.Location = new System.Drawing.Point(0, 0);
            this.tbcJBC_PMIS_Government.Multiline = true;
            this.tbcJBC_PMIS_Government.Name = "tbcJBC_PMIS_Government";
            this.tbcJBC_PMIS_Government.SelectedIndex = 0;
            this.tbcJBC_PMIS_Government.Size = new System.Drawing.Size(996, 420);
            this.tbcJBC_PMIS_Government.TabIndex = 4;
            // 
            // imgList
            // 
            this.imgList.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imgList.ImageStream")));
            this.imgList.TransparentColor = System.Drawing.Color.Transparent;
            this.imgList.Images.SetKeyName(0, "home32x32.png");
            this.imgList.Images.SetKeyName(1, "system configuration32x32.png");
            this.imgList.Images.SetKeyName(2, "user32x32.png");
            this.imgList.Images.SetKeyName(3, "user group32x32.png");
            this.imgList.Images.SetKeyName(4, "user password32x32.png");
            this.imgList.Images.SetKeyName(5, "screen saver32x32.png");
            this.imgList.Images.SetKeyName(6, "lock screen32x32.png");
            this.imgList.Images.SetKeyName(7, "restorebackup32x32.png");
            this.imgList.Images.SetKeyName(8, "_employee.png");
            this.imgList.Images.SetKeyName(9, "_designation.png");
            this.imgList.Images.SetKeyName(10, "_department.png");
            this.imgList.Images.SetKeyName(11, "_work schedule.png");
            this.imgList.Images.SetKeyName(12, "_leave type.png");
            this.imgList.Images.SetKeyName(13, "_holiday.png");
            this.imgList.Images.SetKeyName(14, "_import data from biometrics.png");
            this.imgList.Images.SetKeyName(15, "_process daily time record.png");
            this.imgList.Images.SetKeyName(16, "_overtime entry.png");
            this.imgList.Images.SetKeyName(17, "_official business entry.png");
            this.imgList.Images.SetKeyName(18, "_leave entry.png");
            this.imgList.Images.SetKeyName(19, "_holiday entry.png");
            this.imgList.Images.SetKeyName(20, "_attendance Summary.png");
            this.imgList.Images.SetKeyName(21, "_csform48.png");
            this.imgList.Images.SetKeyName(22, "_audit trail64x64.png");
            // 
            // lblUsername
            // 
            this.lblUsername.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblUsername.Font = new System.Drawing.Font("Segoe UI", 9.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUsername.ForeColor = System.Drawing.Color.Maroon;
            this.lblUsername.Location = new System.Drawing.Point(783, 2);
            this.lblUsername.Name = "lblUsername";
            this.lblUsername.Size = new System.Drawing.Size(216, 24);
            this.lblUsername.TabIndex = 6;
            this.lblUsername.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // lblOwnerName
            // 
            this.lblOwnerName.BackColor = System.Drawing.Color.Transparent;
            this.lblOwnerName.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblOwnerName.ForeColor = System.Drawing.Color.Maroon;
            this.lblOwnerName.Location = new System.Drawing.Point(94, 25);
            this.lblOwnerName.Name = "lblOwnerName";
            this.lblOwnerName.Size = new System.Drawing.Size(289, 23);
            this.lblOwnerName.TabIndex = 4;
            this.lblOwnerName.TextAlign = System.Drawing.ContentAlignment.BottomLeft;
            // 
            // lblApplicationName
            // 
            this.lblApplicationName.BackColor = System.Drawing.Color.Transparent;
            this.lblApplicationName.Font = new System.Drawing.Font("Century Gothic", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblApplicationName.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(59)))), ((int)(((byte)(117)))));
            this.lblApplicationName.Location = new System.Drawing.Point(92, 3);
            this.lblApplicationName.Name = "lblApplicationName";
            this.lblApplicationName.Size = new System.Drawing.Size(506, 30);
            this.lblApplicationName.TabIndex = 3;
            this.lblApplicationName.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // pnlHeader
            // 
            this.pnlHeader.BackColor = System.Drawing.Color.White;
            this.pnlHeader.Controls.Add(this.tssDateTime);
            this.pnlHeader.Controls.Add(this.lblUsername);
            this.pnlHeader.Controls.Add(this.lblApplicationName);
            this.pnlHeader.Controls.Add(this.lblOwnerName);
            this.pnlHeader.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlHeader.Location = new System.Drawing.Point(0, 0);
            this.pnlHeader.Name = "pnlHeader";
            this.pnlHeader.Size = new System.Drawing.Size(999, 55);
            this.pnlHeader.TabIndex = 17;
            // 
            // tssDateTime
            // 
            this.tssDateTime.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.tssDateTime.BackColor = System.Drawing.Color.White;
            this.tssDateTime.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tssDateTime.Location = new System.Drawing.Point(620, 28);
            this.tssDateTime.Name = "tssDateTime";
            this.tssDateTime.Size = new System.Drawing.Size(379, 23);
            this.tssDateTime.TabIndex = 13;
            this.tssDateTime.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // pnlBody
            // 
            this.pnlBody.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlBody.BackColor = System.Drawing.Color.White;
            this.pnlBody.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlBody.Controls.Add(this.tbcJBC_PMIS_Government);
            this.pnlBody.Location = new System.Drawing.Point(1, 84);
            this.pnlBody.Name = "pnlBody";
            this.pnlBody.Size = new System.Drawing.Size(998, 422);
            this.pnlBody.TabIndex = 16;
            // 
            // pctLogo
            // 
            this.pctLogo.BackColor = System.Drawing.Color.White;
            this.pctLogo.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pctLogo.Location = new System.Drawing.Point(1, 0);
            this.pctLogo.Name = "pctLogo";
            this.pctLogo.Size = new System.Drawing.Size(90, 85);
            this.pctLogo.TabIndex = 14;
            this.pctLogo.TabStop = false;
            // 
            // MDIUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 21F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.ClientSize = new System.Drawing.Size(999, 505);
            this.Controls.Add(this.pnlMenu);
            this.Controls.Add(this.pctLogo);
            this.Controls.Add(this.pnlHeader);
            this.Controls.Add(this.pnlBody);
            this.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.IsMdiContainer = true;
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "MDIUI";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "School DTR";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.MDIFrameWork_Load);
            this.pnlMenu.ResumeLayout(false);
            this.mnsMainList.ResumeLayout(false);
            this.mnsMainList.PerformLayout();
            this.tbpHome.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pctScreenSaver)).EndInit();
            this.tbcJBC_PMIS_Government.ResumeLayout(false);
            this.pnlHeader.ResumeLayout(false);
            this.pnlBody.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pctLogo)).EndInit();
            this.ResumeLayout(false);

        }
        #endregion

        private System.Windows.Forms.Panel pnlMenu;
        private System.Windows.Forms.MenuStrip mnsMainList;
        private System.Windows.Forms.ToolStripMenuItem MasterFilesMenu;
        private System.Windows.Forms.ToolStripMenuItem SystemsMenu;
        private System.Windows.Forms.ToolStripMenuItem tsmSystemConfiguration;
        private System.Windows.Forms.ToolStripMenuItem tsmUser;
        private System.Windows.Forms.ToolStripMenuItem tsmUserGroup;
        private System.Windows.Forms.ToolStripMenuItem tsmChangeUserPassword;
        private System.Windows.Forms.ToolStripMenuItem tsmScreenSaver;
        private System.Windows.Forms.ToolStripMenuItem tsmLockScreen;
        private System.Windows.Forms.TabPage tbpHome;
        private System.Windows.Forms.PictureBox pctScreenSaver;
        private System.Windows.Forms.TabControl tbcJBC_PMIS_Government;
        private System.Windows.Forms.Label lblUsername;
        private System.Windows.Forms.Label lblOwnerName;
        //private System.Windows.Forms.Label lblApplicationObjectsName;
        private System.Windows.Forms.Panel pnlHeader;
        private System.Windows.Forms.Panel pnlBody;
        private System.Windows.Forms.PictureBox pctLogo;
        private System.Windows.Forms.Label tssDateTime;
        private System.Windows.Forms.ToolStripMenuItem ReportsMenu;
        private System.Windows.Forms.ToolStripMenuItem tsmExit;
        private System.Windows.Forms.ToolStripMenuItem tsmBackupRestoreDatabase;
        private System.Windows.Forms.ImageList imgList;
        private System.Windows.Forms.Label lblApplicationName;
        private System.Windows.Forms.ToolStripMenuItem TransactionsMenu;
        private System.Windows.Forms.Panel pnlDashboard;
        private System.Windows.Forms.ToolStripMenuItem tsmEmployee;
        private System.Windows.Forms.ToolStripMenuItem tsmImportDataFromBiometrics;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem tsmProcessDailyTimeRecord;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator2;
        private System.Windows.Forms.ToolStripMenuItem tsmCSForm48;
        private System.Windows.Forms.ProgressBar prgLevel;
        private System.Windows.Forms.ToolStripMenuItem tsmWorkSchedule;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator3;
    }
}




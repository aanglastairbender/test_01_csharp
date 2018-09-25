namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions
{
    partial class ProcessDailyTimeRecordUI
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ProcessDailyTimeRecordUI));
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.cboEmploymentType = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.dgvEmployeeList = new System.Windows.Forms.DataGridView();
            this.txtEmployeeName = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.cboDepartment = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.dgvDailyTimeRecord = new System.Windows.Forms.DataGridView();
            this.label2 = new System.Windows.Forms.Label();
            this.dtpTo = new System.Windows.Forms.DateTimePicker();
            this.dtpFrom = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnSave = new System.Windows.Forms.Button();
            this.btnRefresh = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.btnClose = new System.Windows.Forms.Button();
            this.cmsFunction = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.tsmiApplyLate = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiLate4hrs = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiLate8hrs = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiApplyUndertime = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiUndertime4hrs = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiUndertime8hrs = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiApplyOvertime = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiOpenTime = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiOvertime5 = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmOvertime6 = new System.Windows.Forms.ToolStripMenuItem();
            this.addTimeLogToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.checkInToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.breakOutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.breakInToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.checkOutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.overtimeInToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.overtimeOutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvEmployeeList)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDailyTimeRecord)).BeginInit();
            this.panel1.SuspendLayout();
            this.cmsFunction.SuspendLayout();
            this.SuspendLayout();
            // 
            // splitContainer1
            // 
            this.splitContainer1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.splitContainer1.Location = new System.Drawing.Point(11, 62);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.cboEmploymentType);
            this.splitContainer1.Panel1.Controls.Add(this.label4);
            this.splitContainer1.Panel1.Controls.Add(this.dgvEmployeeList);
            this.splitContainer1.Panel1.Controls.Add(this.txtEmployeeName);
            this.splitContainer1.Panel1.Controls.Add(this.label5);
            this.splitContainer1.Panel1.Controls.Add(this.cboDepartment);
            this.splitContainer1.Panel1.Controls.Add(this.label6);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.dgvDailyTimeRecord);
            this.splitContainer1.Size = new System.Drawing.Size(974, 457);
            this.splitContainer1.SplitterDistance = 315;
            this.splitContainer1.TabIndex = 161;
            // 
            // cboEmploymentType
            // 
            this.cboEmploymentType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboEmploymentType.FormattingEnabled = true;
            this.cboEmploymentType.Items.AddRange(new object[] {
            "Regular",
            "Job Order"});
            this.cboEmploymentType.Location = new System.Drawing.Point(120, 5);
            this.cboEmploymentType.Name = "cboEmploymentType";
            this.cboEmploymentType.Size = new System.Drawing.Size(124, 29);
            this.cboEmploymentType.TabIndex = 154;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.ForeColor = System.Drawing.Color.Black;
            this.label4.Location = new System.Drawing.Point(2, 8);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(146, 23);
            this.label4.TabIndex = 153;
            this.label4.Text = "Employment Type";
            // 
            // dgvEmployeeList
            // 
            this.dgvEmployeeList.AllowUserToAddRows = false;
            this.dgvEmployeeList.AllowUserToDeleteRows = false;
            this.dgvEmployeeList.AllowUserToResizeColumns = false;
            this.dgvEmployeeList.AllowUserToResizeRows = false;
            this.dgvEmployeeList.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvEmployeeList.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvEmployeeList.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dgvEmployeeList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle1.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle1.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle1.SelectionBackColor = System.Drawing.SystemColors.MenuHighlight;
            dataGridViewCellStyle1.SelectionForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle1.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvEmployeeList.DefaultCellStyle = dataGridViewCellStyle1;
            this.dgvEmployeeList.Location = new System.Drawing.Point(1, 93);
            this.dgvEmployeeList.MultiSelect = false;
            this.dgvEmployeeList.Name = "dgvEmployeeList";
            this.dgvEmployeeList.ReadOnly = true;
            this.dgvEmployeeList.RowHeadersVisible = false;
            this.dgvEmployeeList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvEmployeeList.Size = new System.Drawing.Size(312, 364);
            this.dgvEmployeeList.TabIndex = 87;
            this.dgvEmployeeList.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvEmployeeList_CellClick);
            this.dgvEmployeeList.KeyUp += new System.Windows.Forms.KeyEventHandler(this.dgvEmployeeList_KeyUp);
            // 
            // txtEmployeeName
            // 
            this.txtEmployeeName.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtEmployeeName.Location = new System.Drawing.Point(119, 41);
            this.txtEmployeeName.Name = "txtEmployeeName";
            this.txtEmployeeName.Size = new System.Drawing.Size(192, 29);
            this.txtEmployeeName.TabIndex = 103;
            this.txtEmployeeName.TextChanged += new System.EventHandler(this.txtEmployeeName_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(0, 44);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(135, 23);
            this.label5.TabIndex = 102;
            this.label5.Text = "Employee Name";
            // 
            // cboDepartment
            // 
            this.cboDepartment.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.cboDepartment.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboDepartment.FormattingEnabled = true;
            this.cboDepartment.Location = new System.Drawing.Point(118, 72);
            this.cboDepartment.MaxLength = 1;
            this.cboDepartment.Name = "cboDepartment";
            this.cboDepartment.Size = new System.Drawing.Size(193, 29);
            this.cboDepartment.TabIndex = 152;
            this.cboDepartment.Visible = false;
            this.cboDepartment.SelectedIndexChanged += new System.EventHandler(this.cboDepartment_SelectedIndexChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(-1, 75);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(102, 23);
            this.label6.TabIndex = 151;
            this.label6.Text = "Department";
            this.label6.Visible = false;
            // 
            // dgvDailyTimeRecord
            // 
            this.dgvDailyTimeRecord.AllowUserToAddRows = false;
            this.dgvDailyTimeRecord.AllowUserToDeleteRows = false;
            this.dgvDailyTimeRecord.AllowUserToResizeColumns = false;
            this.dgvDailyTimeRecord.AllowUserToResizeRows = false;
            this.dgvDailyTimeRecord.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.dgvDailyTimeRecord.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dgvDailyTimeRecord.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.MenuHighlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.Color.White;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.dgvDailyTimeRecord.DefaultCellStyle = dataGridViewCellStyle2;
            this.dgvDailyTimeRecord.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvDailyTimeRecord.Location = new System.Drawing.Point(0, 0);
            this.dgvDailyTimeRecord.MultiSelect = false;
            this.dgvDailyTimeRecord.Name = "dgvDailyTimeRecord";
            this.dgvDailyTimeRecord.RowHeadersVisible = false;
            this.dgvDailyTimeRecord.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.dgvDailyTimeRecord.Size = new System.Drawing.Size(655, 457);
            this.dgvDailyTimeRecord.TabIndex = 86;
            this.dgvDailyTimeRecord.CellEndEdit += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvDailyTimeRecord_CellEndEdit);
            this.dgvDailyTimeRecord.CellFormatting += new System.Windows.Forms.DataGridViewCellFormattingEventHandler(this.dgvDailyTimeRecord_CellFormatting);
            this.dgvDailyTimeRecord.MouseClick += new System.Windows.Forms.MouseEventHandler(this.dgvDailyTimeRecord_MouseClick);
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(550, 16);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(26, 23);
            this.label2.TabIndex = 158;
            this.label2.Text = "to";
            // 
            // dtpTo
            // 
            this.dtpTo.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.dtpTo.CustomFormat = "MM-dd-yyyy";
            this.dtpTo.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpTo.Location = new System.Drawing.Point(576, 12);
            this.dtpTo.Name = "dtpTo";
            this.dtpTo.Size = new System.Drawing.Size(105, 29);
            this.dtpTo.TabIndex = 157;
            // 
            // dtpFrom
            // 
            this.dtpFrom.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.dtpFrom.CustomFormat = "MM-dd-yyyy";
            this.dtpFrom.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpFrom.Location = new System.Drawing.Point(439, 12);
            this.dtpFrom.Name = "dtpFrom";
            this.dtpFrom.Size = new System.Drawing.Size(105, 29);
            this.dtpFrom.TabIndex = 156;
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(360, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(97, 23);
            this.label1.TabIndex = 155;
            this.label1.Text = "Date Filter :";
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.SystemColors.Control;
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.dtpTo);
            this.panel1.Controls.Add(this.dtpFrom);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.btnSave);
            this.panel1.Controls.Add(this.btnRefresh);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.btnClose);
            this.panel1.Location = new System.Drawing.Point(11, 6);
            this.panel1.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(974, 49);
            this.panel1.TabIndex = 154;
            // 
            // btnSave
            // 
            this.btnSave.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnSave.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSave.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSave.Image = ((System.Drawing.Image)(resources.GetObject("btnSave.Image")));
            this.btnSave.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSave.Location = new System.Drawing.Point(791, 4);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(136, 40);
            this.btnSave.TabIndex = 72;
            this.btnSave.Text = " &Save Changes";
            this.btnSave.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnRefresh
            // 
            this.btnRefresh.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnRefresh.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnRefresh.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnRefresh.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRefresh.Image = ((System.Drawing.Image)(resources.GetObject("btnRefresh.Image")));
            this.btnRefresh.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnRefresh.Location = new System.Drawing.Point(687, 4);
            this.btnRefresh.Name = "btnRefresh";
            this.btnRefresh.Size = new System.Drawing.Size(101, 40);
            this.btnRefresh.TabIndex = 71;
            this.btnRefresh.Text = "&Refresh";
            this.btnRefresh.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnRefresh.UseVisualStyleBackColor = false;
            this.btnRefresh.Click += new System.EventHandler(this.btnRefresh_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI Semibold", 21.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(59)))), ((int)(((byte)(117)))));
            this.label3.Location = new System.Drawing.Point(-8, 4);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(327, 50);
            this.label3.TabIndex = 57;
            this.label3.Text = "Daily Time Record";
            // 
            // btnClose
            // 
            this.btnClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnClose.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnClose.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClose.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClose.Image = ((System.Drawing.Image)(resources.GetObject("btnClose.Image")));
            this.btnClose.Location = new System.Drawing.Point(930, 4);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(44, 40);
            this.btnClose.TabIndex = 53;
            this.btnClose.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnClose.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnClose.UseVisualStyleBackColor = false;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // cmsFunction
            // 
            this.cmsFunction.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.cmsFunction.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiApplyLate,
            this.tsmiApplyUndertime,
            this.tsmiApplyOvertime,
            this.addTimeLogToolStripMenuItem});
            this.cmsFunction.Name = "cmsFunction";
            this.cmsFunction.Size = new System.Drawing.Size(196, 108);
            // 
            // tsmiApplyLate
            // 
            this.tsmiApplyLate.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiLate4hrs,
            this.tsmiLate8hrs});
            this.tsmiApplyLate.Image = ((System.Drawing.Image)(resources.GetObject("tsmiApplyLate.Image")));
            this.tsmiApplyLate.Name = "tsmiApplyLate";
            this.tsmiApplyLate.Size = new System.Drawing.Size(195, 26);
            this.tsmiApplyLate.Text = "Apply Late";
            // 
            // tsmiLate4hrs
            // 
            this.tsmiLate4hrs.Name = "tsmiLate4hrs";
            this.tsmiLate4hrs.Size = new System.Drawing.Size(118, 26);
            this.tsmiLate4hrs.Text = "4 hrs.";
            this.tsmiLate4hrs.Click += new System.EventHandler(this.tsmiLate4hrs_Click);
            // 
            // tsmiLate8hrs
            // 
            this.tsmiLate8hrs.Name = "tsmiLate8hrs";
            this.tsmiLate8hrs.Size = new System.Drawing.Size(118, 26);
            this.tsmiLate8hrs.Text = "8 hrs.";
            this.tsmiLate8hrs.Click += new System.EventHandler(this.tsmiLate8hrs_Click);
            // 
            // tsmiApplyUndertime
            // 
            this.tsmiApplyUndertime.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiUndertime4hrs,
            this.tsmiUndertime8hrs});
            this.tsmiApplyUndertime.Image = ((System.Drawing.Image)(resources.GetObject("tsmiApplyUndertime.Image")));
            this.tsmiApplyUndertime.Name = "tsmiApplyUndertime";
            this.tsmiApplyUndertime.Size = new System.Drawing.Size(195, 26);
            this.tsmiApplyUndertime.Text = "Apply Undertime";
            // 
            // tsmiUndertime4hrs
            // 
            this.tsmiUndertime4hrs.Name = "tsmiUndertime4hrs";
            this.tsmiUndertime4hrs.Size = new System.Drawing.Size(118, 26);
            this.tsmiUndertime4hrs.Text = "4 hrs.";
            this.tsmiUndertime4hrs.Click += new System.EventHandler(this.tsmiUndertime4hrs_Click);
            // 
            // tsmiUndertime8hrs
            // 
            this.tsmiUndertime8hrs.Name = "tsmiUndertime8hrs";
            this.tsmiUndertime8hrs.Size = new System.Drawing.Size(118, 26);
            this.tsmiUndertime8hrs.Text = "8 hrs.";
            this.tsmiUndertime8hrs.Click += new System.EventHandler(this.tsmiUndertime8hrs_Click);
            // 
            // tsmiApplyOvertime
            // 
            this.tsmiApplyOvertime.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiOpenTime,
            this.tsmiOvertime5,
            this.tsmOvertime6});
            this.tsmiApplyOvertime.Font = new System.Drawing.Font("Segoe UI", 9F);
            this.tsmiApplyOvertime.ForeColor = System.Drawing.Color.Black;
            this.tsmiApplyOvertime.Image = ((System.Drawing.Image)(resources.GetObject("tsmiApplyOvertime.Image")));
            this.tsmiApplyOvertime.Name = "tsmiApplyOvertime";
            this.tsmiApplyOvertime.Size = new System.Drawing.Size(195, 26);
            this.tsmiApplyOvertime.Text = "Apply Overtime";
            // 
            // tsmiOpenTime
            // 
            this.tsmiOpenTime.Name = "tsmiOpenTime";
            this.tsmiOpenTime.Size = new System.Drawing.Size(204, 26);
            this.tsmiOpenTime.Text = "Open Time";
            this.tsmiOpenTime.Click += new System.EventHandler(this.tsmiOpenTime_Click);
            // 
            // tsmiOvertime5
            // 
            this.tsmiOvertime5.Name = "tsmiOvertime5";
            this.tsmiOvertime5.Size = new System.Drawing.Size(204, 26);
            this.tsmiOvertime5.Text = "5:30 pm - 7:30 pm";
            this.tsmiOvertime5.Click += new System.EventHandler(this.tsmiOvertime5_Click);
            // 
            // tsmOvertime6
            // 
            this.tsmOvertime6.Name = "tsmOvertime6";
            this.tsmOvertime6.Size = new System.Drawing.Size(204, 26);
            this.tsmOvertime6.Text = "6:30 pm - 8:30 pm";
            this.tsmOvertime6.Click += new System.EventHandler(this.tsmOvertime6_Click);
            // 
            // addTimeLogToolStripMenuItem
            // 
            this.addTimeLogToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.checkInToolStripMenuItem,
            this.breakOutToolStripMenuItem,
            this.breakInToolStripMenuItem,
            this.checkOutToolStripMenuItem,
            this.toolStripSeparator1,
            this.overtimeInToolStripMenuItem,
            this.overtimeOutToolStripMenuItem});
            this.addTimeLogToolStripMenuItem.Image = ((System.Drawing.Image)(resources.GetObject("addTimeLogToolStripMenuItem.Image")));
            this.addTimeLogToolStripMenuItem.Name = "addTimeLogToolStripMenuItem";
            this.addTimeLogToolStripMenuItem.Size = new System.Drawing.Size(195, 26);
            this.addTimeLogToolStripMenuItem.Text = "Add Time Log";
            // 
            // checkInToolStripMenuItem
            // 
            this.checkInToolStripMenuItem.Name = "checkInToolStripMenuItem";
            this.checkInToolStripMenuItem.Size = new System.Drawing.Size(173, 26);
            this.checkInToolStripMenuItem.Text = "Check In";
            this.checkInToolStripMenuItem.Click += new System.EventHandler(this.checkInToolStripMenuItem_Click);
            // 
            // breakOutToolStripMenuItem
            // 
            this.breakOutToolStripMenuItem.Name = "breakOutToolStripMenuItem";
            this.breakOutToolStripMenuItem.Size = new System.Drawing.Size(173, 26);
            this.breakOutToolStripMenuItem.Text = "Break Out";
            this.breakOutToolStripMenuItem.Click += new System.EventHandler(this.breakOutToolStripMenuItem_Click);
            // 
            // breakInToolStripMenuItem
            // 
            this.breakInToolStripMenuItem.Name = "breakInToolStripMenuItem";
            this.breakInToolStripMenuItem.Size = new System.Drawing.Size(173, 26);
            this.breakInToolStripMenuItem.Text = "Break In";
            this.breakInToolStripMenuItem.Click += new System.EventHandler(this.breakInToolStripMenuItem_Click);
            // 
            // checkOutToolStripMenuItem
            // 
            this.checkOutToolStripMenuItem.Name = "checkOutToolStripMenuItem";
            this.checkOutToolStripMenuItem.Size = new System.Drawing.Size(173, 26);
            this.checkOutToolStripMenuItem.Text = "Check Out";
            this.checkOutToolStripMenuItem.Click += new System.EventHandler(this.checkOutToolStripMenuItem_Click);
            // 
            // toolStripSeparator1
            // 
            this.toolStripSeparator1.Name = "toolStripSeparator1";
            this.toolStripSeparator1.Size = new System.Drawing.Size(170, 6);
            // 
            // overtimeInToolStripMenuItem
            // 
            this.overtimeInToolStripMenuItem.Name = "overtimeInToolStripMenuItem";
            this.overtimeInToolStripMenuItem.Size = new System.Drawing.Size(173, 26);
            this.overtimeInToolStripMenuItem.Text = "Overtime In";
            this.overtimeInToolStripMenuItem.Click += new System.EventHandler(this.overtimeInToolStripMenuItem_Click);
            // 
            // overtimeOutToolStripMenuItem
            // 
            this.overtimeOutToolStripMenuItem.Name = "overtimeOutToolStripMenuItem";
            this.overtimeOutToolStripMenuItem.Size = new System.Drawing.Size(173, 26);
            this.overtimeOutToolStripMenuItem.Text = "Overtime Out";
            this.overtimeOutToolStripMenuItem.Click += new System.EventHandler(this.overtimeOutToolStripMenuItem_Click);
            // 
            // ProcessDailyTimeRecordUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 21F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(996, 531);
            this.Controls.Add(this.splitContainer1);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "ProcessDailyTimeRecordUI";
            this.Text = "Process Daily Time Record";
            this.Load += new System.EventHandler(this.ProcessDailyTimeRecordRegularUI_Load);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel1.PerformLayout();
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvEmployeeList)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDailyTimeRecord)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.cmsFunction.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.DataGridView dgvEmployeeList;
        private System.Windows.Forms.TextBox txtEmployeeName;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cboDepartment;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView dgvDailyTimeRecord;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DateTimePicker dtpTo;
        private System.Windows.Forms.DateTimePicker dtpFrom;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnRefresh;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.ContextMenuStrip cmsFunction;
        private System.Windows.Forms.ToolStripMenuItem tsmiApplyLate;
        private System.Windows.Forms.ToolStripMenuItem tsmiLate4hrs;
        private System.Windows.Forms.ToolStripMenuItem tsmiLate8hrs;
        private System.Windows.Forms.ToolStripMenuItem tsmiApplyUndertime;
        private System.Windows.Forms.ToolStripMenuItem tsmiUndertime4hrs;
        private System.Windows.Forms.ToolStripMenuItem tsmiUndertime8hrs;
        private System.Windows.Forms.ToolStripMenuItem tsmiApplyOvertime;
        private System.Windows.Forms.ToolStripMenuItem tsmiOpenTime;
        private System.Windows.Forms.ToolStripMenuItem tsmiOvertime5;
        private System.Windows.Forms.ToolStripMenuItem tsmOvertime6;
        private System.Windows.Forms.ComboBox cboEmploymentType;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ToolStripMenuItem addTimeLogToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem checkInToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem breakOutToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem breakInToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem checkOutToolStripMenuItem;
        private System.Windows.Forms.ToolStripSeparator toolStripSeparator1;
        private System.Windows.Forms.ToolStripMenuItem overtimeInToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem overtimeOutToolStripMenuItem;
    }
}
namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions
{
    partial class ImportDataFromBiometricsUI
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ImportDataFromBiometricsUI));
            this.panel1 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.btnFindDatabaseAddress = new System.Windows.Forms.Button();
            this.txtDabaseAddress = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.pgbImport = new System.Windows.Forms.ProgressBar();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.cboEmploymentType = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.lblImported = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lblConnected = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btnImport = new System.Windows.Forms.Button();
            this.dtpFrom = new System.Windows.Forms.DateTimePicker();
            this.dtpTo = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel1.BackColor = System.Drawing.SystemColors.Control;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.groupBox1);
            this.panel1.Controls.Add(this.pgbImport);
            this.panel1.Controls.Add(this.groupBox2);
            this.panel1.Location = new System.Drawing.Point(12, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(545, 305);
            this.panel1.TabIndex = 78;
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Red;
            this.label2.Location = new System.Drawing.Point(303, 117);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(227, 13);
            this.label2.TabIndex = 75;
            this.label2.Text = "Note:Importing may takes several minutes. ";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnFindDatabaseAddress);
            this.groupBox1.Controls.Add(this.txtDabaseAddress);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.ForeColor = System.Drawing.Color.Indigo;
            this.groupBox1.Location = new System.Drawing.Point(18, 13);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(506, 101);
            this.groupBox1.TabIndex = 73;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = " Find Database ";
            // 
            // btnFindDatabaseAddress
            // 
            this.btnFindDatabaseAddress.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnFindDatabaseAddress.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnFindDatabaseAddress.Image = ((System.Drawing.Image)(resources.GetObject("btnFindDatabaseAddress.Image")));
            this.btnFindDatabaseAddress.Location = new System.Drawing.Point(459, 51);
            this.btnFindDatabaseAddress.Name = "btnFindDatabaseAddress";
            this.btnFindDatabaseAddress.Size = new System.Drawing.Size(30, 25);
            this.btnFindDatabaseAddress.TabIndex = 1;
            this.btnFindDatabaseAddress.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnFindDatabaseAddress.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnFindDatabaseAddress.UseVisualStyleBackColor = false;
            this.btnFindDatabaseAddress.Click += new System.EventHandler(this.btnFindDatabaseAddress_Click);
            // 
            // txtDabaseAddress
            // 
            this.txtDabaseAddress.BackColor = System.Drawing.SystemColors.Window;
            this.txtDabaseAddress.Location = new System.Drawing.Point(20, 52);
            this.txtDabaseAddress.Name = "txtDabaseAddress";
            this.txtDabaseAddress.ReadOnly = true;
            this.txtDabaseAddress.Size = new System.Drawing.Size(436, 25);
            this.txtDabaseAddress.TabIndex = 64;
            this.txtDabaseAddress.TabStop = false;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.ForeColor = System.Drawing.Color.Black;
            this.label8.Location = new System.Drawing.Point(17, 28);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(186, 17);
            this.label8.TabIndex = 65;
            this.label8.Text = "Biometrics Database Address :";
            // 
            // pgbImport
            // 
            this.pgbImport.Location = new System.Drawing.Point(17, 265);
            this.pgbImport.Name = "pgbImport";
            this.pgbImport.Size = new System.Drawing.Size(507, 23);
            this.pgbImport.Step = 1;
            this.pgbImport.TabIndex = 76;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.cboEmploymentType);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.lblImported);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Controls.Add(this.lblConnected);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.btnImport);
            this.groupBox2.Controls.Add(this.dtpFrom);
            this.groupBox2.Controls.Add(this.dtpTo);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.ForeColor = System.Drawing.Color.Indigo;
            this.groupBox2.Location = new System.Drawing.Point(18, 133);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(506, 127);
            this.groupBox2.TabIndex = 74;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = " Connect Database";
            // 
            // cboEmploymentType
            // 
            this.cboEmploymentType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboEmploymentType.FormattingEnabled = true;
            this.cboEmploymentType.Items.AddRange(new object[] {
            "Regular",
            "Job Order"});
            this.cboEmploymentType.Location = new System.Drawing.Point(151, 26);
            this.cboEmploymentType.Name = "cboEmploymentType";
            this.cboEmploymentType.Size = new System.Drawing.Size(207, 25);
            this.cboEmploymentType.TabIndex = 67;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.ForeColor = System.Drawing.Color.Black;
            this.label6.Location = new System.Drawing.Point(19, 29);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(118, 17);
            this.label6.TabIndex = 66;
            this.label6.Text = "Employment Type :";
            // 
            // lblImported
            // 
            this.lblImported.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblImported.ForeColor = System.Drawing.Color.Blue;
            this.lblImported.Location = new System.Drawing.Point(118, 93);
            this.lblImported.Name = "lblImported";
            this.lblImported.Size = new System.Drawing.Size(240, 30);
            this.lblImported.TabIndex = 71;
            this.lblImported.Text = "Successfully Imported";
            this.lblImported.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.Color.Black;
            this.label1.Location = new System.Drawing.Point(44, 96);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(54, 17);
            this.label1.TabIndex = 70;
            this.label1.Text = "Status : ";
            // 
            // lblConnected
            // 
            this.lblConnected.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.lblConnected.Font = new System.Drawing.Font("Segoe UI Semibold", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblConnected.ForeColor = System.Drawing.Color.Green;
            this.lblConnected.Location = new System.Drawing.Point(118, 90);
            this.lblConnected.Name = "lblConnected";
            this.lblConnected.Size = new System.Drawing.Size(240, 34);
            this.lblConnected.TabIndex = 69;
            this.lblConnected.Text = "Connected";
            this.lblConnected.Visible = false;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.ForeColor = System.Drawing.Color.Black;
            this.label5.Location = new System.Drawing.Point(20, 62);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(78, 17);
            this.label5.TabIndex = 68;
            this.label5.Text = "Date Filter : ";
            // 
            // btnImport
            // 
            this.btnImport.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnImport.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnImport.Font = new System.Drawing.Font("Segoe UI Semibold", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnImport.ForeColor = System.Drawing.Color.Black;
            this.btnImport.Image = ((System.Drawing.Image)(resources.GetObject("btnImport.Image")));
            this.btnImport.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnImport.Location = new System.Drawing.Point(364, 26);
            this.btnImport.Name = "btnImport";
            this.btnImport.Size = new System.Drawing.Size(125, 57);
            this.btnImport.TabIndex = 5;
            this.btnImport.Text = "      Import";
            this.btnImport.UseVisualStyleBackColor = false;
            this.btnImport.Click += new System.EventHandler(this.btnImport_Click);
            // 
            // dtpFrom
            // 
            this.dtpFrom.CustomFormat = "MM-dd-yyyy";
            this.dtpFrom.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpFrom.Location = new System.Drawing.Point(118, 58);
            this.dtpFrom.Name = "dtpFrom";
            this.dtpFrom.Size = new System.Drawing.Size(104, 25);
            this.dtpFrom.TabIndex = 2;
            // 
            // dtpTo
            // 
            this.dtpTo.CustomFormat = "MM-dd-yyyy";
            this.dtpTo.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpTo.Location = new System.Drawing.Point(254, 58);
            this.dtpTo.Name = "dtpTo";
            this.dtpTo.Size = new System.Drawing.Size(104, 25);
            this.dtpTo.TabIndex = 3;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.ForeColor = System.Drawing.Color.Black;
            this.label3.Location = new System.Drawing.Point(229, 62);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(20, 17);
            this.label3.TabIndex = 8;
            this.label3.Text = "to";
            // 
            // ImportDataFromBiometricsUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(207)))), ((int)(((byte)(140)))));
            this.ClientSize = new System.Drawing.Size(569, 329);
            this.Controls.Add(this.panel1);
            this.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ImportDataFromBiometricsUI";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Import Data from Biometrics";
            this.Load += new System.EventHandler(this.ImportDataFromBiometricsUI_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnFindDatabaseAddress;
        private System.Windows.Forms.TextBox txtDabaseAddress;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.ProgressBar pgbImport;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.ComboBox cboEmploymentType;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lblImported;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblConnected;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnImport;
        private System.Windows.Forms.DateTimePicker dtpFrom;
        private System.Windows.Forms.DateTimePicker dtpTo;
        private System.Windows.Forms.Label label3;
    }
}
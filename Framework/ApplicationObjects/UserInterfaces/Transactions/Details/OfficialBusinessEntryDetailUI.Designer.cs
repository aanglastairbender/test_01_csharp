namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions.Details
{
    partial class OfficialBusinessEntryDetailUI
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(OfficialBusinessEntryDetailUI));
            this.btnSave = new System.Windows.Forms.Button();
            this.pnlBody = new System.Windows.Forms.Panel();
            this.chkTimeOut = new System.Windows.Forms.CheckBox();
            this.chkBreakIn = new System.Windows.Forms.CheckBox();
            this.chkBreakOut = new System.Windows.Forms.CheckBox();
            this.chkTimeIn = new System.Windows.Forms.CheckBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtPurpose = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtReferenceNo = new System.Windows.Forms.TextBox();
            this.cboType = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtRemarks = new System.Windows.Forms.TextBox();
            this.btnLookUpEmployee = new System.Windows.Forms.Button();
            this.lblDay = new System.Windows.Forms.Label();
            this.dtpDate = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.txtEmployeeName = new System.Windows.Forms.TextBox();
            this.txtEmployeeNo = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.pnlBody.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnSave
            // 
            this.btnSave.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnSave.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSave.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSave.Image = ((System.Drawing.Image)(resources.GetObject("btnSave.Image")));
            this.btnSave.Location = new System.Drawing.Point(214, 341);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(101, 40);
            this.btnSave.TabIndex = 9;
            this.btnSave.Text = " &Save";
            this.btnSave.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSave.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // pnlBody
            // 
            this.pnlBody.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlBody.BackColor = System.Drawing.SystemColors.Control;
            this.pnlBody.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlBody.Controls.Add(this.btnSave);
            this.pnlBody.Controls.Add(this.chkTimeOut);
            this.pnlBody.Controls.Add(this.chkBreakIn);
            this.pnlBody.Controls.Add(this.chkBreakOut);
            this.pnlBody.Controls.Add(this.chkTimeIn);
            this.pnlBody.Controls.Add(this.label10);
            this.pnlBody.Controls.Add(this.txtPurpose);
            this.pnlBody.Controls.Add(this.label4);
            this.pnlBody.Controls.Add(this.txtReferenceNo);
            this.pnlBody.Controls.Add(this.cboType);
            this.pnlBody.Controls.Add(this.label11);
            this.pnlBody.Controls.Add(this.txtRemarks);
            this.pnlBody.Controls.Add(this.btnLookUpEmployee);
            this.pnlBody.Controls.Add(this.lblDay);
            this.pnlBody.Controls.Add(this.dtpDate);
            this.pnlBody.Controls.Add(this.label2);
            this.pnlBody.Controls.Add(this.txtEmployeeName);
            this.pnlBody.Controls.Add(this.txtEmployeeNo);
            this.pnlBody.Controls.Add(this.label8);
            this.pnlBody.Controls.Add(this.label1);
            this.pnlBody.Location = new System.Drawing.Point(12, 11);
            this.pnlBody.Name = "pnlBody";
            this.pnlBody.Size = new System.Drawing.Size(526, 404);
            this.pnlBody.TabIndex = 6;
            // 
            // chkTimeOut
            // 
            this.chkTimeOut.AutoSize = true;
            this.chkTimeOut.Location = new System.Drawing.Point(263, 189);
            this.chkTimeOut.Name = "chkTimeOut";
            this.chkTimeOut.Size = new System.Drawing.Size(80, 21);
            this.chkTimeOut.TabIndex = 143;
            this.chkTimeOut.Text = "Time Out";
            this.chkTimeOut.UseVisualStyleBackColor = true;
            // 
            // chkBreakIn
            // 
            this.chkBreakIn.AutoSize = true;
            this.chkBreakIn.Location = new System.Drawing.Point(263, 162);
            this.chkBreakIn.Name = "chkBreakIn";
            this.chkBreakIn.Size = new System.Drawing.Size(73, 21);
            this.chkBreakIn.TabIndex = 142;
            this.chkBreakIn.Text = "Break In";
            this.chkBreakIn.UseVisualStyleBackColor = true;
            // 
            // chkBreakOut
            // 
            this.chkBreakOut.AutoSize = true;
            this.chkBreakOut.Location = new System.Drawing.Point(131, 189);
            this.chkBreakOut.Name = "chkBreakOut";
            this.chkBreakOut.Size = new System.Drawing.Size(84, 21);
            this.chkBreakOut.TabIndex = 141;
            this.chkBreakOut.Text = "Break Out";
            this.chkBreakOut.UseVisualStyleBackColor = true;
            // 
            // chkTimeIn
            // 
            this.chkTimeIn.AutoSize = true;
            this.chkTimeIn.Location = new System.Drawing.Point(131, 162);
            this.chkTimeIn.Name = "chkTimeIn";
            this.chkTimeIn.Size = new System.Drawing.Size(69, 21);
            this.chkTimeIn.TabIndex = 140;
            this.chkTimeIn.Text = "Time In";
            this.chkTimeIn.UseVisualStyleBackColor = true;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(22, 230);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(56, 17);
            this.label10.TabIndex = 105;
            this.label10.Text = "Purpose";
            // 
            // txtPurpose
            // 
            this.txtPurpose.Location = new System.Drawing.Point(131, 227);
            this.txtPurpose.Name = "txtPurpose";
            this.txtPurpose.Size = new System.Drawing.Size(361, 25);
            this.txtPurpose.TabIndex = 104;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(22, 123);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(91, 17);
            this.label4.TabIndex = 103;
            this.label4.Text = "Reference No.";
            // 
            // txtReferenceNo
            // 
            this.txtReferenceNo.Location = new System.Drawing.Point(131, 120);
            this.txtReferenceNo.Name = "txtReferenceNo";
            this.txtReferenceNo.Size = new System.Drawing.Size(174, 25);
            this.txtReferenceNo.TabIndex = 102;
            // 
            // cboType
            // 
            this.cboType.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboType.FormattingEnabled = true;
            this.cboType.Items.AddRange(new object[] {
            "Official Business",
            "Office Order",
            "Pass Slip",
            "Seminar",
            "Travel Order",
            "Trip Ticket"});
            this.cboType.Location = new System.Drawing.Point(131, 89);
            this.cboType.Name = "cboType";
            this.cboType.Size = new System.Drawing.Size(174, 25);
            this.cboType.TabIndex = 101;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(22, 261);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(58, 17);
            this.label11.TabIndex = 95;
            this.label11.Text = "Remarks";
            // 
            // txtRemarks
            // 
            this.txtRemarks.Location = new System.Drawing.Point(131, 258);
            this.txtRemarks.Multiline = true;
            this.txtRemarks.Name = "txtRemarks";
            this.txtRemarks.Size = new System.Drawing.Size(361, 56);
            this.txtRemarks.TabIndex = 94;
            // 
            // btnLookUpEmployee
            // 
            this.btnLookUpEmployee.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnLookUpEmployee.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLookUpEmployee.Image = ((System.Drawing.Image)(resources.GetObject("btnLookUpEmployee.Image")));
            this.btnLookUpEmployee.Location = new System.Drawing.Point(462, 58);
            this.btnLookUpEmployee.Name = "btnLookUpEmployee";
            this.btnLookUpEmployee.Size = new System.Drawing.Size(30, 25);
            this.btnLookUpEmployee.TabIndex = 79;
            this.btnLookUpEmployee.UseVisualStyleBackColor = false;
            this.btnLookUpEmployee.Click += new System.EventHandler(this.btnLookUpEmployee_Click);
            // 
            // lblDay
            // 
            this.lblDay.AutoSize = true;
            this.lblDay.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDay.ForeColor = System.Drawing.Color.Red;
            this.lblDay.Location = new System.Drawing.Point(247, 32);
            this.lblDay.Name = "lblDay";
            this.lblDay.Size = new System.Drawing.Size(0, 17);
            this.lblDay.TabIndex = 34;
            // 
            // dtpDate
            // 
            this.dtpDate.CustomFormat = "MM-dd-yyyy";
            this.dtpDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpDate.Location = new System.Drawing.Point(131, 27);
            this.dtpDate.Name = "dtpDate";
            this.dtpDate.Size = new System.Drawing.Size(106, 25);
            this.dtpDate.TabIndex = 0;
            this.dtpDate.ValueChanged += new System.EventHandler(this.dtpDate_ValueChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(22, 31);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 17);
            this.label2.TabIndex = 18;
            this.label2.Text = "Date";
            // 
            // txtEmployeeName
            // 
            this.txtEmployeeName.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtEmployeeName.Location = new System.Drawing.Point(131, 58);
            this.txtEmployeeName.Name = "txtEmployeeName";
            this.txtEmployeeName.ReadOnly = true;
            this.txtEmployeeName.Size = new System.Drawing.Size(325, 25);
            this.txtEmployeeName.TabIndex = 17;
            this.txtEmployeeName.TabStop = false;
            this.txtEmployeeName.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtEmployeeNo
            // 
            this.txtEmployeeNo.Location = new System.Drawing.Point(117, 58);
            this.txtEmployeeNo.Name = "txtEmployeeNo";
            this.txtEmployeeNo.ReadOnly = true;
            this.txtEmployeeNo.Size = new System.Drawing.Size(10, 25);
            this.txtEmployeeNo.TabIndex = 16;
            this.txtEmployeeNo.TabStop = false;
            this.txtEmployeeNo.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            this.txtEmployeeNo.Visible = false;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(22, 60);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(104, 17);
            this.label8.TabIndex = 15;
            this.label8.Text = "Employee Name";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(22, 92);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Type";
            // 
            // OfficialBusinessEntryDetailUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(207)))), ((int)(((byte)(140)))));
            this.ClientSize = new System.Drawing.Size(550, 427);
            this.Controls.Add(this.pnlBody);
            this.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "OfficialBusinessEntryDetailUI";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Official Business Entry Detail";
            this.Load += new System.EventHandler(this.OfficialBusinessEntryDetailUI_Load);
            this.pnlBody.ResumeLayout(false);
            this.pnlBody.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Panel pnlBody;
        private System.Windows.Forms.CheckBox chkTimeOut;
        private System.Windows.Forms.CheckBox chkBreakIn;
        private System.Windows.Forms.CheckBox chkBreakOut;
        private System.Windows.Forms.CheckBox chkTimeIn;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtPurpose;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtReferenceNo;
        private System.Windows.Forms.ComboBox cboType;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtRemarks;
        private System.Windows.Forms.Button btnLookUpEmployee;
        private System.Windows.Forms.Label lblDay;
        private System.Windows.Forms.DateTimePicker dtpDate;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtEmployeeName;
        private System.Windows.Forms.TextBox txtEmployeeNo;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label1;
    }
}
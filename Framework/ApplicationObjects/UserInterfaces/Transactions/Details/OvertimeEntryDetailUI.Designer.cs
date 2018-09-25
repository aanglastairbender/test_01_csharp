namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Transactions.Details
{
    partial class OvertimeEntryDetailUI
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(OvertimeEntryDetailUI));
            this.btnSave = new System.Windows.Forms.Button();
            this.pnlBody = new System.Windows.Forms.Panel();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.mtxtOvertime = new System.Windows.Forms.MaskedTextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtRemarks = new System.Windows.Forms.TextBox();
            this.btnLookUpEmployee = new System.Windows.Forms.Button();
            this.lblDay = new System.Windows.Forms.Label();
            this.dtpTimeOut = new System.Windows.Forms.DateTimePicker();
            this.dtpDate = new System.Windows.Forms.DateTimePicker();
            this.dtpTimeIn = new System.Windows.Forms.DateTimePicker();
            this.label2 = new System.Windows.Forms.Label();
            this.txtEmployeeName = new System.Windows.Forms.TextBox();
            this.txtEmployeeNo = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
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
            this.btnSave.Location = new System.Drawing.Point(219, 236);
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
            this.pnlBody.Controls.Add(this.label4);
            this.pnlBody.Controls.Add(this.label3);
            this.pnlBody.Controls.Add(this.label1);
            this.pnlBody.Controls.Add(this.mtxtOvertime);
            this.pnlBody.Controls.Add(this.label11);
            this.pnlBody.Controls.Add(this.txtRemarks);
            this.pnlBody.Controls.Add(this.btnLookUpEmployee);
            this.pnlBody.Controls.Add(this.lblDay);
            this.pnlBody.Controls.Add(this.dtpTimeOut);
            this.pnlBody.Controls.Add(this.dtpDate);
            this.pnlBody.Controls.Add(this.dtpTimeIn);
            this.pnlBody.Controls.Add(this.label2);
            this.pnlBody.Controls.Add(this.txtEmployeeName);
            this.pnlBody.Controls.Add(this.txtEmployeeNo);
            this.pnlBody.Controls.Add(this.label8);
            this.pnlBody.Location = new System.Drawing.Point(12, 11);
            this.pnlBody.Name = "pnlBody";
            this.pnlBody.Size = new System.Drawing.Size(522, 302);
            this.pnlBody.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(325, 121);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(64, 17);
            this.label4.TabIndex = 140;
            this.label4.Text = "Overtime";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(234, 97);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(61, 17);
            this.label3.TabIndex = 139;
            this.label3.Text = "Time Out";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(145, 97);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(50, 17);
            this.label1.TabIndex = 138;
            this.label1.Text = "Time In";
            // 
            // mtxtOvertime
            // 
            this.mtxtOvertime.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.mtxtOvertime.Location = new System.Drawing.Point(395, 118);
            this.mtxtOvertime.Mask = "00:00";
            this.mtxtOvertime.Name = "mtxtOvertime";
            this.mtxtOvertime.Size = new System.Drawing.Size(91, 25);
            this.mtxtOvertime.TabIndex = 96;
            this.mtxtOvertime.Text = "0000";
            this.mtxtOvertime.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.mtxtOvertime.ValidatingType = typeof(System.DateTime);
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(22, 155);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(58, 17);
            this.label11.TabIndex = 95;
            this.label11.Text = "Remarks";
            // 
            // txtRemarks
            // 
            this.txtRemarks.Location = new System.Drawing.Point(125, 152);
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
            this.btnLookUpEmployee.Location = new System.Drawing.Point(456, 57);
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
            this.lblDay.ForeColor = System.Drawing.Color.Indigo;
            this.lblDay.Location = new System.Drawing.Point(237, 30);
            this.lblDay.Name = "lblDay";
            this.lblDay.Size = new System.Drawing.Size(0, 17);
            this.lblDay.TabIndex = 34;
            // 
            // dtpTimeOut
            // 
            this.dtpTimeOut.CustomFormat = "hh:mm tt";
            this.dtpTimeOut.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpTimeOut.Location = new System.Drawing.Point(222, 118);
            this.dtpTimeOut.Name = "dtpTimeOut";
            this.dtpTimeOut.ShowUpDown = true;
            this.dtpTimeOut.Size = new System.Drawing.Size(91, 25);
            this.dtpTimeOut.TabIndex = 2;
            this.dtpTimeOut.Value = new System.DateTime(2012, 9, 18, 0, 0, 0, 0);
            this.dtpTimeOut.ValueChanged += new System.EventHandler(this.dtpTimeOut_ValueChanged);
            // 
            // dtpDate
            // 
            this.dtpDate.CustomFormat = "MM-dd-yyyy";
            this.dtpDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpDate.Location = new System.Drawing.Point(125, 26);
            this.dtpDate.Name = "dtpDate";
            this.dtpDate.Size = new System.Drawing.Size(106, 25);
            this.dtpDate.TabIndex = 0;
            this.dtpDate.ValueChanged += new System.EventHandler(this.dtpDate_ValueChanged);
            // 
            // dtpTimeIn
            // 
            this.dtpTimeIn.CustomFormat = "hh:mm tt";
            this.dtpTimeIn.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpTimeIn.Location = new System.Drawing.Point(125, 118);
            this.dtpTimeIn.Name = "dtpTimeIn";
            this.dtpTimeIn.ShowUpDown = true;
            this.dtpTimeIn.Size = new System.Drawing.Size(91, 25);
            this.dtpTimeIn.TabIndex = 1;
            this.dtpTimeIn.Value = new System.DateTime(2012, 9, 18, 0, 0, 0, 0);
            this.dtpTimeIn.ValueChanged += new System.EventHandler(this.dtpTimeIn_ValueChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(22, 29);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 17);
            this.label2.TabIndex = 18;
            this.label2.Text = "Date";
            // 
            // txtEmployeeName
            // 
            this.txtEmployeeName.Font = new System.Drawing.Font("Segoe UI Semibold", 9.75F, System.Drawing.FontStyle.Bold);
            this.txtEmployeeName.Location = new System.Drawing.Point(125, 57);
            this.txtEmployeeName.Name = "txtEmployeeName";
            this.txtEmployeeName.ReadOnly = true;
            this.txtEmployeeName.Size = new System.Drawing.Size(325, 25);
            this.txtEmployeeName.TabIndex = 17;
            this.txtEmployeeName.TabStop = false;
            this.txtEmployeeName.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtEmployeeNo
            // 
            this.txtEmployeeNo.Location = new System.Drawing.Point(113, 57);
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
            this.label8.Location = new System.Drawing.Point(22, 59);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(104, 17);
            this.label8.TabIndex = 15;
            this.label8.Text = "Employee Name";
            // 
            // OvertimeEntryDetailUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(207)))), ((int)(((byte)(140)))));
            this.ClientSize = new System.Drawing.Size(546, 325);
            this.Controls.Add(this.pnlBody);
            this.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "OvertimeEntryDetailUI";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Overtime Entry Detail";
            this.Load += new System.EventHandler(this.OvertimeEntryDetialUI_Load);
            this.pnlBody.ResumeLayout(false);
            this.pnlBody.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Panel pnlBody;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.MaskedTextBox mtxtOvertime;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtRemarks;
        private System.Windows.Forms.Button btnLookUpEmployee;
        private System.Windows.Forms.Label lblDay;
        private System.Windows.Forms.DateTimePicker dtpTimeOut;
        private System.Windows.Forms.DateTimePicker dtpDate;
        private System.Windows.Forms.DateTimePicker dtpTimeIn;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtEmployeeName;
        private System.Windows.Forms.TextBox txtEmployeeNo;
        private System.Windows.Forms.Label label8;
    }
}
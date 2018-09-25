namespace JBC_PMIS_Government.Global
{
    partial class SwipeCardUI
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SwipeCardUI));
            this.tmrBlink = new System.Windows.Forms.Timer(this.components);
            this.btnClick = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.lblScanNow = new System.Windows.Forms.Label();
            this.txtCardDetails = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // tmrBlink
            // 
            this.tmrBlink.Interval = 500;
            this.tmrBlink.Tick += new System.EventHandler(this.tmrBlink_Tick);
            // 
            // btnClick
            // 
            this.btnClick.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnClick.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnClick.Font = new System.Drawing.Font("Segoe UI Semibold", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClick.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnClick.Location = new System.Drawing.Point(17, 14);
            this.btnClick.Name = "btnClick";
            this.btnClick.Size = new System.Drawing.Size(300, 59);
            this.btnClick.TabIndex = 13;
            this.btnClick.Text = "Click here to continue!";
            this.btnClick.UseVisualStyleBackColor = false;
            this.btnClick.Visible = false;
            this.btnClick.Click += new System.EventHandler(this.btnClick_Click);
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(-2, -6);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(14, 27);
            this.label1.TabIndex = 14;
            // 
            // lblScanNow
            // 
            this.lblScanNow.AutoSize = true;
            this.lblScanNow.Font = new System.Drawing.Font("Segoe UI Semibold", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblScanNow.ForeColor = System.Drawing.Color.Red;
            this.lblScanNow.Location = new System.Drawing.Point(78, 30);
            this.lblScanNow.Name = "lblScanNow";
            this.lblScanNow.Size = new System.Drawing.Size(195, 25);
            this.lblScanNow.TabIndex = 11;
            this.lblScanNow.Text = "Swipe your card now!";
            // 
            // txtCardDetails
            // 
            this.txtCardDetails.BackColor = System.Drawing.Color.White;
            this.txtCardDetails.ForeColor = System.Drawing.SystemColors.Window;
            this.txtCardDetails.Location = new System.Drawing.Point(1, -6);
            this.txtCardDetails.Multiline = true;
            this.txtCardDetails.Name = "txtCardDetails";
            this.txtCardDetails.PasswordChar = ' ';
            this.txtCardDetails.Size = new System.Drawing.Size(11, 27);
            this.txtCardDetails.TabIndex = 12;
            this.txtCardDetails.TextChanged += new System.EventHandler(this.txtCardDetails_TextChanged);
            // 
            // SwipeCardUI
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 17F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(336, 86);
            this.Controls.Add(this.btnClick);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblScanNow);
            this.Controls.Add(this.txtCardDetails);
            this.Font = new System.Drawing.Font("Segoe UI", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "SwipeCardUI";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Credit Card";
            this.Load += new System.EventHandler(this.SwipeCardUI_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Timer tmrBlink;
        private System.Windows.Forms.Button btnClick;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblScanNow;
        private System.Windows.Forms.TextBox txtCardDetails;

    }
}
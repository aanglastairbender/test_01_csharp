using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace JBC_PMIS_Government.Global
{
    public partial class SwipeCardUI : Form
    {
        public string lCardDetails;
        public bool lOk = false;
        bool lVisible = true;
        
        public SwipeCardUI()
        {
            InitializeComponent();
        }

        private void SwipeCardUI_Load(object sender, EventArgs e)
        {
            txtCardDetails.Clear();
            txtCardDetails.Focus();
            tmrBlink.Enabled = true;
            btnClick.Visible = false;
        }

        private void btnClick_Click(object sender, EventArgs e)
        {
            if (txtCardDetails.Text != "")
            {
                lCardDetails = txtCardDetails.Text;
                lOk = true;
                tmrBlink.Enabled = false;
                txtCardDetails.Focus();
                this.Close();
            }
        }

        private void txtCardDetails_TextChanged(object sender, EventArgs e)
        {
            if (txtCardDetails.Text != "")
            {
                btnClick.Visible = true;
            }
        }

        private void tmrBlink_Tick(object sender, EventArgs e)
        {
            if (lVisible)
            {
                lblScanNow.Visible = true;
                lVisible = false;
            }
            else
            {
                lblScanNow.Visible = false;
                lVisible = true;
            }
        }
    }
}

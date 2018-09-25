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
    public partial class NumericKeyboardUI : Form
    {
        #region "VARIABLES"
        public string lInputString = "";
        public string lInputFor = "";
        public bool lFromEnter = false;
        private bool lStart = true;
        #endregion "END OF VARIABLES"

        #region "CONTRUCTORS"
        public NumericKeyboardUI()
        {
            InitializeComponent();
        }
        public NumericKeyboardUI(string pInputFor)
        {
            InitializeComponent();
            this.Text = pInputFor;
        }

        public NumericKeyboardUI(string pValueString, string pInputFor)
        {
            InitializeComponent();
            txtInputString.Text = pValueString;
            this.Text = pInputFor;
        }
        #endregion "END OF CONTRUCTORS"

        private void NumericKeyboardUI_Load(object sender, EventArgs e)
        {
            txtInputString.Text = lInputString;
            this.Text = lInputFor;
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtInputString.Clear();
        }

        private void btnBackspace_Click(object sender, EventArgs e)
        {
            try
            {
                string stringcount = txtInputString.Text;
                txtInputString.Text = stringcount.Remove(stringcount.Count() - 1);
            }
            catch
            { }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnEnter_Click(object sender, EventArgs e)
        {
            lInputString = txtInputString.Text;
            lFromEnter = true;
            this.Close();
        }

        private void btnPoint_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText(".");
            txtInputString.Focus();
        }

        private void btnZero_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("0");
            txtInputString.Focus();
            
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("1");
            txtInputString.Focus();
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("2");
            txtInputString.Focus();
        }

        private void btn3_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("3");
            txtInputString.Focus();
        }

        private void btn4_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("4");
            txtInputString.Focus();
        }

        private void btn5_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("5");
            txtInputString.Focus();
        }

        private void btn6_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("6");
            txtInputString.Focus();
        }

        private void btn7_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("7");
            txtInputString.Focus();
        }

        private void btn8_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("8");
            txtInputString.Focus();
        }

        private void btn9_Click(object sender, EventArgs e)
        {
            if (lStart)
            {
                txtInputString.Clear();
                lStart = false;
            }
            txtInputString.AppendText("9");
            txtInputString.Focus();
        }

        private void txtInputString_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '\r')
            {
                btnEnter_Click(null, new EventArgs());
            }
        }
    }
}

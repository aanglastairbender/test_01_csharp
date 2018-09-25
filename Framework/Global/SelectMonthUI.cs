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
    public partial class SelectMonthUI : Form
    {
        public string lMonth;
        public bool lSelectMonth;
        bool lFirst;
        public SelectMonthUI(string pMonth)
        {
            InitializeComponent();
            lSelectMonth = false;
            lFirst = false;
            cboMonth.SelectedIndex = 0;
            if (pMonth != "")
            {
                cboMonth.Text = pMonth;
            }
            lFirst = true;
        }

        private void cboMonth_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (lFirst)
            {
                lMonth = cboMonth.Text;
                lSelectMonth = true;
                this.Close();
            }
        }

        private void SelectMonthUI_Load(object sender, EventArgs e)
        {

        }
    }
}

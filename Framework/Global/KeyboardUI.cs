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
    public partial class KeyboardUI : Form
    {
        #region "VARIABLES"
        public string lInputString = "";
        public string lInputFor = "";
        public bool lPassword = false;
        public bool lFromEnter = false;
        bool lIsCapsLock = false;
        #endregion "END OF VARIABLES"

        #region "CONTRUCTORS"
        public KeyboardUI()
        {
            InitializeComponent();
        }
        public KeyboardUI(string pInputFor)
        {
            InitializeComponent();
            this.Text = pInputFor;
        }

        public KeyboardUI(string pValueString, string pInputFor)
        {
            InitializeComponent();
            txtInputString.Text = pValueString;
            this.Text = pInputFor;
        }
        public KeyboardUI(string pValueString, char pPasswordChar, string pInputFor)
        {
            InitializeComponent();
            txtInputString.Text = pValueString;
            txtInputString.PasswordChar = pPasswordChar;
            this.Text = pInputFor;
        }
        #endregion "END OF CONTRUCTORS"

        private void KeyboardUI_Load(object sender, EventArgs e)
        {
            txtInputString.Text = lInputString;
            this.Text = lInputFor;
            if (lPassword)
            {
                txtInputString.PasswordChar = '*';
            }
            else
            {
                txtInputString.PasswordChar = '\0';
            }
        }

        private void btnCapsLock_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                lIsCapsLock = false;
                btnCapsLock.ForeColor = Color.Black;
                btnA.Text = "a";
                btnB.Text = "b";
                btnC.Text = "c";
                btnD.Text = "d";
                btnE.Text = "e";
                btnF.Text = "f";
                btnG.Text = "g";
                btnH.Text = "h";
                btnI.Text = "i";
                btnJ.Text = "j";
                btnK.Text = "k";
                btnL.Text = "l";
                btnM.Text = "m";
                btnN.Text = "n";
                btnO.Text = "o";
                btnP.Text = "p";
                btnQ.Text = "q";
                btnR.Text = "r";
                btnS.Text = "s";
                btnT.Text = "t";
                btnU.Text = "u";
                btnV.Text = "v";
                btnW.Text = "w";
                btnX.Text = "x";
                btnY.Text = "y";
                btnZ.Text = "z";
            }
            else
            {
                lIsCapsLock = true;
                btnCapsLock.ForeColor = Color.Red;
                btnA.Text = "A";
                btnB.Text = "B";
                btnC.Text = "C";
                btnD.Text = "D";
                btnE.Text = "E";
                btnF.Text = "F";
                btnG.Text = "G";
                btnH.Text = "H";
                btnI.Text = "I";
                btnJ.Text = "J";
                btnK.Text = "K";
                btnL.Text = "L";
                btnM.Text = "M";
                btnN.Text = "N";
                btnO.Text = "O";
                btnP.Text = "P";
                btnQ.Text = "Q";
                btnR.Text = "R";
                btnS.Text = "S";
                btnT.Text = "T";
                btnU.Text = "U";
                btnV.Text = "V";
                btnW.Text = "W";
                btnX.Text = "X";
                btnY.Text = "Y";
                btnZ.Text = "Z";
            }
        }

        private void btn1_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("1");
            txtInputString.Focus();
        }

        private void btn2_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("2");
            txtInputString.Focus();
        }

        private void btn3_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("3");
            txtInputString.Focus();
        }

        private void btn4_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("4");
            txtInputString.Focus();
        }

        private void btn5_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("5");
            txtInputString.Focus();
        }

        private void btn6_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("6");
            txtInputString.Focus();
        }

        private void btn7_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("7");
            txtInputString.Focus();
        }

        private void btn8_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("8");
            txtInputString.Focus();
        }

        private void btn9_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("9");
            txtInputString.Focus();
        }

        private void btn0_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("0");
            txtInputString.Focus();
        }

        private void btnEnter_Click(object sender, EventArgs e)
        {
            lInputString = txtInputString.Text;
            lFromEnter = true;
            this.Close();
        }

        private void btnQ_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("Q");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("q");
                txtInputString.Focus();
            }
        }

        private void btnW_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("W");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("w");
                txtInputString.Focus();
            }
        }

        private void btnE_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("E");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("e");
                txtInputString.Focus();
            }
        }

        private void btnR_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("R");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("r");
                txtInputString.Focus();
            }
        }

        private void btnT_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("T");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("t");
                txtInputString.Focus();
            }
        }

        private void btnY_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("Y");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("y");
                txtInputString.Focus();
            }
        }

        private void btnU_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("U");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("u");
                txtInputString.Focus();
            }
        }

        private void btnI_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("I");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("i");
                txtInputString.Focus();
            }
        }

        private void btnO_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("O");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("o");
                txtInputString.Focus();
            }
        }

        private void btnP_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("P");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("p");
                txtInputString.Focus();
            }
        }

        private void btnA_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("A");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("a");
                txtInputString.Focus();
            }
        }

        private void btnS_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("S");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("s");
                txtInputString.Focus();
            }
        }

        private void btnD_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("D");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("d");
                txtInputString.Focus();
            }
        }

        private void btnF_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("F");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("f");
                txtInputString.Focus();
            }
        }

        private void btnG_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("G");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("g");
                txtInputString.Focus();
            }
        }

        private void btnH_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("H");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("h");
                txtInputString.Focus();
            }
        }

        private void btnJ_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("J");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("j");
                txtInputString.Focus();
            }
        }

        private void btnK_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("K");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("k");
                txtInputString.Focus();
            }
        }

        private void btnL_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("L");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("l");
                txtInputString.Focus();
            }
        }

        private void btnZ_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("Z");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("z");
                txtInputString.Focus();
            }
        }

        private void btnX_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("X");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("x");
                txtInputString.Focus();
            }
        }

        private void btnC_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("C");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("c");
                txtInputString.Focus();
            }
        }

        private void btnV_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("V");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("v");
                txtInputString.Focus();
            }
        }

        private void btnB_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("B");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("b");
                txtInputString.Focus();
            }
        }

        private void btnN_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("N");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("n");
                txtInputString.Focus();
            }
        }

        private void btnSpecialCharacters_Click(object sender, EventArgs e)
        {
            pnlSpecialCharacters.Visible = true;
            pnlBody.Visible = false;
        }

        private void btnComma_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText(",");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnPeriod_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText(".");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnColon_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText(":");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnSemiColor_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText(";");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnSingelQuote_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("'");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnDoublQuote_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("\"");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnMinus_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("-");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnPlus_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("+");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnEquals_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("=");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnForwardSlash_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("/");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnBackSlash_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("\\");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnVerticalBar_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("|");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnGraveAccent_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("`");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnTilde_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("~");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnExclamationMark_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("!");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnAtSign_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("@");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnNumberSign_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("#");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnDollarSign_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("$");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnPercentSign_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("%");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnCaret_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("^");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnAmpersand_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("&");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnMultiply_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("*");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnOpenBracket_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("(");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnCloseBracket_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText(")");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnLesserThanSign_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("<");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnGreaterThanSign_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText(">");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }

        private void btnQuestionMark_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText("?");
            txtInputString.Focus();
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
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

        private void btnClear_Click(object sender, EventArgs e)
        {
            txtInputString.Clear();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnSpace_Click(object sender, EventArgs e)
        {
            txtInputString.AppendText(" ");
            txtInputString.Focus();
        }

        private void btnM_Click(object sender, EventArgs e)
        {
            if (lIsCapsLock)
            {
                txtInputString.AppendText("M");
                txtInputString.Focus();
            }
            else
            {
                txtInputString.AppendText("m");
                txtInputString.Focus();
            }
        }

        private void txtInputString_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '\r')
            {
                btnEnter_Click(null, new EventArgs());
            }
        }

        private void btnCancelSpecialChar_Click(object sender, EventArgs e)
        {
            pnlSpecialCharacters.Visible = false;
            pnlBody.Visible = true;
        }
    }
}

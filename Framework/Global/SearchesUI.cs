using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Reflection;
using System.Collections;
using MySql.Data.MySqlClient;

using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Shared;
using CrystalDecisions.Windows.Forms;
using JBC_PMIS_Government.ApplicationObjects.Classes;

namespace JBC_PMIS_Government.Global
{
    public partial class SearchesUI : Form
    {
        #region "VARIABLES"
        public string lQuery;
        public string lAlias;
        public bool lFromShow;
        public string lMenuName;
        public string lTitle;
        public ParameterFields lParamFields;
        FieldInfo[] lFieldInfo;
        Type lType;
        Hashtable itemHash = new Hashtable();
        //Hashtable operatorHash = new Hashtable();
        List<string> lItems = new List<string>();
        //List<string> lOperators = new List<string>();
        LookUpValueUI loLookupValue;
        Common loCommon;
        GlobalVariables.Operation lOperation = GlobalVariables.Operation.Edit;
        bool lFromAdd = false;
        //KeyboardUI loKeyboardUI;
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public SearchesUI(FieldInfo[] pFieldInfo, Type pType, string pMenuName)
        {
            InitializeComponent();
            lFieldInfo = pFieldInfo;
            lType = pType;
            loadFields();
            //loadOperatorsToHashTable();
            loadComboBoxes();
            loLookupValue = new LookUpValueUI();
            loCommon = new Common();
            lMenuName = pMenuName;
            loadTemplateName();
        }

        #endregion "END OF CONSTRUCTORS"

        #region "METHODS"
        private void loadFields()
        {
            string _name;
            string _fieldType;
            for (int i = 1; i < lFieldInfo.Length; i++)
            {
                _name = lFieldInfo[i].Name.ToString();
                _fieldType = lFieldInfo[i].FieldType.ToString();
                if (_name.Contains('<'))
                {
                    string[] words = _name.Split('<', '>');
                    lItems.Add(splitUpperCaseWord(words[1]));
                    itemHash.Add(splitUpperCaseWord(words[1]), _fieldType);
                }
                else
                {
                    lItems.Add(splitUpperCaseWord(_name));
                    itemHash.Add(splitUpperCaseWord(_name), _fieldType);
                }
            }
            //lsbCurrentFields.DataSource = lItems;
        }
        private string splitUpperCaseWord(string pString)
        {
            String PreString = pString;
            System.Text.StringBuilder SB = new System.Text.StringBuilder();

            foreach (Char C in PreString)
            {
                if (Char.IsUpper(C))
                    SB.Append(' ');
                SB.Append(C);
            }
            return SB.ToString();
        }
        private void loadComboBoxes()
        {
            lItems.ForEach(delegate(String item)
            {
                cboField1.Items.Add(item);
                cboField2.Items.Add(item);
                cboField3.Items.Add(item);
                cboField4.Items.Add(item);
                cboField5.Items.Add(item);
                cboField6.Items.Add(item);
                cboField7.Items.Add(item);
                cboField8.Items.Add(item);
            });

            cboOperator1.SelectedIndex = 0;
            cboOperator2.SelectedIndex = 0;
            cboOperator3.SelectedIndex = 0;
            cboOperator4.SelectedIndex = 0;
            cboOperator5.SelectedIndex = 0;
            cboOperator6.SelectedIndex = 0;
            cboOperator7.SelectedIndex = 0;
            cboOperator8.SelectedIndex = 0;
        }
        private string setDataTime(string pCBOValue,string pDateTime)
        {
            string _returnString = "";
            DateTimePickerUI _datetime = new DateTimePickerUI(pDateTime);
            _datetime.ShowDialog();
            if (_datetime.lSelectDate)
            {
                if (pCBOValue.Contains("Date"))
                {
                    _returnString = String.Format("{0:yyyy-MM-dd}", _datetime.lDateTime);
                }
                else if (pCBOValue.Contains("Time"))
                {
                    _returnString = String.Format("{0:HH:mm:ss}", _datetime.lDateTime);
                }
                else if (pCBOValue == " Month")
                {
                    _returnString = String.Format("{0:MMMM}", _datetime.lDateTime);
                }
                else if (pCBOValue == " Year")
                {
                    _returnString = String.Format("{0:yyyy}", _datetime.lDateTime);
                }
                else
                {
                    _returnString = String.Format("{0:u}", _datetime.lDateTime).Replace("Z", "");
                }
            }
            return _returnString;
        }

        private string setMonth(string pMonth)
        {
            SelectMonthUI _SelectMonth = new SelectMonthUI(pMonth);
            _SelectMonth.ShowDialog();
            if (_SelectMonth.lSelectMonth)
            {
                return _SelectMonth.lMonth;
            }
            else
            {
                return null;
            }
        }

        private string CreateSelectQuery()
        {
            string query = "";
            string condition = "";

            #region"for where statements"

            if (cboField1.Text != "" && cboValue1.Text != "")
            {
                getCondition(ref condition, cboField1.Text, cboOperator1.Text, cboValue1.Text);
            }
            if (cboField2.Text != "" && cboValue2.Text != "")
            {
                checkCondition(ref condition, chkAND1);
                getCondition(ref condition, cboField2.Text, cboOperator2.Text, cboValue2.Text);
            }
            if (cboField3.Text != "" && cboValue3.Text != "")
            {
                checkCondition(ref condition, chkAND2);
                getCondition(ref condition, cboField3.Text, cboOperator3.Text, cboValue3.Text);
            }
            if (cboField4.Text != "" && cboValue4.Text != "")
            {
                checkCondition(ref condition, chkAND3);
                getCondition(ref condition, cboField4.Text, cboOperator4.Text, cboValue4.Text);
            }
            if (cboField5.Text != "" && cboValue5.Text != "")
            {
                checkCondition(ref condition, chkAND4);
                getCondition(ref condition, cboField5.Text, cboOperator5.Text, cboValue5.Text);
            }

            if (cboField6.Text != "" && cboValue6.Text != "")
            {
                checkCondition(ref condition, chkAND5);
                getCondition(ref condition, cboField6.Text, cboOperator6.Text, cboValue6.Text);
            }

            if (cboField7.Text != "" && cboValue7.Text != "")
            {
                checkCondition(ref condition, chkAND6);
                getCondition(ref condition, cboField7.Text, cboOperator7.Text, cboValue7.Text);
            }

            if (cboField8.Text != "" && cboValue8.Text != "")
            {
                checkCondition(ref condition, chkAND7);
                getCondition(ref condition, cboField8.Text, cboOperator8.Text, cboValue8.Text);
            }
            #endregion

            condition = condition.Replace('*', ' ');
            string[] tables = lType.ToString().Split('.');
            int counttables = tables.Length;
            string tablename = tables[counttables - 1];
            if (condition != "")
            {
                query += " WHERE " + condition;
            }
            else
            {
                return "";
            }
            return query;
        }
        private void getCondition(ref string pCondition, string pField, string pOperator, string pValue)
        {
            if (pField.Contains("Date"))
            {
                switch (pOperator)
                {
                    case "Equals":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat("DATE(", lAlias, pField.Replace(" ", ""), ") = DATE('", pValue, "')*"));
                        break;
                    case "Not Equals":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat("DATE(", lAlias, pField.Replace(" ", ""), ") != DATE('", pValue, "')*"));
                        break;
                    case "Greater Than":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat("DATE(", lAlias, pField.Replace(" ", ""), ") > DATE('", pValue, "')*"));
                        break;
                    case "Lesser Than":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat("DATE(", lAlias, pField.Replace(" ", ""), ") < DATE('", pValue, "')*"));
                        break;
                    case "Greater Than or Equals":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat("DATE(", lAlias, pField.Replace(" ", ""), ") >= DATE('", pValue, "')*"));
                        break;
                    case "Lesser Than or Equals":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat("DATE(", lAlias, pField.Replace(" ", ""), ") <= DATE('", pValue, "')*"));
                        break;
                    case "Starts With":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat("DATE(", lAlias, pField.Replace(" ", ""), ") LIKE DATE('", pValue, "%')*"));

                        break;
                    case "Ends With":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat("DATE(", lAlias, pField.Replace(" ", ""), ") LIKE DATE('%", pValue, "')*"));
                        break;
                    case "Contains":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat("DATE(", lAlias, pField.Replace(" ", ""), ") LIKE DATE('%", pValue, "%')*"));
                        break;
                }
            }
            else
            {
                switch (pOperator)
                {
                    case "Equals":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat(lAlias, pField.Replace(" ", ""), " = '", pValue, "'*"));
                        break;
                    case "Not Equals":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat(lAlias, pField.Replace(" ", ""), " != '", pValue, "'*"));
                        break;
                    case "Greater Than":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat(lAlias, pField.Replace(" ", ""), " > '", pValue, "'*"));
                        break;
                    case "Lesser Than":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat(lAlias, pField.Replace(" ", ""), " < '", pValue, "'*"));
                        break;
                    case "Greater Than or Equals":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat(lAlias, pField.Replace(" ", ""), " >= '", pValue, "'*"));
                        break;
                    case "Lesser Than or Equals":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat(lAlias, pField.Replace(" ", ""), " <= '", pValue, "'*"));
                        break;
                    case "Starts With":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat(lAlias, pField.Replace(" ", ""), " LIKE '", pValue, "%'*"));
                        break;
                    case "Ends With":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat(lAlias, pField.Replace(" ", ""), " LIKE '%", pValue, "'*"));
                        break;
                    case "Contains":
                        pCondition = pCondition.Insert(pCondition.Length, string.Concat(lAlias, pField.Replace(" ", ""), " LIKE '%", pValue, "%'*"));
                        break;
                }
            }
        }
        private string getOperatorSign(string pOperator)
        {
            switch (pOperator)
            {
                case "Equals":
                    return "=";
                case "Not Equals":
                    return "!=";
                case "Greater Than":
                    return ">";
                case "Lesser Than":
                    return "<";
                case "Greater Than or Equals":
                    return ">=";
                case "Lesser Than or Equals":
                    return "<=";
                case "Starts With":
                    return "";
                case "Ends With":
                    return "";
                case "Contains":
                    return "";
            }
            return "";
        }
        private void checkCondition(ref string pCondition, CheckBox pChkAND)
        {
            if (pCondition.Contains("*"))
            {
                if (pChkAND.Checked)
                {
                    pCondition = pCondition.Replace("*", " AND ");
                }
                else
                {
                    pCondition = pCondition.Replace("*", " OR ");
                }
            }
        }
        private void loadTemplateName()
        {
            cboTemplateName.Items.Clear();
            chkPrivate.Checked = false;
            foreach (DataRow dr in loCommon.getTemplateNames(lMenuName).Rows)
            {
                cboTemplateName.Items.Add(dr["TemplateName"].ToString());
            }
        }
        #endregion "END OF METHODS"

        #region "EVENTS"
        private void SearchesUI_Load(object sender, EventArgs e)
        {
            lFromShow = false;
            lQuery = "";
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnLookUp1_Click(object sender, EventArgs e)
        {
            if (itemHash.ContainsKey(cboField1.Text))
            {
                object val = itemHash[cboField1.Text];
                bool _hasValue = false;
                string _classname = "";
                GlobalClassHandler ch = new GlobalClassHandler();
                if (val.ToString().Contains("System.DateTime"))
                {
                    cboValue1.Text = setDataTime(cboField1.Text, cboValue1.Text);
                    _hasValue = true;
                }
                else if (cboField1.Text == " Year")
                {
                    cboValue1.Text = setDataTime(cboField1.Text, cboValue1.Text);
                    _hasValue = true;
                }
                else if (cboField1.Text.Contains("Username") || cboField1.Text == " Approved By" ||
                            cboField1.Text == " Processed By" || cboField1.Text == " Finalized By" ||
                            cboField1.Text == " Closed By")
                {
                    _classname = "User";
                }
                else if (cboField1.Text == " Employee No")
                {
                    _classname = "Employee";
                }
                else if (cboField1.Text.Contains("Id"))
                {
                    _classname = cboField1.Text.Replace("Id", "");
                    _classname = _classname.Replace(" ", "");
                }
                else if (cboField1.Text.Contains("Code"))
                {
                    _classname = cboField1.Text.Replace("Code", "");
                    _classname = _classname.Replace(" ", "");
                }

                if (_classname != "")
                {
                    try
                    {
                        Type _ObjectType = ch.createObjectFromClass(_classname);
                        object ClassInstance = Activator.CreateInstance(_ObjectType);

                        loLookupValue.lObject = ClassInstance;
                        loLookupValue.lType = _ObjectType;
                        loLookupValue.lTableName = _classname;
                        loLookupValue.ShowDialog();
                        if (loLookupValue.lFromSelection)
                        {
                            cboValue1.Text = loLookupValue.lCode;
                            cboValue1.Focus();
                        }
                    }
                    catch
                    {
                        cboValue1.Text = "";
                        cboValue1.Focus();
                    }
                }
                else
                {
                    if (!_hasValue)
                    {
                        cboValue1.Text = "";
                        cboValue1.Focus();
                    }
                }
            }
        }

        private void btnLookUp2_Click(object sender, EventArgs e)
        {
            if (itemHash.ContainsKey(cboField2.Text))
            {
                object val = itemHash[cboField2.Text];
                bool _hasValue = false;
                string _classname = "";
                GlobalClassHandler ch = new GlobalClassHandler();
                if (val.ToString().Contains("System.DateTime"))
                {
                    cboValue2.Text = setDataTime(cboField2.Text, cboValue2.Text);
                    _hasValue = true;
                }
                else if (cboField2.Text == " Year")
                {
                    cboValue2.Text = setDataTime(cboField2.Text, cboValue2.Text);
                    _hasValue = true;
                }
                else if (cboField2.Text.Contains("Username") || cboField2.Text == " Approved By" ||
                            cboField2.Text == " Processed By" || cboField2.Text == " Finalized By" ||
                            cboField2.Text == " Closed By")
                {
                    _classname = "User";
                }
                else if (cboField2.Text == " Employee No")
                {
                    _classname = "Employee";
                }
                else if (cboField2.Text.Contains("Id"))
                {
                    _classname = cboField2.Text.Replace("Id", "");
                    _classname = _classname.Replace(" ", "");
                }
                else if (cboField2.Text.Contains("Code"))
                {
                    _classname = cboField2.Text.Replace("Code", "");
                    _classname = _classname.Replace(" ", "");
                }

                if (_classname != "")
                {
                    try
                    {
                        Type _ObjectType = ch.createObjectFromClass(_classname);
                        object ClassInstance = Activator.CreateInstance(_ObjectType);

                        loLookupValue.lObject = ClassInstance;
                        loLookupValue.lType = _ObjectType;
                        loLookupValue.lTableName = _classname;
                        loLookupValue.ShowDialog();
                        if (loLookupValue.lFromSelection)
                        {
                            cboValue2.Text = loLookupValue.lCode;
                            cboValue2.Focus();
                        }
                    }
                    catch
                    {
                        cboValue2.Text = "";
                        cboValue2.Focus();
                    }
                }
                else
                {
                    if (!_hasValue)
                    {
                        cboValue2.Text = "";
                        cboValue2.Focus();
                    }
                }
            }
        }

        private void btnLookUp3_Click(object sender, EventArgs e)
        {
            if (itemHash.ContainsKey(cboField3.Text))
            {
                object val = itemHash[cboField3.Text];
                bool _hasValue = false;
                string _classname = "";
                GlobalClassHandler ch = new GlobalClassHandler();
                if (val.ToString().Contains("System.DateTime"))
                {
                    cboValue3.Text = setDataTime(cboField3.Text, cboValue3.Text);
                    _hasValue = true;
                }
                else if (cboField3.Text == " Year")
                {
                    cboValue3.Text = setDataTime(cboField3.Text, cboValue3.Text);
                    _hasValue = true;
                }
                else if (cboField3.Text.Contains("Username") || cboField3.Text == " Approved By" ||
                            cboField3.Text == " Processed By" || cboField3.Text == " Finalized By" ||
                            cboField3.Text == " Closed By")
                {
                    _classname = "User";
                }
                else if (cboField3.Text == " Employee No")
                {
                    _classname = "Employee";
                }
                else if (cboField3.Text.Contains("Id"))
                {
                    _classname = cboField3.Text.Replace("Id", "");
                    _classname = _classname.Replace(" ", "");
                }
                else if (cboField3.Text.Contains("Code"))
                {
                    _classname = cboField3.Text.Replace("Code", "");
                    _classname = _classname.Replace(" ", "");
                }

                if (_classname != "")
                {
                    try
                    {
                        Type _ObjectType = ch.createObjectFromClass(_classname);
                        object ClassInstance = Activator.CreateInstance(_ObjectType);

                        loLookupValue.lObject = ClassInstance;
                        loLookupValue.lType = _ObjectType;
                        loLookupValue.lTableName = _classname;
                        loLookupValue.ShowDialog();
                        if (loLookupValue.lFromSelection)
                        {
                            cboValue3.Text = loLookupValue.lCode;
                            cboValue3.Focus();
                        }
                    }
                    catch
                    {
                        cboValue3.Text = "";
                        cboValue3.Focus();
                    }
                }
                else
                {
                    if (!_hasValue)
                    {
                        cboValue1.Text = "";
                        cboValue1.Focus();
                    }
                }
            }
        }

        private void btnLookUp4_Click(object sender, EventArgs e)
        {
            if (itemHash.ContainsKey(cboField4.Text))
            {
                object val = itemHash[cboField4.Text];
                bool _hasValue = false;
                string _classname = "";
                GlobalClassHandler ch = new GlobalClassHandler();
                if (val.ToString().Contains("System.DateTime"))
                {
                    cboValue4.Text = setDataTime(cboField4.Text, cboValue4.Text);
                    _hasValue = true;
                }
                else if (cboField4.Text == " Year")
                {
                    cboValue4.Text = setDataTime(cboField4.Text, cboValue4.Text);
                    _hasValue = true;
                }
                else if (cboField4.Text.Contains("Username") || cboField4.Text == " Approved By" ||
                            cboField4.Text == " Processed By" || cboField4.Text == " Finalized By" ||
                            cboField4.Text == " Closed By")
                {
                    _classname = "User";
                }
                else if (cboField4.Text == " Employee No")
                {
                    _classname = "Employee";
                }
                else if (cboField4.Text.Contains("Id"))
                {
                    _classname = cboField4.Text.Replace("Id", "");
                    _classname = _classname.Replace(" ", "");
                }
                else if (cboField4.Text.Contains("Code"))
                {
                    _classname = cboField4.Text.Replace("Code", "");
                    _classname = _classname.Replace(" ", "");
                }

                if (_classname != "")
                {
                    try
                    {
                        Type _ObjectType = ch.createObjectFromClass(_classname);
                        object ClassInstance = Activator.CreateInstance(_ObjectType);

                        loLookupValue.lObject = ClassInstance;
                        loLookupValue.lType = _ObjectType;
                        loLookupValue.lTableName = _classname;
                        loLookupValue.ShowDialog();
                        if (loLookupValue.lFromSelection)
                        {
                            cboValue4.Text = loLookupValue.lCode;
                            cboValue4.Focus();
                        }
                    }
                    catch
                    {
                        cboValue4.Text = "";
                        cboValue4.Focus();
                    }
                }
                else
                {
                    if (!_hasValue)
                    {
                        cboValue4.Text = "";
                        cboValue4.Focus();
                    }
                }
            }
        }

        private void btnLookUp5_Click(object sender, EventArgs e)
        {
            if (itemHash.ContainsKey(cboField5.Text))
            {
                object val = itemHash[cboField5.Text];
                bool _hasValue = false;
                string _classname = "";
                GlobalClassHandler ch = new GlobalClassHandler();
                if (val.ToString().Contains("System.DateTime"))
                {
                    cboValue5.Text = setDataTime(cboField5.Text, cboValue5.Text);
                    _hasValue = true;
                }
                else if (cboField5.Text == " Year")
                {
                    cboValue5.Text = setDataTime(cboField5.Text, cboValue5.Text);
                    _hasValue = true;
                }
                else if (cboField5.Text.Contains("Username") || cboField5.Text == " Approved By" ||
                            cboField5.Text == " Processed By" || cboField5.Text == " Finalized By" ||
                            cboField5.Text == " Closed By")
                {
                    _classname = "User";
                }
                else if (cboField5.Text == " Employee No")
                {
                    _classname = "Employee";
                }
                else if (cboField5.Text.Contains("Id"))
                {
                    _classname = cboField5.Text.Replace("Id", "");
                    _classname = _classname.Replace(" ", "");
                }
                else if (cboField5.Text.Contains("Code"))
                {
                    _classname = cboField5.Text.Replace("Code", "");
                    _classname = _classname.Replace(" ", "");
                }

                if (_classname != "")
                {
                    try
                    {
                        Type _ObjectType = ch.createObjectFromClass(_classname);
                        object ClassInstance = Activator.CreateInstance(_ObjectType);

                        loLookupValue.lObject = ClassInstance;
                        loLookupValue.lType = _ObjectType;
                        loLookupValue.lTableName = _classname;
                        loLookupValue.ShowDialog();
                        if (loLookupValue.lFromSelection)
                        {
                            cboValue5.Text = loLookupValue.lCode;
                            cboValue5.Focus();
                        }
                    }
                    catch
                    {
                        cboValue5.Text = "";
                        cboValue5.Focus();
                    }
                }
                else
                {
                    if (!_hasValue)
                    {
                        cboValue5.Text = "";
                        cboValue5.Focus();
                    }
                }
            }
        }

        private void btnLookUp6_Click(object sender, EventArgs e)
        {
            if (itemHash.ContainsKey(cboField6.Text))
            {
                object val = itemHash[cboField6.Text];
                bool _hasValue = false;
                string _classname = "";
                GlobalClassHandler ch = new GlobalClassHandler();
                if (val.ToString().Contains("System.DateTime"))
                {
                    cboValue6.Text = setDataTime(cboField6.Text, cboValue6.Text);
                    _hasValue = true;
                }
                else if (cboField6.Text == " Year")
                {
                    cboValue6.Text = setDataTime(cboField6.Text, cboValue6.Text);
                    _hasValue = true;
                }
                else if (cboField6.Text.Contains("Username") || cboField6.Text == " Approved By" ||
                            cboField6.Text == " Processed By" || cboField6.Text == " Finalized By" ||
                            cboField6.Text == " Closed By")
                {
                    _classname = "User";
                }
                else if (cboField6.Text == " Employee No")
                {
                    _classname = "Employee";
                }
                else if (cboField6.Text.Contains("Id"))
                {
                    _classname = cboField6.Text.Replace("Id", "");
                    _classname = _classname.Replace(" ", "");
                }
                else if (cboField6.Text.Contains("Code"))
                {
                    _classname = cboField6.Text.Replace("Code", "");
                    _classname = _classname.Replace(" ", "");
                }

                if (_classname != "")
                {
                    try
                    {
                        Type _ObjectType = ch.createObjectFromClass(_classname);
                        object ClassInstance = Activator.CreateInstance(_ObjectType);

                        loLookupValue.lObject = ClassInstance;
                        loLookupValue.lType = _ObjectType;
                        loLookupValue.lTableName = _classname;
                        loLookupValue.ShowDialog();
                        if (loLookupValue.lFromSelection)
                        {
                            cboValue6.Text = loLookupValue.lCode;
                            cboValue6.Focus();
                        }
                    }
                    catch
                    {
                        cboValue6.Text = "";
                        cboValue6.Focus();
                    }
                }
                else
                {
                    if (!_hasValue)
                    {
                        cboValue6.Text = "";
                        cboValue6.Focus();
                    }
                }
            }
        }

        private void btnLookUp7_Click(object sender, EventArgs e)
        {
            if (itemHash.ContainsKey(cboField7.Text))
            {
                object val = itemHash[cboField7.Text];
                bool _hasValue = false;
                string _classname = "";
                GlobalClassHandler ch = new GlobalClassHandler();
                if (val.ToString().Contains("System.DateTime"))
                {
                    cboValue7.Text = setDataTime(cboField7.Text, cboValue7.Text);
                    _hasValue = true;
                }
                else if (cboField7.Text == " Year")
                {
                    cboValue7.Text = setDataTime(cboField7.Text, cboValue7.Text);
                    _hasValue = true;
                }
                else if (cboField7.Text.Contains("Username") || cboField7.Text == " Approved By" ||
                            cboField7.Text == " Processed By" || cboField7.Text == " Finalized By" ||
                            cboField7.Text == " Closed By")
                {
                    _classname = "User";
                }
                else if (cboField7.Text == " Employee No")
                {
                    _classname = "Employee";
                }
                else if (cboField7.Text.Contains("Id"))
                {
                    _classname = cboField7.Text.Replace("Id", "");
                    _classname = _classname.Replace(" ", "");
                }
                else if (cboField7.Text.Contains("Code"))
                {
                    _classname = cboField7.Text.Replace("Code", "");
                    _classname = _classname.Replace(" ", "");
                }

                if (_classname != "")
                {
                    try
                    {
                        Type _ObjectType = ch.createObjectFromClass(_classname);
                        object ClassInstance = Activator.CreateInstance(_ObjectType);

                        loLookupValue.lObject = ClassInstance;
                        loLookupValue.lType = _ObjectType;
                        loLookupValue.lTableName = _classname;
                        loLookupValue.ShowDialog();
                        if (loLookupValue.lFromSelection)
                        {
                            cboValue7.Text = loLookupValue.lCode;
                            cboValue7.Focus();
                        }
                    }
                    catch
                    {
                        cboValue7.Text = "";
                        cboValue7.Focus();
                    }
                }
                else
                {
                    if (!_hasValue)
                    {
                        cboValue7.Text = "";
                        cboValue7.Focus();
                    }
                }
            }
        }

        private void btnLookUp8_Click(object sender, EventArgs e)
        {
            if (itemHash.ContainsKey(cboField8.Text))
            {
                object val = itemHash[cboField8.Text];
                bool _hasValue = false;
                string _classname = "";
                GlobalClassHandler ch = new GlobalClassHandler();
                if (val.ToString().Contains("System.DateTime"))
                {
                    cboValue8.Text = setDataTime(cboField8.Text, cboValue8.Text);
                    _hasValue = true;
                }
                else if (cboField8.Text == " Year")
                {
                    cboValue8.Text = setDataTime(cboField8.Text, cboValue8.Text);
                    _hasValue = true;
                }
                else if (cboField8.Text.Contains("Username") || cboField8.Text == " Approved By" ||
                            cboField8.Text == " Processed By" || cboField8.Text == " Finalized By" ||
                            cboField8.Text == " Closed By")
                {
                    _classname = "User";
                }
                else if (cboField8.Text == " Employee No")
                {
                    _classname = "Employee";
                }
                else if (cboField8.Text.Contains("Id"))
                {
                    _classname = cboField8.Text.Replace("Id", "");
                    _classname = _classname.Replace(" ", "");
                }
                else if (cboField8.Text.Contains("Code"))
                {
                    _classname = cboField8.Text.Replace("Code", "");
                    _classname = _classname.Replace(" ", "");
                }

                if (_classname != "")
                {
                    try
                    {
                        Type _ObjectType = ch.createObjectFromClass(_classname);
                        object ClassInstance = Activator.CreateInstance(_ObjectType);

                        loLookupValue.lObject = ClassInstance;
                        loLookupValue.lType = _ObjectType;
                        loLookupValue.lTableName = _classname;
                        loLookupValue.ShowDialog();
                        if (loLookupValue.lFromSelection)
                        {
                            cboValue8.Text = loLookupValue.lCode;
                            cboValue8.Focus();
                        }
                    }
                    catch
                    {
                        cboValue8.Text = "";
                        cboValue8.Focus();
                    }
                }
                else
                {
                    if (!_hasValue)
                    {
                        cboValue8.Text = "";
                        cboValue8.Focus();
                    }
                }
            }
        }

        private void btnShow_Click(object sender, EventArgs e)
        {
            string _Query = "";
            _Query = CreateSelectQuery();
            lFromShow = true;
            lQuery = _Query;
            if (lQuery == "")
            {
                MessageBoxUI _mb = new MessageBoxUI("There must be atleast one(1) field value!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                _mb.showDialog();
                return;
            }
            this.Close();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (cboTemplateName.SelectedItem.ToString() == "" || cboTemplateName.SelectedItem == null)
            {
                MessageBoxUI mb = new MessageBoxUI("You must have a template name!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
            if (lOperation == GlobalVariables.Operation.Edit)
            {
                MySqlTransaction _Trans1 = GlobalVariables.Connection.BeginTransaction();
                try
                {
                    loCommon.removeSearchFields(lMenuName, cboTemplateName.SelectedItem.ToString(), ref _Trans1);
                    _Trans1.Commit();
                }
                catch (Exception ex)
                {
                    _Trans1.Rollback();
                    MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                    mb.ShowDialog();
                    return;
                }
            }

            MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
            try
            {
                //for filters
                if (cboField1.Text != "" && cboValue1.Text != "")
                {
                    loCommon.MenuName = lMenuName;
                    loCommon.TemplateName = cboTemplateName.Text;
                    loCommon.Fields = cboField1.Text;
                    loCommon.Operator = cboOperator1.Text;
                    //loCommon.OperatorSign = operatorHash[cboOperator1.Text].ToString();
                    loCommon.Values = cboValue1.Text;
                    if (chkAND1.Checked)
                    {
                        loCommon.CheckAnd = "Y";
                        loCommon.CheckOr = "N";
                    }
                    else
                    {
                        loCommon.CheckAnd = "N";
                        loCommon.CheckOr = "Y";
                    }
                    loCommon.SequenceNo = 1;
                    if (chkPrivate.Checked)
                    {
                        loCommon.Private = "Y";
                    }
                    else
                    {
                        loCommon.Private = "N";
                    }
                    loCommon.saveFilters(GlobalVariables.Operation.Add, ref _Trans);
                }
                if (cboField2.Text != "" && cboValue2.Text != "")
                {
                    loCommon.MenuName = lMenuName;
                    loCommon.TemplateName = cboTemplateName.Text;
                    loCommon.Fields = cboField2.Text;
                    loCommon.Operator = cboOperator2.Text;
                    //loCommon.OperatorSign = operatorHash[cboOperator2.Text].ToString();
                    loCommon.Values = cboValue2.Text;
                    if (chkAND2.Checked)
                    {
                        loCommon.CheckAnd = "Y";
                        loCommon.CheckOr = "N";
                    }
                    else
                    {
                        loCommon.CheckAnd = "N";
                        loCommon.CheckOr = "Y";
                    }
                    loCommon.SequenceNo = 2;
                    if (chkPrivate.Checked)
                    {
                        loCommon.Private = "Y";
                    }
                    else
                    {
                        loCommon.Private = "N";
                    }
                    loCommon.saveFilters(lOperation, ref _Trans);
                }
                if (cboField3.Text != "" && cboValue3.Text != "")
                {
                    loCommon.MenuName = lMenuName;
                    loCommon.TemplateName = cboTemplateName.Text;
                    loCommon.Fields = cboField3.Text;
                    loCommon.Operator = cboOperator3.Text;
                    //loCommon.OperatorSign = operatorHash[cboOperator3.Text].ToString();
                    loCommon.Values = cboValue3.Text;
                    if (chkAND3.Checked)
                    {
                        loCommon.CheckAnd = "Y";
                        loCommon.CheckOr = "N";
                    }
                    else
                    {
                        loCommon.CheckAnd = "N";
                        loCommon.CheckOr = "Y";
                    }
                    loCommon.SequenceNo = 3;
                    if (chkPrivate.Checked)
                    {
                        loCommon.Private = "Y";
                    }
                    else
                    {
                        loCommon.Private = "N";
                    }
                    loCommon.saveFilters(lOperation, ref _Trans);
                }
                if (cboField4.Text != "" && cboValue4.Text != "")
                {
                    loCommon.MenuName = lMenuName;
                    loCommon.TemplateName = cboTemplateName.Text;
                    loCommon.Fields = cboField4.Text;
                    loCommon.Operator = cboOperator4.Text;
                    //loCommon.OperatorSign = operatorHash[cboOperator4.Text].ToString();
                    loCommon.Values = cboValue4.Text;
                    if (chkAND4.Checked)
                    {
                        loCommon.CheckAnd = "Y";
                        loCommon.CheckOr = "N";
                    }
                    else
                    {
                        loCommon.CheckAnd = "N";
                        loCommon.CheckOr = "Y";
                    }
                    loCommon.SequenceNo = 4;
                    if (chkPrivate.Checked)
                    {
                        loCommon.Private = "Y";
                    }
                    else
                    {
                        loCommon.Private = "N";
                    }
                    loCommon.saveFilters(lOperation, ref _Trans);
                }
                if (cboField5.Text != "" && cboValue5.Text != "")
                {
                    loCommon.MenuName = lMenuName;
                    loCommon.TemplateName = cboTemplateName.Text;
                    loCommon.Fields = cboField5.Text;
                    loCommon.Operator = cboOperator5.Text;
                    //loCommon.OperatorSign = operatorHash[cboOperator5.Text].ToString();
                    loCommon.Values = cboValue5.Text;
                    if (chkAND5.Checked)
                    {
                        loCommon.CheckAnd = "Y";
                        loCommon.CheckOr = "N";
                    }
                    else
                    {
                        loCommon.CheckAnd = "N";
                        loCommon.CheckOr = "Y";
                    }
                    loCommon.SequenceNo = 5;
                    if (chkPrivate.Checked)
                    {
                        loCommon.Private = "Y";
                    }
                    else
                    {
                        loCommon.Private = "N";
                    }
                    loCommon.saveFilters(lOperation, ref _Trans);
                }

                if (cboField6.Text != "" && cboValue6.Text != "")
                {
                    loCommon.MenuName = lMenuName;
                    loCommon.TemplateName = cboTemplateName.Text;
                    loCommon.Fields = cboField6.Text;
                    loCommon.Operator = cboOperator6.Text;
                    //loCommon.OperatorSign = operatorHash[cboOperator6.Text].ToString();
                    loCommon.Values = cboValue6.Text;
                    if (chkAND6.Checked)
                    {
                        loCommon.CheckAnd = "Y";
                        loCommon.CheckOr = "N";
                    }
                    else
                    {
                        loCommon.CheckAnd = "N";
                        loCommon.CheckOr = "Y";
                    }
                    loCommon.SequenceNo = 6;
                    if (chkPrivate.Checked)
                    {
                        loCommon.Private = "Y";
                    }
                    else
                    {
                        loCommon.Private = "N";
                    }
                    loCommon.saveFilters(lOperation, ref _Trans);
                }

                if (cboField7.Text != "" && cboValue7.Text != "")
                {
                    loCommon.MenuName = lMenuName;
                    loCommon.TemplateName = cboTemplateName.Text;
                    loCommon.Fields = cboField7.Text;
                    loCommon.Operator = cboOperator7.Text;
                    //loCommon.OperatorSign = operatorHash[cboOperator7.Text].ToString();
                    loCommon.Values = cboValue7.Text;
                    if (chkAND7.Checked)
                    {
                        loCommon.CheckAnd = "Y";
                        loCommon.CheckOr = "N";
                    }
                    else
                    {
                        loCommon.CheckAnd = "N";
                        loCommon.CheckOr = "Y";
                    }
                    loCommon.SequenceNo = 7;
                    if (chkPrivate.Checked)
                    {
                        loCommon.Private = "Y";
                    }
                    else
                    {
                        loCommon.Private = "N";
                    }
                    loCommon.saveFilters(lOperation, ref _Trans);
                }

                if (cboField8.Text != "" && cboValue8.Text != "")
                {
                    loCommon.MenuName = lMenuName;
                    loCommon.TemplateName = cboTemplateName.Text;
                    loCommon.Fields = cboField8.Text;
                    loCommon.Operator = cboOperator8.Text;
                    //loCommon.OperatorSign = operatorHash[cboOperator8.Text].ToString();
                    loCommon.Values = cboValue8.Text;
                    loCommon.SequenceNo = 8;
                    if (chkPrivate.Checked)
                    {
                        loCommon.Private = "Y";
                    }
                    else
                    {
                        loCommon.Private = "N";
                    }
                    loCommon.saveFilters(lOperation, ref _Trans);
                }
                
                _Trans.Commit();
                MessageBoxUI mb = new MessageBoxUI("Template has been saved successfully!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
            }
            catch (Exception ex)
            {
                _Trans.Rollback();
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            MessageBoxInputUI mb = new MessageBoxInputUI();
            mb.lTitleString = "Template Name:";
            mb.lInputString = "";
            mb.ShowDialog();
            if (mb.lFromOk)
            {
                lFromAdd = true;
                cboTemplateName.Items.Add(mb.lInputString);
                cboTemplateName.SelectedItem = mb.lInputString;
                lOperation = GlobalVariables.Operation.Add;
                lFromAdd = false;
            }
        }

        private void cboTemplateName_SelectedIndexChanged(object sender, EventArgs e)
        {
            displayDetails();
        }

        public void displayDetails()
        {
            DataTable _DtFilters = new DataTable();
            DataTable _DtGroups = new DataTable();
            //bool _Private = false;
            _DtFilters = loCommon.getFilters(lMenuName, cboTemplateName.Text);
            _DtGroups = loCommon.getGroups(lMenuName, cboTemplateName.Text);

            if (_DtFilters.Rows.Count > 0)
            {
                foreach (DataRow dr in _DtFilters.Rows)
                {
                    switch (dr["SequenceNo"].ToString())
                    {
                        case "1":
                            cboField1.SelectedItem = dr["Fields"].ToString();
                            cboOperator1.SelectedItem = dr["Operator"].ToString();
                            cboValue1.Text = dr["Values"].ToString();
                            if (dr["CheckAnd"].ToString() == "Y")
                            {
                                chkAND1.Checked = true;
                                chkOR1.Checked = false;
                            }
                            else
                            {
                                chkAND1.Checked = false;
                                chkOR1.Checked = true;
                            }
                            break;
                        case "2":
                            cboField2.SelectedItem = dr["Fields"].ToString();
                            cboOperator2.SelectedItem = dr["Operator"].ToString();
                            cboValue2.Text = dr["Values"].ToString();
                            if (dr["CheckAnd"].ToString() == "Y")
                            {
                                chkAND2.Checked = true;
                                chkOR2.Checked = false;
                            }
                            else
                            {
                                chkAND2.Checked = false;
                                chkOR2.Checked = true;
                            }
                            break;
                        case "3":
                            cboField3.SelectedItem = dr["Fields"].ToString();
                            cboOperator3.SelectedItem = dr["Operator"].ToString();
                            cboValue3.Text = dr["Values"].ToString();
                            if (dr["CheckAnd"].ToString() == "Y")
                            {
                                chkAND3.Checked = true;
                                chkOR3.Checked = false;
                            }
                            else
                            {
                                chkAND3.Checked = false;
                                chkOR3.Checked = true;
                            }
                            break;
                        case "4":
                            cboField4.SelectedItem = dr["Fields"].ToString();
                            cboOperator4.SelectedItem = dr["Operator"].ToString();
                            cboValue4.Text = dr["Values"].ToString();
                            if (dr["CheckAnd"].ToString() == "Y")
                            {
                                chkAND4.Checked = true;
                                chkOR4.Checked = false;
                            }
                            else
                            {
                                chkAND4.Checked = false;
                                chkOR4.Checked = true;
                            }
                            break;
                        case "5":
                            cboField5.SelectedItem = dr["Fields"].ToString();
                            cboOperator5.SelectedItem = dr["Operator"].ToString();
                            cboValue5.Text = dr["Values"].ToString();
                            if (dr["CheckAnd"].ToString() == "Y")
                            {
                                chkAND5.Checked = true;
                                chkOR5.Checked = false;
                            }
                            else
                            {
                                chkAND5.Checked = false;
                                chkOR5.Checked = true;
                            }
                            break;
                        case "6":
                            cboField6.SelectedItem = dr["Fields"].ToString();
                            cboOperator6.SelectedItem = dr["Operator"].ToString();
                            cboValue6.Text = dr["Values"].ToString();
                            if (dr["CheckAnd"].ToString() == "Y")
                            {
                                chkAND6.Checked = true;
                                chkOR6.Checked = false;
                            }
                            else
                            {
                                chkAND6.Checked = false;
                                chkOR6.Checked = true;
                            }
                            break;
                        case "7":
                            cboField7.SelectedItem = dr["Fields"].ToString();
                            cboOperator7.SelectedItem = dr["Operator"].ToString();
                            cboValue7.Text = dr["Values"].ToString();
                            if (dr["CheckAnd"].ToString() == "Y")
                            {
                                chkAND7.Checked = true;
                                chkOR7.Checked = false;
                            }
                            else
                            {
                                chkAND7.Checked = false;
                                chkOR7.Checked = true;
                            }
                            break;
                        case "8":
                            cboField8.SelectedItem = dr["Fields"].ToString();
                            cboOperator8.SelectedItem = dr["Operator"].ToString();
                            cboValue8.Text = dr["Values"].ToString();
                            break;
                    }
                    if (dr["Private"].ToString() == "Y")
                    {
                        //_Private = true;
                    }
                }
            }
            else
            {
                if (!lFromAdd)
                {
                    cboField1.SelectedItem = null;
                    cboOperator1.SelectedItem = null;
                    cboOperator1.SelectedIndex = 0;
                    cboValue1.Text = "";
                    chkAND1.Checked = false;
                    chkOR1.Checked = false;
                    cboField2.SelectedItem = null;
                    cboOperator2.SelectedItem = null;
                    cboOperator2.SelectedIndex = 0;
                    cboValue2.Text = "";
                    chkAND2.Checked = false;
                    chkOR2.Checked = false;
                    cboField3.SelectedItem = null;
                    cboOperator3.SelectedItem = null;
                    cboOperator3.SelectedIndex = 0;
                    cboValue3.Text = "";
                    chkAND3.Checked = false;
                    chkOR3.Checked = false;
                    cboField4.SelectedItem = null;
                    cboOperator4.SelectedItem = null;
                    cboOperator4.SelectedIndex = 0;
                    cboValue4.Text = "";
                    chkAND4.Checked = false;
                    chkOR4.Checked = false;
                    cboField5.SelectedItem = null;
                    cboOperator5.SelectedItem = null;
                    cboOperator5.SelectedIndex = 0;
                    cboValue5.Text = "";
                    chkAND5.Checked = false;
                    chkOR5.Checked = false;
                    cboField6.SelectedItem = null;
                    cboOperator6.SelectedItem = null;
                    cboOperator6.SelectedIndex = 0;
                    cboValue6.Text = "";
                    chkAND6.Checked = false;
                    chkOR6.Checked = false;
                    cboField7.SelectedItem = null;
                    cboOperator7.SelectedItem = null;
                    cboOperator7.SelectedIndex = 0;
                    cboValue7.Text = "";
                    chkAND7.Checked = false;
                    chkOR7.Checked = false;
                    cboField8.SelectedItem = null;
                    cboOperator8.SelectedItem = null;
                    cboOperator8.SelectedIndex = 0;
                    cboValue8.Text = "";
                    chkPrivate.Checked = false;
                }
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (cboTemplateName.SelectedItem.ToString() == "" || cboTemplateName.SelectedItem == null)
            {
                MessageBoxUI mb = new MessageBoxUI("You must have a template name!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }

            MySqlTransaction _Trans1 = GlobalVariables.Connection.BeginTransaction();
            try
            {
                loCommon.removeTemplateName(lMenuName, cboTemplateName.SelectedItem.ToString(), ref _Trans1);
                _Trans1.Commit();
                loadTemplateName();
                MessageBoxUI mb = new MessageBoxUI("Template name has been deleted successfully!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
            }
            catch (Exception ex)
            {
                _Trans1.Rollback();
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void btnRename_Click(object sender, EventArgs e)
        {
            MessageBoxInputUI mb = new MessageBoxInputUI();
            mb.lTitleString = "Current Template Name:";
            mb.lInputString = cboTemplateName.SelectedItem.ToString();
            mb.ShowDialog();
            if (mb.lFromOk)
            {
                MySqlTransaction _Trans = GlobalVariables.Connection.BeginTransaction();
                try
                {
                    loCommon.renameTemplateName(lMenuName, cboTemplateName.SelectedItem.ToString(), mb.lInputString, ref _Trans);
                    _Trans.Commit();
                    loadTemplateName();
                    MessageBoxUI mb1 = new MessageBoxUI("Template name has been renamed successfully!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    mb1.ShowDialog();
                }
                catch (Exception ex)
                {
                    _Trans.Rollback();
                    MessageBoxUI mb2 = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                    mb2.ShowDialog();
                    return;
                }
            }
        }

        private void btnClear_Click(object sender, EventArgs e)
        {
            chkPrivate.Checked = false;
            cboTemplateName.SelectedItem = null;
            cboOperator1.SelectedIndex = 0;
            cboOperator2.SelectedIndex = 0;
            cboOperator3.SelectedIndex = 0;
            cboOperator4.SelectedIndex = 0;
            cboOperator5.SelectedIndex = 0;
            cboOperator6.SelectedIndex = 0;
            cboOperator7.SelectedIndex = 0;
            cboOperator8.SelectedIndex = 0;
            cboValue1.Text = "";
            cboValue2.Text = "";
            cboValue3.Text = "";
            cboValue4.Text = "";
            cboValue5.Text = "";
            cboValue6.Text = "";
            cboValue7.Text = "";
            cboValue8.Text = "";
            cboField1.SelectedItem = null;
            cboField2.SelectedItem = null;
            cboField3.SelectedItem = null;
            cboField4.SelectedItem = null;
            cboField5.SelectedItem = null;
            cboField6.SelectedItem = null;
            cboField7.SelectedItem = null;
            cboField8.SelectedItem = null;
        }

        private void cboField1_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboValue1.Items.Clear();
            cboValue1.Text = "";
            cboValue1.Focus();
            if (cboField1.Text == " Approve" || cboField1.Text == " Final" ||
                    cboField1.Text == " Processed" || cboField1.Text == " Finalized" || cboField1.Text == " Closed" ||
                    cboField1.Text == " R A T A" || cboField1.Text == " P E R A" || cboField1.Text == " Subsistence" ||
                    cboField1.Text == " Laundry" || cboField1.Text == " Hazard" || cboField1.Text == " Active" ||
                    cboField1.Text == " Day Off")
            {
                object[] yesorno = { "Y", "N" };
                cboValue1.Items.AddRange(yesorno);
            }
            else if (cboField1.Text == " Day")
            {
                object[] day = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
                cboValue1.Items.AddRange(day);
            }
            else if (cboField1.Text == " Month")
            {
                object[] month = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
                cboValue1.Items.AddRange(month);
            }
            else if (cboField1.Text == " Payroll Category")
            {
                object[] payrollcategory = { "Semi-Monthly", "Monthly", "Weekly" };
                cboValue1.Items.AddRange(payrollcategory);
            }
            else if (cboField1.Text == " Pay Period No")
            {
                object[] payperiodno = { "1", "2" };
                cboValue1.Items.AddRange(payperiodno);
            }
            else if (cboField1.Text == " No Of Day")
            {
                object[] payperiodno = { "0", "1" };
                cboValue1.Items.AddRange(payperiodno);
            }
            else if (cboField1.Text == " Holiday Type")
            {
                object[] holidaytype = { "Regular", "Special" };
                cboValue1.Items.AddRange(holidaytype);
            }
            else if (cboField1.Text == " Leave Type")
            {
                object[] holidaytype = { "Vacation", "Sick" };
                cboValue1.Items.AddRange(holidaytype);
            }
            else if (cboField1.Text == " Employment Type")
            {
                object[] employmenttype = { "Regular", "Job Order" };
                cboValue1.Items.AddRange(employmenttype);
            }
            else if (cboField1.Text == " Rate Type")
            {
                object[] holidaytype = { "Monthly", "Daily" };
                cboValue1.Items.AddRange(holidaytype);
            }
        }

        private void cboField2_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboValue2.Items.Clear();
            cboValue2.Text = "";
            cboValue2.Focus();
            if (cboField2.Text == " Approve" || cboField2.Text == " Final" ||
                    cboField2.Text == " Processed" || cboField2.Text == " Finalized" || cboField2.Text == " Closed" ||
                    cboField2.Text == " R A T A" || cboField2.Text == " P E R A" || cboField2.Text == " Subsistence" ||
                    cboField2.Text == " Laundry" || cboField2.Text == " Hazard" || cboField2.Text == " Active" ||
                    cboField2.Text == " Day Off")
            {
                object[] yesorno = { "Y", "N" };
                cboValue2.Items.AddRange(yesorno);
            }
            else if (cboField2.Text == " Day")
            {
                object[] day = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
                cboValue2.Items.AddRange(day);
            }
            else if (cboField2.Text == " Month")
            {
                object[] month = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
                cboValue2.Items.AddRange(month);
            }
            else if (cboField2.Text == " Payroll Category")
            {
                object[] payrollcategory = { "Semi-Monthly", "Monthly", "Weekly" };
                cboValue2.Items.AddRange(payrollcategory);
            }
            else if (cboField2.Text == " Pay Period No")
            {
                object[] payperiodno = { "1", "2" };
                cboValue2.Items.AddRange(payperiodno);
            }
            else if (cboField2.Text == " No Of Day")
            {
                object[] payperiodno = { "0", "2" };
                cboValue2.Items.AddRange(payperiodno);
            }
            else if (cboField2.Text == " Holiday Type")
            {
                object[] holidaytype = { "Regular", "Special" };
                cboValue2.Items.AddRange(holidaytype);
            }
            else if (cboField2.Text == " Leave Type")
            {
                object[] holidaytype = { "Vacation", "Sick" };
                cboValue2.Items.AddRange(holidaytype);
            }
            else if (cboField2.Text == " Employment Type")
            {
                object[] employmenttype = { "Regular", "Job Order" };
                cboValue2.Items.AddRange(employmenttype);
            }
            else if (cboField2.Text == " Rate Type")
            {
                object[] holidaytype = { "Monthly", "Daily" };
                cboValue2.Items.AddRange(holidaytype);
            }
        }

        private void cboField3_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboValue3.Items.Clear();
            cboValue3.Text = "";
            cboValue3.Focus();
            if (cboField3.Text == " Approve" || cboField3.Text == " Final" ||
                    cboField3.Text == " Processed" || cboField3.Text == " Finalized" || cboField3.Text == " Closed" ||
                    cboField3.Text == " R A T A" || cboField3.Text == " P E R A" || cboField3.Text == " Subsistence" ||
                    cboField3.Text == " Laundry" || cboField3.Text == " Hazard" || cboField3.Text == " Active" ||
                    cboField3.Text == " Day Off")
            {
                object[] yesorno = { "Y", "N" };
                cboValue3.Items.AddRange(yesorno);
            }
            else if (cboField3.Text == " Day")
            {
                object[] day = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
                cboValue3.Items.AddRange(day);
            }
            else if (cboField3.Text == " Month")
            {
                object[] month = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
                cboValue3.Items.AddRange(month);
            }
            else if (cboField3.Text == " Payroll Category")
            {
                object[] payrollcategory = { "Semi-Monthly", "Monthly", "Weekly" };
                cboValue3.Items.AddRange(payrollcategory);
            }
            else if (cboField3.Text == " Pay Period No")
            {
                object[] payperiodno = { "1", "2" };
                cboValue3.Items.AddRange(payperiodno);
            }
            else if (cboField3.Text == " No Of Day")
            {
                object[] payperiodno = { "0", "1" };
                cboValue3.Items.AddRange(payperiodno);
            }
            else if (cboField3.Text == " Holiday Type")
            {
                object[] holidaytype = { "Regular", "Special" };
                cboValue3.Items.AddRange(holidaytype);
            }
            else if (cboField3.Text == " Leave Type")
            {
                object[] holidaytype = { "Vacation", "Sick" };
                cboValue3.Items.AddRange(holidaytype);
            }
            else if (cboField3.Text == " Employment Type")
            {
                object[] employmenttype = { "Regular", "Job Order" };
                cboValue3.Items.AddRange(employmenttype);
            }
            else if (cboField3.Text == " Rate Type")
            {
                object[] holidaytype = { "Monthly", "Daily" };
                cboValue3.Items.AddRange(holidaytype);
            }
        }

        private void cboField4_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboValue4.Items.Clear();
            cboValue4.Text = "";
            cboValue4.Focus();
            if (cboField4.Text == " Approve" || cboField4.Text == " Final" ||
                    cboField4.Text == " Processed" || cboField4.Text == " Finalized" || cboField4.Text == " Closed" ||
                    cboField4.Text == " R A T A" || cboField4.Text == " P E R A" || cboField4.Text == " Subsistence" ||
                    cboField4.Text == " Laundry" || cboField4.Text == " Hazard" || cboField4.Text == " Active" ||
                    cboField4.Text == " Day Off")
            {
                object[] yesorno = { "Y", "N" };
                cboValue4.Items.AddRange(yesorno);
            }
            else if (cboField4.Text == " Day")
            {
                object[] day = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
                cboValue4.Items.AddRange(day);
            }
            else if (cboField4.Text == " Month")
            {
                object[] month = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
                cboValue4.Items.AddRange(month);
            }
            else if (cboField4.Text == " Payroll Category")
            {
                object[] payrollcategory = { "Semi-Monthly", "Monthly", "Weekly" };
                cboValue4.Items.AddRange(payrollcategory);
            }
            else if (cboField4.Text == " Pay Period No")
            {
                object[] payperiodno = { "1", "2" };
                cboValue4.Items.AddRange(payperiodno);
            }
            else if (cboField4.Text == " No Of Day")
            {
                object[] payperiodno = { "0", "1" };
                cboValue4.Items.AddRange(payperiodno);
            }
            else if (cboField4.Text == " Holiday Type")
            {
                object[] holidaytype = { "Regular", "Special" };
                cboValue4.Items.AddRange(holidaytype);
            }
            else if (cboField4.Text == " Leave Type")
            {
                object[] holidaytype = { "Vacation", "Sick" };
                cboValue4.Items.AddRange(holidaytype);
            }
            else if (cboField4.Text == " Employment Type")
            {
                object[] employmenttype = { "Regular", "Job Order" };
                cboValue4.Items.AddRange(employmenttype);
            }
            else if (cboField4.Text == " Rate Type")
            {
                object[] holidaytype = { "Monthly", "Daily" };
                cboValue4.Items.AddRange(holidaytype);
            }
        }

        private void cboField5_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboValue5.Items.Clear();
            cboValue5.Text = "";
            cboValue5.Focus();
            if (cboField5.Text == " Approve" || cboField5.Text == " Final" ||
                    cboField5.Text == " Processed" || cboField5.Text == " Finalized" || cboField5.Text == " Closed" ||
                    cboField5.Text == " R A T A" || cboField5.Text == " P E R A" || cboField5.Text == " Subsistence" ||
                    cboField5.Text == " Laundry" || cboField5.Text == " Hazard" || cboField5.Text == " Active" ||
                    cboField5.Text == " Day Off")
            {
                object[] yesorno = { "Y", "N" };
                cboValue5.Items.AddRange(yesorno);
            }
            else if (cboField5.Text == " Day")
            {
                object[] day = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
                cboValue5.Items.AddRange(day);
            }
            else if (cboField5.Text == " Month")
            {
                object[] month = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
                cboValue5.Items.AddRange(month);
            }
            else if (cboField5.Text == " Payroll Category")
            {
                object[] payrollcategory = { "Semi-Monthly", "Monthly", "Weekly" };
                cboValue5.Items.AddRange(payrollcategory);
            }
            else if (cboField5.Text == " Pay Period No")
            {
                object[] payperiodno = { "1", "2" };
                cboValue5.Items.AddRange(payperiodno);
            }
            else if (cboField5.Text == " No Of Day")
            {
                object[] payperiodno = { "0", "1" };
                cboValue5.Items.AddRange(payperiodno);
            }
            else if (cboField5.Text == " Holiday Type")
            {
                object[] holidaytype = { "Regular", "Special" };
                cboValue5.Items.AddRange(holidaytype);
            }
            else if (cboField5.Text == " Leave Type")
            {
                object[] holidaytype = { "Vacation", "Sick" };
                cboValue5.Items.AddRange(holidaytype);
            }
            else if (cboField5.Text == " Employment Type")
            {
                object[] employmenttype = { "Regular", "Job Order" };
                cboValue5.Items.AddRange(employmenttype);
            }
            else if (cboField5.Text == " Rate Type")
            {
                object[] holidaytype = { "Monthly", "Daily" };
                cboValue5.Items.AddRange(holidaytype);
            }
        }

        private void cboField6_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboValue6.Items.Clear();
            cboValue6.Text = "";
            cboValue6.Focus();
            if (cboField6.Text == " Approve" || cboField6.Text == " Final" ||
                    cboField6.Text == " Processed" || cboField6.Text == " Finalized" || cboField6.Text == " Closed" ||
                    cboField6.Text == " R A T A" || cboField6.Text == " P E R A" || cboField6.Text == " Subsistence" ||
                    cboField6.Text == " Laundry" || cboField6.Text == " Hazard" || cboField6.Text == " Active" ||
                    cboField6.Text == " Day Off")
            {
                object[] yesorno = { "Y", "N" };
                cboValue6.Items.AddRange(yesorno);
            }
            else if (cboField6.Text == " Day")
            {
                object[] day = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
                cboValue6.Items.AddRange(day);
            }
            else if (cboField6.Text == " Month")
            {
                object[] month = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
                cboValue6.Items.AddRange(month);
            }
            else if (cboField6.Text == " Payroll Category")
            {
                object[] payrollcategory = { "Semi-Monthly", "Monthly", "Weekly" };
                cboValue6.Items.AddRange(payrollcategory);
            }
            else if (cboField6.Text == " Pay Period No")
            {
                object[] payperiodno = { "1", "2" };
                cboValue6.Items.AddRange(payperiodno);
            }
            else if (cboField6.Text == " No Of Day")
            {
                object[] payperiodno = { "0", "1" };
                cboValue6.Items.AddRange(payperiodno);
            }
            else if (cboField6.Text == " Holiday Type")
            {
                object[] holidaytype = { "Regular", "Special" };
                cboValue6.Items.AddRange(holidaytype);
            }
            else if (cboField6.Text == " Leave Type")
            {
                object[] holidaytype = { "Vacation", "Sick" };
                cboValue6.Items.AddRange(holidaytype);
            }
            else if (cboField6.Text == " Employment Type")
            {
                object[] employmenttype = { "Regular", "Job Order" };
                cboValue6.Items.AddRange(employmenttype);
            }
            else if (cboField6.Text == " Rate Type")
            {
                object[] holidaytype = { "Monthly", "Daily" };
                cboValue6.Items.AddRange(holidaytype);
            }
        }

        private void cboField7_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboValue7.Items.Clear();
            cboValue7.Text = "";
            cboValue7.Focus();
            if (cboField7.Text == " Approve" || cboField7.Text == " Final" ||
                    cboField7.Text == " Processed" || cboField7.Text == " Finalized" || cboField7.Text == " Closed" ||
                    cboField7.Text == " R A T A" || cboField7.Text == " P E R A" || cboField7.Text == " Subsistence" ||
                    cboField7.Text == " Laundry" || cboField7.Text == " Hazard" || cboField7.Text == " Active" ||
                    cboField7.Text == " Day Off")
            {
                object[] yesorno = { "Y", "N" };
                cboValue7.Items.AddRange(yesorno);
            }
            else if (cboField7.Text == " Day")
            {
                object[] day = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
                cboValue7.Items.AddRange(day);
            }
            else if (cboField7.Text == " Month")
            {
                object[] month = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
                cboValue7.Items.AddRange(month);
            }
            else if (cboField7.Text == " Payroll Category")
            {
                object[] payrollcategory = { "Semi-Monthly", "Monthly", "Weekly" };
                cboValue7.Items.AddRange(payrollcategory);
            }
            else if (cboField7.Text == " Pay Period No")
            {
                object[] payperiodno = { "1", "2" };
                cboValue7.Items.AddRange(payperiodno);
            }
            else if (cboField7.Text == " No Of Day")
            {
                object[] payperiodno = { "0", "1" };
                cboValue7.Items.AddRange(payperiodno);
            }
            else if (cboField7.Text == " Holiday Type")
            {
                object[] holidaytype = { "Regular", "Special" };
                cboValue7.Items.AddRange(holidaytype);
            }
            else if (cboField7.Text == " Leave Type")
            {
                object[] holidaytype = { "Vacation", "Sick" };
                cboValue7.Items.AddRange(holidaytype);
            }
            else if (cboField7.Text == " Employment Type")
            {
                object[] employmenttype = { "Regular", "Job Order" };
                cboValue7.Items.AddRange(employmenttype);
            }
            else if (cboField7.Text == " Rate Type")
            {
                object[] holidaytype = { "Monthly", "Daily" };
                cboValue7.Items.AddRange(holidaytype);
            }
        }

        private void chkAND1_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAND1.Checked)
            {
                chkOR1.Checked = false;
            }
        }

        private void chkAND2_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAND2.Checked)
            {
                chkOR2.Checked = false;
            }
        }

        private void chkAND3_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAND3.Checked)
            {
                chkOR3.Checked = false;
            }
        }

        private void chkAND4_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAND4.Checked)
            {
                chkOR4.Checked = false;
            }
        }

        private void chkAND5_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAND5.Checked)
            {
                chkOR5.Checked = false;
            }
        }

        private void chkAND6_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAND6.Checked)
            {
                chkOR6.Checked = false;
            }
        }

        private void chkAND7_CheckedChanged(object sender, EventArgs e)
        {
            if (chkAND7.Checked)
            {
                chkOR7.Checked = false;
            }
        }

        private void chkOR1_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOR1.Checked)
            {
                chkAND1.Checked = false;
            }
        }

        private void chkOR2_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOR2.Checked)
            {
                chkAND2.Checked = false;
            }
        }

        private void chkOR3_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOR3.Checked)
            {
                chkAND3.Checked = false;
            }
        }

        private void chkOR4_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOR4.Checked)
            {
                chkAND4.Checked = false;
            }
        }

        private void chkOR5_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOR5.Checked)
            {
                chkAND5.Checked = false;
            }
        }

        private void chkOR6_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOR6.Checked)
            {
                chkAND6.Checked = false;
            }
        }

        private void chkOR7_CheckedChanged(object sender, EventArgs e)
        {
            if (chkOR7.Checked)
            {
                chkAND7.Checked = false;
            }
        }
        #endregion "END OF EVENTS"

        private void cboField8_SelectedIndexChanged(object sender, EventArgs e)
        {
            cboValue8.Items.Clear();
            cboValue8.Text = "";
            cboValue8.Focus();
            if (cboField8.Text == " Approve" || cboField8.Text == " Final" ||
                    cboField8.Text == " Processed" || cboField8.Text == " Finalized" || cboField8.Text == " Closed" ||
                    cboField8.Text == " R A T A" || cboField8.Text == " P E R A" || cboField8.Text == " Subsistence" ||
                    cboField8.Text == " Laundry" || cboField8.Text == " Hazard" || cboField8.Text == " Active" ||
                    cboField8.Text == " Day Off")
            {
                object[] yesorno = { "Y", "N" };
                cboValue8.Items.AddRange(yesorno);
            }
            else if (cboField8.Text == " Day")
            {
                object[] day = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
                cboValue8.Items.AddRange(day);
            }
            else if (cboField8.Text == " Month")
            {
                object[] month = { "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
                cboValue8.Items.AddRange(month);
            }
            else if (cboField8.Text == " Payroll Category")
            {
                object[] payrollcategory = { "Semi-Monthly", "Monthly", "Weekly" };
                cboValue8.Items.AddRange(payrollcategory);
            }
            else if (cboField8.Text == " Pay Period No")
            {
                object[] payperiodno = { "1", "2" };
                cboValue8.Items.AddRange(payperiodno);
            }
            else if (cboField8.Text == " No Of Day")
            {
                object[] payperiodno = { "0", "1" };
                cboValue8.Items.AddRange(payperiodno);
            }
            else if (cboField8.Text == " Holiday Type")
            {
                object[] holidaytype = { "Regular", "Special" };
                cboValue8.Items.AddRange(holidaytype);
            }
            else if (cboField8.Text == " Leave Type")
            {
                object[] holidaytype = { "Vacation", "Sick" };
                cboValue8.Items.AddRange(holidaytype);
            }
            else if (cboField8.Text == " Employment Type")
            {
                object[] employmenttype = { "Regular", "Job Order" };
                cboValue8.Items.AddRange(employmenttype);
            }
            else if (cboField8.Text == " Rate Type")
            {
                object[] holidaytype = { "Monthly", "Daily" };
                cboValue8.Items.AddRange(holidaytype);
            }
        }
    }
}

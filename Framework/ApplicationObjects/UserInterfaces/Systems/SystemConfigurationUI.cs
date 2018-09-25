using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Collections;
using System.IO;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects.Classes;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Systems
{
    public partial class SystemConfigurationUI : Form
    {
        #region "VARIABLES"
        public GlobalVariables.Operation lOperation;
        SystemConfiguration loSystemConfiguration;
        Hashtable lSystemConfigHash;
        string lLGULogo = "";
        string lScreenSaverImage = "";
        #endregion "END OF VARIABLES"

        #region "CONSTRUCTORS"
        public SystemConfigurationUI()
        {
            InitializeComponent();
            lSystemConfigHash = new Hashtable();
            loSystemConfiguration = new SystemConfiguration();
        }
        #endregion "END OF CONSTRUCTORS"

        #region "PROPERTIES"
        public Form ParentList
        {
            get;
            set;
        }
        #endregion "END OF PROPERTIES"


        #region "METHODS"
        private void loadDataToHash()
        {
            lSystemConfigHash.Clear();
            lSystemConfigHash.Add("ApplicationName", lblApplicationName.Text);
            lSystemConfigHash.Add("VersionNo", lblVersionNo.Text);
            lSystemConfigHash.Add("DevelopedBy", lblDevelopedBy.Text);
            //lgu
            lSystemConfigHash.Add("LGUName", txtLGUName.Text);
            lSystemConfigHash.Add("LGUProvince", txtLGUProvince.Text);
            lSystemConfigHash.Add("LGUAddress", txtLGUAddress.Text);
            lSystemConfigHash.Add("ContactNumber", txtContactNumber.Text);
            lSystemConfigHash.Add("LGULogo", lLGULogo);
           
            lSystemConfigHash.Add("BackupPath", txtBackupPath.Text);
            lSystemConfigHash.Add("BackupMySqlDumpAddress", txtBackupMySqlDumpAddress.Text);
            lSystemConfigHash.Add("RestoreMySqlAddress", txtRestoreMySqlAddress.Text);
            lSystemConfigHash.Add("DisplayRecordLimit", nudRecordLimit.Value.ToString());
            lSystemConfigHash.Add("TimeIn", txtTimeIn.Text);
            lSystemConfigHash.Add("BreakOut", txtBreakOut.Text);
            lSystemConfigHash.Add("BreakIn", txtBreakIn.Text);
            lSystemConfigHash.Add("TimeOut", txtTimeOut.Text);
            if (chkSpeak.Checked)
            {
                lSystemConfigHash.Add("Speak", "Y");
            }
            else
            {
                lSystemConfigHash.Add("Speak", "N");
            }
            if (chkRecognizedSpeech.Checked)
            {
                lSystemConfigHash.Add("RecognizedSpeech", "Y");
            }
            else
            {
                lSystemConfigHash.Add("RecognizedSpeech", "N");
            }
            lSystemConfigHash.Add("ScreenSaverImage", lScreenSaverImage);
            if (rdbBottom.Checked)
            {
                lSystemConfigHash.Add("MDITabAlignment", "Bottom");
            }
            else if (rdbLeft.Checked)
            {
                lSystemConfigHash.Add("MDITabAlignment", "Left");
            }
            else if (rdbRight.Checked)
            {
                lSystemConfigHash.Add("MDITabAlignment", "Right");
            }
            else if (rdbTop.Checked)
            {
                lSystemConfigHash.Add("MDITabAlignment", "Top");
            }
            else
            {
                lSystemConfigHash.Add("MDITabAlignment", "Top");
            }
        }

        public void refresh()
        {
            DataTable _dt = new DataTable();
            _dt = loSystemConfiguration.getAllData();
            foreach (DataRow _dr in _dt.Rows)
            {
                if (_dr["Key"].ToString() == "ApplicationName")
                {
                    lblApplicationName.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "VersionNo")
                {
                    lblVersionNo.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "NoOfLicenses")
                {
                    lblNoOfLicenses.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "NoOfConcurrentUsers")
                {
                    lblNoOfConcurrentUsers.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "DevelopedBy")
                {
                    lblDevelopedBy.Text = _dr["Value"].ToString();
                }
                //lgu
                else if (_dr["Key"].ToString() == "LGUName")
                {
                    txtLGUName.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "LGUProvince")
                {
                    txtLGUProvince.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "LGUAddress")
                {
                    txtLGUAddress.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "ContactNumber")
                {
                    txtContactNumber.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "LGULogo")
                {
                    lLGULogo = _dr["Value"].ToString();
                    byte[] hextobyte = GlobalFunctions.HexToBytes(lLGULogo);
                    pcLGULogo.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(hextobyte);
                    pcLGULogo.BackgroundImageLayout = ImageLayout.Stretch;
                }
                else if (_dr["Key"].ToString() == "BackupPath")
                {
                    txtBackupPath.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "BackupMySqlDumpAddress")
                {
                    txtBackupMySqlDumpAddress.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "RestoreMySqlAddress")
                {
                    txtRestoreMySqlAddress.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "DisplayRecordLimit")
                {
                    nudRecordLimit.Value = int.Parse(_dr["Value"].ToString());
                }
                else if (_dr["Key"].ToString() == "TimeIn")
                {
                    txtTimeIn.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "BreakOut")
                {
                    txtBreakOut.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "BreakIn")
                {
                    txtBreakIn.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "TimeOut")
                {
                    txtTimeOut.Text = _dr["Value"].ToString();
                }
                else if (_dr["Key"].ToString() == "Speak")
                {
                    if (_dr["Value"].ToString() == "Y")
                    {
                        chkSpeak.Checked = true;
                    }
                    else
                    {
                        chkSpeak.Checked = false;
                    }
                }
                else if (_dr["Key"].ToString() == "RecognizedSpeech")
                {
                    if (_dr["Value"].ToString() == "Y")
                    {
                        chkRecognizedSpeech.Checked = true;
                    }
                    else
                    {
                        chkRecognizedSpeech.Checked = false;
                    }
                }
                else if (_dr["Key"].ToString() == "ScreenSaverImage")
                {
                    lScreenSaverImage = _dr["Value"].ToString();
                    byte[] hextobyte = GlobalFunctions.HexToBytes(lScreenSaverImage);
                    pctScreenSaver.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(hextobyte);
                    pctScreenSaver.BackgroundImageLayout = ImageLayout.Stretch;
                }
                else if (_dr["Key"].ToString() == "MDITabAlignment")
                {
                    if (_dr["Value"].ToString() == "Top")
                    {
                        rdbTop.Checked = true;
                    }
                    else if (_dr["Value"].ToString() == "Bottom")
                    {
                        rdbBottom.Checked = true;
                    }
                    else if (_dr["Value"].ToString() == "Left")
                    {
                        rdbLeft.Checked = true;
                    }
                    else if (_dr["Value"].ToString() == "Right")
                    {
                        rdbRight.Checked = true;
                    }
                    else
                    {
                        rdbTop.Checked = true;
                    }
                }
            }
        }

        public void PMISDetailsWrite()
        {
            try
            {
                System.IO.TextWriter writeFile = new StreamWriter(".../Main/text/PMISDetails.txt");
                
                writeFile.WriteLine("PrinterName:" + txtPrinterName.Text);
                writeFile.Flush();
                writeFile.Close();
                writeFile = null;
                GlobalVariables.PrinterName = txtPrinterName.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public void HRISDetailsRead()
        {
            string line = null;
            char[] splitter1 = { ';' };
            char[] splitter2 = { ':' };
            System.IO.TextReader readFile = new StreamReader(".../Main/text/PMISDetails.txt");
            line = readFile.ReadLine();
            if (line != null)
            {
                string[] data1 = line.Split(splitter1);
                for (int i = 0; i < data1.Length; i++)
                {
                    string[] data2 = null;
                    data2 = data1[i].Split(splitter2);
                    if (data2[0].ToString() == "PrinterName")
                    {
                        txtPrinterName.Text = data2[1].ToString();
                        GlobalVariables.PrinterName = data2[1].ToString();
                    }
                }
            }
            readFile.Close();
            readFile = null;
        }
        #endregion "END OF METHODS"

        #region "EVENTS"
        private void SystemConfigurationUI_Load(object sender, EventArgs e)
        {
            refresh();
            HRISDetailsRead();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (!GlobalFunctions.checkRights("tsmSystemConfiguration", "Save"))
            {
                return;
            }
            try
            {
                lOperation = GlobalVariables.Operation.Edit;
                loadDataToHash();
                PMISDetailsWrite();
                foreach (DictionaryEntry Hash in lSystemConfigHash)
                {
                    try
                    {
                        loSystemConfiguration.Key = Hash.Key.ToString();
                        loSystemConfiguration.Value = Hash.Value.ToString();
                    }
                    catch { }
                        loSystemConfiguration.saveSystemConfiguration(lOperation);
                    
                }
                MessageBoxUI _mb = new MessageBoxUI("System Configuration has been saved successfully!", GlobalVariables.Icons.Save, GlobalVariables.Buttons.OK);
                _mb.ShowDialog();
            }
            catch(Exception ex) 
            {
                MessageBoxUI _mb = new MessageBoxUI(ex.Message, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                _mb.ShowDialog();
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            ParentList.GetType().GetMethod("closeTabPage").Invoke(ParentList, null);
        }
        #endregion "END OF EVENTS"

        private void btnFind_Click(object sender, EventArgs e)
        {
            try
            {
                OpenFileDialog openFD = new OpenFileDialog();
                openFD.InitialDirectory = ".../Main/ScreenSaverImages/";
                openFD.Title = "Insert an Image";
                openFD.Filter = "JPEG Images|*.jpg|GIF Images|*.gif|PNG Images|*.png";
                if (openFD.ShowDialog() == DialogResult.Cancel)
                {
                    MessageBoxUI mb = new MessageBoxUI("Operation Cancelled", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    mb.ShowDialog();
                }
                else
                {
                    string _ChosenFile = openFD.FileName;
                    string _FileName = openFD.SafeFileName;

                    byte[] m_Bitmap = null;

                    FileStream fs = new FileStream(_ChosenFile, FileMode.Open);
                    BinaryReader br = new BinaryReader(fs);
                    int length = (int)br.BaseStream.Length;
                    m_Bitmap = new byte[length];
                    m_Bitmap = br.ReadBytes(length);
                    br.Close();
                    fs.Close();

                    lLGULogo = GlobalFunctions.ToHex(m_Bitmap);

                    pcLGULogo.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(m_Bitmap);
                    pcLGULogo.BackgroundImageLayout = ImageLayout.Stretch;
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
                return;
            }
        }

        private void btnFindScreenSaver_Click(object sender, EventArgs e)
        {
            try
            {
                OpenFileDialog openFD = new OpenFileDialog();
                openFD.InitialDirectory = ".../Main/ScreenSaverImages/";
                openFD.Title = "Insert an Image";
                openFD.Filter = "JPEG Images|*.jpg|GIF Images|*.gif|PNG Images|*.png";
                if (openFD.ShowDialog() == DialogResult.Cancel)
                {
                    MessageBoxUI mb = new MessageBoxUI("Operation Cancelled", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                    mb.ShowDialog();
                }
                else
                {
                    string _ChosenFile = openFD.FileName;
                    string _FileName = openFD.SafeFileName;

                    byte[] m_Bitmap = null;

                    FileStream fs = new FileStream(_ChosenFile, FileMode.Open);
                    BinaryReader br = new BinaryReader(fs);
                    int length = (int)br.BaseStream.Length;
                    m_Bitmap = new byte[length];
                    m_Bitmap = br.ReadBytes(length);
                    br.Close();
                    fs.Close();

                    lScreenSaverImage = GlobalFunctions.ToHex(m_Bitmap);

                    pctScreenSaver.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(m_Bitmap);
                    pctScreenSaver.BackgroundImageLayout = ImageLayout.Stretch;
                }
            }
            catch (Exception ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
                return;
            }
        }
    }
}

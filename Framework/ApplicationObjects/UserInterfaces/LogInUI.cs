using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO;
using MySql.Data.MySqlClient;
using System.Diagnostics;
using System.Speech.Recognition;

using JBC_PMIS_Government.Global;
using JBC_PMIS_Government.ApplicationObjects;
using JBC_PMIS_Government.ApplicationObjects.Classes;
using JBC_PMIS_Government.ApplicationObjects.UserInterfaces;

namespace JBC_PMIS_Government.ApplicationObjects.UserInterfaces
{
    public partial class LogInUI : Form
    {
        SystemConfiguration loSystemConfiguration;
        User loUser;
        public bool lFromLogIn;
        CryptorEngine loCryptorEngine;
        DataTable ldtSystemConfig = new DataTable();
        //for speech recognition
        SpeechRecognitionEngine speechRecognitionEngine;
        List<Word> words = new List<Word>();
        Voice loVoice;

        public LogInUI()
        {
            InitializeComponent();
            loSystemConfiguration = new SystemConfiguration();
            loUser = new User();
            loCryptorEngine = new CryptorEngine();
            loVoice = new Voice();
        }

        private void loadGlobalVariables()
        {
            DataTable _dtUserInfo = new DataTable();
            _dtUserInfo = loUser.getUserInfo(txtUsername.Text);
            foreach (DataRow _drUserInfo in _dtUserInfo.Rows)
            {
                GlobalVariables.Username = _drUserInfo["Username"].ToString();
                GlobalVariables.Userfullname = _drUserInfo["Fullname"].ToString();
            }
            GlobalVariables.DTLGULogo = GlobalFunctions.getLGULogo();
        }
        
        public void BackupDatabase()
        {
            string userid = "";
            string password ="";
            string server = "";
            string database = "";
            string port = "";
            string line = null;
            System.IO.TextReader readFile = new StreamReader("...\\databaseconnection.txt");
            line = readFile.ReadLine();
            if (line != null)
            {
                string _StringToRead = loCryptorEngine.DecryptString(line);
                string[] backuplocation = _StringToRead.Split(';');
                for (int i = 0; i < backuplocation.Length; i++)
                {
                    string[] item;
                    switch (i)
                    {
                        case 0:
                            item = backuplocation[i].Split('=');
                            server = item[1].ToString();
                            break;
                        case 1:
                            item = backuplocation[i].Split('=');
                            database = item[1].ToString();
                            break;
                        case 2:
                            item = backuplocation[i].Split('=');
                            userid = item[1].ToString();
                            break;
                        case 3:
                            item = backuplocation[i].Split('=');
                            password = item[1].ToString();
                            break;
                        case 4:
                            item = backuplocation[i].Split('=');
                            port = item[1].ToString();
                            break;
                    }
                }
            }
            readFile.Close();
            readFile = null;
            
            try
            {
                DateTime Time = DateTime.Now;
                int year = Time.Year;
                int month = Time.Month;
                int day = Time.Day;
                int hour = Time.Hour;
                int minute = Time.Minute;
                int second = Time.Second;
                //delete the file
                File.Delete(GlobalVariables.BackupPath + ".sql");
                //Save file to C:\ with the current date as a filename
                string path;
                path = GlobalVariables.BackupPath + ".sql";
                //path = GlobalVariables.BackupPath + year + "-" + month + "-" + day +
                //"-" + hour + "-" + minute + "-" + second + ".sql";
                StreamWriter file = new StreamWriter(path);

                ProcessStartInfo psi = new ProcessStartInfo();
                psi.FileName = GlobalVariables.BackupMySqlDumpAddress;
                psi.RedirectStandardInput = false;
                psi.RedirectStandardOutput = true;
                psi.Arguments = string.Format(@"-u{0} -p{1} -h{2} {3}",
                    userid, password, server, database);
                psi.UseShellExecute = false;

                Process process = Process.Start(psi);

                string output;
                output = process.StandardOutput.ReadToEnd();
                file.WriteLine(output);
                process.WaitForExit();
                file.Close();
                process.Close();
                loSystemConfiguration.Key = "LastBackUpDate";
                loSystemConfiguration.Value = string.Format("{0:yyyy-MM-dd}",DateTime.Now);
                loSystemConfiguration.saveSystemConfiguration(GlobalVariables.Operation.Edit);
                MessageBoxUI mb = new MessageBoxUI("Database has been backup successfully!", GlobalVariables.Icons.Ok, GlobalVariables.Buttons.OK);
                mb.ShowDialog();
            }
            catch (IOException ex)
            {
                MessageBoxUI mb = new MessageBoxUI(ex, GlobalVariables.Icons.Error, GlobalVariables.Buttons.Close);
                mb.ShowDialog();
                return;
            }
        }

        private void loadLGUInfo()
        {
            if (loUser.connectDatabase())
            {
                ldtSystemConfig = loSystemConfiguration.getAllData();
                foreach (DataRow _drSystemConfig in ldtSystemConfig.Rows)
                {
                    if (_drSystemConfig["Key"].ToString() == "ApplicationName")
                    {
                        GlobalVariables.ApplicationName = _drSystemConfig["Value"].ToString();
                        //lblApplicationName.Text = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "LGUName")
                    {
                        GlobalVariables.LGUName = _drSystemConfig["Value"].ToString();
                        lblLGUName.UseMnemonic = false;
                        lblLGUName.Text = GlobalVariables.LGUName;
                    }
                }
            }
            else
            {
                MessageBoxUI ms = new MessageBoxUI("Cannot establish database connection!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                ms.showDialog();
                Application.Exit();
            }
        }

        private void loadLogIn()
        {
            System.Windows.Forms.ToolTip ToolTip1 = new System.Windows.Forms.ToolTip();
            ToolTip1.SetToolTip(this.btnLogin, "Hello!");
            txtUsername.Focus();
            if (loUser.connectDatabase())
            {
                ldtSystemConfig = loSystemConfiguration.getAllData();
                foreach (DataRow _drSystemConfig in ldtSystemConfig.Rows)
                {
                    if (_drSystemConfig["Key"].ToString() == "ApplicationName")
                    {
                        GlobalVariables.ApplicationName = _drSystemConfig["Value"].ToString();
                        //lblApplicationName.Text = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "VersionNo")
                    {
                        GlobalVariables.VersionNo = _drSystemConfig["Value"].ToString();
                        if (lblVersionNo.Text != GlobalVariables.VersionNo)
                        {
                            DialogResult _dr = new DialogResult();
                            MessageBoxUI _mb = new MessageBoxUI("Version Compatibility Issue!\nWould like to continue?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                            _mb.ShowDialog();
                            _dr = _mb.Operation;
                            if (_dr == DialogResult.No)
                            {
                                Application.Exit();
                            }
                        }
                    }
                    else if (_drSystemConfig["Key"].ToString() == "DevelopedBy")
                    {
                        GlobalVariables.DevelopedBy = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "LGUName")
                    {
                        GlobalVariables.LGUName = _drSystemConfig["Value"].ToString();
                        lblLGUName.UseMnemonic = false;
                        lblLGUName.Text = GlobalVariables.LGUName;
                    }
                    else if (_drSystemConfig["Key"].ToString() == "LGUProvince")
                    {
                        GlobalVariables.LGUProvince = _drSystemConfig["Value"].ToString();
                        lblLGUProvince.UseMnemonic = false;
                        lblLGUProvince.Text = GlobalVariables.LGUProvince;
                    }
                    else if (_drSystemConfig["Key"].ToString() == "LGUAddress")
                    {
                        GlobalVariables.LGUAddress = _drSystemConfig["Value"].ToString();
                        lblLGUAddress.Text = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "ContactNumber")
                    {
                        GlobalVariables.ContactNumber = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "LGULogo")
                    {
                        GlobalVariables.LGULogo = _drSystemConfig["Value"].ToString();
                    }
                    //backup
                    else if (_drSystemConfig["Key"].ToString() == "BackupPath")
                    {
                        GlobalVariables.BackupPath = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "BackupMySqlDumpAddress")
                    {
                        GlobalVariables.BackupMySqlDumpAddress = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "RestoreMySqlAddress")
                    {
                        GlobalVariables.RestoreMySqlAddress = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "DisplayRecordLimit")
                    {
                        GlobalVariables.DisplayRecordLimit = int.Parse(_drSystemConfig["Value"].ToString());
                    }
                    else if (_drSystemConfig["Key"].ToString() == "TimeIn")
                    {
                        GlobalVariables.TimeIn = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "BreakOut")
                    {
                        GlobalVariables.BreakOut = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "BreakIn")
                    {
                        GlobalVariables.BreakIn = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "TimeOut")
                    {
                        GlobalVariables.TimeOut = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "SoftwareInfo")
                    {
                        GlobalVariables.lSoftwareInfo = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "Speak")
                    {
                        if (_drSystemConfig["Value"].ToString() == "Y")
                        {
                            GlobalVariables.Speak = true;
                        }
                        else
                        {
                            GlobalVariables.Speak = false;
                        }
                    }
                    else if (_drSystemConfig["Key"].ToString() == "RecognizedSpeech")
                    {
                        if (_drSystemConfig["Value"].ToString() == "Y")
                        {
                            GlobalVariables.RecognizedSpeech = true;
                        }
                        else
                        {
                            GlobalVariables.RecognizedSpeech = false;
                        }
                    }
                    else if (_drSystemConfig["Key"].ToString() == "ScreenSaverImage")
                    {
                        GlobalVariables.ScreenSaverImage = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "MDITabAlignment")
                    {
                        GlobalVariables.TabAlignment = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "SupportConnectionString")
                    {
                        GlobalVariables.SupportConnectionString = _drSystemConfig["Value"].ToString();
                    }
                    else if (_drSystemConfig["Key"].ToString() == "LastBackUpDate")
                    {
                        GlobalVariables.LastBackupDate = DateTime.Parse(_drSystemConfig["Value"].ToString());
                    }
                }
                
                /*
                if (GlobalVariables.LastBackupDate.Date < DateTime.Now.Date)
                {
                     DialogResult _dr = new DialogResult();
                        MessageBoxUI _mb = new MessageBoxUI("It seems that your last back up was on "+GlobalVariables.LastBackupDate.ToLongDateString()+". \nWould you like to back up now?", GlobalVariables.Icons.QuestionMark, GlobalVariables.Buttons.YesNo);
                        _mb.ShowDialog();
                        _dr = _mb.Operation;
                        if (_dr == DialogResult.Yes)
                        {
                            BackupDatabase();
                        }
                }
                */
            }
            else
            {
                MessageBoxUI ms = new MessageBoxUI("Cannot establish database connection!", GlobalVariables.Icons.Information, GlobalVariables.Buttons.OK);
                ms.showDialog();
                return;
            }
            byte[] hextobyte = GlobalFunctions.HexToBytes(GlobalVariables.LGULogo);
            //pctLGULogo.BackgroundImage = GlobalFunctions.ConvertByteArrayToImage(hextobyte);
            //pctLGULogo.BackgroundImageLayout = ImageLayout.Stretch;
            
            //lblLGUName.Text = GlobalVariables.LGUName;
            //lblApplicationObjectsName.Text = GlobalVariables.ApplicationObjectsName;
            GlobalVariables.DTLGULogo = GlobalFunctions.getLGULogo();
        }

        public string LicenseCertificateRead()
        {
            string _result = "";
            string line = null;
            System.IO.TextReader readFile = new StreamReader(".../Main/text/LicenseCertificate.txt");
            line = readFile.ReadLine();
            if (line != null)
            {
                _result = loCryptorEngine.DecryptString(line);
            }
            readFile.Close();
            readFile = null;

            return _result;
        }

        public void LicenseCertificateWrite(string pLicenseNo)
        {
            try
            {
                string _StringToWrite = "ApplicationName:" + lblApplicationName.Text + ";ProcessorId:" + GlobalFunctions.GetProcessorId() +";" + "ExpiryDate:01/01/9999;" + "LicenseNo:" + pLicenseNo;
                _StringToWrite = loCryptorEngine.EncryptString(_StringToWrite);
                System.IO.TextWriter writeFile = new StreamWriter(".../Main/text/LicenseCertificate.txt");
                writeFile.WriteLine(_StringToWrite);
                writeFile.Flush();
                writeFile.Close();
                writeFile = null;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public void PMISDetailsRead()
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
                        GlobalVariables.PrinterName = data2[1].ToString();
                    }
                }
            }
            readFile.Close();
            readFile = null;
        }

        //for speech recognition
        private SpeechRecognitionEngine createSpeechEngine(string preferredCulture)
        {
            foreach (RecognizerInfo config in SpeechRecognitionEngine.InstalledRecognizers())
            {
                if (config.Culture.ToString() == preferredCulture)
                {
                    speechRecognitionEngine = new SpeechRecognitionEngine(config);
                    break;
                }
            }

            // if the desired culture is not found, then load default
            if (speechRecognitionEngine == null)
            {
                /*
                MessageBox.Show("The desired culture is not installed on this machine, the speech-engine will continue using "
                    + SpeechRecognitionEngine.InstalledRecognizers()[0].Culture.ToString() + " as the default culture.",
                    "Culture " + preferredCulture + " not found!");
                */
                speechRecognitionEngine = new SpeechRecognitionEngine(SpeechRecognitionEngine.InstalledRecognizers()[0]);
            }

            return speechRecognitionEngine;
        }

        private void loadGrammarAndCommands()
        {
            try
            {
                Choices texts = new Choices();
                string[] lines = File.ReadAllLines(Environment.CurrentDirectory + "\\login.txt");
                foreach (string line in lines)
                {
                    // skip commentblocks and empty lines..
                    if (line.StartsWith("--") || line == String.Empty) continue;

                    // split the line
                    var parts = line.Split(new char[] { '|' });

                    // add commandItem to the list for later lookup or execution
                    words.Add(new Word() { Text = parts[0], AttachedText = parts[1], IsShellCommand = (parts[2] == "true") });

                    // add the text to the known choices of speechengine
                    texts.Add(parts[0]);
                }
                Grammar wordsList = new Grammar(new GrammarBuilder(texts));
                speechRecognitionEngine.LoadGrammar(wordsList);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string getKnownTextOrExecute(string command)
        {
            try
            {
                var cmd = words.Where(c => c.Text == command).First();

                if (cmd.IsShellCommand)
                {
                    Process proc = new Process();
                    proc.EnableRaisingEvents = false;
                    proc.StartInfo.FileName = cmd.AttachedText;
                    proc.Start();
                    return "you just started : " + cmd.AttachedText;
                }
                else
                {
                    return cmd.AttachedText;
                }
            }
            catch (Exception)
            {
                return command;
            }
        }

        void engine_SpeechRecognized(object sender, SpeechRecognizedEventArgs e)
        {
            string _Spoken = getKnownTextOrExecute(e.Result.Text);
            if (_Spoken == "exit")
            {
                Application.Exit();
            }
            else if(_Spoken == "login")
            {
                btnLogin_Click(null, new EventArgs());
            }
        }

        void engine_AudioLevelUpdated(object sender, AudioLevelUpdatedEventArgs e)
        {
            prgLevel.Value = e.AudioLevel;
        }
       
        private void applySpeechRecognition()
        {
            try
            {
                speechRecognitionEngine = null;
                // create the engine
                speechRecognitionEngine = createSpeechEngine("de-DE");

                // hook to events
                speechRecognitionEngine.AudioLevelUpdated += new EventHandler<AudioLevelUpdatedEventArgs>(engine_AudioLevelUpdated);
                speechRecognitionEngine.SpeechRecognized += new EventHandler<SpeechRecognizedEventArgs>(engine_SpeechRecognized);

                // load dictionary
                loadGrammarAndCommands();

                // use the system's default microphone
                speechRecognitionEngine.SetInputToDefaultAudioDevice();

                // start listening
                speechRecognitionEngine.RecognizeAsync(RecognizeMode.Multiple);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Voice recognition failed");
            }
        }

        private void stopSpeechRecognition()
        {
            speechRecognitionEngine.RecognizeAsyncStop();
        }
       
        private void LogInUI_Load(object sender, EventArgs e)
        {
            string _LicenseCertificate = "";
            string _ApplicationName = "";
            string _ProcessorId = "";
            DateTime _ExpiryDate = DateTime.Now;
            string _LicenseNo = "";

            loadLGUInfo();

            _LicenseCertificate = LicenseCertificateRead();

            #region "Split License Certificate"
            char[] splitter1 = { ';' };
            char[] splitter2 = { ':' };
            string[] data1 = _LicenseCertificate.Split(splitter1);
            for (int i = 0; i < data1.Length; i++)
            {
                string[] data2 = null;
                data2 = data1[i].Split(splitter2);
                if (data2[0].ToString() == "ApplicationName")
                {
                    _ApplicationName = data2[1].ToString();
                }
                else if (data2[0].ToString() == "ProcessorId")
                {
                    _ProcessorId = data2[1].ToString();
                }
                else if (data2[0].ToString() == "ExpiryDate")
                {
                    try
                    {
                        _ExpiryDate = DateTime.Parse(data2[1].ToString());
                    }
                    catch
                    {
                        _ExpiryDate = DateTime.Now;
                    }
                }
                else if (data2[0].ToString() == "LicenseNo")
                {
                    _LicenseNo = data2[1].ToString();
                }
            }
            #endregion

            #region "Processor ID"
            string _ComputerProcessorId = GlobalFunctions.GetProcessorId();
            #endregion
            if (_ApplicationName != lblApplicationName.Text)
            {
                getSoftwareLicense();
            }
            else if(_ComputerProcessorId != _ProcessorId)
            {
                getSoftwareLicense();
            }
            else if (_ExpiryDate.Date <= DateTime.Now.Date)
            { 
               getSoftwareLicense();
            }
            else if (_LicenseNo == "")
            {
                getSoftwareLicense();
            }
            else
            {
                System.Windows.Forms.ToolTip ToolTip1 = new System.Windows.Forms.ToolTip();
                ToolTip1.SetToolTip(this.btnLogin, "Hello!");
                rememberPasswordRead();
                loadLogIn();
            }
            //loVoice.speak("Welcome to JAP Softwares Personnel Management And InformationSystem Version 1 point O.");
            if (GlobalVariables.RecognizedSpeech)
            {
                applySpeechRecognition();
                prgLevel.Visible = true;
            }
            if (GlobalVariables.Speak)
            {
                loVoice.speak("Welcome to J B C Softwates!");
            }
        }

        private void getSoftwareLicense()
        {
            //display software license.
            SoftwareLicenseUI loSofwareLicense = new SoftwareLicenseUI(GlobalVariables.LGUName, GlobalVariables.ApplicationName);
            loSofwareLicense.ShowDialog();
            if (loSofwareLicense.lSuccessFullyVerified)
            {
                LicenseCertificateWrite(loSofwareLicense.lLicenseNo);
                loadLogIn();
            }
            else
            {
                Application.Exit();
            }
        }

        private void txtUsername_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '\r')
            {
                btnLogin_Click(null, new EventArgs());
            }
        }

        private void txtPassword_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == '\r')
            {
                btnLogin_Click(null, new EventArgs());
            }
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (GlobalVariables.RecognizedSpeech)
            {
                //stopSpeechRecognition();
            }
            if (GlobalVariables.Speak)
            {
                loVoice.stopSpeaking();
            }
            // apply it later
            if (chbRemember.Checked)
            {
                rememberPasswordWrite();
            }
            else
            {
                rememberUsernameWrite();
            }
            if (loUser.autenticateUser(txtUsername.Text, txtPassword.Text))
            {
                this.Hide();
                MDIUI MDI = new MDIUI();
                loadGlobalVariables();
                MDI.ShowDialog();
                try
                {
                    this.Show();
                    //applySpeechRecognition();
                }
                catch { }
                GlobalVariables.xLocation = MDI.Location.X;
                GlobalVariables.yLocation = MDI.Location.Y;

                txtPassword.Clear();
                txtPassword.Focus();
            }
            else
            {
                MessageBoxUI ms = new MessageBoxUI("Username and password combination is incorrect!", GlobalVariables.Icons.Warning, GlobalVariables.Buttons.OK);
                ms.showDialog();
                txtPassword.Focus();
                return;
            }
        }

        public void rememberPasswordWrite()
        {
            try
            {
                string _StringToWrite = "Username:" + txtUsername.Text + ";" + "Password:" + txtPassword.Text;
                _StringToWrite = loCryptorEngine.EncryptString(_StringToWrite);
                System.IO.TextWriter writeFile = new StreamWriter(".../Main/text/userDetails.txt");
                writeFile.WriteLine(_StringToWrite);
                writeFile.Flush();
                writeFile.Close();
                writeFile = null;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public void rememberUsernameWrite()
        {
            try
            {
                string _StringToWrite = "Username:" + txtUsername.Text;
                _StringToWrite = loCryptorEngine.EncryptString(_StringToWrite);
                System.IO.TextWriter writeFile = new StreamWriter(".../Main/text/userDetails.txt");
                writeFile.WriteLine(_StringToWrite);
                writeFile.Flush();
                writeFile.Close();
                writeFile = null;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
        }

        public void rememberPasswordRead()
        {
            string line = null;
            char[] splitter1 = { ';' };
            char[] splitter2 = { ':' };
            System.IO.TextReader readFile = new StreamReader(".../Main/text/userDetails.txt");
            line = readFile.ReadLine();
            if (line != null)
            {
                string _StringToWrite = loCryptorEngine.DecryptString(line);
                string[] data1 = _StringToWrite.Split(splitter1);
                for (int i = 0; i < data1.Length; i++)
                {
                    string[] data2 = null;
                    data2 = data1[i].Split(splitter2);
                    if (data2[0].ToString() == "Username")
                    {
                        txtUsername.Text = data2[1].ToString();
                    }
                    if (data2[0].ToString() == "Password")
                    {
                        txtPassword.Text = data2[1].ToString();
                        chbRemember.Checked = true;
                    }
                }
            }
            readFile.Close();
            readFile = null;
        }
        private void LogInUI_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void lblDaysLeft_DoubleClick(object sender, EventArgs e)
        {
            
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void lblVersionNo_Click(object sender, EventArgs e)
        {

        }
    }
}

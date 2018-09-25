using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Drawing;
using MySql.Data.MySqlClient;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.ReportSource;
using CrystalDecisions.Shared;
using CrystalDecisions.Windows.Forms;

using JBC_PMIS_Government.ApplicationObjects.UserInterfaces.Report;

namespace JBC_PMIS_Government.Global
{
    public class GlobalVariables
    {
        public static MySqlConnection Connection = new MySqlConnection();
        public static MySqlConnection SupportConnection = new MySqlConnection();
        //ApplicationObjects
        public static string ApplicationName = "";
        public static string VersionNo = "";
        public static string DevelopedBy = "";
        //lgu
        public static string LGUName = "";
        public static string LGUAddress = "";
        public static string ContactNumber = "";
        public static string LGULogo = "";
        public static string LGUProvince = "";
        //database backup
        public static string BackupPath = "";
        public static string BackupMySqlDumpAddress = "";
        public static string RestoreMySqlAddress = "";
        //display
        public static string ScreenSaverImage = "";
        public static string TabAlignment = "";
        public static int DisplayRecordLimit = 0;
        public static bool Speak = false;
        public static bool RecognizedSpeech = false;
        public static string lSoftwareInfo = "";
        //general use
        public static string Username = "";
        public static string Userfullname = "";
        public static DateTime LastBackupDate;
        public static string Hostname = "";
        public static int xLocation;
        public static int yLocation;
        public static string PrinterName;
        public static string TimeIn = "";
        public static string BreakOut = "";
        public static string BreakIn = "";
        public static string TimeOut = "";
        //support
        public static string SupportConnectionString = "";
        //Dataview
        public static DataView DVRights;
        //data table
        public static DataTable DTLGULogo = new DataTable();
        //report
        public static ReportViewerUI loReportPreviewer = new ReportViewerUI();
        public static CrystalReport loCrystalReport = new CrystalReport();
        //set limitations
        public enum Operation
        {
            Add = 0,
            Edit = 1,
            Delete = 2,
            Open = 3,
            Close = 4
        };
        public enum Icons
        {
            Information = 0,
            Save = 1,
            Ok = 2,
            QuestionMark = 3,
            Delete = 4,
            Warning = 5,
            Error = 6,
            Close = 7
        };
        public enum Buttons
        {
            OK = 0,
            OKCancel = 1,
            YesNo = 2,
            YesNoCancel = 3,
            Close = 4
        };
    }
}

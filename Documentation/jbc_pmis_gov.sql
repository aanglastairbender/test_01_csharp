/*
SQLyog Ultimate v8.55 
MySQL - 5.5.11 : Database - jbc_pmis_gov
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `jbc_pmis_gov`;

/*Table structure for table `audittrail` */

DROP TABLE IF EXISTS `audittrail`;

CREATE TABLE `audittrail` (
  `Date` datetime DEFAULT NULL,
  `LogDescription` varchar(300) DEFAULT NULL,
  `Username` varchar(30) DEFAULT NULL,
  `Hostname` varchar(15) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  `Backup` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `audittrail` */

insert  into `audittrail`(`Date`,`LogDescription`,`Username`,`Hostname`,`Status`,`Backup`) values ('2017-10-25 13:44:02','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-10-25 13:47:09','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-10-25 13:51:52','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-10-25 14:01:05','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-10-25 14:01:31','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-10-30 08:56:55','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-10-30 09:07:06','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-10-30 09:07:29','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-10-30 11:59:36','Administrator updates an Employee. Employee No:3; EmployeeName:Gil, Riza Reyna A; BiometricsId:3; EmploymentType:Regular; DepartmentCode:REGULAR; DesignationCode:SSTV; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:02:05','Administrator creates an Employee. EmployeeNo.:100; EmployeeName:Beceril, Niñokay L; BiometricsId:72; EmploymentType:Job Order; DepartmentCode:REGULAR; DesignationCode:SSTI; WorkScheduleCode:; Birthday:2017-10-30; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:04:20','Administrator creates an Employee. EmployeeNo.:101; EmployeeName:Valmoria, Timmy Rose ; BiometricsId:12; EmploymentType:Regular; DepartmentCode:J.O.; DesignationCode:J.O.; WorkScheduleCode:; Birthday:2017-10-30; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:11:38','Administrator updates an Employee. Employee No:1; EmployeeName:Abegonia, Norma B.; BiometricsId:1; EmploymentType:Regular; DepartmentCode:REGULAR; DesignationCode:AOIIBO; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:12:25','Administrator updates an Employee. Employee No:34; EmployeeName:Magallanes, Cyril B.; BiometricsId:34; EmploymentType:Regular; DepartmentCode:REGULAR; DesignationCode:ISAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:14:24','Administrator updates an Employee. Employee No:34; EmployeeName:Magallanes, Cyril B.; BiometricsId:34; EmploymentType:Regular; DepartmentCode:REGULAR; DesignationCode:ISAI; WorkScheduleCode:CSWS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:23:37','Administrator updates an Employee. Employee No:34; EmployeeName:Magallanes, Cyril B; BiometricsId:34; EmploymentType:Regular; DepartmentCode:REGULAR; DesignationCode:ISAI; WorkScheduleCode:CSWS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:25:13','Administrator updates an Employee. Employee No:34; EmployeeName:Magallanes, Cyril B.; BiometricsId:34; EmploymentType:Regular; DepartmentCode:REGULAR; DesignationCode:ISAI; WorkScheduleCode:CSWS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:25:40','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-10-30 12:27:59','Administrator updates a Designation. DesignationCode:AOIIBO; DesignationDescription:ADMIN OFFICER/ BUDGET OFFICER; Remarks:','admin','ebased','Active','N'),('2017-10-30 12:30:39','Administrator updates a Department. DescriptionCode:J.O.; DepartmentDescription:FAD; DepartmentHead:; Designation:; Remarks:','admin','ebased','Active','N'),('2017-10-30 12:30:58','Administrator removes a Departement. DepartmentCode:J.O.','admin','ebased','Active','N'),('2017-10-30 12:31:00','Administrator removes a Departement. DepartmentCode:REGULAR','admin','ebased','Active','N'),('2017-10-30 12:31:44','Administrator creates new Department. DepartmentCode:FAD; DepartmentDescription:Finance and Administrative Division; DepartmentHead:Leonila N. Oyangoren; Designation:Supervising Administrative Officer; Remarks:','admin','ebased','Active','N'),('2017-10-30 12:34:06','Administrator creates new Department. DepartmentCode:CID; DepartmentDescription:Curriculum and Instruction Division; DepartmentHead:Arlene C. Agosto; Designation:SST V; Remarks:','admin','ebased','Active','N'),('2017-10-30 12:34:46','Administrator creates new Department. DepartmentCode:SSD; DepartmentDescription:Student Services Division; DepartmentHead:Danilo A. Quilates; Designation:SST 3; Remarks:','admin','ebased','Active','N'),('2017-10-30 12:34:52','Administrator updates a Department. DescriptionCode:CID; DepartmentDescription:Curriculum and Instruction Division; DepartmentHead:Arlene C. Agosto; Designation:SST 5; Remarks:','admin','ebased','Active','N'),('2017-10-30 12:35:41','Administrator updates an Employee. Employee No:1; EmployeeName:Abegonia, Norma B.; BiometricsId:1; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AOIIBO; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:02','Administrator updates an Employee. Employee No:2; EmployeeName:Abrea, Jayfe Anthony A. ; BiometricsId:2; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:08','Administrator updates an Employee. Employee No:56; EmployeeName:Aco, Lucille A.; BiometricsId:56; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:16','Administrator updates an Employee. Employee No:17; EmployeeName:Agosto, Arlene  C; BiometricsId:17; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTV; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:25','Administrator updates an Employee. Employee No:4; EmployeeName:Albina, Julius O. ; BiometricsId:4; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:31','Administrator updates an Employee. Employee No:5; EmployeeName:Albiso, Romil P.; BiometricsId:5; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:38','Administrator updates an Employee. Employee No:6; EmployeeName:Albores, Maricel A.; BiometricsId:6; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:43','Administrator updates an Employee. Employee No:7; EmployeeName:Arnais, Rowena R.; BiometricsId:7; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:49','Administrator updates an Employee. Employee No:8; EmployeeName:Awit, Maria Ana C.; BiometricsId:8; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:54','Administrator updates an Employee. Employee No:9; EmployeeName:Baje, Benito A. ; BiometricsId:9; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:36:58','Administrator updates an Employee. Employee No:10; EmployeeName:Bajenting, Jovanie O.; BiometricsId:10; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SRA; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:37:02','Administrator updates an Employee. Employee No:11; EmployeeName:Balais, Janeth S. ; BiometricsId:11; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:37:06','Administrator updates an Employee. Employee No:69; EmployeeName:Balais, Richard C; BiometricsId:69; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:OTS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:37:11','Administrator updates an Employee. Employee No:13; EmployeeName:Balili, Kenneth C. ; BiometricsId:13; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:37:15','Administrator updates an Employee. Employee No:57; EmployeeName:Banados, Mercy B.; BiometricsId:57; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:J.O.; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:37:20','Administrator updates an Employee. Employee No:57; EmployeeName:Banados, Mercy B.; BiometricsId:57; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:37:25','Administrator updates an Employee. Employee No:14; EmployeeName:Barcoma, Wesley C.; BiometricsId:14; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:37:31','Administrator updates an Employee. Employee No:15; EmployeeName:Batoctoy, Elsi Marie B.; BiometricsId:15; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:GSAI; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-10-30 12:37:37','Administrator updates an Employee. Employee No:100; EmployeeName:Beceril, Niñokay L; BiometricsId:72; EmploymentType:Job Order; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:; Birthday:2017-10-30; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-02 10:13:36','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-02 10:53:02','Administrator creates new Holiday. HolidayCode:; HolidayDescription:Transport strike; Type:; Remarks:','admin','ebased','Active','N'),('2017-11-02 10:54:16','Administrator creates new Holiday Entry. Date:2017-10-17; HolidayCode:; Remarks:','admin','ebased','Active','N'),('2017-11-02 10:54:43','Administrator approves a Holiday Entry. HolidayEntryId:3','admin','ebased','Active','N'),('2017-11-02 10:59:26','Administrator creates new Leave Entry. EmployeeNo:34; LeaveTypeCode:SL; ReferenceNo:; Date:2017-10-10; Time:Whole Day; Explanation:; Remarks:','admin','ebased','Active','N'),('2017-11-02 10:59:43','Administrator approves a Leave Entry. LeaveEntryId:1','admin','ebased','Active','N'),('2017-11-02 11:21:42','Administrator creates new Holiday Entry. Date:2017-10-18; HolidayCode:; Remarks:','admin','ebased','Active','N'),('2017-11-02 11:21:49','Administrator approves a Holiday Entry. HolidayEntryId:4','admin','ebased','Active','N'),('2017-11-02 11:26:00','Administrator creates new Holiday Entry. Date:2017-10-26; HolidayCode:; Remarks:','admin','ebased','Active','N'),('2017-11-02 11:39:12','Administrator approves a Holiday Entry. HolidayEntryId:5','admin','ebased','Active','N'),('2017-11-02 11:59:51','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-02 12:02:30','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmEmployee','admin','ebased','Active','N'),('2017-11-02 12:02:46','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmDesignation','admin','ebased','Active','N'),('2017-11-02 12:02:50','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmDepartment','admin','ebased','Active','N'),('2017-11-02 12:02:53','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmWorkSchedule','admin','ebased','Active','N'),('2017-11-02 12:02:56','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmLeaveType','admin','ebased','Active','N'),('2017-11-02 12:02:59','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmHoliday','admin','ebased','Active','N'),('2017-11-02 12:03:06','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmImportDataFromBiometrics','admin','ebased','Active','N'),('2017-11-02 12:03:09','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmProcessDailyTimeRecord','admin','ebased','Active','N'),('2017-11-02 12:03:12','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmProcessDailyTimeRecordHospital','admin','ebased','Active','N'),('2017-11-02 12:03:18','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmOvertimeEntry','admin','ebased','Active','N'),('2017-11-02 12:03:21','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmOfficialBusinessEntry','admin','ebased','Active','N'),('2017-11-02 12:03:24','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmLeaveEntry','admin','ebased','Active','N'),('2017-11-02 12:03:27','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmHolidayEntry','admin','ebased','Active','N'),('2017-11-02 12:03:30','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmAttendanceSummary','admin','ebased','Active','N'),('2017-11-02 12:03:33','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmAttendanceSummaryHospital','admin','ebased','Active','N'),('2017-11-02 12:03:35','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmCSForm48','admin','ebased','Active','N'),('2017-11-02 12:03:38','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmCSForm48Hospital','admin','ebased','Active','N'),('2017-11-02 12:03:41','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmAuditTrail','admin','ebased','Active','N'),('2017-11-02 12:03:45','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmSystemConfiguration','admin','ebased','Active','N'),('2017-11-02 12:03:48','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmUser','admin','ebased','Active','N'),('2017-11-02 12:03:51','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmUserGroup','admin','ebased','Active','N'),('2017-11-02 12:03:57','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmChangeUserPassword','admin','ebased','Active','N'),('2017-11-02 12:04:01','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmScreenSaver','admin','ebased','Active','N'),('2017-11-02 12:04:04','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmLockScreen','admin','ebased','Active','N'),('2017-11-02 12:04:07','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmBackupRestoreDatabase','admin','ebased','Active','N'),('2017-11-02 12:04:10','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmSupport','admin','ebased','Active','N'),('2017-11-02 12:04:13','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmExit','admin','ebased','Active','N'),('2017-11-02 12:04:14','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmExit','admin','ebased','Active','N'),('2017-11-02 12:04:16','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmExit','admin','ebased','Active','N'),('2017-11-02 12:04:16','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmExit','admin','ebased','Active','N'),('2017-11-02 12:04:37','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-02 12:05:03','Administrator updates a User. Fullname:Administrator; UserGroupId:UG00001; Username:admin','admin','ebased','Active','N'),('2017-11-02 12:07:50','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmOvertimeEntry','admin','ebased','Active','N'),('2017-11-02 12:10:09','Administrator removes all rights from User Groups. UserGroupId:UG00001; ItemName:tsmOvertimeEntry','admin','ebased','Active','N'),('2017-11-16 11:51:38','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-16 12:11:47','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-16 12:17:29','Administrator removes a Holiday. HolidayCode:','admin','ebased','Active','N'),('2017-11-16 12:29:51','Administrator updates an Employee. Employee No:34; EmployeeName:Magallanes, Cyril B.; BiometricsId:34; EmploymentType:Regular; DepartmentCode:; DesignationCode:ISAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-16 12:34:56','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-21 09:14:35','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-21 14:19:02','Administrator creates new Designation. DesignationCode:SAO; DesignationDescription:Supervising Administrative Officer; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:48:20','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-22 08:48:37','Administrator updates an Employee. Employee No:2; EmployeeName:Abrea, Jayfe Anthony A. ; BiometricsId:2; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 08:49:08','Administrator updates a Designation. DesignationCode:AAI; DesignationDescription:Administrative Aide I; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:49:26','Administrator updates a Designation. DesignationCode:AAIII; DesignationDescription:Administrative Aide III; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:50:01','Administrator updates a Designation. DesignationCode:AAIV; DesignationDescription:Administrative Aide IV; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:50:13','Administrator updates a Designation. DesignationCode:AAVI; DesignationDescription:Administrative Aide VI; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:50:24','Administrator updates a Designation. DesignationCode:AII; DesignationDescription:Accountant II; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:50:42','Administrator updates a Designation. DesignationCode:AOC; DesignationDescription:Accounting Office Clerk; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:51:00','Administrator updates a Designation. DesignationCode:AOIIBO; DesignationDescription:Admin Officer V; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:51:11','Administrator updates a Designation. DesignationCode:AOIIBO; DesignationDescription:Admin Officer V / Budget Officer; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:51:18','Administrator updates a Designation. DesignationCode:AOIII; DesignationDescription:Admin Officer III; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:51:25','Administrator updates a Designation. DesignationCode:AOV; DesignationDescription:Admin Officer V; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:51:32','Administrator updates a Designation. DesignationCode:CA; DesignationDescription:Cashier Assistant; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:51:39','Administrator updates a Designation. DesignationCode:CIDOC; DesignationDescription:CID Office Clerk; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:51:47','Administrator updates a Designation. DesignationCode:CII; DesignationDescription:Cashier II; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:51:56','Administrator updates a Designation. DesignationCode:DM; DesignationDescription:Dormitory Manager; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:52:11','Administrator updates a Designation. DesignationCode:GSAI; DesignationDescription:Guidance Service Associate I; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:52:23','Administrator updates a Designation. DesignationCode:ISAI; DesignationDescription:Information Systems Analyst I; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:52:33','Administrator updates a Designation. DesignationCode:J.O.; DesignationDescription:Job Order; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:52:39','Administrator updates a Designation. DesignationCode:LI; DesignationDescription:Librarian I; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:52:43','Administrator updates a Designation. DesignationCode:NII; DesignationDescription:Nurse II; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:52:50','Administrator updates a Designation. DesignationCode:RE; DesignationDescription:Resident Engineer; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:52:57','Administrator updates a Designation. DesignationCode:RI; DesignationDescription:Registrar I; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:53:10','Administrator updates a Designation. DesignationCode:SOC; DesignationDescription:Supply Office Clerk; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:53:19','Administrator updates a Designation. DesignationCode:SP; DesignationDescription:School Physician; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:53:31','Administrator updates a Designation. DesignationCode:SRA; DesignationDescription:Science Research Assistant I; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:53:50','Administrator updates a Designation. DesignationCode:SSTI; DesignationDescription:Special Science Teacher I; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:54:00','Administrator updates a Designation. DesignationCode:SSTII; DesignationDescription:Special Science Teacher II; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:54:08','Administrator updates a Designation. DesignationCode:SSTIII; DesignationDescription:Special Science Teacher III; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:54:17','Administrator updates a Designation. DesignationCode:SSTIV; DesignationDescription:Special Science Teacher IV; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:54:25','Administrator updates a Designation. DesignationCode:SSTV; DesignationDescription:Special Science Teacher V; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:55:05','Administrator creates new Designation. DesignationCode:; DesignationDescription:Science Research Specialist I; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:55:30','Administrator removes a Designation. DesignationCode:','admin','ebased','Active','N'),('2017-11-22 08:55:56','Administrator creates new Designation. DesignationCode:SRS1; DesignationDescription:Science Research Specialist I; Remarks:','admin','ebased','Active','N'),('2017-11-22 08:59:43','Administrator updates a Designation. DesignationCode:SRA; DesignationDescription:Science Research Assistant; Remarks:','admin','ebased','Active','N'),('2017-11-22 09:00:16','Administrator updates a Work Schedule. WorkScheduleCode:CS; WorkScheduleDescription:Regular Schedule; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-22 09:00:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:CS; Day:Monday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:CS; Day:Tuesday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:CS; Day:Wednesday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:CS; Day:Thursday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:CS; Day:Friday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:36','Administrator updates a Work Schedule. WorkScheduleCode:CSWS; WorkScheduleDescription:Regular Schedule with Sat and Sun; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-22 09:00:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:CSWS; Day:Sunday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:CSWS; Day:Monday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:CSWS; Day:Tuesday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:CSWS; Day:Wednesday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:CSWS; Day:Thursday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:CSWS; Day:Friday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:CSWS; Day:Saturday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-22 09:00:57','Administrator updates an Employee. Employee No:1; EmployeeName:Abegonia, Norma B.; BiometricsId:1; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AOIIBO; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:01:04','Administrator updates an Employee. Employee No:2; EmployeeName:Abrea, Jayfe Anthony A. ; BiometricsId:2; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:01:14','Administrator updates an Employee. Employee No:56; EmployeeName:Aco, Lucille A.; BiometricsId:56; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:01:24','Administrator updates an Employee. Employee No:17; EmployeeName:Agosto, Arlene  C; BiometricsId:17; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTV; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:02:51','Administrator creates new Work Schedule. WorkScheduleCode:; WorkScheduleDescription:7:30 to 4:30 Schedule; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-22 09:02:51','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-22 09:02:51','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-22 09:02:51','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-22 09:02:51','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-22 09:02:51','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Friday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-22 09:03:06','Administrator updates an Employee. Employee No:4; EmployeeName:Albina, Julius O. ; BiometricsId:4; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:03:24','Administrator updates an Employee. Employee No:5; EmployeeName:Albiso, Romil P.; BiometricsId:5; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:03:32','Administrator updates an Employee. Employee No:6; EmployeeName:Albores, Maricel A.; BiometricsId:6; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:03:57','Administrator updates an Employee. Employee No:16; EmployeeName:Buscato, Maria Vilma R.; BiometricsId:16; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:04:05','Administrator updates an Employee. Employee No:16; EmployeeName:Buscato, Maria Vilma R.; BiometricsId:16; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:04:45','Administrator updates an Employee. Employee No:15; EmployeeName:Batoctoy, Elsi Marie B.; BiometricsId:15; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:04:52','Administrator updates an Employee. Employee No:15; EmployeeName:Batoctoy, Elsi Marie B.; BiometricsId:15; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:05:12','Administrator updates an Employee. Employee No:28; EmployeeName:Geslaga, Ligaya B.; BiometricsId:28; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:LI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:05:31','Administrator updates an Employee. Employee No:33; EmployeeName:Lagura, Kathreena C.; BiometricsId:33; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:GSAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:06:42','Administrator updates an Employee. Employee No:41; EmployeeName:Quilates, Danilo  A.; BiometricsId:41; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:SSTIII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:07:34','Administrator updates an Employee. Employee No:66; EmployeeName:Toong, Nestor V.; BiometricsId:66; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:11:04','Administrator updates an Employee. Employee No:68; EmployeeName:Veloso, Rogelio Jr. S.; BiometricsId:68; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:11:15','Administrator updates an Employee. Employee No:101; EmployeeName:Valmoria, Timmy Rose ; BiometricsId:12; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:; Birthday:2017-10-30; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:11:33','Administrator updates an Employee. Employee No:55; EmployeeName:Zamora, Diana Jane P.; BiometricsId:55; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:RI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:11:45','Administrator updates an Employee. Employee No:52; EmployeeName:Villaflor, Jesseca Athena S.; BiometricsId:52; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:NII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:15:33','Administrator updates an Employee. Employee No:34; EmployeeName:Magallanes, Cyril B.; BiometricsId:34; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:ISAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:15:45','Administrator updates an Employee. Employee No:10; EmployeeName:Bajenting, Jovanie O.; BiometricsId:10; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SRA; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:15:53','Administrator updates an Employee. Employee No:10; EmployeeName:Bajenting, Jovanie O.; BiometricsId:10; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SRA; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:17:36','Administrator updates an Employee. Employee No:60; EmployeeName:Emos, Richelle N.; BiometricsId:60; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:CA; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:17:41','Administrator updates an Employee. Employee No:67; EmployeeName:Ty-Farma, Joey Jergens .; BiometricsId:67; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:RE; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:17:48','Administrator updates an Employee. Employee No:59; EmployeeName:Carreon, Ma. Emmalyn .; BiometricsId:59; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:SOC; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:17:57','Administrator updates an Employee. Employee No:64; EmployeeName:Puerto, Denisse R.; BiometricsId:64; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:CIDOC; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:18:01','Administrator updates an Employee. Employee No:61; EmployeeName:Ilustrismo, Estanislao Jr. .; BiometricsId:61; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:J.O.; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:18:13','Administrator updates an Employee. Employee No:63; EmployeeName:Neri, Dyesebel V.; BiometricsId:63; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:AOC; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:18:18','Administrator updates an Employee. Employee No:62; EmployeeName:Oyangoren, Jerl M.; BiometricsId:62; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:RE; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:18:24','Administrator updates an Employee. Employee No:65; EmployeeName:Quillosa, Estaneslao Jr. .; BiometricsId:65; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:J.O.; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:18:48','Administrator updates an Employee. Employee No:43; EmployeeName:Rendon, Lilian P.; BiometricsId:43; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AAIV; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:19:48','Administrator creates new Designation. DesignationCode:AO4; DesignationDescription:Administrative Officer IV / Records Officer; Remarks:','admin','ebased','Active','N'),('2017-11-22 09:20:35','Administrator updates an Employee. Employee No:57; EmployeeName:Banados, Mercy B.; BiometricsId:57; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:20:43','Administrator updates an Employee. Employee No:68; EmployeeName:Veloso, Rogelio Jr. S.; BiometricsId:68; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:20:50','Administrator updates an Employee. Employee No:101; EmployeeName:Valmoria, Timmy Rose ; BiometricsId:12; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:2017-10-30; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:20:56','Administrator updates an Employee. Employee No:66; EmployeeName:Toong, Nestor V.; BiometricsId:66; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:21:03','Administrator updates an Employee. Employee No:41; EmployeeName:Quilates, Danilo  A.; BiometricsId:41; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:23:43','Administrator updates an Employee. Employee No:55; EmployeeName:Zamora, Diana Jane P.; BiometricsId:55; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:RI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:19853.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:28:23','Administrator updates an Employee. Employee No:55; EmployeeName:Zamora, Diana Jane P.; BiometricsId:55; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:RI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:19853.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:32:52','Administrator updates an Employee. Employee No:55; EmployeeName:Zamora, Diana Jane P.; BiometricsId:55; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:RI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:19853.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:35:22','Administrator updates an Employee. Employee No:55; EmployeeName:Zamora, Diana Jane P.; BiometricsId:55; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:RI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:19853.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:36:53','Administrator updates an Employee. Employee No:47; EmployeeName:Sasaban, Felixberto L.; BiometricsId:47; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:17142.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:37:15','Administrator updates an Employee. Employee No:47; EmployeeName:Sasaban, Felixberto L.; BiometricsId:47; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:17142.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:38:11','Administrator updates an Employee. Employee No:52; EmployeeName:Villaflor, Jesseca Athena S.; BiometricsId:52; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:NII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:27887.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:38:39','Administrator updates an Employee. Employee No:55; EmployeeName:Zamora, Diana Jane P.; BiometricsId:55; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:RI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:19853.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:44:21','Administrator updates an Employee. Employee No:56; EmployeeName:Aco, Lucille A.; BiometricsId:56; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:44:45','Administrator updates an Employee. Employee No:68; EmployeeName:Veloso, Rogelio Jr. S.; BiometricsId:68; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:45:05','Administrator updates an Employee. Employee No:101; EmployeeName:Valmoria, Timmy Rose ; BiometricsId:12; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:2017-10-30; RateType:Daily; BasicPay:366.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:51:06','Administrator updates an Employee. Employee No:66; EmployeeName:Toong, Nestor V.; BiometricsId:66; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:51:19','Administrator updates an Employee. Employee No:47; EmployeeName:Sasaban, Felixberto L.; BiometricsId:47; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:17142.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:52:55','Administrator updates an Employee. Employee No:41; EmployeeName:Quilates, Danilo  A.; BiometricsId:41; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:54:28','Administrator updates an Employee. Employee No:33; EmployeeName:Lagura, Kathreena C.; BiometricsId:33; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:GSAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:21387.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:55:36','Administrator updates an Employee. Employee No:28; EmployeeName:Geslaga, Ligaya B.; BiometricsId:28; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:LI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:19853.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:56:33','Administrator updates an Employee. Employee No:57; EmployeeName:Bañados, Mercy B.; BiometricsId:57; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:AAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-22 09:57:17','Administrator updates an Employee. Employee No:16; EmployeeName:Buscato, Maria Vilma R.; BiometricsId:16; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:17142.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-23 10:20:09','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-24 08:50:38','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-24 08:54:04','Administrator updates an Employee. Employee No:7; EmployeeName:Arnais, Rowena R.; BiometricsId:7; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:54:36','Administrator updates an Employee. Employee No:8; EmployeeName:Awit, Maria Ana C.; BiometricsId:8; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:54:44','Administrator updates an Employee. Employee No:9; EmployeeName:Baje, Benito A. ; BiometricsId:9; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:54:51','Administrator updates an Employee. Employee No:11; EmployeeName:Balais, Janeth S. ; BiometricsId:11; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:54:59','Administrator updates an Employee. Employee No:69; EmployeeName:Balais, Richard C; BiometricsId:69; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:55:10','Administrator updates an Employee. Employee No:13; EmployeeName:Balili, Kenneth C. ; BiometricsId:13; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:55:16','Administrator updates an Employee. Employee No:14; EmployeeName:Barcoma, Wesley C.; BiometricsId:14; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:55:21','Administrator updates an Employee. Employee No:100; EmployeeName:Beceril, Niñokay L; BiometricsId:72; EmploymentType:Job Order; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:CS; Birthday:2017-10-30; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:55:29','Administrator updates an Employee. Employee No:18; EmployeeName:Calvo, Felix S.; BiometricsId:18; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:55:36','Administrator updates an Employee. Employee No:19; EmployeeName:Camarillo, Marco Lorenzo R. ; BiometricsId:19; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:56:21','Administrator updates an Employee. Employee No:59; EmployeeName:Carreon, Ma. Emmalyn .; BiometricsId:59; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:SOC; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:56:29','Administrator updates an Employee. Employee No:20; EmployeeName:Carumba, Gee Elle L.; BiometricsId:20; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:56:35','Administrator updates an Employee. Employee No:21; EmployeeName:Chavez, Arlo S.; BiometricsId:21; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:56:39','Administrator updates an Employee. Employee No:22; EmployeeName:Datanagan, Lyn  L. ; BiometricsId:22; EmploymentType:Regular; DepartmentCode:; DesignationCode:AII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:56:48','Administrator updates an Employee. Employee No:23; EmployeeName:De Castro, Nardgin  V.; BiometricsId:23; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIV; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:56:55','Administrator updates an Employee. Employee No:24; EmployeeName:Dizon, Paul Isaac O.; BiometricsId:24; EmploymentType:Regular; DepartmentCode:; DesignationCode:SRA; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:00','Administrator updates an Employee. Employee No:60; EmployeeName:Emos, Richelle N.; BiometricsId:60; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:CA; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:06','Administrator updates an Employee. Employee No:25; EmployeeName:Flores, Shella Mae S.; BiometricsId:25; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:21','Administrator updates an Employee. Employee No:26; EmployeeName:Fuentes, Jed Michael E.; BiometricsId:26; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:28','Administrator updates an Employee. Employee No:27; EmployeeName:Gayda, Ruby Cres J.; BiometricsId:27; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:32','Administrator updates an Employee. Employee No:58; EmployeeName:Gesoro, Daniel L; BiometricsId:58; EmploymentType:Regular; DepartmentCode:; DesignationCode:AAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:39','Administrator updates an Employee. Employee No:3; EmployeeName:Gil, Riza Reyna A; BiometricsId:3; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTV; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:44','Administrator updates an Employee. Employee No:30; EmployeeName:Guia, Eleazar B.; BiometricsId:30; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:48','Administrator updates an Employee. Employee No:31; EmployeeName:Hortezuela, Joseph P.; BiometricsId:31; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIV; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:53','Administrator updates an Employee. Employee No:61; EmployeeName:Ilustrismo, Estanislao Jr. .; BiometricsId:61; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:J.O.; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 08:57:59','Administrator updates an Employee. Employee No:32; EmployeeName:Kintanar, Nilo Jeremias C.; BiometricsId:32; EmploymentType:Regular; DepartmentCode:; DesignationCode:CII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:17:07','Administrator updates an Employee. Employee No:35; EmployeeName:Magbanua, Jessa Mae .; BiometricsId:35; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:17:14','Administrator updates an Employee. Employee No:36; EmployeeName:Narvacan, Christian I.; BiometricsId:36; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:17:23','Administrator updates an Employee. Employee No:63; EmployeeName:Neri, Dyesebel V.; BiometricsId:63; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:AOC; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:17:30','Administrator updates an Employee. Employee No:37; EmployeeName:Omboy, Lucas E.; BiometricsId:37; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:17:36','Administrator updates an Employee. Employee No:62; EmployeeName:Oyangoren, Jerl M.; BiometricsId:62; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:RE; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:17:48','Administrator updates an Employee. Employee No:38; EmployeeName:Oyangoren, Leonila N.; BiometricsId:38; EmploymentType:Regular; DepartmentCode:; DesignationCode:AOV; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:17:53','Administrator updates an Employee. Employee No:39; EmployeeName:Puerto, Abraham P.; BiometricsId:39; EmploymentType:Regular; DepartmentCode:; DesignationCode:AAIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:17:59','Administrator updates an Employee. Employee No:64; EmployeeName:Puerto, Denisse R.; BiometricsId:64; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:CIDOC; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:18:04','Administrator updates an Employee. Employee No:40; EmployeeName:Quibete, Princess Garnet E. ; BiometricsId:40; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:18:43','Administrator removes a Work Schedule. WorkScheduleCode:10pm-6am','admin','ebased','Active','N'),('2017-11-24 09:18:52','Administrator removes a Work Schedule. WorkScheduleCode:11am-7pm','admin','ebased','Active','N'),('2017-11-24 09:18:55','Administrator removes a Work Schedule. WorkScheduleCode:12pm-8pm','admin','ebased','Active','N'),('2017-11-24 09:18:59','Administrator removes a Work Schedule. WorkScheduleCode:2pm-10pm','admin','ebased','Active','N'),('2017-11-24 09:19:03','Administrator removes a Work Schedule. WorkScheduleCode:3am-11am','admin','ebased','Active','N'),('2017-11-24 09:19:07','Administrator removes a Work Schedule. WorkScheduleCode:3pm-11pm','admin','ebased','Active','N'),('2017-11-24 09:19:10','Administrator removes a Work Schedule. WorkScheduleCode:4am-12nn','admin','ebased','Active','N'),('2017-11-24 09:19:21','Administrator updates a Work Schedule. WorkScheduleCode:; WorkScheduleDescription:7:30-4:30 Schedule; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:19:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:19:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:19:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:19:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:19:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:; Day:Friday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:19:29','Administrator removes a Work Schedule. WorkScheduleCode:5am-1pm','admin','ebased','Active','N'),('2017-11-24 09:19:34','Administrator removes a Work Schedule. WorkScheduleCode:6am-2pm','admin','ebased','Active','N'),('2017-11-24 09:19:50','Administrator removes a Work Schedule. WorkScheduleCode:7am-3pm','admin','ebased','Active','N'),('2017-11-24 09:22:14','Administrator creates new Work Schedule. WorkScheduleCode:9am-6pm; WorkScheduleDescription:9:00-6:00 Schedule; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:22:14','Administrator creates new Work Schedule Detail. WorkScheduleCode:9am-6pm; Day:Monday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:22:14','Administrator creates new Work Schedule Detail. WorkScheduleCode:9am-6pm; Day:Tuesday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:22:14','Administrator creates new Work Schedule Detail. WorkScheduleCode:9am-6pm; Day:Wednesday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:22:14','Administrator creates new Work Schedule Detail. WorkScheduleCode:9am-6pm; Day:Thursday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:22:14','Administrator creates new Work Schedule Detail. WorkScheduleCode:9am-6pm; Day:Friday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:22:33','Administrator updates an Employee. Employee No:65; EmployeeName:Quillosa, Estaneslao Jr. .; BiometricsId:65; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:J.O.; WorkScheduleCode:9am-6pm; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:22:39','Administrator updates an Employee. Employee No:42; EmployeeName:Ramayla, Sherry P.; BiometricsId:42; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTV; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:24:52','Administrator updates an Employee. Employee No:44; EmployeeName:Retardo, Rosita A.; BiometricsId:44; EmploymentType:Regular; DepartmentCode:; DesignationCode:AOIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:24:59','Administrator updates an Employee. Employee No:45; EmployeeName:Rosero, Larry S.; BiometricsId:45; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:25:07','Administrator updates an Employee. Employee No:46; EmployeeName:Saquibal, Ma. Fengina S.; BiometricsId:46; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:35:16','Administrator creates new Work Schedule. WorkScheduleCode:BDM; WorkScheduleDescription:5am-8am, 4pm-9pm Schedule; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:35:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Monday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:35:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Tuesday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:35:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Wednesday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:35:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Thursday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:35:16','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Friday; TimeIn:05:00 AM; BreakOut:11:00 AM; BreakIn:01:00 PM; TimeOut:03:00 PM','admin','ebased','Active','N'),('2017-11-24 09:36:08','Administrator updates an Employee. Employee No:47; EmployeeName:Sasaban, Felixberto L.; BiometricsId:47; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:BDM; Birthday:1900-01-01; RateType:Monthly; BasicPay:17142.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:39:57','Administrator creates new Work Schedule. WorkScheduleCode:BaDM1; WorkScheduleDescription:7:30am-12nn, 1pm-4:30pm; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:39:57','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Sunday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:39:57','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:39:57','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:39:57','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:39:57','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Saturday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:40:15','Administrator updates an Employee. Employee No:68; EmployeeName:Veloso, Rogelio Jr. S.; BiometricsId:68; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:BaDM1; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:40:34','Administrator updates a Work Schedule. WorkScheduleCode:BDM; WorkScheduleDescription:5am-8am, 4pm-9pm Dorm Schedule; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:40:34','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Monday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:40:34','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Tuesday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:40:34','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Wednesday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:40:34','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Thursday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:40:34','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Friday; TimeIn:05:00 AM; BreakOut:11:00 AM; BreakIn:01:00 PM; TimeOut:03:00 PM','admin','ebased','Active','N'),('2017-11-24 09:40:53','Administrator updates a Work Schedule. WorkScheduleCode:BaDM1; WorkScheduleDescription:7:30am-12nn, 1pm-4:30pm Dorm Schedule; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:40:53','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Sunday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:40:53','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:40:53','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:40:53','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:40:53','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Saturday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:41:05','Administrator updates an Employee. Employee No:68; EmployeeName:Veloso, Rogelio Jr. S.; BiometricsId:68; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:BaDM1; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:41:32','Administrator updates a Work Schedule. WorkScheduleCode:BDM; WorkScheduleDescription:5am-8am, 4pm-9pm Dorm; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:41:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Monday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:41:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Tuesday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:41:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Wednesday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:41:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Thursday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:41:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:BDM; Day:Friday; TimeIn:05:00 AM; BreakOut:11:00 AM; BreakIn:01:00 PM; TimeOut:03:00 PM','admin','ebased','Active','N'),('2017-11-24 09:41:36','Administrator updates a Work Schedule. WorkScheduleCode:BaDM1; WorkScheduleDescription:7:30am-12nn, 1pm-4:30pm Dorm; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:41:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Sunday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:41:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:41:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:41:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:41:36','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM1; Day:Saturday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 09:45:19','Administrator creates new Work Schedule. WorkScheduleCode:BaDM2; WorkScheduleDescription:BaDM2 Dorm Schedule; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:45:19','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM2; Day:Sunday; TimeIn:06:00 AM; BreakOut:07:30 AM; BreakIn:04:30 PM; TimeOut:11:00 PM','admin','ebased','Active','N'),('2017-11-24 09:45:19','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM2; Day:Monday; TimeIn:07:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:11:00 PM','admin','ebased','Active','N'),('2017-11-24 09:45:19','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM2; Day:Thursday; TimeIn:07:00 AM; BreakOut:12:00 PM; BreakIn:07:00 PM; TimeOut:10:00 PM','admin','ebased','Active','N'),('2017-11-24 09:45:19','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM2; Day:Friday; TimeIn:07:00 AM; BreakOut:09:00 AM; BreakIn:03:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:45:19','Administrator creates new Work Schedule Detail. WorkScheduleCode:BaDM2; Day:Saturday; TimeIn:06:00 AM; BreakOut:07:30 AM; BreakIn:04:30 PM; TimeOut:11:00 PM','admin','ebased','Active','N'),('2017-11-24 09:45:43','Administrator updates an Employee. Employee No:66; EmployeeName:Toong, Nestor V.; BiometricsId:66; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:BaDM2; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:50:17','Administrator creates new Work Schedule. WorkScheduleCode:GDM; WorkScheduleDescription:5-8am, 4-9pm GirlsDorm; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:50:17','Administrator creates new Work Schedule Detail. WorkScheduleCode:GDM; Day:Monday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:50:17','Administrator creates new Work Schedule Detail. WorkScheduleCode:GDM; Day:Tuesday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:50:17','Administrator creates new Work Schedule Detail. WorkScheduleCode:GDM; Day:Wednesday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:50:17','Administrator creates new Work Schedule Detail. WorkScheduleCode:GDM; Day:Thursday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:04:00 PM; TimeOut:09:00 PM','admin','ebased','Active','N'),('2017-11-24 09:50:17','Administrator creates new Work Schedule Detail. WorkScheduleCode:GDM; Day:Friday; TimeIn:05:00 AM; BreakOut:08:00 AM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:50:29','Administrator updates an Employee. Employee No:16; EmployeeName:Buscato, Maria Vilma R.; BiometricsId:16; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:GDM; Birthday:1900-01-01; RateType:Monthly; BasicPay:17142.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:53:52','Administrator creates new Work Schedule. WorkScheduleCode:GaDM1; WorkScheduleDescription:GaDM1 Dorm; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:53:52','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM1; Day:Sunday; TimeIn:06:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:03:00 PM','admin','ebased','Active','N'),('2017-11-24 09:53:52','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM1; Day:Monday; TimeIn:07:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:00 PM','admin','ebased','Active','N'),('2017-11-24 09:53:52','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM1; Day:Tuesday; TimeIn:03:00 PM; BreakOut:; BreakIn:; TimeOut:11:00 PM','admin','ebased','Active','N'),('2017-11-24 09:53:52','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM1; Day:Wednesday; TimeIn:08:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:05:00 PM','admin','ebased','Active','N'),('2017-11-24 09:53:52','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM1; Day:Saturday; TimeIn:06:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:03:00 PM','admin','ebased','Active','N'),('2017-11-24 09:54:07','Administrator updates an Employee. Employee No:56; EmployeeName:Aco, Lucille A.; BiometricsId:56; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:GaDM1; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:54:23','Administrator updates an Employee. Employee No:56; EmployeeName:Aco, Lucille A.; BiometricsId:56; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:GaDM1; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:54:33','Administrator updates an Employee. Employee No:56; EmployeeName:Aco, Lucille A.; BiometricsId:56; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:GaDM1; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 09:56:01','Administrator creates new Work Schedule. WorkScheduleCode:GaDM2; WorkScheduleDescription:GaDM2 9am-12pm, 1-6pm; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 09:56:01','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM2; Day:Monday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:56:01','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM2; Day:Tuesday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:56:01','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM2; Day:Wednesday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:56:01','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM2; Day:Thursday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:56:01','Administrator creates new Work Schedule Detail. WorkScheduleCode:GaDM2; Day:Friday; TimeIn:09:00 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:06:00 PM','admin','ebased','Active','N'),('2017-11-24 09:56:10','Administrator updates an Employee. Employee No:101; EmployeeName:Valmoria, Timmy Rose ; BiometricsId:12; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:GaDM2; Birthday:2017-10-30; RateType:Daily; BasicPay:366.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:14:06','Administrator creates new Work Schedule. WorkScheduleCode:Faculty1; WorkScheduleDescription:7:30-4:30, 11:10break\r\n7:30am-4:30am, 11:10break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 10:14:06','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Monday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:14:06','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Tuesday; TimeIn:07:30 AM; BreakOut:11:10 PM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:14:06','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Wednesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:14:06','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Thursday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:14:06','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Friday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:15:54','Administrator creates new Work Schedule. WorkScheduleCode:Faculty2; WorkScheduleDescription:7:30-4:30, 12break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 10:15:54','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty2; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:15:54','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty2; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:15:54','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty2; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:15:54','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty2; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:15:54','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty2; Day:Friday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:16:11','Administrator updates a Work Schedule. WorkScheduleCode:Faculty1; WorkScheduleDescription:7:30-4:30, 11:10break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 10:16:11','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Monday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:16:11','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Tuesday; TimeIn:07:30 AM; BreakOut:11:10 PM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:16:11','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Wednesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:16:11','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Thursday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:16:11','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty1; Day:Friday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 10:17:06','Administrator updates an Employee. Employee No:14; EmployeeName:Barcoma, Wesley C.; BiometricsId:14; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:17:22','Administrator updates an Employee. Employee No:53; EmployeeName:Villamora, Mary Joy  M.; BiometricsId:53; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:18:43','Administrator creates an Employee. EmployeeNo.:200; EmployeeName:Beceril, Niñokay L; BiometricsId:; EmploymentType:Job Order; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty1; Birthday:2017-11-24; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:19:07','Administrator removes an Employee. EmployeeNo:200','admin','ebased','Active','N'),('2017-11-24 10:19:27','Administrator updates an Employee. Employee No:100; EmployeeName:Beceril, Niñokay L; BiometricsId:72; EmploymentType:Job Order; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty1; Birthday:2017-10-30; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:19:43','Administrator updates an Employee. Employee No:51; EmployeeName:Tolentino, AlcoKenneth  C.; BiometricsId:51; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:20:05','Administrator updates an Employee. Employee No:9; EmployeeName:Baje, Benito A. ; BiometricsId:9; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:20:35','Administrator updates an Employee. Employee No:48; EmployeeName:Sumarago, Mary Jane R.; BiometricsId:48; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:20:50','Administrator updates an Employee. Employee No:6; EmployeeName:Albores, Maricel A.; BiometricsId:6; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:21:05','Administrator updates an Employee. Employee No:8; EmployeeName:Awit, Maria Ana C.; BiometricsId:8; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:21:20','Administrator updates an Employee. Employee No:21; EmployeeName:Chavez, Arlo S.; BiometricsId:21; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:21:33','Administrator updates an Employee. Employee No:50; EmployeeName:Tan, Kim Jose Orven P.; BiometricsId:50; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:21:49','Administrator updates an Employee. Employee No:23; EmployeeName:De Castro, Nardgin  V.; BiometricsId:23; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:22:07','Administrator updates an Employee. Employee No:31; EmployeeName:Hortezuela, Joseph P.; BiometricsId:31; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:22:28','Administrator updates an Employee. Employee No:40; EmployeeName:Quibete, Princess Garnet E. ; BiometricsId:40; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:22:39','Administrator updates an Employee. Employee No:40; EmployeeName:Albiso, Princess Garnet Q; BiometricsId:40; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:24:00','Administrator updates an Employee. Employee No:30; EmployeeName:Guia, Eleazar B.; BiometricsId:30; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:24:10','Administrator updates an Employee. Employee No:37; EmployeeName:Omboy, Lucas E.; BiometricsId:37; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 10:24:24','Administrator updates an Employee. Employee No:2; EmployeeName:Abrea, Jayfe Anthony A. ; BiometricsId:2; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:01:01','Administrator updates an Employee. Employee No:15; EmployeeName:Batoctoy, Elsi Marie B.; BiometricsId:15; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:02:34','Administrator creates an Employee. EmployeeNo.:102; EmployeeName:Inoferio, Fermin P; BiometricsId:; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:2017-11-24; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:02:52','Administrator updates an Employee. Employee No:42; EmployeeName:Ramayla, Sherry P.; BiometricsId:42; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:03:04','Administrator updates an Employee. Employee No:45; EmployeeName:Rosero, Larry S.; BiometricsId:45; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:08:02','Administrator updates an Employee. Employee No:54; EmployeeName:Villamora, Rey Giovanni L.; BiometricsId:54; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:08:17','Administrator updates an Employee. Employee No:36; EmployeeName:Narvacan, Christian I.; BiometricsId:36; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:15:41','Administrator creates new Work Schedule. WorkScheduleCode:Faculty3; WorkScheduleDescription:7:30-4:30, 11:10 or 12 break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 11:15:41','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty3; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:15:41','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty3; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:15:41','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty3; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:15:41','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty3; Day:Thursday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:15:41','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty3; Day:Friday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:15:57','Administrator updates an Employee. Employee No:49; EmployeeName:Tabay, Anthony A.; BiometricsId:49; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:Faculty3; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:16:06','Administrator updates an Employee. Employee No:49; EmployeeName:Tabay, Anthony A.; BiometricsId:49; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty3; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:16:21','Administrator updates an Employee. Employee No:13; EmployeeName:Balili, Kenneth C. ; BiometricsId:13; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:17:02','Administrator updates an Employee. Employee No:41; EmployeeName:Quilates, Danilo  A.; BiometricsId:41; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:17:59','Administrator creates an Employee. EmployeeNo.:103; EmployeeName:Laude, Ro-ann S.; BiometricsId:; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:2017-11-24; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:21:04','Administrator creates new Work Schedule. WorkScheduleCode:Faculty4; WorkScheduleDescription:7:30-4:30, 12break wed; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 11:21:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty4; Day:Monday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:21:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty4; Day:Tuesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:21:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty4; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:21:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty4; Day:Thursday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:21:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty4; Day:Friday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:22:26','Administrator creates an Employee. EmployeeNo.:104; EmployeeName:Mancao, Victor W.; BiometricsId:; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty4; Birthday:2017-11-24; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:26:07','Administrator creates new Work Schedule. WorkScheduleCode:Faculty5; WorkScheduleDescription:tue, fri 11:30break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 11:26:07','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:26:07','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Tuesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:26:07','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 AM','admin','ebased','Active','N'),('2017-11-24 11:26:07','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:26:07','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Friday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:26:19','Administrator updates an Employee. Employee No:18; EmployeeName:Calvo, Felix S.; BiometricsId:18; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty5; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:57:19','Administrator updates an Employee. Employee No:27; EmployeeName:Gayda, Ruby Cres J.; BiometricsId:27; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:Faculty5; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 11:57:32','Administrator updates a Work Schedule. WorkScheduleCode:Faculty5; WorkScheduleDescription:tue, fri 11:10 break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 11:57:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:57:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Tuesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:57:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 AM','admin','ebased','Active','N'),('2017-11-24 11:57:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:57:32','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty5; Day:Friday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:59:02','Administrator creates new Work Schedule. WorkScheduleCode:Faculty6; WorkScheduleDescription:mon 11:10 break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 11:59:02','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty6; Day:Monday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:59:02','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty6; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:59:02','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty6; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:59:02','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty6; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:59:02','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty6; Day:Friday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 11:59:15','Administrator updates an Employee. Employee No:25; EmployeeName:Flores, Shella Mae S.; BiometricsId:25; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:Faculty6; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:00:21','Administrator creates new Work Schedule. WorkScheduleCode:Faculty7; WorkScheduleDescription:fri 11:10 break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 12:00:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty7; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:00:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty7; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:00:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty7; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:00:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty7; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:00:21','Administrator creates new Work Schedule Detail. WorkScheduleCode:Faculty7; Day:Friday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:00:49','Administrator updates an Employee. Employee No:25; EmployeeName:Flores, Shella Mae S.; BiometricsId:25; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTI; WorkScheduleCode:Faculty7; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:03:04','Administrator creates new Work Schedule. WorkScheduleCode:faculty8; WorkScheduleDescription:thu, fri 11:10 break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 12:03:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty8; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:03:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty8; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:03:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty8; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:03:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty8; Day:Thursday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:10 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:03:04','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty8; Day:Friday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:10 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:03:18','Administrator updates an Employee. Employee No:7; EmployeeName:Arnais, Rowena R.; BiometricsId:7; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:faculty8; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:03:37','Administrator updates an Employee. Employee No:17; EmployeeName:Agosto, Arlene  C; BiometricsId:17; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:04:06','Administrator updates an Employee. Employee No:11; EmployeeName:Balais, Janeth S. ; BiometricsId:11; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:faculty8; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:06:09','Administrator creates new Work Schedule. WorkScheduleCode:faculty 9; WorkScheduleDescription:tue, 11:10 break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 12:06:09','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty 9; Day:Monday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:06:09','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty 9; Day:Tuesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:06:09','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty 9; Day:Wednesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:06:09','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty 9; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:06:09','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty 9; Day:Friday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:01:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:06:23','Administrator updates an Employee. Employee No:3; EmployeeName:Gil, Riza Reyna A; BiometricsId:3; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTV; WorkScheduleCode:faculty 9; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:10:55','Administrator updates an Employee. Employee No:26; EmployeeName:Fuentes, Jed Michael E.; BiometricsId:26; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:13:37','Administrator creates new Work Schedule. WorkScheduleCode:faculty10; WorkScheduleDescription:mon, wed 11:10 break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 12:13:37','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty10; Day:Monday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:13:37','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty10; Day:Tuesday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:13:37','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty10; Day:Wednesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:13:37','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty10; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:13:37','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty10; Day:Friday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:14:03','Administrator updates an Employee. Employee No:69; EmployeeName:Balais, Richard C; BiometricsId:69; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:faculty10; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:15:31','Administrator creates new Work Schedule. WorkScheduleCode:faculty11; WorkScheduleDescription:fri 12 break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 12:15:31','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty11; Day:Monday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:15:31','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty11; Day:Tuesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:15:31','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty11; Day:Wednesday; TimeIn:07:30 AM; BreakOut:11:10 PM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:15:31','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty11; Day:Thursday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:15:31','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty11; Day:Friday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:15:48','Administrator updates an Employee. Employee No:46; EmployeeName:Saquibal, Ma. Fengina S.; BiometricsId:46; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:faculty11; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:16:08','Administrator updates an Employee. Employee No:4; EmployeeName:Albina, Julius O. ; BiometricsId:4; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:16:39','Administrator updates an Employee. Employee No:5; EmployeeName:Albiso, Romil P.; BiometricsId:5; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:17:09','Administrator updates an Employee. Employee No:35; EmployeeName:Magbanua, Jessa Mae .; BiometricsId:35; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:18:30','Administrator creates new Work Schedule. WorkScheduleCode:faculty12; WorkScheduleDescription:thu 12 break; HospitalEmployee:N; Remarks:','admin','ebased','Active','N'),('2017-11-24 12:18:30','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty12; Day:Monday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:18:30','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty12; Day:Tuesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:18:30','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty12; Day:Wednesday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:18:30','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty12; Day:Thursday; TimeIn:07:30 AM; BreakOut:12:00 PM; BreakIn:12:50 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:18:30','Administrator creates new Work Schedule Detail. WorkScheduleCode:faculty12; Day:Friday; TimeIn:07:30 AM; BreakOut:11:10 AM; BreakIn:12:00 PM; TimeOut:04:30 PM','admin','ebased','Active','N'),('2017-11-24 12:18:49','Administrator updates an Employee. Employee No:19; EmployeeName:Camarillo, Marco Lorenzo R. ; BiometricsId:19; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:faculty12; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:19:37','Administrator updates an Employee. Employee No:20; EmployeeName:Carumba, Gee Elle L.; BiometricsId:20; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty7; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:20:13','Administrator updates an Employee. Employee No:21; EmployeeName:Chavez, Arlo S.; BiometricsId:21; EmploymentType:Regular; DepartmentCode:; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:20:18','Administrator updates an Employee. Employee No:21; EmployeeName:Chavez, Arlo S.; BiometricsId:21; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:20:26','Administrator updates an Employee. Employee No:22; EmployeeName:Datanagan, Lyn  L. ; BiometricsId:22; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:20:33','Administrator updates an Employee. Employee No:23; EmployeeName:De Castro, Nardgin  V.; BiometricsId:23; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:20:54','Administrator updates an Employee. Employee No:24; EmployeeName:Dizon, Paul Isaac O.; BiometricsId:24; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SRS1; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:02','Administrator updates an Employee. Employee No:25; EmployeeName:Flores, Shella Mae S.; BiometricsId:25; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty7; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:07','Administrator updates an Employee. Employee No:26; EmployeeName:Fuentes, Jed Michael E.; BiometricsId:26; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:11','Administrator updates an Employee. Employee No:27; EmployeeName:Gayda, Ruby Cres J.; BiometricsId:27; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty5; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:16','Administrator updates an Employee. Employee No:58; EmployeeName:Gesoro, Daniel L; BiometricsId:58; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:20','Administrator updates an Employee. Employee No:30; EmployeeName:Guia, Eleazar B.; BiometricsId:30; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:24','Administrator updates an Employee. Employee No:31; EmployeeName:Hortezuela, Joseph P.; BiometricsId:31; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:29','Administrator updates an Employee. Employee No:32; EmployeeName:Kintanar, Nilo Jeremias C.; BiometricsId:32; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:CII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:35','Administrator updates an Employee. Employee No:36; EmployeeName:Narvacan, Christian I.; BiometricsId:36; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:40','Administrator updates an Employee. Employee No:37; EmployeeName:Omboy, Lucas E.; BiometricsId:37; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:45','Administrator updates an Employee. Employee No:38; EmployeeName:Oyangoren, Leonila N.; BiometricsId:38; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AOV; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:49','Administrator updates an Employee. Employee No:39; EmployeeName:Puerto, Abraham P.; BiometricsId:39; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AAIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:53','Administrator updates an Employee. Employee No:42; EmployeeName:Ramayla, Sherry P.; BiometricsId:42; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:21:57','Administrator updates an Employee. Employee No:44; EmployeeName:Retardo, Rosita A.; BiometricsId:44; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AOIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:22:00','Administrator updates an Employee. Employee No:45; EmployeeName:Rosero, Larry S.; BiometricsId:45; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 12:22:06','Administrator updates an Employee. Employee No:48; EmployeeName:Sumarago, Mary Jane R.; BiometricsId:48; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:07:08','Administrator updates an Employee. Employee No:50; EmployeeName:Tan, Kim Jose Orven P.; BiometricsId:50; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:07:13','Administrator updates an Employee. Employee No:51; EmployeeName:Tolentino, AlcoKenneth  C.; BiometricsId:51; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:07:19','Administrator updates an Employee. Employee No:54; EmployeeName:Villamora, Rey Giovanni L.; BiometricsId:54; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:07:23','Administrator updates an Employee. Employee No:53; EmployeeName:Villamora, Mary Joy  M.; BiometricsId:53; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:07:35','Administrator updates an Employee. Employee No:40; EmployeeName:Albiso, Princess Garnet Q; BiometricsId:40; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:08:09','Administrator updates an Employee. Employee No:62; EmployeeName:Oyangoren, Jerl M.; BiometricsId:62; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:RE; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:09:50','Administrator creates new Designation. DesignationCode:AO5; DesignationDescription:Admin Officer V / Procurement Officer; Remarks:','admin','ebased','Active','N'),('2017-11-24 13:10:26','Administrator updates a Designation. DesignationCode:AO5; DesignationDescription:Admin Officer V; Remarks:','admin','ebased','Active','N'),('2017-11-24 13:10:44','Administrator updates a Designation. DesignationCode:AO4; DesignationDescription:Administrative Officer IV; Remarks:','admin','ebased','Active','N'),('2017-11-24 13:10:59','Administrator removes a Designation. DesignationCode:AOIIBO','admin','ebased','Active','N'),('2017-11-24 13:11:50','Administrator updates an Employee. Employee No:1; EmployeeName:Abegonia, Norma B.; BiometricsId:1; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AO5; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:12:31','Administrator updates an Employee. Employee No:62; EmployeeName:Oyangoren, Jerl M.; BiometricsId:62; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AO5; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:12:39','Administrator updates an Employee. Employee No:38; EmployeeName:Oyangoren, Leonila N.; BiometricsId:38; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:SAO; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:; BasicPay:0.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:15:04','Administrator updates an Employee. Employee No:1; EmployeeName:Abegonia, Norma B.; BiometricsId:1; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AO5; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:35693.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:16:05','Administrator updates an Employee. Employee No:2; EmployeeName:Abrea, Jayfe Anthony A. ; BiometricsId:2; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:16:17','Administrator updates an Employee. Employee No:2; EmployeeName:Abrea, Jayfe Anthony A. ; BiometricsId:2; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:16:59','Administrator updates an Employee. Employee No:17; EmployeeName:Agosto, Arlene  C; BiometricsId:17; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:64416.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:17:35','Administrator updates an Employee. Employee No:3; EmployeeName:Gil, Riza Reyna A; BiometricsId:3; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTV; WorkScheduleCode:faculty 9; Birthday:1900-01-01; RateType:Monthly; BasicPay:64416.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:18:10','Administrator updates an Employee. Employee No:4; EmployeeName:Albina, Julius O. ; BiometricsId:4; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:18:36','Administrator updates an Employee. Employee No:5; EmployeeName:Albiso, Romil P.; BiometricsId:5; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:19:08','Administrator updates an Employee. Employee No:6; EmployeeName:Albores, Maricel A.; BiometricsId:6; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:30044.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:19:32','Administrator updates an Employee. Employee No:7; EmployeeName:Arnais, Rowena R.; BiometricsId:7; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:faculty8; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:20:02','Administrator updates an Employee. Employee No:8; EmployeeName:Awit, Maria Ana C.; BiometricsId:8; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:20:41','Administrator updates an Employee. Employee No:9; EmployeeName:Baje, Benito A. ; BiometricsId:9; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:21:48','Administrator updates an Employee. Employee No:10; EmployeeName:Bajenting, Jovanie O.; BiometricsId:10; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SRA; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:22:38','Administrator updates an Employee. Employee No:11; EmployeeName:Balais, Janeth S. ; BiometricsId:11; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:faculty8; Birthday:1900-01-01; RateType:Monthly; BasicPay:30044.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:23:09','Administrator updates an Employee. Employee No:69; EmployeeName:Balais, Richard C; BiometricsId:69; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:faculty10; Birthday:1900-01-01; RateType:Monthly; BasicPay:52783.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:23:43','Administrator updates an Employee. Employee No:13; EmployeeName:Balili, Kenneth C. ; BiometricsId:13; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:52783.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:24:07','Administrator updates an Employee. Employee No:14; EmployeeName:Barcoma, Wesley C.; BiometricsId:14; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:30044.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:24:30','Administrator updates an Employee. Employee No:15; EmployeeName:Batoctoy, Elsi Marie B.; BiometricsId:15; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:24:56','Administrator updates an Employee. Employee No:16; EmployeeName:Buscato, Maria Vilma R.; BiometricsId:16; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:GDM; Birthday:1900-01-01; RateType:Monthly; BasicPay:17142.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:25:15','Administrator updates an Employee. Employee No:18; EmployeeName:Calvo, Felix S.; BiometricsId:18; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty5; Birthday:1900-01-01; RateType:Monthly; BasicPay:30044.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:25:37','Administrator updates an Employee. Employee No:19; EmployeeName:Camarillo, Marco Lorenzo R. ; BiometricsId:19; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:faculty12; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GS','admin','ebased','Active','N'),('2017-11-24 13:25:58','Administrator updates an Employee. Employee No:20; EmployeeName:Carumba, Gee Elle L.; BiometricsId:20; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty7; Birthday:1900-01-01; RateType:Monthly; BasicPay:30044.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:26:18','Administrator updates an Employee. Employee No:21; EmployeeName:Chavez, Arlo S.; BiometricsId:21; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:30044.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:26:43','Administrator updates an Employee. Employee No:22; EmployeeName:Datanagan, Lyn  L. ; BiometricsId:22; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:30751.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:27:02','Administrator updates an Employee. Employee No:23; EmployeeName:De Castro, Nardgin  V.; BiometricsId:23; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:52783.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:27:22','Administrator updates an Employee. Employee No:24; EmployeeName:Dizon, Paul Isaac O.; BiometricsId:24; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SRS1; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:27:45','Administrator updates an Employee. Employee No:25; EmployeeName:Flores, Shella Mae S.; BiometricsId:25; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty7; Birthday:1900-01-01; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:28:11','Administrator updates an Employee. Employee No:26; EmployeeName:Fuentes, Jed Michael E.; BiometricsId:26; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:28:32','Administrator updates an Employee. Employee No:27; EmployeeName:Gayda, Ruby Cres J.; BiometricsId:27; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty5; Birthday:1900-01-01; RateType:Monthly; BasicPay:52783.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:28:39','Administrator updates an Employee. Employee No:28; EmployeeName:Geslaga, Ligaya B.; BiometricsId:28; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:LI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:19853.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:29:13','Administrator updates an Employee. Employee No:58; EmployeeName:Gesoro, Daniel L; BiometricsId:58; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:11387.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:29:48','Administrator updates an Employee. Employee No:30; EmployeeName:Guia, Eleazar B.; BiometricsId:30; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:64416.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:30:19','Administrator updates an Employee. Employee No:31; EmployeeName:Hortezuela, Joseph P.; BiometricsId:31; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:52783.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:31:13','Administrator updates an Employee. Employee No:102; EmployeeName:Inoferio, Fermin P; BiometricsId:; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:2017-11-24; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:31:55','Administrator updates an Employee. Employee No:32; EmployeeName:Kintanar, Nilo Jeremias C.; BiometricsId:32; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:CII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:25859.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:32:20','Administrator updates an Employee. Employee No:33; EmployeeName:Lagura, Kathreena C.; BiometricsId:33; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:GSAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:21387.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:32:51','Administrator updates an Employee. Employee No:103; EmployeeName:Laude, Ro-ann S.; BiometricsId:; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:2017-11-24; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:33:14','Administrator updates an Employee. Employee No:34; EmployeeName:Magallanes, Cyril B.; BiometricsId:34; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:ISAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:21626.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:33:36','Administrator updates an Employee. Employee No:35; EmployeeName:Magbanua, Jessa Mae .; BiometricsId:35; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:34:01','Administrator updates an Employee. Employee No:104; EmployeeName:Mancao, Victor W.; BiometricsId:; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty4; Birthday:2017-11-24; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:34:21','Administrator updates an Employee. Employee No:36; EmployeeName:Narvacan, Christian I.; BiometricsId:36; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:34:42','Administrator updates an Employee. Employee No:37; EmployeeName:Omboy, Lucas E.; BiometricsId:37; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:35:21','Administrator updates an Employee. Employee No:62; EmployeeName:Oyangoren, Jerl M.; BiometricsId:62; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AO5; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:35693.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:35:48','Administrator updates an Employee. Employee No:38; EmployeeName:Oyangoren, Leonila N.; BiometricsId:38; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:SAO; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:52783.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:36:15','Administrator updates an Employee. Employee No:39; EmployeeName:Puerto, Abraham P.; BiometricsId:39; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AAIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:12155.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:36:28','Administrator updates an Employee. Employee No:41; EmployeeName:Quilates, Danilo  A.; BiometricsId:41; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:36:34','Administrator updates an Employee. Employee No:39; EmployeeName:Puerto, Abraham P.; BiometricsId:39; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AAIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:12155.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:37:05','Administrator updates an Employee. Employee No:42; EmployeeName:Ramayla, Sherry P.; BiometricsId:42; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTV; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:64416.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:37:25','Administrator updates an Employee. Employee No:43; EmployeeName:Rendon, Lilian P.; BiometricsId:43; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AAIV; WorkScheduleCode:; Birthday:1900-01-01; RateType:Monthly; BasicPay:27565.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:37:47','Administrator updates an Employee. Employee No:44; EmployeeName:Retardo, Rosita A.; BiometricsId:44; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:AOIII; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:25573.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:37:57','Administrator updates an Employee. Employee No:34; EmployeeName:Magallanes, Cyril B.; BiometricsId:34; EmploymentType:Regular; DepartmentCode:FAD; DesignationCode:ISAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:21626.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:38:31','Administrator updates an Employee. Employee No:45; EmployeeName:Rosero, Larry S.; BiometricsId:45; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:30044.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:38:54','Administrator updates an Employee. Employee No:46; EmployeeName:Saquibal, Ma. Fengina S.; BiometricsId:46; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:faculty11; Birthday:1900-01-01; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:39:02','Administrator updates an Employee. Employee No:47; EmployeeName:Sasaban, Felixberto L.; BiometricsId:47; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:DM; WorkScheduleCode:BDM; Birthday:1900-01-01; RateType:Monthly; BasicPay:17142.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:39:20','Administrator updates an Employee. Employee No:48; EmployeeName:Sumarago, Mary Jane R.; BiometricsId:48; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:39:37','Administrator updates an Employee. Employee No:49; EmployeeName:Tabay, Anthony A.; BiometricsId:49; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty3; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:39:43','Administrator updates an Employee. Employee No:49; EmployeeName:Tabay, Anthony A.; BiometricsId:49; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty3; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:40:09','Administrator updates an Employee. Employee No:50; EmployeeName:Tan, Kim Jose Orven P.; BiometricsId:50; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:40:36','Administrator updates an Employee. Employee No:51; EmployeeName:Tolentino, AlcoKenneth  C.; BiometricsId:51; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISI','admin','ebased','Active','N'),('2017-11-24 13:41:06','Administrator updates an Employee. Employee No:53; EmployeeName:Villamora, Mary Joy  M.; BiometricsId:53; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty1; Birthday:1900-01-01; RateType:Monthly; BasicPay:52783.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:41:32','Administrator updates an Employee. Employee No:54; EmployeeName:Villamora, Rey Giovanni L.; BiometricsId:54; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:52783.00; TIN:; PhilHealthId:; PagibigId:; GSISI','admin','ebased','Active','N'),('2017-11-24 13:41:38','Administrator updates an Employee. Employee No:54; EmployeeName:Villamora, Rey Giovanni L.; BiometricsId:54; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:1900-01-01; RateType:Monthly; BasicPay:52783.00; TIN:; PhilHealthId:; PagibigId:; GSISI','admin','ebased','Active','N'),('2017-11-24 13:41:58','Administrator updates an Employee. Employee No:55; EmployeeName:Zamora, Diana Jane P.; BiometricsId:55; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:RI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:19853.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:42:34','Administrator updates an Employee. Employee No:67; EmployeeName:Ty-Farma, Joey Jergens .; BiometricsId:67; EmploymentType:Job Order; DepartmentCode:FAD; DesignationCode:RE; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:24000.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:42:54','Administrator updates an Employee. Employee No:100; EmployeeName:Beceril, Niñokay L; BiometricsId:72; EmploymentType:Job Order; DepartmentCode:CID; DesignationCode:SSTI; WorkScheduleCode:Faculty1; Birthday:2017-10-30; RateType:Monthly; BasicPay:23257.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:44:02','Administrator updates an Employee. Employee No:57; EmployeeName:Bañados, Mercy B.; BiometricsId:57; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:AAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:9981.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:44:16','Administrator updates an Employee. Employee No:56; EmployeeName:Aco, Lucille A.; BiometricsId:56; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:GaDM1; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:44:27','Administrator updates an Employee. Employee No:68; EmployeeName:Veloso, Rogelio Jr. S.; BiometricsId:68; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:BaDM1; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:44:35','Administrator updates an Employee. Employee No:66; EmployeeName:Toong, Nestor V.; BiometricsId:66; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:BaDM2; Birthday:1900-01-01; RateType:Monthly; BasicPay:13417.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:45:03','Administrator updates an Employee. Employee No:101; EmployeeName:Valmoria, Timmy Rose ; BiometricsId:12; EmploymentType:Job Order; DepartmentCode:SSD; DesignationCode:J.O.; WorkScheduleCode:GaDM2; Birthday:2017-10-30; RateType:Daily; BasicPay:366.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-24 13:45:17','Administrator updates an Employee. Employee No:33; EmployeeName:Lagura, Kathreena C.; BiometricsId:33; EmploymentType:Regular; DepartmentCode:SSD; DesignationCode:GSAI; WorkScheduleCode:CS; Birthday:1900-01-01; RateType:Monthly; BasicPay:21387.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-27 14:08:47','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-29 10:00:30','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-11-29 10:11:37','Administrator updates an Employee. Employee No:102; EmployeeName:Inoferio, Fermin P; BiometricsId:76; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:2017-11-24; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-29 10:12:05','Administrator updates an Employee. Employee No:103; EmployeeName:Laude, Ro-ann S.; BiometricsId:74; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty2; Birthday:2017-11-24; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-11-29 10:12:12','Administrator updates an Employee. Employee No:104; EmployeeName:Mancao, Victor W.; BiometricsId:75; EmploymentType:Regular; DepartmentCode:CID; DesignationCode:SSTIII; WorkScheduleCode:Faculty4; Birthday:2017-11-24; RateType:Monthly; BasicPay:39151.00; TIN:; PhilHealthId:; PagibigId:; GSISId:','admin','ebased','Active','N'),('2017-12-06 12:27:21','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-12-06 14:56:07','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-12-13 12:42:37','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-12-13 13:23:44','Administrator has log in using the password:','admin','ebased','Active','N'),('2017-12-13 13:27:08','Administrator has log in using the password:','admin','ebased','Active','N'),('2018-04-02 21:16:56','Administrator has log in using the password:','admin','jplarisan','Active','N'),('2018-04-02 21:17:28','Administrator has log in using the password:','admin','jplarisan','Active','N'),('2018-09-11 21:41:13','Administrator has log in using the password:','admin','jplarisan','Active','N');

/*Table structure for table `dailytimerecord` */

DROP TABLE IF EXISTS `dailytimerecord`;

CREATE TABLE `dailytimerecord` (
  `DailyTimeRecordId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `EmployeeNo` varchar(30) DEFAULT NULL,
  `TimeIn` varchar(50) DEFAULT NULL,
  `BreakOut` varchar(50) DEFAULT NULL,
  `BreakIn` varchar(50) DEFAULT NULL,
  `TimeOut` varchar(50) DEFAULT NULL,
  `OvertimeIn` varchar(50) DEFAULT NULL,
  `OvertimeOut` varchar(50) DEFAULT NULL,
  `Late1` time DEFAULT '00:00:00',
  `Late2` time DEFAULT '00:00:00',
  `Undertime1` time DEFAULT '00:00:00',
  `Undertime2` time DEFAULT '00:00:00',
  `Overtime` time DEFAULT '00:00:00',
  `HoursWork` time DEFAULT '00:00:00',
  `DaysWorkCount` decimal(5,2) DEFAULT '0.00',
  `Late1Count` int(5) DEFAULT '0',
  `Late2Count` int(5) DEFAULT '0',
  `Undertime1Count` int(5) DEFAULT '0',
  `Undertime2Count` int(5) DEFAULT '0',
  `OvertimeCount` int(5) DEFAULT '0',
  `OfficialBusinessCount` int(5) DEFAULT '0',
  `LeaveCount` int(5) DEFAULT '0',
  `HolidayCount` int(5) DEFAULT '0',
  `Remarks` varchar(100) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`DailyTimeRecordId`)
) ENGINE=InnoDB AUTO_INCREMENT=76715 DEFAULT CHARSET=latin1;

/*Data for the table `dailytimerecord` */

insert  into `dailytimerecord`(`DailyTimeRecordId`,`Date`,`EmployeeNo`,`TimeIn`,`BreakOut`,`BreakIn`,`TimeOut`,`OvertimeIn`,`OvertimeOut`,`Late1`,`Late2`,`Undertime1`,`Undertime2`,`Overtime`,`HoursWork`,`DaysWorkCount`,`Late1Count`,`Late2Count`,`Undertime1Count`,`Undertime2Count`,`OvertimeCount`,`OfficialBusinessCount`,`LeaveCount`,`HolidayCount`,`Remarks`,`Status`) values (73535,'2017-11-01','1','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73536,'2017-11-02','1','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73537,'2017-11-03','1','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73538,'2017-11-04','1','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73539,'2017-11-05','1','12:58 PM','','','06:58 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73540,'2017-11-06','1','06:48 AM','12:31 PM','12:31 PM','06:51 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73541,'2017-11-07','1','06:00 AM','12:12 PM','12:14 PM','06:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73542,'2017-11-08','1','07:05 AM','12:39 PM','12:47 PM','05:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73543,'2017-11-09','1','07:04 AM','12:45 PM','12:46 PM','05:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73544,'2017-11-10','1','07:04 AM','12:25 PM','12:29 PM','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73545,'2017-11-11','1','07:08 AM','12:50 PM','12:55 PM','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73546,'2017-11-12','1','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73547,'2017-11-13','1','06:53 AM','12:56 PM','12:56 PM','06:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73548,'2017-11-14','1','06:54 AM','12:11 PM','12:35 PM','06:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73549,'2017-11-15','1','06:55 AM','12:12 PM','12:16 PM','05:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73550,'2017-11-16','1','07:04 AM','12:55 PM','12:55 PM','06:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73551,'2017-11-17','1','06:59 AM','12:19 PM','12:44 PM','05:46 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73552,'2017-11-18','1','06:41 AM','11:59 AM','12:55 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73553,'2017-11-19','1','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73554,'2017-11-20','1','06:47 AM','12:06 PM','12:42 PM','05:51 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73555,'2017-11-21','1','06:47 AM','12:12 PM','12:52 PM','06:53 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73556,'2017-11-22','1','06:46 AM','12:13 PM','12:43 PM','06:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73557,'2017-11-23','1','07:12 AM','12:38 PM','12:39 PM','06:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73558,'2017-11-24','1','06:58 AM','12:17 PM','','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73559,'2017-11-25','1','08:55 AM','','12:51 PM','04:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73560,'2017-11-26','1','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73561,'2017-11-27','1','06:48 AM','12:00 PM','12:03 PM','06:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73562,'2017-11-28','1','07:12 AM','12:22 PM','12:22 PM','05:57 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73563,'2017-11-29','1','07:03 AM','12:20 PM','12:22 PM','06:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73564,'2017-11-30','1','06:43 AM','12:23 PM','12:26 PM','06:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73565,'2017-11-01','10','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73566,'2017-11-02','10','','12:01 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(73567,'2017-11-03','10','','12:02 PM','12:02 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73568,'2017-11-04','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73569,'2017-11-05','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73570,'2017-11-06','10','07:22 AM','05:06 PM','12:50 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(73571,'2017-11-07','10','07:45 AM','','12:43 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73572,'2017-11-08','10','07:43 AM','12:00 PM','12:53 PM','05:27 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73573,'2017-11-09','10','07:36 AM','','12:52 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73574,'2017-11-10','10','07:37 AM','','12:51 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73575,'2017-11-11','10','','DAY','01:17 PM','03:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73576,'2017-11-12','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73577,'2017-11-13','10','07:21 AM','12:04 PM','12:51 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73578,'2017-11-14','10','07:47 AM','','12:49 PM','05:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73579,'2017-11-15','10','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73580,'2017-11-16','10','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73581,'2017-11-17','10','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73582,'2017-11-18','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73583,'2017-11-19','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73584,'2017-11-20','10','07:26 AM','','','05:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73585,'2017-11-21','10','','','','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73586,'2017-11-22','10','07:47 AM','12:01 PM','12:48 PM','05:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73587,'2017-11-23','10','07:46 AM','11:59 AM','12:53 PM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73588,'2017-11-24','10','07:47 AM','12:53 PM','11:59 AM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73589,'2017-11-25','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73590,'2017-11-26','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73591,'2017-11-27','10','07:29 AM','12:02 PM','12:52 PM','05:38 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73592,'2017-11-28','10','07:46 AM','12:05 PM','12:49 PM','05:46 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73593,'2017-11-29','10','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73594,'2017-11-30','10','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73595,'2017-11-01','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73596,'2017-11-02','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73597,'2017-11-03','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73598,'2017-11-04','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73599,'2017-11-05','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73600,'2017-11-06','102','07:22 AM','','12:08 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73601,'2017-11-07','102','07:24 AM','','12:33 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73602,'2017-11-08','102','07:23 AM','','12:03 PM','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73603,'2017-11-09','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73604,'2017-11-10','102','07:18 AM','','12:05 PM','05:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73605,'2017-11-11','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73606,'2017-11-12','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73607,'2017-11-13','102','07:24 AM','','12:50 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73608,'2017-11-14','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73609,'2017-11-15','102','07:21 AM','','12:44 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73610,'2017-11-16','102','07:24 AM','','12:39 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73611,'2017-11-17','102','07:27 AM','11:59 AM','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73612,'2017-11-18','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73613,'2017-11-19','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73614,'2017-11-20','102','07:25 AM','12:11 PM','12:14 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73615,'2017-11-21','102','07:22 AM','','12:37 PM','06:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73616,'2017-11-22','102','07:23 AM','','12:33 PM','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73617,'2017-11-23','102','07:23 AM','12:36 PM','12:38 PM','06:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73618,'2017-11-24','102','07:25 AM','12:06 PM','12:23 PM','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73619,'2017-11-25','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73620,'2017-11-26','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73621,'2017-11-27','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73622,'2017-11-28','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73623,'2017-11-29','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73624,'2017-11-30','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73625,'2017-11-01','103','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73626,'2017-11-02','103','07:32 AM','12:19 PM','12:23 PM','04:31 PM',NULL,NULL,'00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73627,'2017-11-03','103','07:18 AM','12:03 PM','12:07 PM','04:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73628,'2017-11-04','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73629,'2017-11-05','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73630,'2017-11-06','103','07:22 AM','','12:17 PM','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73631,'2017-11-07','103','07:21 AM','12:13 PM','12:20 PM','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73632,'2017-11-08','103','07:11 AM','12:07 PM','12:10 PM','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73633,'2017-11-09','103','07:15 AM','12:00 PM','12:03 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73634,'2017-11-10','103','07:24 AM','11:09 AM','','04:36 PM',NULL,NULL,'00:00:00','00:00:00','00:50:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(73635,'2017-11-11','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73636,'2017-11-12','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73637,'2017-11-13','103','07:50 AM','12:13 PM','12:13 PM','04:28 PM',NULL,NULL,'00:20:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',1,0,0,1,0,0,0,0,NULL,'Active'),(73638,'2017-11-14','103','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73639,'2017-11-15','103','07:21 AM','12:02 PM','12:06 PM','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73640,'2017-11-16','103','07:43 AM','12:10 PM','12:10 PM','04:55 PM',NULL,NULL,'00:13:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73641,'2017-11-17','103','07:03 AM','11:49 AM','11:49 AM','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:10:00','00:01:00','00:00:00','00:00:00','1.00',0,0,1,1,0,0,0,0,NULL,'Active'),(73642,'2017-11-18','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73643,'2017-11-19','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73644,'2017-11-20','103','07:22 AM','12:09 PM','12:13 PM','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73645,'2017-11-21','103','07:21 AM','12:15 PM','12:17 PM','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73646,'2017-11-22','103','07:22 AM','12:13 PM','12:16 PM','04:46 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73647,'2017-11-23','103','07:23 AM','12:10 PM','12:11 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(73648,'2017-11-24','103','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73649,'2017-11-25','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73650,'2017-11-26','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73651,'2017-11-27','103','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73652,'2017-11-28','103','07:24 AM','12:08 PM','12:09 PM','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73653,'2017-11-29','103','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73654,'2017-11-30','103','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73655,'2017-11-01','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73656,'2017-11-02','104','06:52 AM','12:25 PM','12:27 PM','04:50 PM',NULL,NULL,'00:00:00','00:27:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(73657,'2017-11-03','104','07:06 AM','','12:18 PM','04:33 PM',NULL,NULL,'00:00:00','00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(73658,'2017-11-04','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73659,'2017-11-05','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73660,'2017-11-06','104','06:51 AM','','','04:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73661,'2017-11-07','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73662,'2017-11-08','104','07:19 AM','','12:15 PM','04:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73663,'2017-11-09','104','06:42 AM','','11:25 AM','04:35 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73664,'2017-11-10','104','06:43 AM','','11:26 AM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73665,'2017-11-11','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73666,'2017-11-12','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73667,'2017-11-13','104','07:09 AM','','11:54 AM','04:44 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73668,'2017-11-14','104','06:53 AM','','11:28 AM','04:38 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73669,'2017-11-15','104','06:58 AM','','12:00 PM','04:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73670,'2017-11-16','104','06:56 AM','11:31 AM','','04:56 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73671,'2017-11-17','104','07:08 AM','','11:49 AM','04:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73672,'2017-11-18','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73673,'2017-11-19','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73674,'2017-11-20','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73675,'2017-11-21','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73676,'2017-11-22','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73677,'2017-11-23','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73678,'2017-11-24','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73679,'2017-11-25','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73680,'2017-11-26','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73681,'2017-11-27','104','07:18 AM','04:36 PM','11:11 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(73682,'2017-11-28','104','07:20 AM','','11:25 AM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73683,'2017-11-29','104','07:20 AM','12:09 PM','12:11 PM','04:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73684,'2017-11-30','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73685,'2017-11-01','11','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73686,'2017-11-02','11','07:46 AM','12:00 PM','12:01 PM','05:19 PM',NULL,NULL,'00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73687,'2017-11-03','11','07:34 AM','12:04 PM','','05:14 PM',NULL,NULL,'00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73688,'2017-11-04','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73689,'2017-11-05','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73690,'2017-11-06','11','07:13 AM','12:05 PM','12:05 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73691,'2017-11-07','11','07:39 AM','12:18 PM','12:19 PM','05:13 PM',NULL,NULL,'00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73692,'2017-11-08','11','07:41 AM','12:10 PM','12:11 PM','05:02 PM',NULL,NULL,'00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73693,'2017-11-09','11','07:45 AM','11:20 AM','11:21 AM','05:14 PM',NULL,NULL,'00:15:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73694,'2017-11-10','11','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73695,'2017-11-11','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73696,'2017-11-12','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73697,'2017-11-13','11','07:09 AM','12:05 PM','12:06 PM','04:57 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73698,'2017-11-14','11','07:40 AM','12:06 PM','12:06 PM','05:04 PM',NULL,NULL,'00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73699,'2017-11-15','11','07:49 AM','12:04 PM','12:05 PM','',NULL,NULL,'00:19:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(73700,'2017-11-16','11','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73701,'2017-11-17','11','07:46 AM','12:37 PM','12:38 PM','05:07 PM',NULL,NULL,'00:16:00','00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(73702,'2017-11-18','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73703,'2017-11-19','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73704,'2017-11-20','11','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73705,'2017-11-21','11','07:48 AM','12:04 PM','12:05 PM','05:06 PM',NULL,NULL,'00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73706,'2017-11-22','11','07:54 AM','12:07 PM','12:08 PM','05:10 PM',NULL,NULL,'00:24:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73707,'2017-11-23','11','07:34 AM','11:29 AM','11:30 AM','05:05 PM',NULL,NULL,'00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73708,'2017-11-24','11','07:54 AM','12:04 PM','12:05 PM','05:16 PM',NULL,NULL,'00:24:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73709,'2017-11-25','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73710,'2017-11-26','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73711,'2017-11-27','11','07:16 AM','12:21 PM','12:24 PM','04:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73712,'2017-11-28','11','07:46 AM','12:07 PM','12:07 PM','05:18 PM',NULL,NULL,'00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73713,'2017-11-29','11','07:48 AM','12:30 PM','12:34 PM','05:05 PM',NULL,NULL,'00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73714,'2017-11-30','11','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73715,'2017-11-01','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73716,'2017-11-02','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73717,'2017-11-03','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73718,'2017-11-04','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73719,'2017-11-05','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73720,'2017-11-06','13','07:15 AM','','','06:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73721,'2017-11-07','13','07:12 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73722,'2017-11-08','13','07:27 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73723,'2017-11-09','13','07:27 AM','','','04:51 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73724,'2017-11-10','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73725,'2017-11-11','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73726,'2017-11-12','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73727,'2017-11-13','13','07:22 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73728,'2017-11-14','13','','','','05:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73729,'2017-11-15','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73730,'2017-11-16','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73731,'2017-11-17','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73732,'2017-11-18','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73733,'2017-11-19','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73734,'2017-11-20','13','','12:02 PM','12:03 PM','04:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73735,'2017-11-21','13','','12:31 PM','12:32 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(73736,'2017-11-22','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73737,'2017-11-23','13','07:24 AM','12:20 PM','','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73738,'2017-11-24','13','07:23 AM','12:06 PM','12:07 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73739,'2017-11-25','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73740,'2017-11-26','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73741,'2017-11-27','13','07:27 AM','','','05:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73742,'2017-11-28','13','07:27 AM','12:16 PM','12:16 PM','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73743,'2017-11-29','13','07:25 AM','12:00 PM','12:01 PM','04:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73744,'2017-11-30','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73745,'2017-11-01','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73746,'2017-11-02','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73747,'2017-11-03','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73748,'2017-11-04','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73749,'2017-11-05','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73750,'2017-11-06','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73751,'2017-11-07','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73752,'2017-11-08','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73753,'2017-11-09','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73754,'2017-11-10','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73755,'2017-11-11','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73756,'2017-11-12','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73757,'2017-11-13','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73758,'2017-11-14','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73759,'2017-11-15','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73760,'2017-11-16','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73761,'2017-11-17','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73762,'2017-11-18','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73763,'2017-11-19','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73764,'2017-11-20','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73765,'2017-11-21','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73766,'2017-11-22','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73767,'2017-11-23','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73768,'2017-11-24','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73769,'2017-11-25','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73770,'2017-11-26','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73771,'2017-11-27','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73772,'2017-11-28','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73773,'2017-11-29','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73774,'2017-11-30','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73775,'2017-11-01','15','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73776,'2017-11-02','15','07:58 AM','','12:44 PM','05:16 PM',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73777,'2017-11-03','15','07:56 AM','12:29 PM','12:30 PM','05:05 PM',NULL,NULL,'00:26:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73778,'2017-11-04','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73779,'2017-11-05','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73780,'2017-11-06','15','08:09 AM','12:50 PM','12:50 PM','05:18 PM',NULL,NULL,'00:39:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73781,'2017-11-07','15','07:53 AM','12:26 PM','12:32 PM','',NULL,NULL,'00:23:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(73782,'2017-11-08','15','07:48 AM','12:46 PM','12:49 PM','06:39 PM',NULL,NULL,'00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73783,'2017-11-09','15','07:57 AM','12:31 PM','12:29 PM','06:33 PM',NULL,NULL,'00:27:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73784,'2017-11-10','15','07:51 AM','12:14 PM','12:16 PM','05:55 PM',NULL,NULL,'00:21:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73785,'2017-11-11','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73786,'2017-11-12','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73787,'2017-11-13','15','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73788,'2017-11-14','15','07:57 AM','12:15 PM','12:16 PM','06:20 PM',NULL,NULL,'00:27:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73789,'2017-11-15','15','08:04 AM','12:42 PM','12:43 PM','06:01 PM',NULL,NULL,'00:34:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73790,'2017-11-16','15','07:55 AM','12:23 PM','','06:18 PM',NULL,NULL,'00:25:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73791,'2017-11-17','15','08:13 AM','12:14 PM','12:15 PM','05:03 PM',NULL,NULL,'00:43:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73792,'2017-11-18','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73793,'2017-11-19','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73794,'2017-11-20','15','07:23 AM','12:34 PM','12:35 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73795,'2017-11-21','15','08:02 AM','12:22 PM','12:23 PM','05:32 PM',NULL,NULL,'00:32:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73796,'2017-11-22','15','07:55 AM','12:28 PM','12:28 PM','05:51 PM',NULL,NULL,'00:25:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73797,'2017-11-23','15','07:56 AM','12:22 PM','12:23 PM','05:18 PM',NULL,NULL,'00:26:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73798,'2017-11-24','15','07:54 AM','12:25 PM','12:27 PM','05:37 PM',NULL,NULL,'00:24:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73799,'2017-11-25','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73800,'2017-11-26','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73801,'2017-11-27','15','07:29 AM','12:11 PM','12:12 PM','06:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73802,'2017-11-28','15','08:01 AM','12:24 PM','','05:04 PM',NULL,NULL,'00:31:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73803,'2017-11-29','15','07:53 AM','12:33 PM','12:36 PM','05:51 PM',NULL,NULL,'00:23:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73804,'2017-11-30','15','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73805,'2017-11-01','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73806,'2017-11-02','16','12:11 PM','','','05:19 PM',NULL,NULL,'07:11:00','00:00:00','00:00:00','03:40:00','00:00:00','00:00:00','1.00',1,0,0,1,0,0,0,0,NULL,'Active'),(73807,'2017-11-03','16','','','','06:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73808,'2017-11-04','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73809,'2017-11-05','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73810,'2017-11-06','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73811,'2017-11-07','16','','','','09:24 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73812,'2017-11-08','16','03:55 PM','','','10:06 PM',NULL,NULL,'10:55:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73813,'2017-11-09','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73814,'2017-11-10','16','','','','06:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73815,'2017-11-11','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73816,'2017-11-12','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73817,'2017-11-13','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73818,'2017-11-14','16','','','','03:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','05:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73819,'2017-11-15','16','','','','04:46 AM',NULL,NULL,'00:00:00','00:00:00','00:00:00','16:13:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73820,'2017-11-16','16','','','03:58 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73821,'2017-11-17','16','04:45 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73822,'2017-11-18','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73823,'2017-11-19','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73824,'2017-11-20','16','04:51 AM','','','09:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73825,'2017-11-21','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73826,'2017-11-22','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73827,'2017-11-23','16','','','','09:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73828,'2017-11-24','16','04:37 AM','','','06:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73829,'2017-11-25','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73830,'2017-11-26','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73831,'2017-11-27','16','04:42 AM','','','08:00 AM',NULL,NULL,'00:00:00','00:00:00','00:00:00','12:59:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73832,'2017-11-28','16','04:41 AM','','','09:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73833,'2017-11-29','16','04:50 AM','','','09:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(73834,'2017-11-30','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73835,'2017-11-01','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73836,'2017-11-02','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73837,'2017-11-03','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73838,'2017-11-04','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73839,'2017-11-05','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73840,'2017-11-06','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73841,'2017-11-07','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73842,'2017-11-08','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73843,'2017-11-09','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73844,'2017-11-10','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73845,'2017-11-11','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73846,'2017-11-12','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73847,'2017-11-13','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73848,'2017-11-14','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73849,'2017-11-15','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73850,'2017-11-16','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73851,'2017-11-17','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73852,'2017-11-18','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73853,'2017-11-19','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73854,'2017-11-20','17','','12:00 PM','12:55 PM','05:46 PM',NULL,NULL,'00:00:00','00:55:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(73855,'2017-11-21','17','07:51 AM','12:12 PM','12:40 PM','05:10 PM',NULL,NULL,'00:21:00','00:40:00','10:57:00','00:00:00','00:00:00','00:00:00','1.00',1,1,1,0,0,0,0,0,NULL,'Active'),(73856,'2017-11-22','17','07:32 AM','','12:34 PM','05:22 PM',NULL,NULL,'00:02:00','00:34:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(73857,'2017-11-23','17','07:41 AM','12:08 PM','12:36 PM','05:29 PM',NULL,NULL,'00:11:00','00:36:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(73858,'2017-11-24','17','07:25 AM','12:00 PM','12:34 PM','05:18 PM',NULL,NULL,'00:00:00','00:34:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(73859,'2017-11-25','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73860,'2017-11-26','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73861,'2017-11-27','17','07:22 AM','12:05 PM','12:51 PM','06:43 PM',NULL,NULL,'00:00:00','00:51:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(73862,'2017-11-28','17','07:21 AM','12:13 PM','01:17 PM','05:17 PM',NULL,NULL,'00:00:00','01:17:00','10:56:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(73863,'2017-11-29','17','07:15 AM','12:38 PM','12:49 PM','06:05 PM',NULL,NULL,'00:00:00','00:49:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(73864,'2017-11-30','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73865,'2017-11-01','18','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73866,'2017-11-02','18','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73867,'2017-11-03','18','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73868,'2017-11-04','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73869,'2017-11-05','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73870,'2017-11-06','18','','12:24 PM','12:27 PM','04:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73871,'2017-11-07','18','07:21 AM','11:43 AM','11:45 AM','05:26 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73872,'2017-11-08','18','07:17 AM','12:07 PM','12:07 PM','05:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73873,'2017-11-09','18','07:18 AM','12:27 PM','12:28 PM','05:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73874,'2017-11-10','18','07:20 AM','11:23 AM','11:26 AM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73875,'2017-11-11','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73876,'2017-11-12','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73877,'2017-11-13','18','07:25 AM','12:27 PM','12:29 PM','04:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73878,'2017-11-14','18','07:20 AM','11:48 AM','11:51 AM','05:27 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73879,'2017-11-15','18','07:25 AM','12:02 PM','','06:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73880,'2017-11-16','18','','12:01 PM','12:02 PM','05:20 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73881,'2017-11-17','18','07:23 AM','12:00 PM','','04:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73882,'2017-11-18','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73883,'2017-11-19','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73884,'2017-11-20','18','07:23 AM','12:24 PM','12:26 PM','04:49 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73885,'2017-11-21','18','','11:43 AM','11:43 AM','04:38 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73886,'2017-11-22','18','07:23 AM','12:18 PM','12:20 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(73887,'2017-11-23','18','07:20 AM','12:04 PM','12:06 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(73888,'2017-11-24','18','07:22 AM','11:24 AM','11:26 AM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73889,'2017-11-25','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73890,'2017-11-26','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73891,'2017-11-27','18','07:28 AM','12:10 PM','12:12 PM','04:46 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73892,'2017-11-28','18','07:05 AM','11:16 AM','11:16 AM','06:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73893,'2017-11-29','18','07:24 AM','12:35 PM','','04:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73894,'2017-11-30','18','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73895,'2017-11-01','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73896,'2017-11-02','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73897,'2017-11-03','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73898,'2017-11-04','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73899,'2017-11-05','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73900,'2017-11-06','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73901,'2017-11-07','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73902,'2017-11-08','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73903,'2017-11-09','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73904,'2017-11-10','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73905,'2017-11-11','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73906,'2017-11-12','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73907,'2017-11-13','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73908,'2017-11-14','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73909,'2017-11-15','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73910,'2017-11-16','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73911,'2017-11-17','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73912,'2017-11-18','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73913,'2017-11-19','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73914,'2017-11-20','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73915,'2017-11-21','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73916,'2017-11-22','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73917,'2017-11-23','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73918,'2017-11-24','19','','11:49 AM','11:49 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(73919,'2017-11-25','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73920,'2017-11-26','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73921,'2017-11-27','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73922,'2017-11-28','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73923,'2017-11-29','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73924,'2017-11-30','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73925,'2017-11-01','2','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73926,'2017-11-02','2','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73927,'2017-11-03','2','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73928,'2017-11-04','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73929,'2017-11-05','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73930,'2017-11-06','2','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73931,'2017-11-07','2','','11:36 AM','11:36 AM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','11:33:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(73932,'2017-11-08','2','07:25 AM','11:13 AM','11:13 AM','05:20 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73933,'2017-11-09','2','07:23 AM','11:36 AM','11:36 AM','06:23 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73934,'2017-11-10','2','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73935,'2017-11-11','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73936,'2017-11-12','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73937,'2017-11-13','2','07:23 AM','11:21 AM','11:21 AM','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73938,'2017-11-14','2','07:24 AM','12:26 PM','12:27 PM','05:34 PM',NULL,NULL,'00:00:00','00:27:00','10:43:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(73939,'2017-11-15','2','07:20 AM','11:15 AM','11:15 AM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73940,'2017-11-16','2','07:25 AM','11:35 AM','11:35 AM','06:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73941,'2017-11-17','2','07:26 AM','11:29 AM','11:29 AM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73942,'2017-11-18','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73943,'2017-11-19','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73944,'2017-11-20','2','07:23 AM','11:25 AM','11:25 AM','05:58 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73945,'2017-11-21','2','07:21 AM','','','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73946,'2017-11-22','2','07:22 AM','11:31 AM','11:31 AM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73947,'2017-11-23','2','07:23 AM','11:23 AM','11:24 AM','06:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73948,'2017-11-24','2','07:25 AM','12:05 PM','12:05 PM','04:59 PM',NULL,NULL,'00:00:00','00:05:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(73949,'2017-11-25','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73950,'2017-11-26','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73951,'2017-11-27','2','07:27 AM','11:45 AM','11:45 AM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73952,'2017-11-28','2','07:20 AM','12:12 PM','12:12 PM','04:13 PM',NULL,NULL,'00:00:00','00:12:00','10:57:00','00:16:00','00:00:00','00:00:00','1.00',0,1,1,1,0,0,0,0,NULL,'Active'),(73953,'2017-11-29','2','07:21 AM','11:37 AM','11:37 AM','04:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73954,'2017-11-30','2','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73955,'2017-11-01','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73956,'2017-11-02','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73957,'2017-11-03','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73958,'2017-11-04','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73959,'2017-11-05','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73960,'2017-11-06','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73961,'2017-11-07','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73962,'2017-11-08','20','07:22 AM','12:10 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(73963,'2017-11-09','20','07:26 AM','','12:00 PM','05:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73964,'2017-11-10','20','07:28 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73965,'2017-11-11','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73966,'2017-11-12','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73967,'2017-11-13','20','07:23 AM','','11:59 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73968,'2017-11-14','20','07:25 AM','','12:27 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73969,'2017-11-15','20','07:33 AM','','','',NULL,NULL,'00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73970,'2017-11-16','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73971,'2017-11-17','20','07:53 AM','','','',NULL,NULL,'00:23:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73972,'2017-11-18','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73973,'2017-11-19','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73974,'2017-11-20','20','07:28 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73975,'2017-11-21','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73976,'2017-11-22','20','07:37 AM','','12:05 PM','',NULL,NULL,'00:07:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(73977,'2017-11-23','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73978,'2017-11-24','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73979,'2017-11-25','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73980,'2017-11-26','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73981,'2017-11-27','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73982,'2017-11-28','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73983,'2017-11-29','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73984,'2017-11-30','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73985,'2017-11-01','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73986,'2017-11-02','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73987,'2017-11-03','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73988,'2017-11-04','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73989,'2017-11-05','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73990,'2017-11-06','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73991,'2017-11-07','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73992,'2017-11-08','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73993,'2017-11-09','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73994,'2017-11-10','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73995,'2017-11-11','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73996,'2017-11-12','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73997,'2017-11-13','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73998,'2017-11-14','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(73999,'2017-11-15','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74000,'2017-11-16','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74001,'2017-11-17','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74002,'2017-11-18','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74003,'2017-11-19','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74004,'2017-11-20','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74005,'2017-11-21','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74006,'2017-11-22','21','07:39 AM','','','',NULL,NULL,'00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74007,'2017-11-23','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74008,'2017-11-24','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74009,'2017-11-25','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74010,'2017-11-26','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74011,'2017-11-27','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74012,'2017-11-28','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74013,'2017-11-29','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74014,'2017-11-30','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74015,'2017-11-01','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74016,'2017-11-02','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74017,'2017-11-03','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74018,'2017-11-04','22','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74019,'2017-11-05','22','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74020,'2017-11-06','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74021,'2017-11-07','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74022,'2017-11-08','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74023,'2017-11-09','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74024,'2017-11-10','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74025,'2017-11-11','22','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74026,'2017-11-12','22','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74027,'2017-11-13','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74028,'2017-11-14','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74029,'2017-11-15','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74030,'2017-11-16','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74031,'2017-11-17','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74032,'2017-11-18','22','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74033,'2017-11-19','22','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74034,'2017-11-20','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74035,'2017-11-21','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74036,'2017-11-22','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74037,'2017-11-23','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74038,'2017-11-24','22','09:01 PM','','','',NULL,NULL,'13:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74039,'2017-11-25','22','05:03 AM','11:02 PM','04:27 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74040,'2017-11-26','22','05:54 AM','11:08 PM','04:25 PM','07:54 AM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74041,'2017-11-27','22','06:53 AM','','03:46 PM','08:01 AM',NULL,NULL,'00:00:00','02:46:00','00:00:00','08:58:00','00:00:00','00:00:00','1.00',0,1,0,1,0,0,0,0,NULL,'Active'),(74042,'2017-11-28','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74043,'2017-11-29','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74044,'2017-11-30','22','06:50 AM','05:03 PM','12:35 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74045,'2017-11-01','23','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74046,'2017-11-02','23','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74047,'2017-11-03','23','','','12:11 PM','',NULL,NULL,'00:00:00','00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74048,'2017-11-04','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74049,'2017-11-05','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74050,'2017-11-06','23','07:21 AM','','12:46 PM','05:00 PM',NULL,NULL,'00:00:00','00:46:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74051,'2017-11-07','23','07:22 AM','','11:32 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74052,'2017-11-08','23','07:22 AM','','12:16 PM','05:13 PM',NULL,NULL,'00:00:00','00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74053,'2017-11-09','23','07:24 AM','','12:04 PM','05:03 PM',NULL,NULL,'00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74054,'2017-11-10','23','07:13 AM','12:03 PM','12:04 PM','05:57 PM',NULL,NULL,'00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74055,'2017-11-11','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74056,'2017-11-12','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74057,'2017-11-13','23','','12:18 PM','12:18 PM','04:54 PM',NULL,NULL,'00:00:00','00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74058,'2017-11-14','23','07:14 AM','12:13 PM','12:14 PM','05:01 PM',NULL,NULL,'00:00:00','00:14:00','10:56:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(74059,'2017-11-15','23','07:20 AM','12:06 PM','12:07 PM','05:04 PM',NULL,NULL,'00:00:00','00:07:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74060,'2017-11-16','23','','','12:08 PM','05:05 PM',NULL,NULL,'00:00:00','00:08:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74061,'2017-11-17','23','','12:02 PM','12:02 PM','04:37 PM',NULL,NULL,'00:00:00','00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74062,'2017-11-18','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74063,'2017-11-19','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74064,'2017-11-20','23','07:17 AM','04:35 PM','12:13 PM','',NULL,NULL,'00:00:00','00:13:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74065,'2017-11-21','23','07:13 AM','12:02 PM','12:03 PM','04:36 PM',NULL,NULL,'00:00:00','00:03:00','11:07:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(74066,'2017-11-22','23','07:15 AM','12:22 PM','12:25 PM','05:01 PM',NULL,NULL,'00:00:00','00:25:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74067,'2017-11-23','23','07:22 AM','','12:10 PM','05:03 PM',NULL,NULL,'00:00:00','00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74068,'2017-11-24','23','07:18 AM','12:04 PM','12:06 PM','05:28 PM',NULL,NULL,'00:00:00','00:06:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74069,'2017-11-25','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74070,'2017-11-26','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74071,'2017-11-27','23','','04:31 PM','12:06 PM','',NULL,NULL,'00:00:00','00:06:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74072,'2017-11-28','23','07:24 AM','11:56 AM','11:57 AM','04:32 PM',NULL,NULL,'00:00:00','00:00:00','11:13:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74073,'2017-11-29','23','07:21 AM','12:16 PM','12:17 PM','',NULL,NULL,'00:00:00','00:17:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74074,'2017-11-30','23','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74075,'2017-11-01','24','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74076,'2017-11-02','24','07:58 AM','12:05 PM','12:40 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74077,'2017-11-03','24','07:34 AM','12:03 PM','12:10 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74078,'2017-11-04','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74079,'2017-11-05','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74080,'2017-11-06','24','06:01 AM','12:20 PM','12:52 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74081,'2017-11-07','24','07:23 AM','12:01 PM','12:10 PM','05:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74082,'2017-11-08','24','07:20 AM','12:49 PM','12:58 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74083,'2017-11-09','24','07:41 AM','12:09 PM','','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74084,'2017-11-10','24','07:40 AM','12:04 PM','12:48 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74085,'2017-11-11','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74086,'2017-11-12','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74087,'2017-11-13','24','07:19 AM','12:08 PM','12:25 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74088,'2017-11-14','24','06:58 AM','12:16 PM','12:59 PM','05:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74089,'2017-11-15','24','06:47 AM','12:08 PM','12:09 PM','05:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74090,'2017-11-16','24','07:09 AM','12:16 PM','12:23 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74091,'2017-11-17','24','07:03 AM','12:35 PM','12:53 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74092,'2017-11-18','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74093,'2017-11-19','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74094,'2017-11-20','24','07:07 AM','12:01 PM','12:55 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74095,'2017-11-21','24','06:59 AM','12:12 PM','12:40 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74096,'2017-11-22','24','07:16 AM','12:03 PM','12:33 PM','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74097,'2017-11-23','24','07:21 AM','12:05 PM','12:14 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74098,'2017-11-24','24','07:50 AM','12:01 PM','12:34 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74099,'2017-11-25','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74100,'2017-11-26','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74101,'2017-11-27','24','07:15 AM','12:02 PM','12:34 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74102,'2017-11-28','24','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74103,'2017-11-29','24','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74104,'2017-11-30','24','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74105,'2017-11-01','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74106,'2017-11-02','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74107,'2017-11-03','25','07:47 AM','','','03:07 PM',NULL,NULL,'00:17:00','00:00:00','00:00:00','01:22:00','00:00:00','00:00:00','1.00',1,0,0,1,0,0,0,0,NULL,'Active'),(74108,'2017-11-04','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74109,'2017-11-05','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74110,'2017-11-06','25','07:39 AM','','','05:02 PM',NULL,NULL,'00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74111,'2017-11-07','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74112,'2017-11-08','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74113,'2017-11-09','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74114,'2017-11-10','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74115,'2017-11-11','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74116,'2017-11-12','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74117,'2017-11-13','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74118,'2017-11-14','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74119,'2017-11-15','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74120,'2017-11-16','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74121,'2017-11-17','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74122,'2017-11-18','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74123,'2017-11-19','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74124,'2017-11-20','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74125,'2017-11-21','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74126,'2017-11-22','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74127,'2017-11-23','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74128,'2017-11-24','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74129,'2017-11-25','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74130,'2017-11-26','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74131,'2017-11-27','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74132,'2017-11-28','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74133,'2017-11-29','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74134,'2017-11-30','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74135,'2017-11-01','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74136,'2017-11-02','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74137,'2017-11-03','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74138,'2017-11-04','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74139,'2017-11-05','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74140,'2017-11-06','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74141,'2017-11-07','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74142,'2017-11-08','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74143,'2017-11-09','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74144,'2017-11-10','26','','','12:28 PM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74145,'2017-11-11','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74146,'2017-11-12','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74147,'2017-11-13','26','07:23 AM','','','05:34 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74148,'2017-11-14','26','07:22 AM','','','05:34 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74149,'2017-11-15','26','07:12 AM','12:07 PM','12:07 PM','05:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74150,'2017-11-16','26','07:14 AM','12:09 PM','12:09 PM','05:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74151,'2017-11-17','26','07:59 AM','12:13 PM','12:14 PM','05:15 PM',NULL,NULL,'00:29:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74152,'2017-11-18','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74153,'2017-11-19','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74154,'2017-11-20','26','','04:36 PM','12:27 PM','04:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74155,'2017-11-21','26','','12:18 PM','12:18 PM','01:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','02:52:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74156,'2017-11-22','26','07:22 AM','12:21 PM','12:21 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74157,'2017-11-23','26','07:22 AM','12:03 PM','12:03 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74158,'2017-11-24','26','07:10 AM','12:05 PM','12:05 PM','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74159,'2017-11-25','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74160,'2017-11-26','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74161,'2017-11-27','26','','12:05 PM','12:05 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74162,'2017-11-28','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74163,'2017-11-29','26','06:36 AM','12:05 PM','12:06 PM','01:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','03:26:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74164,'2017-11-30','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74165,'2017-11-01','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74166,'2017-11-02','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74167,'2017-11-03','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74168,'2017-11-04','27','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74169,'2017-11-05','27','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74170,'2017-11-06','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74171,'2017-11-07','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74172,'2017-11-08','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74173,'2017-11-09','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74174,'2017-11-10','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74175,'2017-11-11','27','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74176,'2017-11-12','27','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74177,'2017-11-13','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74178,'2017-11-14','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74179,'2017-11-15','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74180,'2017-11-16','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74181,'2017-11-17','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74182,'2017-11-18','27','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74183,'2017-11-19','27','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74184,'2017-11-20','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74185,'2017-11-21','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74186,'2017-11-22','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74187,'2017-11-23','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74188,'2017-11-24','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74189,'2017-11-25','27','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74190,'2017-11-26','27','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74191,'2017-11-27','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74192,'2017-11-28','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74193,'2017-11-29','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74194,'2017-11-30','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74195,'2017-11-01','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74196,'2017-11-02','28','07:58 AM','12:09 PM','12:13 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74197,'2017-11-03','28','07:44 AM','12:09 PM','12:14 PM','02:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','02:22:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74198,'2017-11-04','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74199,'2017-11-05','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74200,'2017-11-06','28','07:26 AM','12:04 PM','12:06 PM','04:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74201,'2017-11-07','28','07:52 AM','12:06 PM','12:11 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74202,'2017-11-08','28','07:48 AM','12:05 PM','12:09 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74203,'2017-11-09','28','07:32 AM','12:02 PM','12:07 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74204,'2017-11-10','28','07:37 AM','12:11 PM','12:14 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74205,'2017-11-11','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74206,'2017-11-12','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74207,'2017-11-13','28','07:26 AM','12:03 PM','','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74208,'2017-11-14','28','07:44 AM','12:05 PM','12:08 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74209,'2017-11-15','28','07:34 AM','12:07 PM','12:10 PM','06:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74210,'2017-11-16','28','08:28 AM','12:03 PM','12:07 PM','05:01 PM',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74211,'2017-11-17','28','07:16 AM','12:00 PM','12:03 PM','04:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:58:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74212,'2017-11-18','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74213,'2017-11-19','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74214,'2017-11-20','28','07:29 AM','12:02 PM','12:04 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74215,'2017-11-21','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74216,'2017-11-22','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74217,'2017-11-23','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74218,'2017-11-24','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74219,'2017-11-25','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74220,'2017-11-26','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74221,'2017-11-27','28','07:33 AM','12:06 PM','12:11 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74222,'2017-11-28','28','08:17 AM','12:05 PM','12:08 PM','06:08 PM',NULL,NULL,'00:17:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74223,'2017-11-29','28','07:55 AM','12:09 PM','12:13 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74224,'2017-11-30','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74225,'2017-11-01','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74226,'2017-11-02','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74227,'2017-11-03','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74228,'2017-11-04','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74229,'2017-11-05','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74230,'2017-11-06','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74231,'2017-11-07','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74232,'2017-11-08','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74233,'2017-11-09','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74234,'2017-11-10','3','07:11 AM','12:30 PM','12:30 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74235,'2017-11-11','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74236,'2017-11-12','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74237,'2017-11-13','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74238,'2017-11-14','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74239,'2017-11-15','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74240,'2017-11-16','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74241,'2017-11-17','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74242,'2017-11-18','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74243,'2017-11-19','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74244,'2017-11-20','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74245,'2017-11-21','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74246,'2017-11-22','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74247,'2017-11-23','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74248,'2017-11-24','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74249,'2017-11-25','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74250,'2017-11-26','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74251,'2017-11-27','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74252,'2017-11-28','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74253,'2017-11-29','3','07:23 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74254,'2017-11-30','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74255,'2017-11-01','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74256,'2017-11-02','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74257,'2017-11-03','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74258,'2017-11-04','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74259,'2017-11-05','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74260,'2017-11-06','30','07:25 AM','11:52 AM','11:53 AM','04:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74261,'2017-11-07','30','07:26 AM','12:19 PM','12:19 PM','05:03 PM',NULL,NULL,'00:00:00','00:19:00','10:50:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(74262,'2017-11-08','30','07:38 AM','12:06 PM','12:06 PM','05:09 PM',NULL,NULL,'00:08:00','00:06:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74263,'2017-11-09','30','07:47 AM','11:53 AM','11:53 AM','05:05 PM',NULL,NULL,'00:17:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74264,'2017-11-10','30','07:51 AM','12:47 PM','12:47 PM','05:12 PM',NULL,NULL,'00:21:00','00:47:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74265,'2017-11-11','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74266,'2017-11-12','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74267,'2017-11-13','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74268,'2017-11-14','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74269,'2017-11-15','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74270,'2017-11-16','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74271,'2017-11-17','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74272,'2017-11-18','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74273,'2017-11-19','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74274,'2017-11-20','30','07:24 AM','11:24 AM','11:24 AM','04:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74275,'2017-11-21','30','07:14 AM','12:31 PM','12:31 PM','',NULL,NULL,'00:00:00','00:31:00','10:38:00','00:00:00','00:00:00','00:00:00','0.50',0,1,1,0,0,0,0,0,NULL,'Active'),(74276,'2017-11-22','30','07:39 AM','','11:12 AM','05:15 PM',NULL,NULL,'00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74277,'2017-11-23','30','07:43 AM','05:05 PM','11:52 AM','05:05 PM',NULL,NULL,'00:13:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74278,'2017-11-24','30','07:45 AM','12:14 PM','12:14 PM','05:23 PM',NULL,NULL,'00:15:00','00:14:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74279,'2017-11-25','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74280,'2017-11-26','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74281,'2017-11-27','30','07:30 AM','11:32 AM','11:32 AM','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74282,'2017-11-28','30','07:29 AM','12:12 PM','12:12 PM','05:05 PM',NULL,NULL,'00:00:00','00:12:00','10:57:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(74283,'2017-11-29','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74284,'2017-11-30','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74285,'2017-11-01','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74286,'2017-11-02','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74287,'2017-11-03','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74288,'2017-11-04','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74289,'2017-11-05','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74290,'2017-11-06','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74291,'2017-11-07','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74292,'2017-11-08','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74293,'2017-11-09','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74294,'2017-11-10','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74295,'2017-11-11','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74296,'2017-11-12','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74297,'2017-11-13','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74298,'2017-11-14','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74299,'2017-11-15','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74300,'2017-11-16','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74301,'2017-11-17','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74302,'2017-11-18','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74303,'2017-11-19','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74304,'2017-11-20','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74305,'2017-11-21','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74306,'2017-11-22','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74307,'2017-11-23','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74308,'2017-11-24','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74309,'2017-11-25','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74310,'2017-11-26','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74311,'2017-11-27','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74312,'2017-11-28','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74313,'2017-11-29','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74314,'2017-11-30','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74315,'2017-11-01','32','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74316,'2017-11-02','32','','','','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74317,'2017-11-03','32','','12:08 PM','12:09 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74318,'2017-11-04','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74319,'2017-11-05','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74320,'2017-11-06','32','07:37 AM','12:29 PM','12:31 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74321,'2017-11-07','32','07:57 AM','12:08 PM','12:09 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74322,'2017-11-08','32','07:49 AM','12:11 PM','12:13 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74323,'2017-11-09','32','07:47 AM','','','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74324,'2017-11-10','32','07:58 AM','','','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74325,'2017-11-11','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74326,'2017-11-12','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74327,'2017-11-13','32','07:19 AM','12:05 PM','12:05 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74328,'2017-11-14','32','08:04 AM','12:03 PM','12:04 PM','05:01 PM',NULL,NULL,'00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74329,'2017-11-15','32','07:38 AM','','','06:56 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74330,'2017-11-16','32','08:07 AM','','','05:02 PM',NULL,NULL,'00:07:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74331,'2017-11-17','32','07:20 AM','','','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74332,'2017-11-18','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74333,'2017-11-19','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74334,'2017-11-20','32','07:29 AM','','','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74335,'2017-11-21','32','08:01 AM','12:16 PM','','05:38 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74336,'2017-11-22','32','','','','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74337,'2017-11-23','32','07:26 AM','','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74338,'2017-11-24','32','07:37 AM','','','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74339,'2017-11-25','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74340,'2017-11-26','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74341,'2017-11-27','32','','12:05 PM','12:05 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74342,'2017-11-28','32','','12:05 PM','12:06 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74343,'2017-11-29','32','07:46 AM','12:13 PM','12:14 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74344,'2017-11-30','32','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74345,'2017-11-01','33','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74346,'2017-11-02','33','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74347,'2017-11-03','33','','','','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74348,'2017-11-04','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74349,'2017-11-05','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74350,'2017-11-06','33','','','','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74351,'2017-11-07','33','07:24 AM','12:32 PM','12:32 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74352,'2017-11-08','33','07:23 AM','12:07 PM','12:44 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74353,'2017-11-09','33','07:25 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74354,'2017-11-10','33','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74355,'2017-11-11','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74356,'2017-11-12','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74357,'2017-11-13','33','07:21 AM','12:32 PM','12:34 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74358,'2017-11-14','33','07:25 AM','12:14 PM','','06:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74359,'2017-11-15','33','07:20 AM','12:30 PM','12:33 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74360,'2017-11-16','33','','12:25 PM','12:26 PM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74361,'2017-11-17','33','07:26 AM','12:18 PM','12:18 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74362,'2017-11-18','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74363,'2017-11-19','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74364,'2017-11-20','33','07:22 AM','12:12 PM','12:14 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74365,'2017-11-21','33','07:21 AM','12:28 PM','12:28 PM','05:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74366,'2017-11-22','33','07:22 AM','12:28 PM','12:32 PM','05:20 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74367,'2017-11-23','33','07:22 AM','12:22 PM','12:25 PM','05:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74368,'2017-11-24','33','07:24 AM','12:27 PM','12:29 PM','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74369,'2017-11-25','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74370,'2017-11-26','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74371,'2017-11-27','33','07:21 AM','12:11 PM','12:13 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74372,'2017-11-28','33','07:24 AM','12:11 PM','12:13 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74373,'2017-11-29','33','07:19 AM','12:33 PM','12:34 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74374,'2017-11-30','33','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74375,'2017-11-01','34','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74376,'2017-11-02','34','08:14 AM','12:50 PM','01:14 PM','05:09 PM',NULL,NULL,'00:14:00','00:14:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74377,'2017-11-03','34','07:59 AM','12:42 PM','12:43 PM','05:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74378,'2017-11-04','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74379,'2017-11-05','34','10:17 AM','12:42 PM','12:42 PM','04:47 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74380,'2017-11-06','34','07:54 AM','12:22 PM','12:23 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74381,'2017-11-07','34','07:58 AM','','12:36 PM','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74382,'2017-11-08','34','07:58 AM','','12:57 PM','06:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74383,'2017-11-09','34','07:49 AM','12:58 PM','12:57 PM','05:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74384,'2017-11-10','34','07:51 AM','12:40 PM','12:41 PM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74385,'2017-11-11','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74386,'2017-11-12','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74387,'2017-11-13','34','07:50 AM','12:28 PM','12:29 PM','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74388,'2017-11-14','34','08:01 AM','12:05 PM','12:06 PM','05:13 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74389,'2017-11-15','34','07:55 AM','12:44 PM','12:44 PM','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74390,'2017-11-16','34','08:10 AM','11:59 AM','12:00 PM','',NULL,NULL,'00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(74391,'2017-11-17','34','08:02 AM','12:21 PM','12:21 PM','',NULL,NULL,'00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(74392,'2017-11-18','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74393,'2017-11-19','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74394,'2017-11-20','34','07:37 AM','12:01 PM','12:01 PM','05:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74395,'2017-11-21','34','07:58 AM','12:44 PM','12:44 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74396,'2017-11-22','34','07:55 AM','12:20 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74397,'2017-11-23','34','07:50 AM','12:23 PM','12:24 PM','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74398,'2017-11-24','34','08:06 AM','12:33 PM','12:33 PM','05:25 PM',NULL,NULL,'00:06:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74399,'2017-11-25','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74400,'2017-11-26','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74401,'2017-11-27','34','07:36 AM','12:18 PM','','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74402,'2017-11-28','34','08:00 AM','12:55 PM','12:55 PM','05:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74403,'2017-11-29','34','07:50 AM','12:07 PM','12:09 PM','05:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74404,'2017-11-30','34','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74405,'2017-11-01','35','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74406,'2017-11-02','35','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74407,'2017-11-03','35','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74408,'2017-11-04','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74409,'2017-11-05','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74410,'2017-11-06','35','07:19 AM','12:25 PM','12:26 PM','04:43 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74411,'2017-11-07','35','','12:21 PM','12:23 PM','05:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74412,'2017-11-08','35','07:16 AM','12:11 PM','12:11 PM','05:47 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74413,'2017-11-09','35','07:17 AM','12:27 PM','12:28 PM','05:51 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74414,'2017-11-10','35','07:20 AM','12:06 PM','12:07 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74415,'2017-11-11','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74416,'2017-11-12','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74417,'2017-11-13','35','07:25 AM','12:29 PM','12:31 PM','04:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74418,'2017-11-14','35','07:19 AM','12:14 PM','12:17 PM','05:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74419,'2017-11-15','35','07:25 AM','12:04 PM','12:06 PM','07:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74420,'2017-11-16','35','07:19 AM','12:01 PM','12:02 PM','05:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74421,'2017-11-17','35','07:22 AM','12:01 PM','12:02 PM','04:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74422,'2017-11-18','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74423,'2017-11-19','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74424,'2017-11-20','35','07:22 AM','12:24 PM','12:26 PM','04:49 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74425,'2017-11-21','35','07:23 AM','12:01 PM','12:03 PM','04:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74426,'2017-11-22','35','07:21 AM','12:21 PM','','06:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74427,'2017-11-23','35','07:20 AM','12:35 PM','12:37 PM','06:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74428,'2017-11-24','35','07:21 AM','12:35 PM','12:37 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74429,'2017-11-25','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74430,'2017-11-26','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74431,'2017-11-27','35','07:28 AM','12:10 PM','12:12 PM','04:49 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74432,'2017-11-28','35','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74433,'2017-11-29','35','07:24 AM','12:44 PM','12:47 PM','04:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74434,'2017-11-30','35','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74435,'2017-11-01','36','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74436,'2017-11-02','36','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74437,'2017-11-03','36','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74438,'2017-11-04','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74439,'2017-11-05','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74440,'2017-11-06','36','07:25 AM','12:01 PM','12:01 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74441,'2017-11-07','36','07:26 AM','12:05 PM','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74442,'2017-11-08','36','07:26 AM','12:12 PM','12:12 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74443,'2017-11-09','36','07:26 AM','12:06 PM','12:07 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74444,'2017-11-10','36','07:28 AM','12:03 PM','12:04 PM','05:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74445,'2017-11-11','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74446,'2017-11-12','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74447,'2017-11-13','36','07:24 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74448,'2017-11-14','36','','12:04 PM','12:04 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74449,'2017-11-15','36','07:25 AM','12:42 PM','12:43 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74450,'2017-11-16','36','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74451,'2017-11-17','36','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74452,'2017-11-18','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74453,'2017-11-19','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74454,'2017-11-20','36','07:22 AM','12:26 PM','12:27 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74455,'2017-11-21','36','07:27 AM','12:07 PM','12:08 PM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74456,'2017-11-22','36','07:23 AM','12:04 PM','12:04 PM','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74457,'2017-11-23','36','07:25 AM','12:06 PM','12:07 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74458,'2017-11-24','36','','12:00 PM','12:00 PM','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74459,'2017-11-25','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74460,'2017-11-26','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74461,'2017-11-27','36','07:17 AM','12:20 PM','12:21 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74462,'2017-11-28','36','07:20 AM','12:14 PM','12:14 PM','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74463,'2017-11-29','36','07:20 AM','12:06 PM','12:07 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74464,'2017-11-30','36','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74465,'2017-11-01','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74466,'2017-11-02','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74467,'2017-11-03','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74468,'2017-11-04','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74469,'2017-11-05','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74470,'2017-11-06','37','','','12:11 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74471,'2017-11-07','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74472,'2017-11-08','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74473,'2017-11-09','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74474,'2017-11-10','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74475,'2017-11-11','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74476,'2017-11-12','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74477,'2017-11-13','37','07:52 AM','','12:08 PM','05:03 PM',NULL,NULL,'00:22:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74478,'2017-11-14','37','07:55 AM','12:11 PM','12:13 PM','05:44 PM',NULL,NULL,'00:25:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74479,'2017-11-15','37','08:00 AM','12:42 PM','12:42 PM','',NULL,NULL,'00:30:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(74480,'2017-11-16','37','','12:11 PM','12:11 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74481,'2017-11-17','37','07:58 AM','','','',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74482,'2017-11-18','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74483,'2017-11-19','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74484,'2017-11-20','37','','12:01 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74485,'2017-11-21','37','','12:08 PM','12:08 PM','05:26 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74486,'2017-11-22','37','08:13 AM','','','05:24 PM',NULL,NULL,'00:43:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74487,'2017-11-23','37','07:58 AM','12:06 PM','','',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(74488,'2017-11-24','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74489,'2017-11-25','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74490,'2017-11-26','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74491,'2017-11-27','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74492,'2017-11-28','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74493,'2017-11-29','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74494,'2017-11-30','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74495,'2017-11-01','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74496,'2017-11-02','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74497,'2017-11-03','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74498,'2017-11-04','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74499,'2017-11-05','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74500,'2017-11-06','38','07:12 AM','','12:11 PM','06:48 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74501,'2017-11-07','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74502,'2017-11-08','38','','','','06:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74503,'2017-11-09','38','07:11 AM','12:12 PM','12:50 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74504,'2017-11-10','38','07:10 AM','12:02 PM','','05:51 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74505,'2017-11-11','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74506,'2017-11-12','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74507,'2017-11-13','38','','','12:40 PM','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74508,'2017-11-14','38','07:09 AM','12:09 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74509,'2017-11-15','38','07:09 AM','','12:11 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74510,'2017-11-16','38','07:20 AM','12:59 PM','','05:44 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74511,'2017-11-17','38','06:43 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74512,'2017-11-18','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74513,'2017-11-19','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74514,'2017-11-20','38','06:54 AM','12:24 PM','','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74515,'2017-11-21','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74516,'2017-11-22','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74517,'2017-11-23','38','07:06 AM','12:00 PM','','05:20 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74518,'2017-11-24','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74519,'2017-11-25','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74520,'2017-11-26','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74521,'2017-11-27','38','07:16 AM','12:38 PM','','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:29:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74522,'2017-11-28','38','07:15 AM','','12:54 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74523,'2017-11-29','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74524,'2017-11-30','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74525,'2017-11-01','39','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74526,'2017-11-02','39','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74527,'2017-11-03','39','','12:07 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74528,'2017-11-04','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74529,'2017-11-05','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74530,'2017-11-06','39','06:21 AM','12:38 PM','12:04 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74531,'2017-11-07','39','06:21 AM','','07:30 PM','07:30 PM',NULL,NULL,'00:00:00','06:30:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74532,'2017-11-08','39','','12:03 PM','12:48 PM','04:44 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:15:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74533,'2017-11-09','39','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74534,'2017-11-10','39','04:58 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74535,'2017-11-11','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74536,'2017-11-12','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74537,'2017-11-13','39','06:26 AM','12:47 PM','12:49 PM','03:34 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','01:25:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74538,'2017-11-14','39','06:19 AM','','','03:34 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','01:25:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74539,'2017-11-15','39','06:19 AM','','','03:35 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','01:24:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74540,'2017-11-16','39','06:29 AM','12:01 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74541,'2017-11-17','39','05:49 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74542,'2017-11-18','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74543,'2017-11-19','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74544,'2017-11-20','39','06:09 AM','12:22 PM','04:15 PM','',NULL,NULL,'00:00:00','03:15:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74545,'2017-11-21','39','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74546,'2017-11-22','39','06:45 AM','','','02:48 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','02:11:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74547,'2017-11-23','39','06:23 AM','','','03:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','01:30:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74548,'2017-11-24','39','06:19 AM','','','03:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','01:17:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74549,'2017-11-25','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74550,'2017-11-26','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74551,'2017-11-27','39','06:36 AM','11:58 AM','12:45 PM','04:02 PM',NULL,NULL,'00:00:00','00:00:00','00:01:00','00:57:00','00:00:00','00:00:00','1.00',0,0,1,1,0,0,0,0,NULL,'Active'),(74552,'2017-11-28','39','06:19 AM','11:58 AM','11:59 AM','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74553,'2017-11-29','39','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74554,'2017-11-30','39','','','','02:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','02:19:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74555,'2017-11-01','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74556,'2017-11-02','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74557,'2017-11-03','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74558,'2017-11-04','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74559,'2017-11-05','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74560,'2017-11-06','4','07:27 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74561,'2017-11-07','4','07:15 AM','12:34 PM','12:35 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74562,'2017-11-08','4','07:03 AM','12:05 PM','12:05 PM','04:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74563,'2017-11-09','4','07:07 AM','03:05 PM','12:31 PM','03:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','01:24:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74564,'2017-11-10','4','07:24 AM','12:46 PM','12:46 PM','04:43 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74565,'2017-11-11','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74566,'2017-11-12','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74567,'2017-11-13','4','07:19 AM','12:01 PM','04:30 PM','',NULL,NULL,'00:00:00','03:40:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74568,'2017-11-14','4','07:23 AM','12:39 PM','12:39 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74569,'2017-11-15','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74570,'2017-11-16','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74571,'2017-11-17','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74572,'2017-11-18','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74573,'2017-11-19','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74574,'2017-11-20','4','07:16 AM','12:07 PM','12:07 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74575,'2017-11-21','4','07:20 AM','12:36 PM','12:36 PM','04:35 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74576,'2017-11-22','4','07:24 AM','12:05 PM','12:05 PM','04:54 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74577,'2017-11-23','4','07:17 AM','12:18 PM','12:19 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74578,'2017-11-24','4','07:22 AM','12:49 PM','12:50 PM','04:47 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74579,'2017-11-25','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74580,'2017-11-26','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74581,'2017-11-27','4','07:23 AM','12:03 PM','12:51 PM','01:39 PM',NULL,NULL,'00:00:00','00:01:00','00:00:00','02:50:00','00:00:00','00:00:00','1.00',0,1,0,1,0,0,0,0,NULL,'Active'),(74582,'2017-11-28','4','07:07 AM','12:21 PM','12:21 PM','04:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74583,'2017-11-29','4','07:15 AM','12:05 PM','12:05 PM','04:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74584,'2017-11-30','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74585,'2017-11-01','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74586,'2017-11-02','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74587,'2017-11-03','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74588,'2017-11-04','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74589,'2017-11-05','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74590,'2017-11-06','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74591,'2017-11-07','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74592,'2017-11-08','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74593,'2017-11-09','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74594,'2017-11-10','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74595,'2017-11-11','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74596,'2017-11-12','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74597,'2017-11-13','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74598,'2017-11-14','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74599,'2017-11-15','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74600,'2017-11-16','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74601,'2017-11-17','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74602,'2017-11-18','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74603,'2017-11-19','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74604,'2017-11-20','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74605,'2017-11-21','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74606,'2017-11-22','40','','','11:18 AM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74607,'2017-11-23','40','07:15 AM','','','04:46 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74608,'2017-11-24','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74609,'2017-11-25','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74610,'2017-11-26','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74611,'2017-11-27','40','07:17 AM','12:04 PM','','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74612,'2017-11-28','40','07:24 AM','12:04 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74613,'2017-11-29','40','07:25 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74614,'2017-11-30','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74615,'2017-11-01','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74616,'2017-11-02','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74617,'2017-11-03','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74618,'2017-11-04','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74619,'2017-11-05','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74620,'2017-11-06','41','07:25 AM','','12:08 PM','06:04 PM',NULL,NULL,'00:00:00','00:08:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74621,'2017-11-07','41','','12:01 PM','01:14 PM','05:01 PM',NULL,NULL,'00:00:00','01:14:00','11:08:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(74622,'2017-11-08','41','08:01 AM','12:12 PM','','05:12 PM',NULL,NULL,'00:31:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74623,'2017-11-09','41','07:56 AM','11:35 AM','11:36 AM','05:04 PM',NULL,NULL,'00:26:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74624,'2017-11-10','41','08:00 AM','12:06 PM','12:57 PM','05:14 PM',NULL,NULL,'00:30:00','00:57:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74625,'2017-11-11','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74626,'2017-11-12','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74627,'2017-11-13','41','07:21 AM','12:02 PM','12:54 PM','04:54 PM',NULL,NULL,'00:00:00','00:54:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74628,'2017-11-14','41','08:24 AM','','12:56 PM','05:01 PM',NULL,NULL,'00:54:00','00:56:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74629,'2017-11-15','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74630,'2017-11-16','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74631,'2017-11-17','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74632,'2017-11-18','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74633,'2017-11-19','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74634,'2017-11-20','41','07:38 AM','12:04 PM','01:00 PM','',NULL,NULL,'00:08:00','01:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,1,0,0,0,0,0,0,NULL,'Active'),(74635,'2017-11-21','41','07:59 AM','','12:03 PM','05:12 PM',NULL,NULL,'00:29:00','00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74636,'2017-11-22','41','07:57 AM','12:21 PM','12:22 PM','05:23 PM',NULL,NULL,'00:27:00','00:22:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74637,'2017-11-23','41','08:11 AM','12:15 PM','12:16 PM','05:32 PM',NULL,NULL,'00:41:00','00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74638,'2017-11-24','41','07:59 AM','12:06 PM','','',NULL,NULL,'00:29:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(74639,'2017-11-25','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74640,'2017-11-26','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74641,'2017-11-27','41','07:27 AM','11:59 AM','','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74642,'2017-11-28','41','08:00 AM','12:12 PM','01:02 PM','05:00 PM',NULL,NULL,'00:30:00','01:02:00','10:57:00','00:00:00','00:00:00','00:00:00','1.00',1,1,1,0,0,0,0,0,NULL,'Active'),(74643,'2017-11-29','41','08:02 AM','12:07 PM','05:26 PM','',NULL,NULL,'00:32:00','05:26:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,1,0,0,0,0,0,0,NULL,'Active'),(74644,'2017-11-30','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74645,'2017-11-01','42','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74646,'2017-11-02','42','07:18 AM','11:43 AM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74647,'2017-11-03','42','07:13 AM','','','04:54 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74648,'2017-11-04','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74649,'2017-11-05','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74650,'2017-11-06','42','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74651,'2017-11-07','42','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74652,'2017-11-08','42','06:44 AM','11:06 AM','11:12 AM','04:47 PM',NULL,NULL,'00:00:00','00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74653,'2017-11-09','42','06:38 AM','11:14 AM','11:16 AM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74654,'2017-11-10','42','06:30 AM','11:14 AM','11:18 AM','05:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74655,'2017-11-11','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74656,'2017-11-12','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74657,'2017-11-13','42','06:36 AM','11:03 AM','11:05 AM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:06:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74658,'2017-11-14','42','06:24 AM','11:07 AM','','05:03 PM',NULL,NULL,'00:00:00','00:00:00','12:02:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74659,'2017-11-15','42','06:42 AM','11:03 AM','11:04 AM','04:49 PM',NULL,NULL,'00:00:00','00:00:00','00:06:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74660,'2017-11-16','42','06:52 AM','11:02 AM','11:02 AM','04:58 PM',NULL,NULL,'00:00:00','00:00:00','00:07:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74661,'2017-11-17','42','06:34 AM','11:28 AM','11:28 AM','04:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74662,'2017-11-18','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74663,'2017-11-19','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74664,'2017-11-20','42','06:38 AM','11:13 AM','11:16 AM','04:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74665,'2017-11-21','42','06:48 AM','10:59 AM','11:36 AM','04:51 PM',NULL,NULL,'00:00:00','00:00:00','12:10:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74666,'2017-11-22','42','06:49 AM','11:22 AM','11:23 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74667,'2017-11-23','42','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74668,'2017-11-24','42','','','','05:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74669,'2017-11-25','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74670,'2017-11-26','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74671,'2017-11-27','42','06:46 AM','11:15 AM','','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74672,'2017-11-28','42','06:53 AM','11:30 AM','11:34 AM','06:07 PM',NULL,NULL,'00:00:00','00:00:00','11:39:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74673,'2017-11-29','42','06:51 AM','11:15 AM','11:16 AM','06:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74674,'2017-11-30','42','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74675,'2017-11-01','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74676,'2017-11-02','43','','12:11 PM','12:14 PM','04:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74677,'2017-11-03','43','07:23 AM','12:42 PM','12:46 PM','04:44 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74678,'2017-11-04','43','09:52 AM','12:06 PM','12:42 PM','05:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74679,'2017-11-05','43','','DAY','OFF','05:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74680,'2017-11-06','43','06:59 AM','12:20 PM','12:20 PM','06:52 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74681,'2017-11-07','43','07:16 AM','12:03 PM','12:04 PM','05:48 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74682,'2017-11-08','43','07:24 AM','12:19 PM','12:21 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74683,'2017-11-09','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74684,'2017-11-10','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74685,'2017-11-11','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74686,'2017-11-12','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74687,'2017-11-13','43','07:19 AM','12:46 PM','12:50 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74688,'2017-11-14','43','07:15 AM','12:40 PM','12:41 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74689,'2017-11-15','43','07:19 AM','12:02 PM','01:03 PM','05:42 PM',NULL,NULL,'00:00:00','00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74690,'2017-11-16','43','','12:59 PM','04:40 PM','',NULL,NULL,'00:00:00','03:40:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74691,'2017-11-17','43','07:23 AM','12:03 PM','12:03 PM','04:56 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74692,'2017-11-18','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74693,'2017-11-19','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74694,'2017-11-20','43','07:17 AM','12:09 PM','12:10 PM','05:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74695,'2017-11-21','43','07:33 AM','12:10 PM','12:11 PM','05:05 PM',NULL,NULL,'00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74696,'2017-11-22','43','07:38 AM','12:52 PM','','05:21 PM',NULL,NULL,'00:08:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74697,'2017-11-23','43','','12:02 PM','12:04 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74698,'2017-11-24','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74699,'2017-11-25','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74700,'2017-11-26','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74701,'2017-11-27','43','07:05 AM','12:38 PM','12:39 PM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74702,'2017-11-28','43','07:15 AM','12:01 PM','12:04 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74703,'2017-11-29','43','','12:01 PM','05:14 PM','',NULL,NULL,'00:00:00','04:14:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74704,'2017-11-30','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74705,'2017-11-01','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74706,'2017-11-02','44','','','','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74707,'2017-11-03','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74708,'2017-11-04','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74709,'2017-11-05','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74710,'2017-11-06','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74711,'2017-11-07','44','08:01 AM','','','',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74712,'2017-11-08','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74713,'2017-11-09','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74714,'2017-11-10','44','07:57 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74715,'2017-11-11','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74716,'2017-11-12','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74717,'2017-11-13','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74718,'2017-11-14','44','','','','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74719,'2017-11-15','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74720,'2017-11-16','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74721,'2017-11-17','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74722,'2017-11-18','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74723,'2017-11-19','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74724,'2017-11-20','44','07:28 AM','12:00 PM','','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74725,'2017-11-21','44','08:04 AM','11:59 AM','12:04 PM','05:11 PM',NULL,NULL,'00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74726,'2017-11-22','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74727,'2017-11-23','44','07:49 AM','12:19 PM','12:19 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74728,'2017-11-24','44','07:53 AM','12:06 PM','12:08 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74729,'2017-11-25','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74730,'2017-11-26','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74731,'2017-11-27','44','07:38 AM','','','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74732,'2017-11-28','44','07:57 AM','12:03 PM','12:04 PM','05:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74733,'2017-11-29','44','07:56 AM','12:00 PM','12:02 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74734,'2017-11-30','44','08:02 AM','','04:25 PM','',NULL,NULL,'00:02:00','03:25:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,1,0,0,0,0,0,0,NULL,'Active'),(74735,'2017-11-01','45','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74736,'2017-11-02','45','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74737,'2017-11-03','45','07:25 AM','12:06 PM','12:06 PM','',NULL,NULL,'00:00:00','00:06:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74738,'2017-11-04','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74739,'2017-11-05','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74740,'2017-11-06','45','07:21 AM','12:21 PM','','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74741,'2017-11-07','45','07:22 AM','12:17 PM','12:17 PM','04:28 PM',NULL,NULL,'00:00:00','00:17:00','10:52:00','00:01:00','00:00:00','00:00:00','1.00',0,1,1,1,0,0,0,0,NULL,'Active'),(74742,'2017-11-08','45','07:22 AM','12:08 PM','12:08 PM','',NULL,NULL,'00:00:00','00:08:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74743,'2017-11-09','45','07:25 AM','12:04 PM','12:04 PM','04:30 PM',NULL,NULL,'00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74744,'2017-11-10','45','07:25 AM','12:20 PM','12:21 PM','04:33 PM',NULL,NULL,'00:00:00','00:21:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74745,'2017-11-11','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74746,'2017-11-12','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74747,'2017-11-13','45','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74748,'2017-11-14','45','07:22 AM','','','04:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74749,'2017-11-15','45','07:21 AM','12:05 PM','12:06 PM','04:30 PM',NULL,NULL,'00:00:00','00:06:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74750,'2017-11-16','45','07:27 AM','12:11 PM','12:11 PM','04:56 PM',NULL,NULL,'00:00:00','00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74751,'2017-11-17','45','08:36 AM','','','',NULL,NULL,'01:06:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74752,'2017-11-18','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74753,'2017-11-19','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74754,'2017-11-20','45','07:22 AM','12:12 PM','','04:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74755,'2017-11-21','45','07:21 AM','12:07 PM','12:07 PM','01:59 PM',NULL,NULL,'00:00:00','00:07:00','11:02:00','02:30:00','00:00:00','00:00:00','1.00',0,1,1,1,0,0,0,0,NULL,'Active'),(74756,'2017-11-22','45','','12:04 PM','12:04 PM','',NULL,NULL,'00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74757,'2017-11-23','45','07:23 AM','','','12:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','04:24:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74758,'2017-11-24','45','07:25 AM','12:04 PM','12:04 PM','05:10 PM',NULL,NULL,'00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74759,'2017-11-25','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74760,'2017-11-26','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74761,'2017-11-27','45','07:22 AM','04:31 PM','12:09 PM','',NULL,NULL,'00:00:00','00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74762,'2017-11-28','45','07:06 AM','12:03 PM','12:03 PM','',NULL,NULL,'00:00:00','00:03:00','11:06:00','00:00:00','00:00:00','00:00:00','0.50',0,1,1,0,0,0,0,0,NULL,'Active'),(74763,'2017-11-29','45','07:28 AM','','','04:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74764,'2017-11-30','45','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74765,'2017-11-01','46','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74766,'2017-11-02','46','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74767,'2017-11-03','46','','','','04:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74768,'2017-11-04','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74769,'2017-11-05','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74770,'2017-11-06','46','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74771,'2017-11-07','46','07:27 AM','','12:22 PM','05:33 PM',NULL,NULL,'00:00:00','00:22:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74772,'2017-11-08','46','07:26 AM','12:10 PM','12:12 PM','05:29 PM',NULL,NULL,'00:00:00','00:12:00','10:59:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(74773,'2017-11-09','46','07:25 AM','12:27 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74774,'2017-11-10','46','07:28 AM','12:06 PM','','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74775,'2017-11-11','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74776,'2017-11-12','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74777,'2017-11-13','46','07:24 AM','12:28 PM','','04:48 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74778,'2017-11-14','46','07:24 AM','12:14 PM','12:16 PM','05:57 PM',NULL,NULL,'00:00:00','00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74779,'2017-11-15','46','07:25 AM','12:06 PM','','05:44 PM',NULL,NULL,'00:00:00','00:00:00','11:03:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74780,'2017-11-16','46','07:30 AM','12:00 PM','12:03 PM','05:59 PM',NULL,NULL,'00:00:00','00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74781,'2017-11-17','46','07:26 AM','12:00 PM','12:02 PM','05:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74782,'2017-11-18','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74783,'2017-11-19','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74784,'2017-11-20','46','07:23 AM','12:24 PM','12:26 PM','06:13 PM',NULL,NULL,'00:00:00','00:26:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74785,'2017-11-21','46','07:27 AM','12:01 PM','','06:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74786,'2017-11-22','46','07:22 AM','12:20 PM','','06:32 PM',NULL,NULL,'00:00:00','00:00:00','10:49:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74787,'2017-11-23','46','07:25 AM','','12:06 PM','04:33 PM',NULL,NULL,'00:00:00','00:06:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74788,'2017-11-24','46','','','12:37 PM','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74789,'2017-11-25','46','','DAY','OFF','04:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74790,'2017-11-26','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74791,'2017-11-27','46','07:17 AM','04:36 PM','12:12 PM','',NULL,NULL,'00:00:00','00:12:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74792,'2017-11-28','46','07:20 AM','12:01 PM','12:06 PM','04:28 PM',NULL,NULL,'00:00:00','00:06:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,1,0,1,0,0,0,0,NULL,'Active'),(74793,'2017-11-29','46','07:20 AM','12:44 PM','12:47 PM','06:31 PM',NULL,NULL,'00:00:00','00:47:00','10:25:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(74794,'2017-11-30','46','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74795,'2017-11-01','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74796,'2017-11-02','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74797,'2017-11-03','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74798,'2017-11-04','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74799,'2017-11-05','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74800,'2017-11-06','47','','12:41 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74801,'2017-11-07','47','','10:33 AM','02:11 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74802,'2017-11-08','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74803,'2017-11-09','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74804,'2017-11-10','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74805,'2017-11-11','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74806,'2017-11-12','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74807,'2017-11-13','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74808,'2017-11-14','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74809,'2017-11-15','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74810,'2017-11-16','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74811,'2017-11-17','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74812,'2017-11-18','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74813,'2017-11-19','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74814,'2017-11-20','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74815,'2017-11-21','47','','','12:47 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74816,'2017-11-22','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74817,'2017-11-23','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74818,'2017-11-24','47','','12:08 PM','12:09 PM','03:56 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74819,'2017-11-25','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74820,'2017-11-26','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74821,'2017-11-27','47','04:54 AM','08:16 AM','12:46 PM','09:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74822,'2017-11-28','47','04:55 AM','08:44 AM','02:23 PM','09:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74823,'2017-11-29','47','04:41 AM','10:09 AM','02:43 PM','09:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74824,'2017-11-30','47','','08:27 AM','04:20 PM','09:32 PM',NULL,NULL,'00:00:00','00:20:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74825,'2017-11-01','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74826,'2017-11-02','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74827,'2017-11-03','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74828,'2017-11-04','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74829,'2017-11-05','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74830,'2017-11-06','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74831,'2017-11-07','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74832,'2017-11-08','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74833,'2017-11-09','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74834,'2017-11-10','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74835,'2017-11-11','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74836,'2017-11-12','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74837,'2017-11-13','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74838,'2017-11-14','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74839,'2017-11-15','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74840,'2017-11-16','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74841,'2017-11-17','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74842,'2017-11-18','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74843,'2017-11-19','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74844,'2017-11-20','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74845,'2017-11-21','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74846,'2017-11-22','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74847,'2017-11-23','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74848,'2017-11-24','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74849,'2017-11-25','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74850,'2017-11-26','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74851,'2017-11-27','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74852,'2017-11-28','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74853,'2017-11-29','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74854,'2017-11-30','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74855,'2017-11-01','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74856,'2017-11-02','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74857,'2017-11-03','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74858,'2017-11-04','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74859,'2017-11-05','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74860,'2017-11-06','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74861,'2017-11-07','49','','12:22 PM','','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74862,'2017-11-08','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74863,'2017-11-09','49','','12:59 PM','','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74864,'2017-11-10','49','07:16 AM','','','05:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(74865,'2017-11-11','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74866,'2017-11-12','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74867,'2017-11-13','49','07:23 AM','12:47 PM','12:47 PM','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74868,'2017-11-14','49','','12:26 PM','12:26 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74869,'2017-11-15','49','07:20 AM','12:31 PM','12:31 PM','',NULL,NULL,'00:00:00','00:31:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(74870,'2017-11-16','49','07:26 AM','12:11 PM','12:11 PM','05:17 PM',NULL,NULL,'00:00:00','00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74871,'2017-11-17','49','','11:33 AM','11:33 AM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74872,'2017-11-18','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74873,'2017-11-19','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74874,'2017-11-20','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74875,'2017-11-21','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74876,'2017-11-22','49','07:22 AM','12:29 PM','12:29 PM','05:26 PM',NULL,NULL,'00:00:00','00:29:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74877,'2017-11-23','49','07:22 AM','12:09 PM','12:09 PM','05:15 PM',NULL,NULL,'00:00:00','00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74878,'2017-11-24','49','07:24 AM','12:15 PM','02:29 PM','02:29 PM',NULL,NULL,'00:00:00','02:29:00','00:00:00','02:00:00','00:00:00','00:00:00','1.00',0,1,0,1,0,0,0,0,NULL,'Active'),(74879,'2017-11-25','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74880,'2017-11-26','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74881,'2017-11-27','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74882,'2017-11-28','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74883,'2017-11-29','49','07:21 AM','12:36 PM','12:36 PM','04:53 PM',NULL,NULL,'00:00:00','00:36:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74884,'2017-11-30','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74885,'2017-11-01','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74886,'2017-11-02','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74887,'2017-11-03','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74888,'2017-11-04','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74889,'2017-11-05','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74890,'2017-11-06','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74891,'2017-11-07','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74892,'2017-11-08','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74893,'2017-11-09','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74894,'2017-11-10','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74895,'2017-11-11','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74896,'2017-11-12','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74897,'2017-11-13','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74898,'2017-11-14','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74899,'2017-11-15','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74900,'2017-11-16','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74901,'2017-11-17','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74902,'2017-11-18','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74903,'2017-11-19','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74904,'2017-11-20','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74905,'2017-11-21','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74906,'2017-11-22','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74907,'2017-11-23','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74908,'2017-11-24','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74909,'2017-11-25','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74910,'2017-11-26','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74911,'2017-11-27','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74912,'2017-11-28','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74913,'2017-11-29','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74914,'2017-11-30','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74915,'2017-11-01','50','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74916,'2017-11-02','50','07:15 AM','11:17 AM','11:20 AM','04:54 PM',NULL,NULL,'00:00:00','00:00:00','00:42:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74917,'2017-11-03','50','07:24 AM','11:18 AM','11:20 AM','06:02 PM',NULL,NULL,'00:00:00','00:00:00','00:41:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74918,'2017-11-04','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74919,'2017-11-05','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74920,'2017-11-06','50','06:29 AM','11:12 AM','11:15 AM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:47:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74921,'2017-11-07','50','07:01 AM','11:11 AM','11:14 AM','06:21 PM',NULL,NULL,'00:00:00','00:00:00','00:48:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74922,'2017-11-08','50','07:00 AM','11:15 AM','11:19 AM','05:52 PM',NULL,NULL,'00:00:00','00:00:00','00:44:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74923,'2017-11-09','50','07:02 AM','11:14 AM','11:17 AM','05:35 PM',NULL,NULL,'00:00:00','00:00:00','00:45:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74924,'2017-11-10','50','06:49 AM','11:14 AM','11:17 AM','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:45:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74925,'2017-11-11','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74926,'2017-11-12','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74927,'2017-11-13','50','07:07 AM','11:19 AM','11:22 AM','05:41 PM',NULL,NULL,'00:00:00','00:00:00','00:40:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74928,'2017-11-14','50','06:49 AM','11:11 AM','11:13 AM','06:15 PM',NULL,NULL,'00:00:00','00:00:00','00:48:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74929,'2017-11-15','50','06:35 AM','11:33 AM','11:35 AM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:26:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74930,'2017-11-16','50','07:08 AM','11:11 AM','','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:48:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74931,'2017-11-17','50','06:48 AM','','','04:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74932,'2017-11-18','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74933,'2017-11-19','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74934,'2017-11-20','50','07:01 AM','11:10 AM','11:13 AM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:49:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74935,'2017-11-21','50','06:30 AM','11:10 AM','11:13 AM','05:59 PM',NULL,NULL,'00:00:00','00:00:00','00:49:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74936,'2017-11-22','50','06:45 AM','11:12 AM','11:15 AM','05:25 PM',NULL,NULL,'00:00:00','00:00:00','00:47:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74937,'2017-11-23','50','06:45 AM','','','05:43 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74938,'2017-11-24','50','06:28 AM','11:19 AM','11:22 AM','05:28 PM',NULL,NULL,'00:00:00','00:00:00','00:40:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74939,'2017-11-25','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74940,'2017-11-26','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74941,'2017-11-27','50','06:27 AM','11:23 AM','11:26 AM','05:42 PM',NULL,NULL,'00:00:00','00:00:00','00:36:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74942,'2017-11-28','50','06:39 AM','11:29 AM','11:32 AM','06:10 PM',NULL,NULL,'00:00:00','00:00:00','00:30:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74943,'2017-11-29','50','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74944,'2017-11-30','50','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74945,'2017-11-01','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74946,'2017-11-02','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74947,'2017-11-03','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74948,'2017-11-04','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74949,'2017-11-05','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74950,'2017-11-06','51','','11:53 AM','11:53 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74951,'2017-11-07','51','07:22 AM','11:37 AM','11:37 AM','05:22 PM',NULL,NULL,'00:00:00','00:00:00','11:32:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(74952,'2017-11-08','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74953,'2017-11-09','51','','12:15 PM','12:15 PM','06:24 PM',NULL,NULL,'00:00:00','00:15:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74954,'2017-11-10','51','','11:46 AM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74955,'2017-11-11','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74956,'2017-11-12','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74957,'2017-11-13','51','07:23 AM','','','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74958,'2017-11-14','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74959,'2017-11-15','51','','12:31 PM','12:31 PM','05:08 PM',NULL,NULL,'00:00:00','00:31:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74960,'2017-11-16','51','07:26 AM','','12:11 PM','',NULL,NULL,'00:00:00','00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,1,0,0,0,0,0,0,NULL,'Active'),(74961,'2017-11-17','51','07:26 AM','11:29 AM','11:29 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74962,'2017-11-18','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74963,'2017-11-19','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74964,'2017-11-20','51','','11:55 AM','11:55 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74965,'2017-11-21','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74966,'2017-11-22','51','','11:31 AM','11:32 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74967,'2017-11-23','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74968,'2017-11-24','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74969,'2017-11-25','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74970,'2017-11-26','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74971,'2017-11-27','51','07:27 AM','','','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74972,'2017-11-28','51','07:26 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74973,'2017-11-29','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74974,'2017-11-30','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74975,'2017-11-01','52','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74976,'2017-11-02','52','','','','05:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74977,'2017-11-03','52','08:10 AM','12:13 PM','12:16 PM','05:17 PM',NULL,NULL,'00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74978,'2017-11-04','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74979,'2017-11-05','52','','09:22 AM','05:09 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74980,'2017-11-06','52','07:27 AM','12:12 PM','12:17 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74981,'2017-11-07','52','07:55 AM','12:21 PM','12:23 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(74982,'2017-11-08','52','07:56 AM','12:00 PM','','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74983,'2017-11-09','52','07:59 AM','12:41 PM','12:43 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74984,'2017-11-10','52','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74985,'2017-11-11','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74986,'2017-11-12','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74987,'2017-11-13','52','07:21 AM','12:12 PM','12:12 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74988,'2017-11-14','52','07:48 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74989,'2017-11-15','52','07:57 AM','11:59 AM','','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74990,'2017-11-16','52','08:04 AM','12:12 PM','12:13 PM','05:01 PM',NULL,NULL,'00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74991,'2017-11-17','52','07:58 AM','12:00 PM','','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74992,'2017-11-18','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74993,'2017-11-19','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74994,'2017-11-20','52','07:24 AM','12:50 PM','','05:44 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74995,'2017-11-21','52','08:02 AM','12:29 PM','12:30 PM','05:09 PM',NULL,NULL,'00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(74996,'2017-11-22','52','07:55 AM','12:07 PM','12:08 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74997,'2017-11-23','52','07:56 AM','12:30 PM','12:31 PM','05:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74998,'2017-11-24','52','07:56 AM','12:53 PM','12:55 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(74999,'2017-11-25','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75000,'2017-11-26','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75001,'2017-11-27','52','07:21 AM','11:59 AM','12:00 PM','05:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75002,'2017-11-28','52','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75003,'2017-11-29','52','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75004,'2017-11-30','52','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75005,'2017-11-01','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75006,'2017-11-02','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75007,'2017-11-03','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75008,'2017-11-04','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75009,'2017-11-05','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75010,'2017-11-06','53','07:24 AM','','','05:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75011,'2017-11-07','53','','12:10 PM','12:11 PM','06:20 PM',NULL,NULL,'00:00:00','00:11:00','10:59:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(75012,'2017-11-08','53','07:53 AM','12:08 PM','12:10 PM','06:10 PM',NULL,NULL,'00:23:00','00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(75013,'2017-11-09','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75014,'2017-11-10','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75015,'2017-11-11','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75016,'2017-11-12','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75017,'2017-11-13','53','07:30 AM','12:31 PM','12:31 PM','05:43 PM',NULL,NULL,'00:00:00','00:31:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75018,'2017-11-14','53','','','12:37 PM','05:55 PM',NULL,NULL,'00:00:00','00:37:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75019,'2017-11-15','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75020,'2017-11-16','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75021,'2017-11-17','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75022,'2017-11-18','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75023,'2017-11-19','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75024,'2017-11-20','53','07:23 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75025,'2017-11-21','53','07:21 AM','12:30 PM','12:31 PM','',NULL,NULL,'00:00:00','00:31:00','10:39:00','00:00:00','00:00:00','00:00:00','0.50',0,1,1,0,0,0,0,0,NULL,'Active'),(75026,'2017-11-22','53','08:06 AM','12:04 PM','','05:37 PM',NULL,NULL,'00:36:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75027,'2017-11-23','53','08:00 AM','','','06:05 PM',NULL,NULL,'00:30:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75028,'2017-11-24','53','07:59 AM','12:06 PM','','05:28 PM',NULL,NULL,'00:29:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75029,'2017-11-25','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75030,'2017-11-26','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75031,'2017-11-27','53','07:32 AM','12:44 PM','','',NULL,NULL,'00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(75032,'2017-11-28','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75033,'2017-11-29','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75034,'2017-11-30','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75035,'2017-11-01','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75036,'2017-11-02','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75037,'2017-11-03','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75038,'2017-11-04','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75039,'2017-11-05','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75040,'2017-11-06','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75041,'2017-11-07','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75042,'2017-11-08','54','07:53 AM','','','',NULL,NULL,'00:23:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75043,'2017-11-09','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75044,'2017-11-10','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75045,'2017-11-11','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75046,'2017-11-12','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75047,'2017-11-13','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75048,'2017-11-14','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75049,'2017-11-15','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75050,'2017-11-16','54','','','12:49 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75051,'2017-11-17','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75052,'2017-11-18','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75053,'2017-11-19','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75054,'2017-11-20','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75055,'2017-11-21','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75056,'2017-11-22','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75057,'2017-11-23','54','08:00 AM','','','',NULL,NULL,'00:30:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75058,'2017-11-24','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75059,'2017-11-25','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75060,'2017-11-26','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75061,'2017-11-27','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75062,'2017-11-28','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75063,'2017-11-29','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75064,'2017-11-30','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75065,'2017-11-01','55','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75066,'2017-11-02','55','07:15 AM','12:19 PM','12:22 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75067,'2017-11-03','55','07:24 AM','12:12 PM','12:16 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75068,'2017-11-04','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75069,'2017-11-05','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75070,'2017-11-06','55','07:20 AM','12:21 PM','12:22 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75071,'2017-11-07','55','07:22 AM','12:23 PM','12:25 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75072,'2017-11-08','55','07:22 AM','12:00 PM','12:02 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75073,'2017-11-09','55','07:24 AM','12:02 PM','12:07 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75074,'2017-11-10','55','07:18 AM','12:00 PM','12:05 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75075,'2017-11-11','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75076,'2017-11-12','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75077,'2017-11-13','55','07:23 AM','12:32 PM','12:34 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75078,'2017-11-14','55','07:23 AM','12:13 PM','12:16 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75079,'2017-11-15','55','07:22 AM','05:01 PM','12:33 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75080,'2017-11-16','55','07:24 AM','12:19 PM','12:25 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75081,'2017-11-17','55','07:26 AM','12:09 PM','12:11 PM','04:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75082,'2017-11-18','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75083,'2017-11-19','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75084,'2017-11-20','55','07:22 AM','12:10 PM','12:14 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75085,'2017-11-21','55','07:21 AM','12:25 PM','12:28 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75086,'2017-11-22','55','07:23 AM','12:28 PM','12:32 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75087,'2017-11-23','55','07:23 AM','12:22 PM','12:25 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75088,'2017-11-24','55','07:25 AM','12:27 PM','12:29 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75089,'2017-11-25','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75090,'2017-11-26','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75091,'2017-11-27','55','07:21 AM','12:12 PM','12:13 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75092,'2017-11-28','55','07:20 AM','12:11 PM','12:13 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75093,'2017-11-29','55','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75094,'2017-11-30','55','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75095,'2017-11-01','57','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75096,'2017-11-02','57','12:11 PM','','','',NULL,NULL,'04:11:00','00:00:00','00:00:00','04:51:00','00:00:00','00:00:00','1.00',1,0,0,1,0,0,0,0,NULL,'Active'),(75097,'2017-11-03','57','','12:08 PM','12:40 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75098,'2017-11-04','57','','DAY','OFF','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75099,'2017-11-05','57','12:34 PM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75100,'2017-11-06','57','','12:04 PM','12:06 PM','06:48 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75101,'2017-11-07','57','','12:04 PM','12:15 PM','06:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75102,'2017-11-08','57','','','','05:49 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75103,'2017-11-09','57','07:31 AM','','12:46 PM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75104,'2017-11-10','57','07:50 AM','','12:17 PM','05:35 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75105,'2017-11-11','57','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75106,'2017-11-12','57','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75107,'2017-11-13','57','07:00 AM','','','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75108,'2017-11-14','57','07:14 AM','12:41 PM','12:42 PM','06:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75109,'2017-11-15','57','07:22 AM','','','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75110,'2017-11-16','57','07:09 AM','12:29 PM','12:34 PM','07:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75111,'2017-11-17','57','07:07 AM','','','05:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75112,'2017-11-18','57','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75113,'2017-11-19','57','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75114,'2017-11-20','57','06:53 AM','','12:48 PM','06:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75115,'2017-11-21','57','07:37 AM','','12:51 PM','06:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75116,'2017-11-22','57','07:41 AM','','12:51 PM','05:50 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75117,'2017-11-23','57','07:25 AM','12:35 PM','','05:58 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75118,'2017-11-24','57','07:27 AM','','12:45 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75119,'2017-11-25','57','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75120,'2017-11-26','57','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75121,'2017-11-27','57','','','12:40 PM','06:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75122,'2017-11-28','57','07:04 AM','12:04 PM','','05:20 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75123,'2017-11-29','57','07:27 AM','12:09 PM','','06:44 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75124,'2017-11-30','57','10:12 AM','12:11 PM','12:58 PM','05:57 PM',NULL,NULL,'02:12:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75125,'2017-11-01','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75126,'2017-11-02','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75127,'2017-11-03','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75128,'2017-11-04','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75129,'2017-11-05','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75130,'2017-11-06','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75131,'2017-11-07','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75132,'2017-11-08','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75133,'2017-11-09','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75134,'2017-11-10','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75135,'2017-11-11','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75136,'2017-11-12','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75137,'2017-11-13','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75138,'2017-11-14','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75139,'2017-11-15','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75140,'2017-11-16','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75141,'2017-11-17','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75142,'2017-11-18','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75143,'2017-11-19','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75144,'2017-11-20','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75145,'2017-11-21','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75146,'2017-11-22','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75147,'2017-11-23','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75148,'2017-11-24','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75149,'2017-11-25','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75150,'2017-11-26','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75151,'2017-11-27','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75152,'2017-11-28','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75153,'2017-11-29','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75154,'2017-11-30','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75155,'2017-11-01','6','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75156,'2017-11-02','6','07:44 AM','','','05:37 PM',NULL,NULL,'00:14:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75157,'2017-11-03','6','07:33 AM','12:04 PM','12:07 PM','05:28 PM',NULL,NULL,'00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75158,'2017-11-04','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75159,'2017-11-05','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75160,'2017-11-06','6','07:28 AM','12:00 PM','12:00 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75161,'2017-11-07','6','07:47 AM','12:06 PM','12:10 PM','05:30 PM',NULL,NULL,'00:17:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75162,'2017-11-08','6','07:39 AM','12:06 PM','12:06 PM','05:24 PM',NULL,NULL,'00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75163,'2017-11-09','6','07:19 AM','12:02 PM','12:03 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75164,'2017-11-10','6','10:41 AM','12:50 PM','12:52 PM','04:53 PM',NULL,NULL,'03:11:00','00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(75165,'2017-11-11','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75166,'2017-11-12','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75167,'2017-11-13','6','07:30 AM','12:16 PM','12:18 PM','05:25 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75168,'2017-11-14','6','07:53 AM','12:08 PM','','05:22 PM',NULL,NULL,'00:23:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75169,'2017-11-15','6','07:51 AM','12:07 PM','12:08 PM','05:18 PM',NULL,NULL,'00:21:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75170,'2017-11-16','6','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75171,'2017-11-17','6','07:28 AM','12:37 PM','12:39 PM','04:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75172,'2017-11-18','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75173,'2017-11-19','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75174,'2017-11-20','6','07:29 AM','12:11 PM','12:13 PM','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75175,'2017-11-21','6','07:56 AM','12:20 PM','12:21 PM','05:28 PM',NULL,NULL,'00:26:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75176,'2017-11-22','6','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75177,'2017-11-23','6','07:31 AM','12:01 PM','12:03 PM','05:30 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75178,'2017-11-24','6','07:29 AM','12:04 PM','','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75179,'2017-11-25','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75180,'2017-11-26','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75181,'2017-11-27','6','07:31 AM','12:10 PM','12:12 PM','05:15 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75182,'2017-11-28','6','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75183,'2017-11-29','6','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75184,'2017-11-30','6','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75185,'2017-11-01','62','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75186,'2017-11-02','62','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75187,'2017-11-03','62','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75188,'2017-11-04','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75189,'2017-11-05','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75190,'2017-11-06','62','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75191,'2017-11-07','62','07:57 AM','12:04 PM','12:04 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75192,'2017-11-08','62','07:19 AM','12:03 PM','12:05 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75193,'2017-11-09','62','07:42 AM','','','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75194,'2017-11-10','62','','12:05 PM','12:06 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75195,'2017-11-11','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75196,'2017-11-12','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75197,'2017-11-13','62','07:01 AM','12:09 PM','','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75198,'2017-11-14','62','07:46 AM','12:03 PM','12:05 PM','04:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75199,'2017-11-15','62','07:28 AM','12:06 PM','12:06 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75200,'2017-11-16','62','','12:23 PM','12:25 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75201,'2017-11-17','62','07:30 AM','12:00 PM','','04:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75202,'2017-11-18','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75203,'2017-11-19','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75204,'2017-11-20','62','07:17 AM','12:56 PM','','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75205,'2017-11-21','62','07:49 AM','12:36 PM','12:37 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75206,'2017-11-22','62','07:46 AM','12:31 PM','12:31 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75207,'2017-11-23','62','07:30 AM','12:03 PM','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75208,'2017-11-24','62','07:47 AM','12:00 PM','12:02 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75209,'2017-11-25','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75210,'2017-11-26','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75211,'2017-11-27','62','07:18 AM','12:04 PM','12:05 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75212,'2017-11-28','62','07:25 AM','12:04 PM','12:05 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75213,'2017-11-29','62','07:30 AM','12:12 PM','12:13 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75214,'2017-11-30','62','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75215,'2017-11-01','69','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75216,'2017-11-02','69','07:46 AM','12:18 PM','12:18 PM','05:19 PM',NULL,NULL,'00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75217,'2017-11-03','69','','12:11 PM','12:13 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75218,'2017-11-04','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75219,'2017-11-05','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75220,'2017-11-06','69','07:14 AM','11:12 AM','11:13 AM','06:24 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75221,'2017-11-07','69','07:42 AM','12:40 PM','','05:14 PM',NULL,NULL,'00:12:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75222,'2017-11-08','69','07:43 AM','11:10 AM','11:14 AM','05:02 PM',NULL,NULL,'00:13:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75223,'2017-11-09','69','07:46 AM','','12:00 PM','05:20 PM',NULL,NULL,'00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75224,'2017-11-10','69','06:49 AM','12:09 PM','12:09 PM','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75225,'2017-11-11','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75226,'2017-11-12','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75227,'2017-11-13','69','07:11 AM','11:14 AM','11:14 AM','04:53 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75228,'2017-11-14','69','07:41 AM','12:05 PM','12:06 PM','05:07 PM',NULL,NULL,'00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75229,'2017-11-15','69','07:49 AM','11:24 AM','11:24 AM','05:03 PM',NULL,NULL,'00:19:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75230,'2017-11-16','69','08:37 AM','','','',NULL,NULL,'01:07:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75231,'2017-11-17','69','07:48 AM','12:45 PM','','05:08 PM',NULL,NULL,'00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75232,'2017-11-18','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75233,'2017-11-19','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75234,'2017-11-20','69','','','','04:50 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75235,'2017-11-21','69','07:50 AM','','12:08 PM','05:10 PM',NULL,NULL,'00:20:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75236,'2017-11-22','69','07:55 AM','','11:28 AM','05:11 PM',NULL,NULL,'00:25:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75237,'2017-11-23','69','07:36 AM','','','05:14 PM',NULL,NULL,'00:06:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75238,'2017-11-24','69','','12:07 PM','12:07 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75239,'2017-11-25','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75240,'2017-11-26','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75241,'2017-11-27','69','07:18 AM','11:25 AM','11:26 AM','04:56 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75242,'2017-11-28','69','07:48 AM','12:11 PM','12:11 PM','05:18 PM',NULL,NULL,'00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75243,'2017-11-29','69','07:48 AM','11:17 AM','11:17 AM','05:08 PM',NULL,NULL,'00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75244,'2017-11-30','69','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75245,'2017-11-01','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75246,'2017-11-02','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75247,'2017-11-03','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75248,'2017-11-04','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75249,'2017-11-05','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75250,'2017-11-06','7','07:25 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75251,'2017-11-07','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75252,'2017-11-08','7','07:26 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75253,'2017-11-09','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75254,'2017-11-10','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75255,'2017-11-11','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75256,'2017-11-12','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75257,'2017-11-13','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75258,'2017-11-14','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75259,'2017-11-15','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75260,'2017-11-16','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75261,'2017-11-17','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75262,'2017-11-18','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75263,'2017-11-19','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75264,'2017-11-20','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75265,'2017-11-21','7','','','','06:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75266,'2017-11-22','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75267,'2017-11-23','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75268,'2017-11-24','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75269,'2017-11-25','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75270,'2017-11-26','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75271,'2017-11-27','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75272,'2017-11-28','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75273,'2017-11-29','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75274,'2017-11-30','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75275,'2017-11-01','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75276,'2017-11-02','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75277,'2017-11-03','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75278,'2017-11-04','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75279,'2017-11-05','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75280,'2017-11-06','8','','12:00 PM','','04:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75281,'2017-11-07','8','','12:04 PM','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75282,'2017-11-08','8','07:31 AM','12:06 PM','12:06 PM','',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(75283,'2017-11-09','8','07:27 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75284,'2017-11-10','8','07:52 AM','12:29 PM','12:28 PM','05:11 PM',NULL,NULL,'00:22:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75285,'2017-11-11','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75286,'2017-11-12','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75287,'2017-11-13','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75288,'2017-11-14','8','07:22 AM','','12:14 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75289,'2017-11-15','8','','12:03 PM','12:05 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75290,'2017-11-16','8','','12:09 PM','12:10 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75291,'2017-11-17','8','07:43 AM','12:46 PM','12:47 PM','05:15 PM',NULL,NULL,'00:13:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75292,'2017-11-18','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75293,'2017-11-19','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75294,'2017-11-20','8','07:23 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75295,'2017-11-21','8','07:23 AM','12:09 PM','12:10 PM','04:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75296,'2017-11-22','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75297,'2017-11-23','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75298,'2017-11-24','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75299,'2017-11-25','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75300,'2017-11-26','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75301,'2017-11-27','8','','12:10 PM','12:12 PM','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75302,'2017-11-28','8','','12:10 PM','12:12 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75303,'2017-11-29','8','07:32 AM','12:05 PM','12:06 PM','',NULL,NULL,'00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,0,0,0,0,0,0,0,NULL,'Active'),(75304,'2017-11-30','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75305,'2017-11-01','9','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75306,'2017-11-02','9','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75307,'2017-11-03','9','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75308,'2017-11-04','9','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75309,'2017-11-05','9','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75310,'2017-11-06','9','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75311,'2017-11-07','9','','','','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75312,'2017-11-08','9','07:37 AM','12:05 PM','12:05 PM','',NULL,NULL,'00:07:00','00:05:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,1,0,0,0,0,0,0,NULL,'Active'),(75313,'2017-11-09','9','07:45 AM','','','05:07 PM',NULL,NULL,'00:15:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75314,'2017-11-10','9','','12:04 PM','12:05 PM','05:08 PM',NULL,NULL,'00:00:00','00:05:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75315,'2017-11-11','9','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75316,'2017-11-12','9','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75317,'2017-11-13','9','07:34 AM','','','05:02 PM',NULL,NULL,'00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75318,'2017-11-14','9','07:33 AM','','','',NULL,NULL,'00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75319,'2017-11-15','9','','12:05 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75320,'2017-11-16','9','','','','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75321,'2017-11-17','9','','','','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75322,'2017-11-18','9','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75323,'2017-11-19','9','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75324,'2017-11-20','9','','','','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75325,'2017-11-21','9','','12:06 PM','','',NULL,NULL,'00:00:00','00:00:00','11:04:00','00:00:00','00:00:00','00:00:00','0.50',0,0,1,0,0,0,0,0,NULL,'Active'),(75326,'2017-11-22','9','','','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75327,'2017-11-23','9','','12:04 PM','','05:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75328,'2017-11-24','9','','12:33 PM','12:33 PM','',NULL,NULL,'00:00:00','00:33:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(75329,'2017-11-25','9','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75330,'2017-11-26','9','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75331,'2017-11-27','9','','11:59 AM','','05:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75332,'2017-11-28','9','','','','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75333,'2017-11-29','9','','12:02 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75334,'2017-11-30','9','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75335,'2017-11-01','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75336,'2017-11-02','100','07:38 AM','12:09 PM','12:09 PM','',NULL,NULL,'00:08:00','00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,1,0,0,0,0,0,0,NULL,'Active'),(75337,'2017-11-03','100','07:37 AM','12:05 PM','12:07 PM','04:46 PM',NULL,NULL,'00:07:00','00:07:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(75338,'2017-11-04','100','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75339,'2017-11-05','100','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75340,'2017-11-06','100','','','','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75341,'2017-11-07','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75342,'2017-11-08','100','','','12:07 PM','05:41 PM',NULL,NULL,'00:00:00','00:07:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75343,'2017-11-09','100','','12:02 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75344,'2017-11-10','100','07:28 AM','12:09 PM','12:10 PM','',NULL,NULL,'00:00:00','00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(75345,'2017-11-11','100','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75346,'2017-11-12','100','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75347,'2017-11-13','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75348,'2017-11-14','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75349,'2017-11-15','100','','04:52 PM','12:18 PM','',NULL,NULL,'00:00:00','00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(75350,'2017-11-16','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75351,'2017-11-17','100','07:28 AM','','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75352,'2017-11-18','100','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75353,'2017-11-19','100','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75354,'2017-11-20','100','','12:03 PM','12:03 PM','',NULL,NULL,'00:00:00','00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(75355,'2017-11-21','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75356,'2017-11-22','100','','','','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75357,'2017-11-23','100','','','11:24 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75358,'2017-11-24','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75359,'2017-11-25','100','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75360,'2017-11-26','100','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75361,'2017-11-27','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75362,'2017-11-28','100','07:30 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75363,'2017-11-29','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75364,'2017-11-30','100','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75365,'2017-11-01','101','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75366,'2017-11-02','101','12:12 PM','','','05:20 PM',NULL,NULL,'03:12:00','00:00:00','00:00:00','00:39:00','00:00:00','00:00:00','1.00',1,0,0,1,0,0,0,0,NULL,'Active'),(75367,'2017-11-03','101','','','','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:42:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75368,'2017-11-04','101','07:40 AM','','','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75369,'2017-11-05','101','07:57 AM','12:11 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75370,'2017-11-06','101','07:28 AM','12:47 PM','12:51 PM','06:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75371,'2017-11-07','101','07:18 AM','12:08 PM','12:12 PM','06:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75372,'2017-11-08','101','08:40 AM','12:16 PM','12:18 PM','06:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75373,'2017-11-09','101','08:41 AM','12:23 PM','12:27 PM','06:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75374,'2017-11-10','101','08:35 AM','12:40 PM','12:41 PM','06:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75375,'2017-11-11','101','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75376,'2017-11-12','101','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75377,'2017-11-13','101','07:25 AM','12:27 PM','12:32 PM','06:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75378,'2017-11-14','101','08:34 AM','12:50 PM','12:52 PM','06:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75379,'2017-11-15','101','08:39 AM','','','06:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75380,'2017-11-16','101','08:38 AM','12:13 PM','12:17 PM','06:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75381,'2017-11-17','101','08:38 AM','12:19 PM','12:25 PM','06:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75382,'2017-11-18','101','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75383,'2017-11-19','101','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75384,'2017-11-20','101','07:29 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75385,'2017-11-21','101','08:41 AM','','12:47 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75386,'2017-11-22','101','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75387,'2017-11-23','101','','','','06:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75388,'2017-11-24','101','08:39 AM','12:44 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75389,'2017-11-25','101','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75390,'2017-11-26','101','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75391,'2017-11-27','101','07:26 AM','12:21 PM','12:28 PM','06:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75392,'2017-11-28','101','08:42 AM','12:32 PM','12:34 PM','06:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75393,'2017-11-29','101','','12:20 PM','12:20 PM','06:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(75394,'2017-11-30','101','07:32 AM','12:31 PM','12:36 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:54:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75395,'2017-11-01','56','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75396,'2017-11-02','56','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75397,'2017-11-03','56','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75398,'2017-11-04','56','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75399,'2017-11-05','56','06:47 AM','12:10 PM','12:30 PM','11:03 PM',NULL,NULL,'00:47:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75400,'2017-11-06','56','06:41 AM','12:47 PM','12:51 PM','04:26 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75401,'2017-11-07','56','','','02:50 PM','11:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75402,'2017-11-08','56','02:46 PM','','','11:06 PM',NULL,NULL,'06:46:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75403,'2017-11-09','56','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75404,'2017-11-10','56','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75405,'2017-11-11','56','05:41 AM','12:11 PM','','02:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75406,'2017-11-12','56','05:49 AM','12:00 PM','','04:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75407,'2017-11-13','56','06:35 AM','12:26 PM','12:32 PM','06:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75408,'2017-11-14','56','02:44 PM','','','11:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75409,'2017-11-15','56','02:38 PM','','','11:05 PM',NULL,NULL,'06:38:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75410,'2017-11-16','56','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75411,'2017-11-17','56','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75412,'2017-11-18','56','05:48 AM','12:03 PM','12:29 PM','03:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75413,'2017-11-19','56','05:46 AM','12:00 PM','','03:35 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75414,'2017-11-20','56','','12:27 PM','12:31 PM','04:49 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75415,'2017-11-21','56','02:12 PM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75416,'2017-11-22','56','02:27 PM','','','',NULL,NULL,'06:27:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75417,'2017-11-23','56','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75418,'2017-11-24','56','11:02 PM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75419,'2017-11-25','56','05:52 AM','','','12:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','02:57:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75420,'2017-11-26','56','05:50 AM','12:06 PM','12:10 PM','03:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75421,'2017-11-27','56','06:27 AM','12:21 PM','12:28 PM','06:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75422,'2017-11-28','56','01:19 PM','','','11:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75423,'2017-11-29','56','02:45 PM','','','',NULL,NULL,'06:45:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75424,'2017-11-30','56','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75425,'2017-11-01','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75426,'2017-11-02','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75427,'2017-11-03','59','','12:13 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75428,'2017-11-04','59','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75429,'2017-11-05','59','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75430,'2017-11-06','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75431,'2017-11-07','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75432,'2017-11-08','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75433,'2017-11-09','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75434,'2017-11-10','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75435,'2017-11-11','59','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75436,'2017-11-12','59','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75437,'2017-11-13','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75438,'2017-11-14','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75439,'2017-11-15','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75440,'2017-11-16','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75441,'2017-11-17','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75442,'2017-11-18','59','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75443,'2017-11-19','59','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75444,'2017-11-20','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75445,'2017-11-21','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75446,'2017-11-22','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75447,'2017-11-23','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75448,'2017-11-24','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75449,'2017-11-25','59','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75450,'2017-11-26','59','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75451,'2017-11-27','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75452,'2017-11-28','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75453,'2017-11-29','59','','12:01 PM','12:17 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75454,'2017-11-30','59','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75455,'2017-11-01','60','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75456,'2017-11-02','60','07:25 AM','12:22 PM','12:26 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75457,'2017-11-03','60','07:28 AM','12:02 PM','12:49 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75458,'2017-11-04','60','08:18 AM','12:02 PM','12:28 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75459,'2017-11-05','60','08:36 AM','12:14 PM','12:16 PM','05:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75460,'2017-11-06','60','07:21 AM','12:36 PM','','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75461,'2017-11-07','60','07:25 AM','12:27 PM','12:31 PM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75462,'2017-11-08','60','07:23 AM','12:01 PM','12:34 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75463,'2017-11-09','60','07:43 AM','12:39 PM','','04:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75464,'2017-11-10','60','07:32 AM','12:27 PM','12:37 PM','05:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75465,'2017-11-11','60','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75466,'2017-11-12','60','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75467,'2017-11-13','60','07:37 AM','12:07 PM','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75468,'2017-11-14','60','07:27 AM','','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75469,'2017-11-15','60','07:22 AM','12:13 PM','12:14 PM','04:24 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:35:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75470,'2017-11-16','60','08:00 AM','11:59 AM','12:28 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75471,'2017-11-17','60','07:29 AM','12:12 PM','12:14 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75472,'2017-11-18','60','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75473,'2017-11-19','60','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75474,'2017-11-20','60','07:24 AM','12:02 PM','12:32 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75475,'2017-11-21','60','07:23 AM','12:13 PM','','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75476,'2017-11-22','60','07:23 AM','12:31 PM','12:30 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75477,'2017-11-23','60','07:25 AM','12:03 PM','12:22 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75478,'2017-11-24','60','07:26 AM','12:00 PM','12:19 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75479,'2017-11-25','60','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75480,'2017-11-26','60','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75481,'2017-11-27','60','07:22 AM','12:20 PM','12:23 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75482,'2017-11-28','60','07:38 AM','12:14 PM','12:17 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75483,'2017-11-29','60','07:46 AM','12:38 PM','12:43 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75484,'2017-11-30','60','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75485,'2017-11-01','61','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75486,'2017-11-02','61','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75487,'2017-11-03','61','','','','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75488,'2017-11-04','61','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75489,'2017-11-05','61','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75490,'2017-11-06','61','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75491,'2017-11-07','61','07:43 AM','12:05 PM','12:05 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75492,'2017-11-08','61','07:36 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75493,'2017-11-09','61','07:45 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75494,'2017-11-10','61','07:38 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75495,'2017-11-11','61','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75496,'2017-11-12','61','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75497,'2017-11-13','61','07:34 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75498,'2017-11-14','61','07:33 AM','12:04 PM','12:05 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75499,'2017-11-15','61','','','12:09 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75500,'2017-11-16','61','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75501,'2017-11-17','61','07:44 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75502,'2017-11-18','61','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75503,'2017-11-19','61','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75504,'2017-11-20','61','07:33 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75505,'2017-11-21','61','07:38 AM','12:06 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75506,'2017-11-22','61','','12:04 PM','12:06 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75507,'2017-11-23','61','07:39 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75508,'2017-11-24','61','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75509,'2017-11-25','61','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75510,'2017-11-26','61','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75511,'2017-11-27','61','07:36 AM','11:59 AM','12:51 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75512,'2017-11-28','61','07:35 AM','12:03 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75513,'2017-11-29','61','','12:02 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75514,'2017-11-30','61','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75515,'2017-11-01','63','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75516,'2017-11-02','63','07:26 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75517,'2017-11-03','63','07:40 AM','','','04:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:27:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75518,'2017-11-04','63','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75519,'2017-11-05','63','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75520,'2017-11-06','63','07:22 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75521,'2017-11-07','63','07:26 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75522,'2017-11-08','63','07:28 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75523,'2017-11-09','63','07:28 AM','','','07:58 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75524,'2017-11-10','63','07:33 AM','12:22 PM','','07:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75525,'2017-11-11','63','08:48 AM','','12:12 PM','04:54 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75526,'2017-11-12','63','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75527,'2017-11-13','63','07:25 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75528,'2017-11-14','63','07:28 AM','12:10 PM','','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75529,'2017-11-15','63','07:22 AM','05:00 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75530,'2017-11-16','63','07:23 AM','12:29 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75531,'2017-11-17','63','','','','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75532,'2017-11-18','63','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75533,'2017-11-19','63','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75534,'2017-11-20','63','07:26 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75535,'2017-11-21','63','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75536,'2017-11-22','63','07:40 AM','','','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75537,'2017-11-23','63','07:28 AM','12:15 PM','','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75538,'2017-11-24','63','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75539,'2017-11-25','63','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75540,'2017-11-26','63','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75541,'2017-11-27','63','07:23 AM','12:05 PM','12:06 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75542,'2017-11-28','63','07:27 AM','12:20 PM','12:26 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75543,'2017-11-29','63','07:46 AM','12:04 PM','05:09 PM','09:09 PM',NULL,NULL,'00:00:00','04:09:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75544,'2017-11-30','63','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75545,'2017-11-01','64','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75546,'2017-11-02','64','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75547,'2017-11-03','64','07:02 AM','12:03 PM','12:49 PM','04:34 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:25:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75548,'2017-11-04','64','07:38 AM','12:03 PM','12:29 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75549,'2017-11-05','64','08:36 AM','12:15 PM','','05:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75550,'2017-11-06','64','07:11 AM','12:30 PM','12:52 PM','04:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:18:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75551,'2017-11-07','64','07:23 AM','12:28 PM','12:39 PM','05:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75552,'2017-11-08','64','07:24 AM','12:00 PM','01:00 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75553,'2017-11-09','64','07:18 AM','12:40 PM','','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75554,'2017-11-10','64','07:17 AM','12:26 PM','12:27 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75555,'2017-11-11','64','08:12 AM','12:04 PM','12:41 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75556,'2017-11-12','64','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75557,'2017-11-13','64','07:24 AM','12:17 PM','','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75558,'2017-11-14','64','09:22 AM','12:09 PM','12:59 PM','04:57 PM',NULL,NULL,'01:22:00','00:00:00','00:00:00','00:02:00','00:00:00','00:00:00','1.00',1,0,0,1,0,0,0,0,NULL,'Active'),(75559,'2017-11-15','64','07:25 AM','12:13 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75560,'2017-11-16','64','08:53 AM','12:28 PM','','05:02 PM',NULL,NULL,'00:53:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75561,'2017-11-17','64','07:23 AM','12:10 PM','12:11 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75562,'2017-11-18','64','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75563,'2017-11-19','64','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75564,'2017-11-20','64','07:15 AM','12:23 PM','','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75565,'2017-11-21','64','07:35 AM','12:31 PM','12:32 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75566,'2017-11-22','64','07:26 AM','12:11 PM','12:35 PM','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75567,'2017-11-23','64','07:19 AM','12:01 PM','12:32 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75568,'2017-11-24','64','07:18 AM','12:22 PM','12:24 PM','05:25 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75569,'2017-11-25','64','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75570,'2017-11-26','64','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75571,'2017-11-27','64','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75572,'2017-11-28','64','07:16 AM','12:11 PM','12:20 PM','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75573,'2017-11-29','64','07:40 AM','12:41 PM','12:44 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75574,'2017-11-30','64','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75575,'2017-11-01','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75576,'2017-11-02','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75577,'2017-11-03','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75578,'2017-11-04','65','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75579,'2017-11-05','65','07:57 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75580,'2017-11-06','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75581,'2017-11-07','65','','12:06 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75582,'2017-11-08','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75583,'2017-11-09','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75584,'2017-11-10','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75585,'2017-11-11','65','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75586,'2017-11-12','65','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75587,'2017-11-13','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75588,'2017-11-14','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75589,'2017-11-15','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75590,'2017-11-16','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75591,'2017-11-17','65','08:36 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75592,'2017-11-18','65','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75593,'2017-11-19','65','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75594,'2017-11-20','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75595,'2017-11-21','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75596,'2017-11-22','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75597,'2017-11-23','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75598,'2017-11-24','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75599,'2017-11-25','65','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75600,'2017-11-26','65','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75601,'2017-11-27','65','','','11:59 AM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75602,'2017-11-28','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75603,'2017-11-29','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75604,'2017-11-30','65','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75605,'2017-11-01','66','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75606,'2017-11-02','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75607,'2017-11-03','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75608,'2017-11-04','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75609,'2017-11-05','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75610,'2017-11-06','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75611,'2017-11-07','66','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75612,'2017-11-08','66','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75613,'2017-11-09','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75614,'2017-11-10','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75615,'2017-11-11','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75616,'2017-11-12','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75617,'2017-11-13','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75618,'2017-11-14','66','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75619,'2017-11-15','66','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75620,'2017-11-16','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75621,'2017-11-17','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75622,'2017-11-18','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75623,'2017-11-19','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75624,'2017-11-20','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75625,'2017-11-21','66','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75626,'2017-11-22','66','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75627,'2017-11-23','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75628,'2017-11-24','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75629,'2017-11-25','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75630,'2017-11-26','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75631,'2017-11-27','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75632,'2017-11-28','66','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75633,'2017-11-29','66','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75634,'2017-11-30','66','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75635,'2017-11-01','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75636,'2017-11-02','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75637,'2017-11-03','67','','','','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75638,'2017-11-04','67','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75639,'2017-11-05','67','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75640,'2017-11-06','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75641,'2017-11-07','67','07:40 AM','12:00 PM','','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75642,'2017-11-08','67','07:13 AM','12:03 PM','12:03 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75643,'2017-11-09','67','07:30 AM','12:15 PM','12:15 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75644,'2017-11-10','67','07:43 AM','12:05 PM','12:05 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75645,'2017-11-11','67','07:35 AM','12:52 PM','12:52 PM','05:44 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75646,'2017-11-12','67','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75647,'2017-11-13','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75648,'2017-11-14','67','','','','05:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75649,'2017-11-15','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75650,'2017-11-16','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75651,'2017-11-17','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75652,'2017-11-18','67','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75653,'2017-11-19','67','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75654,'2017-11-20','67','07:51 AM','12:04 PM','12:04 PM','08:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75655,'2017-11-21','67','','12:01 PM','12:02 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75656,'2017-11-22','67','07:28 AM','12:04 PM','12:05 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75657,'2017-11-23','67','07:52 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75658,'2017-11-24','67','','12:04 PM','12:04 PM','04:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75659,'2017-11-25','67','07:24 AM','12:00 PM','12:00 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75660,'2017-11-26','67','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75661,'2017-11-27','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75662,'2017-11-28','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75663,'2017-11-29','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75664,'2017-11-30','67','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75665,'2017-11-01','68','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75666,'2017-11-02','68','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75667,'2017-11-03','68','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75668,'2017-11-04','68','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75669,'2017-11-05','68','07:23 AM','12:02 PM','01:02 PM','',NULL,NULL,'00:00:00','00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(75670,'2017-11-06','68','07:24 AM','12:01 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75671,'2017-11-07','68','07:23 AM','12:02 PM','12:02 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75672,'2017-11-08','68','07:25 AM','12:03 PM','12:53 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75673,'2017-11-09','68','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75674,'2017-11-10','68','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75675,'2017-11-11','68','07:24 AM','12:12 PM','12:12 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75676,'2017-11-12','68','07:22 AM','04:28 PM','12:53 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75677,'2017-11-13','68','07:24 AM','12:06 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75678,'2017-11-14','68','07:29 AM','12:02 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75679,'2017-11-15','68','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75680,'2017-11-16','68','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75681,'2017-11-17','68','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75682,'2017-11-18','68','07:22 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75683,'2017-11-19','68','07:25 AM','12:49 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75684,'2017-11-20','68','','12:02 PM','12:46 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75685,'2017-11-21','68','07:28 AM','','12:20 PM','04:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75686,'2017-11-22','68','07:16 AM','12:03 PM','12:05 PM','04:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75687,'2017-11-23','68','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75688,'2017-11-24','68','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75689,'2017-11-25','68','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75690,'2017-11-26','68','','','12:52 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75691,'2017-11-27','68','07:29 AM','11:59 AM','11:59 AM','04:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:01:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75692,'2017-11-28','68','07:19 AM','12:01 PM','12:02 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75693,'2017-11-29','68','','11:59 AM','12:00 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75694,'2017-11-30','68','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75695,'2018-03-15','1','06:54 AM','12:16 PM','12:20 PM','06:57 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75696,'2018-03-16','1','07:03 AM','12:31 PM','12:38 PM','07:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75697,'2018-03-17','1','06:56 AM','12:25 PM','12:25 PM','05:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75698,'2018-03-18','1','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75699,'2018-03-19','1','06:50 AM','12:13 PM','12:43 PM','05:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75700,'2018-03-20','1','06:49 AM','12:08 PM','12:41 PM','06:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75701,'2018-03-21','1','06:50 AM','12:05 PM','12:08 PM','06:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75702,'2018-03-22','1','07:02 AM','12:17 PM','12:23 PM','07:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75703,'2018-03-23','1','06:52 AM','12:32 PM','12:39 PM','05:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75704,'2018-03-24','1','06:49 AM','12:06 PM','12:59 PM','05:28 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75705,'2018-03-25','1','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75706,'2018-03-26','1','06:57 AM','12:04 PM','12:37 PM','06:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75707,'2018-03-27','1','06:42 AM','12:06 PM','12:10 PM','06:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75708,'2018-03-28','1','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75709,'2018-03-29','1','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75710,'2018-03-30','1','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75711,'2018-03-31','1','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75712,'2018-03-15','10','08:00 AM','12:20 PM','12:21 PM','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75713,'2018-03-16','10','07:52 AM','12:09 PM','12:09 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75714,'2018-03-17','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75715,'2018-03-18','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75716,'2018-03-19','10','07:15 AM','12:07 PM','12:09 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75717,'2018-03-20','10','07:39 AM','12:04 PM','12:05 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75718,'2018-03-21','10','07:50 AM','12:02 PM','12:03 PM','05:23 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75719,'2018-03-22','10','07:52 AM','12:08 PM','12:09 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75720,'2018-03-23','10','07:49 AM','12:15 PM','12:16 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75721,'2018-03-24','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75722,'2018-03-25','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75723,'2018-03-26','10','07:21 AM','12:10 PM','12:11 PM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75724,'2018-03-27','10','07:51 AM','12:10 PM','12:11 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75725,'2018-03-28','10','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75726,'2018-03-29','10','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75727,'2018-03-30','10','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75728,'2018-03-31','10','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75729,'2018-03-15','102','07:23 AM','','','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75730,'2018-03-16','102','07:22 AM','12:09 PM','12:11 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75731,'2018-03-17','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75732,'2018-03-18','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75733,'2018-03-19','102','07:23 AM','12:24 PM','12:25 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75734,'2018-03-20','102','07:25 AM','12:12 PM','12:48 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75735,'2018-03-21','102','07:23 AM','12:17 PM','12:19 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75736,'2018-03-22','102','07:21 AM','12:06 PM','12:08 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75737,'2018-03-23','102','07:23 AM','12:03 PM','12:05 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75738,'2018-03-24','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75739,'2018-03-25','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75740,'2018-03-26','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75741,'2018-03-27','102','07:23 AM','12:14 PM','12:16 PM','05:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75742,'2018-03-28','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75743,'2018-03-29','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75744,'2018-03-30','102','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75745,'2018-03-31','102','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75746,'2018-03-15','103','07:23 AM','','','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75747,'2018-03-16','103','07:36 AM','11:21 AM','11:22 AM','04:30 PM',NULL,NULL,'00:06:00','00:00:00','00:38:00','00:00:00','00:00:00','00:00:00','1.00',1,0,1,0,0,0,0,0,NULL,'Active'),(75748,'2018-03-17','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75749,'2018-03-18','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75750,'2018-03-19','103','07:23 AM','12:02 PM','12:03 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75751,'2018-03-20','103','07:20 AM','12:15 PM','12:16 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75752,'2018-03-21','103','07:23 AM','12:10 PM','12:11 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75753,'2018-03-22','103','07:21 AM','12:05 PM','12:06 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75754,'2018-03-23','103','07:30 AM','11:17 AM','11:18 AM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:42:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(75755,'2018-03-24','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75756,'2018-03-25','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75757,'2018-03-26','103','07:24 AM','12:13 PM','12:14 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75758,'2018-03-27','103','07:30 AM','12:21 PM','12:22 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75759,'2018-03-28','103','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75760,'2018-03-29','103','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75761,'2018-03-30','103','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75762,'2018-03-31','103','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75763,'2018-03-15','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75764,'2018-03-16','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75765,'2018-03-17','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75766,'2018-03-18','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75767,'2018-03-19','104','07:23 AM','11:42 AM','11:42 AM','04:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75768,'2018-03-20','104','07:26 AM','11:43 AM','11:44 AM','04:43 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75769,'2018-03-21','104','07:25 AM','11:56 AM','11:58 AM','04:41 PM',NULL,NULL,'00:00:00','00:00:00','00:03:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(75770,'2018-03-22','104','07:21 AM','12:12 PM','12:14 PM','04:46 PM',NULL,NULL,'00:00:00','00:14:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75771,'2018-03-23','104','07:30 AM','11:15 AM','11:17 AM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75772,'2018-03-24','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75773,'2018-03-25','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75774,'2018-03-26','104','07:33 AM','11:28 AM','11:29 AM','04:53 PM',NULL,NULL,'00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75775,'2018-03-27','104','07:22 AM','11:06 AM','11:07 AM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:03:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(75776,'2018-03-28','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75777,'2018-03-29','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75778,'2018-03-30','104','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75779,'2018-03-31','104','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75780,'2018-03-15','11','07:51 AM','11:15 AM','11:16 AM','05:31 PM',NULL,NULL,'00:21:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75781,'2018-03-16','11','07:52 AM','12:04 PM','12:06 PM','05:43 PM',NULL,NULL,'00:22:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75782,'2018-03-17','11','08:43 AM','12:07 PM','12:08 PM','04:24 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75783,'2018-03-18','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75784,'2018-03-19','11','07:25 AM','12:05 PM','12:06 PM','04:46 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75785,'2018-03-20','11','07:51 AM','12:06 PM','12:07 PM','05:21 PM',NULL,NULL,'00:21:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75786,'2018-03-21','11','07:52 AM','12:14 PM','12:15 PM','05:35 PM',NULL,NULL,'00:22:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75787,'2018-03-22','11','07:43 AM','11:34 AM','11:35 AM','05:34 PM',NULL,NULL,'00:13:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75788,'2018-03-23','11','07:50 AM','12:13 PM','12:14 PM','05:01 PM',NULL,NULL,'00:20:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(75789,'2018-03-24','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75790,'2018-03-25','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75791,'2018-03-26','11','07:29 AM','12:03 PM','12:04 PM','04:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75792,'2018-03-27','11','07:37 AM','12:10 PM','12:11 PM','05:08 PM',NULL,NULL,'00:07:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75793,'2018-03-28','11','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75794,'2018-03-29','11','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75795,'2018-03-30','11','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75796,'2018-03-31','11','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75797,'2018-03-15','13','07:30 AM','12:26 PM','12:27 PM','05:54 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75798,'2018-03-16','13','07:11 AM','12:41 PM','12:42 PM','06:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75799,'2018-03-17','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75800,'2018-03-18','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75801,'2018-03-19','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75802,'2018-03-20','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75803,'2018-03-21','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75804,'2018-03-22','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75805,'2018-03-23','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75806,'2018-03-24','13','08:59 AM','10:28 AM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75807,'2018-03-25','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75808,'2018-03-26','13','07:27 AM','12:49 PM','12:50 PM','05:56 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75809,'2018-03-27','13','06:46 AM','12:57 PM','12:58 PM','04:34 PM',NULL,NULL,'00:00:00','00:08:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75810,'2018-03-28','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75811,'2018-03-29','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75812,'2018-03-30','13','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75813,'2018-03-31','13','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75814,'2018-03-15','14','07:20 AM','12:30 PM','12:31 PM','05:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75815,'2018-03-16','14','07:22 AM','12:44 PM','12:46 PM','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75816,'2018-03-17','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75817,'2018-03-18','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75818,'2018-03-19','14','07:30 AM','12:24 PM','12:26 PM','05:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75819,'2018-03-20','14','07:29 AM','12:49 PM','12:50 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75820,'2018-03-21','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75821,'2018-03-22','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75822,'2018-03-23','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75823,'2018-03-24','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75824,'2018-03-25','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75825,'2018-03-26','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75826,'2018-03-27','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75827,'2018-03-28','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75828,'2018-03-29','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75829,'2018-03-30','14','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75830,'2018-03-31','14','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75831,'2018-03-15','15','07:46 AM','12:29 PM','12:30 PM','06:15 PM',NULL,NULL,'00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75832,'2018-03-16','15','07:45 AM','12:56 PM','12:57 PM','05:12 PM',NULL,NULL,'00:15:00','00:07:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(75833,'2018-03-17','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75834,'2018-03-18','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75835,'2018-03-19','15','08:00 AM','12:46 PM','12:47 PM','07:30 PM',NULL,NULL,'00:30:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75836,'2018-03-20','15','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75837,'2018-03-21','15','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75838,'2018-03-22','15','07:50 AM','12:32 PM','12:33 PM','05:28 PM',NULL,NULL,'00:20:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75839,'2018-03-23','15','08:24 AM','12:02 PM','12:03 PM','03:35 PM',NULL,NULL,'00:54:00','00:00:00','00:00:00','00:54:00','00:00:00','00:00:00','1.00',1,0,0,1,0,0,0,0,NULL,'Active'),(75840,'2018-03-24','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75841,'2018-03-25','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75842,'2018-03-26','15','07:34 AM','12:32 PM','12:32 PM','05:04 PM',NULL,NULL,'00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75843,'2018-03-27','15','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75844,'2018-03-28','15','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75845,'2018-03-29','15','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75846,'2018-03-30','15','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75847,'2018-03-31','15','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75848,'2018-03-15','16','04:48 AM','','03:51 PM','10:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75849,'2018-03-16','16','04:47 AM','08:13 AM','12:55 PM','06:46 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75850,'2018-03-17','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75851,'2018-03-18','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75852,'2018-03-19','16','04:34 AM','08:02 AM','','09:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75853,'2018-03-20','16','04:48 AM','10:06 AM','03:46 PM','09:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75854,'2018-03-21','16','04:42 AM','08:59 AM','03:59 PM','09:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75855,'2018-03-22','16','04:37 AM','08:36 AM','03:37 PM','10:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75856,'2018-03-23','16','04:44 AM','09:14 AM','12:57 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75857,'2018-03-24','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75858,'2018-03-25','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75859,'2018-03-26','16','04:43 AM','08:01 AM','04:02 PM','10:09 PM',NULL,NULL,'00:00:00','00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75860,'2018-03-27','16','04:57 AM','09:04 AM','03:54 PM','11:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75861,'2018-03-28','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75862,'2018-03-29','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75863,'2018-03-30','16','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75864,'2018-03-31','16','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75865,'2018-03-15','17','07:44 AM','12:12 PM','12:13 PM','',NULL,NULL,'00:14:00','00:13:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',1,1,0,0,0,0,0,0,NULL,'Active'),(75866,'2018-03-16','17','07:58 AM','12:12 PM','','06:57 PM',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75867,'2018-03-17','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75868,'2018-03-18','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75869,'2018-03-19','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75870,'2018-03-20','17','07:26 AM','12:34 PM','12:35 PM','06:24 PM',NULL,NULL,'00:00:00','00:35:00','10:35:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(75871,'2018-03-21','17','07:18 AM','12:39 PM','12:40 PM','05:04 PM',NULL,NULL,'00:00:00','00:40:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75872,'2018-03-22','17','06:35 AM','','','07:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75873,'2018-03-23','17','06:21 AM','12:14 PM','12:15 PM','05:26 PM',NULL,NULL,'00:00:00','00:15:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75874,'2018-03-24','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75875,'2018-03-25','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75876,'2018-03-26','17','07:27 AM','12:04 PM','12:04 PM','05:00 PM',NULL,NULL,'00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75877,'2018-03-27','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75878,'2018-03-28','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75879,'2018-03-29','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75880,'2018-03-30','17','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75881,'2018-03-31','17','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75882,'2018-03-15','18','07:23 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75883,'2018-03-16','18','07:31 AM','11:19 AM','11:21 AM','05:01 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75884,'2018-03-17','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75885,'2018-03-18','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75886,'2018-03-19','18','07:22 AM','12:06 PM','12:08 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75887,'2018-03-20','18','07:23 AM','11:18 AM','11:20 AM','04:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75888,'2018-03-21','18','07:35 AM','12:04 PM','12:06 PM','04:40 PM',NULL,NULL,'00:05:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75889,'2018-03-22','18','07:31 AM','12:09 PM','12:10 PM','04:42 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75890,'2018-03-23','18','08:59 AM','11:26 AM','11:30 AM','03:32 PM',NULL,NULL,'01:29:00','00:00:00','00:00:00','00:57:00','00:00:00','00:00:00','1.00',1,0,0,1,0,0,0,0,NULL,'Active'),(75891,'2018-03-24','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75892,'2018-03-25','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75893,'2018-03-26','18','07:16 AM','12:00 PM','12:01 PM','04:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75894,'2018-03-27','18','07:22 AM','11:17 AM','11:19 AM','04:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75895,'2018-03-28','18','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75896,'2018-03-29','18','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75897,'2018-03-30','18','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75898,'2018-03-31','18','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75899,'2018-03-15','19','07:44 AM','12:16 PM','12:17 PM','05:07 PM',NULL,NULL,'00:14:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75900,'2018-03-16','19','07:25 AM','11:30 AM','11:32 AM','05:20 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75901,'2018-03-17','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75902,'2018-03-18','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75903,'2018-03-19','19','07:30 AM','12:53 PM','12:54 PM','05:20 PM',NULL,NULL,'00:00:00','00:54:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75904,'2018-03-20','19','07:35 AM','09:32 AM','','',NULL,NULL,'00:05:00','00:00:00','01:37:00','00:00:00','00:00:00','00:00:00','0.50',1,0,1,0,0,0,0,0,NULL,'Active'),(75905,'2018-03-21','19','07:31 AM','11:54 AM','11:55 AM','05:07 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75906,'2018-03-22','19','07:23 AM','12:07 PM','12:08 PM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75907,'2018-03-23','19','07:27 AM','11:29 AM','11:30 AM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75908,'2018-03-24','19','07:31 AM','12:24 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(75909,'2018-03-25','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75910,'2018-03-26','19','07:33 AM','12:27 PM','12:28 PM','05:13 PM',NULL,NULL,'00:03:00','00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(75911,'2018-03-27','19','07:29 AM','11:28 AM','11:29 AM','03:52 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:37:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(75912,'2018-03-28','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75913,'2018-03-29','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75914,'2018-03-30','19','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75915,'2018-03-31','19','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75916,'2018-03-15','2','07:23 AM','11:20 AM','11:22 AM','06:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75917,'2018-03-16','2','07:23 AM','','','05:49 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75918,'2018-03-17','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75919,'2018-03-18','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75920,'2018-03-19','2','07:23 AM','11:06 AM','11:06 AM','05:34 PM',NULL,NULL,'00:00:00','00:00:00','00:03:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(75921,'2018-03-20','2','07:25 AM','11:30 AM','11:30 AM','05:52 PM',NULL,NULL,'00:00:00','00:00:00','11:39:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(75922,'2018-03-21','2','07:23 AM','','','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75923,'2018-03-22','2','07:26 AM','11:20 AM','11:20 AM','06:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75924,'2018-03-23','2','07:24 AM','12:28 PM','12:28 PM','05:40 PM',NULL,NULL,'00:00:00','00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75925,'2018-03-24','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75926,'2018-03-25','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75927,'2018-03-26','2','07:24 AM','11:04 AM','11:04 AM','05:49 PM',NULL,NULL,'00:00:00','00:00:00','00:05:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(75928,'2018-03-27','2','07:23 AM','11:03 AM','11:04 AM','04:55 PM',NULL,NULL,'00:00:00','00:00:00','12:06:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(75929,'2018-03-28','2','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75930,'2018-03-29','2','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75931,'2018-03-30','2','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75932,'2018-03-31','2','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75933,'2018-03-15','20','07:54 AM','12:50 PM','12:51 PM','06:13 PM',NULL,NULL,'00:24:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75934,'2018-03-16','20','07:42 AM','','','05:11 PM',NULL,NULL,'00:12:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75935,'2018-03-17','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75936,'2018-03-18','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75937,'2018-03-19','20','07:28 AM','12:32 PM','','06:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75938,'2018-03-20','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75939,'2018-03-21','20','07:47 AM','12:47 PM','12:51 PM','05:43 PM',NULL,NULL,'00:17:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75940,'2018-03-22','20','07:51 AM','12:09 PM','12:09 PM','06:13 PM',NULL,NULL,'00:21:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75941,'2018-03-23','20','07:54 AM','12:54 PM','12:54 PM','05:40 PM',NULL,NULL,'00:24:00','00:54:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(75942,'2018-03-24','20','07:49 AM','12:12 PM','12:13 PM','03:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75943,'2018-03-25','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75944,'2018-03-26','20','07:24 AM','12:19 PM','12:20 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75945,'2018-03-27','20','07:48 AM','12:29 PM','12:29 PM','04:32 PM',NULL,NULL,'00:18:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75946,'2018-03-28','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75947,'2018-03-29','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75948,'2018-03-30','20','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75949,'2018-03-31','20','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75950,'2018-03-15','21','07:56 AM','12:32 PM','12:32 PM','05:14 PM',NULL,NULL,'00:26:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75951,'2018-03-16','21','07:55 AM','12:22 PM','12:22 PM','06:07 PM',NULL,NULL,'00:25:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75952,'2018-03-17','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75953,'2018-03-18','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75954,'2018-03-19','21','07:23 AM','12:32 PM','12:32 PM','05:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75955,'2018-03-20','21','07:58 AM','12:23 PM','12:23 PM','05:18 PM',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75956,'2018-03-21','21','','','12:44 PM','05:52 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75957,'2018-03-22','21','07:55 AM','12:33 PM','12:33 PM','05:20 PM',NULL,NULL,'00:25:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75958,'2018-03-23','21','07:48 AM','12:54 PM','12:54 PM','05:44 PM',NULL,NULL,'00:18:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(75959,'2018-03-24','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75960,'2018-03-25','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75961,'2018-03-26','21','07:29 AM','12:01 PM','12:01 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75962,'2018-03-27','21','08:07 AM','12:18 PM','12:18 PM','05:02 PM',NULL,NULL,'00:37:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(75963,'2018-03-28','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75964,'2018-03-29','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75965,'2018-03-30','21','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75966,'2018-03-31','21','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75967,'2018-03-15','22','06:52 AM','12:02 PM','06:50 PM','10:17 PM',NULL,NULL,'00:00:00','05:50:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75968,'2018-03-16','22','06:49 AM','09:18 AM','02:29 PM','09:25 PM',NULL,NULL,'00:00:00','01:29:00','02:41:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(75969,'2018-03-17','22','05:56 AM','07:45 AM','04:12 PM','11:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75970,'2018-03-18','22','06:00 AM','07:55 AM','04:32 PM','11:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75971,'2018-03-19','22','06:59 AM','08:03 AM','03:55 PM','11:05 PM',NULL,NULL,'00:00:00','02:55:00','03:56:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(75972,'2018-03-20','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75973,'2018-03-21','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75974,'2018-03-22','22','06:50 AM','12:01 PM','06:54 PM','10:29 PM',NULL,NULL,'00:00:00','05:54:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75975,'2018-03-23','22','06:47 AM','09:24 AM','02:50 PM','10:08 PM',NULL,NULL,'00:00:00','01:50:00','02:35:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(75976,'2018-03-24','22','05:45 AM','08:12 AM','04:19 PM','11:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75977,'2018-03-25','22','05:22 AM','07:45 AM','04:19 PM','11:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75978,'2018-03-26','22','06:54 AM','08:07 AM','03:46 PM','11:03 PM',NULL,NULL,'00:00:00','02:46:00','03:52:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(75979,'2018-03-27','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75980,'2018-03-28','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75981,'2018-03-29','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75982,'2018-03-30','22','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75983,'2018-03-31','22','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75984,'2018-03-15','23','07:23 AM','12:23 PM','12:24 PM','06:13 PM',NULL,NULL,'00:00:00','00:24:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75985,'2018-03-16','23','07:22 AM','12:48 PM','12:49 PM','06:09 PM',NULL,NULL,'00:00:00','00:49:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75986,'2018-03-17','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75987,'2018-03-18','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75988,'2018-03-19','23','07:15 AM','','','05:44 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75989,'2018-03-20','23','07:24 AM','11:07 AM','11:09 AM','06:28 PM',NULL,NULL,'00:00:00','00:00:00','12:02:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(75990,'2018-03-21','23','07:23 AM','12:22 PM','12:23 PM','06:27 PM',NULL,NULL,'00:00:00','00:23:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75991,'2018-03-22','23','07:16 AM','12:34 PM','12:35 PM','05:02 PM',NULL,NULL,'00:00:00','00:35:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75992,'2018-03-23','23','07:23 AM','12:43 PM','12:44 PM','05:48 PM',NULL,NULL,'00:00:00','00:44:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75993,'2018-03-24','23','10:31 AM','12:42 PM','12:43 PM','05:24 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75994,'2018-03-25','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75995,'2018-03-26','23','07:24 AM','12:28 PM','12:29 PM','04:52 PM',NULL,NULL,'00:00:00','00:29:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(75996,'2018-03-27','23','07:22 AM','12:32 PM','12:34 PM','05:01 PM',NULL,NULL,'00:00:00','00:34:00','10:37:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(75997,'2018-03-28','23','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75998,'2018-03-29','23','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(75999,'2018-03-30','23','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76000,'2018-03-31','23','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76001,'2018-03-15','24','06:56 AM','12:25 PM','12:50 PM','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76002,'2018-03-16','24','07:32 AM','','','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76003,'2018-03-17','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76004,'2018-03-18','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76005,'2018-03-19','24','06:53 AM','12:02 PM','12:08 PM','06:54 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76006,'2018-03-20','24','07:00 AM','12:38 PM','12:39 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76007,'2018-03-21','24','07:23 AM','12:18 PM','12:20 PM','05:27 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76008,'2018-03-22','24','07:02 AM','12:35 PM','12:37 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76009,'2018-03-23','24','07:08 AM','12:27 PM','','05:27 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76010,'2018-03-24','24','09:15 AM','12:24 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(76011,'2018-03-25','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76012,'2018-03-26','24','07:15 AM','12:04 PM','12:22 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76013,'2018-03-27','24','07:21 AM','12:24 PM','12:55 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76014,'2018-03-28','24','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76015,'2018-03-29','24','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76016,'2018-03-30','24','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76017,'2018-03-31','24','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76018,'2018-03-15','25','07:38 AM','12:08 PM','12:09 PM','06:19 PM',NULL,NULL,'00:08:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76019,'2018-03-16','25','07:23 AM','12:48 PM','12:49 PM','04:49 PM',NULL,NULL,'00:00:00','00:49:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76020,'2018-03-17','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76021,'2018-03-18','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76022,'2018-03-19','25','07:28 AM','11:53 AM','11:54 AM','06:33 PM',NULL,NULL,'00:00:00','00:00:00','00:06:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76023,'2018-03-20','25','07:54 AM','12:19 PM','12:19 PM','06:39 PM',NULL,NULL,'00:24:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76024,'2018-03-21','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76025,'2018-03-22','25','09:51 AM','12:19 PM','12:20 PM','06:51 PM',NULL,NULL,'02:21:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,1,0,0,0,0,0,NULL,'Active'),(76026,'2018-03-23','25','07:27 AM','12:43 PM','12:44 PM','04:36 PM',NULL,NULL,'00:00:00','00:44:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76027,'2018-03-24','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76028,'2018-03-25','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76029,'2018-03-26','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76030,'2018-03-27','25','11:36 AM','12:32 PM','','05:01 PM',NULL,NULL,'04:06:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76031,'2018-03-28','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76032,'2018-03-29','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76033,'2018-03-30','25','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76034,'2018-03-31','25','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76035,'2018-03-15','26','09:08 AM','12:30 PM','12:30 PM','04:37 PM',NULL,NULL,'01:38:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76036,'2018-03-16','26','07:32 AM','12:23 PM','12:23 PM','05:49 PM',NULL,NULL,'00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76037,'2018-03-17','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76038,'2018-03-18','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76039,'2018-03-19','26','07:27 AM','12:24 PM','12:25 PM','04:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76040,'2018-03-20','26','07:11 AM','12:15 PM','12:15 PM','01:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','03:29:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76041,'2018-03-21','26','07:17 AM','12:08 PM','12:08 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76042,'2018-03-22','26','07:29 AM','12:12 PM','12:13 PM','04:35 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76043,'2018-03-23','26','07:24 AM','12:02 PM','12:03 PM','05:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76044,'2018-03-24','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76045,'2018-03-25','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76046,'2018-03-26','26','10:18 AM','12:13 PM','12:13 PM','04:35 PM',NULL,NULL,'02:48:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,1,0,0,0,0,NULL,'Active'),(76047,'2018-03-27','26','07:20 AM','12:04 PM','12:04 PM','04:43 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76048,'2018-03-28','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76049,'2018-03-29','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76050,'2018-03-30','26','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76051,'2018-03-31','26','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76052,'2018-03-15','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76053,'2018-03-16','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76054,'2018-03-17','27','05:27 AM','12:05 PM','12:35 PM','03:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76055,'2018-03-18','27','05:23 AM','12:01 PM','12:14 PM','03:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76056,'2018-03-19','27','06:37 AM','12:34 PM','12:40 PM','04:20 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:09:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76057,'2018-03-20','27','','','02:22 PM','11:09 PM',NULL,NULL,'00:00:00','02:22:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76058,'2018-03-21','27','','','02:10 PM','11:01 PM',NULL,NULL,'00:00:00','01:10:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76059,'2018-03-22','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76060,'2018-03-23','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76061,'2018-03-24','27','05:24 AM','12:02 PM','12:11 PM','03:35 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76062,'2018-03-25','27','05:24 AM','12:10 PM','12:23 PM','03:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76063,'2018-03-26','27','06:39 AM','12:18 PM','12:24 PM','04:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:23:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76064,'2018-03-27','27','','','02:39 PM','11:01 PM',NULL,NULL,'00:00:00','02:39:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76065,'2018-03-28','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76066,'2018-03-29','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76067,'2018-03-30','27','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76068,'2018-03-31','27','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76069,'2018-03-15','28','07:29 AM','12:04 PM','12:13 PM','06:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76070,'2018-03-16','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76071,'2018-03-17','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76072,'2018-03-18','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76073,'2018-03-19','28','07:22 AM','12:06 PM','12:10 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76074,'2018-03-20','28','07:23 AM','12:14 PM','12:18 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76075,'2018-03-21','28','07:29 AM','','','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76076,'2018-03-22','28','07:27 AM','12:12 PM','12:17 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76077,'2018-03-23','28','07:31 AM','12:13 PM','12:22 PM','05:46 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76078,'2018-03-24','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76079,'2018-03-25','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76080,'2018-03-26','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76081,'2018-03-27','28','07:36 AM','12:02 PM','12:05 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76082,'2018-03-28','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76083,'2018-03-29','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76084,'2018-03-30','28','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76085,'2018-03-31','28','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76086,'2018-03-15','3','07:24 AM','12:23 PM','12:24 PM','07:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76087,'2018-03-16','3','07:32 AM','12:48 PM','12:49 PM','06:08 PM',NULL,NULL,'00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76088,'2018-03-17','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76089,'2018-03-18','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76090,'2018-03-19','3','07:08 AM','','','07:52 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76091,'2018-03-20','3','07:13 AM','11:11 AM','11:12 AM','06:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76092,'2018-03-21','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76093,'2018-03-22','3','07:23 AM','12:03 PM','12:43 PM','04:53 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76094,'2018-03-23','3','07:28 AM','12:41 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(76095,'2018-03-24','3','09:22 AM','12:20 PM','12:22 PM','05:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76096,'2018-03-25','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76097,'2018-03-26','3','07:26 AM','12:10 PM','12:57 PM','06:49 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76098,'2018-03-27','3','08:00 AM','11:42 AM','11:44 AM','06:18 PM',NULL,NULL,'00:30:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76099,'2018-03-28','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76100,'2018-03-29','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76101,'2018-03-30','3','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76102,'2018-03-31','3','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76103,'2018-03-15','30','07:45 AM','11:20 AM','11:20 AM','05:05 PM',NULL,NULL,'00:15:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76104,'2018-03-16','30','07:59 AM','11:22 AM','11:22 AM','05:05 PM',NULL,NULL,'00:29:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76105,'2018-03-17','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76106,'2018-03-18','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76107,'2018-03-19','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76108,'2018-03-20','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76109,'2018-03-21','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76110,'2018-03-22','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76111,'2018-03-23','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76112,'2018-03-24','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76113,'2018-03-25','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76114,'2018-03-26','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76115,'2018-03-27','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76116,'2018-03-28','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76117,'2018-03-29','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76118,'2018-03-30','30','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76119,'2018-03-31','30','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76120,'2018-03-15','31','07:07 AM','11:56 AM','11:57 AM','06:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76121,'2018-03-16','31','07:24 AM','11:36 AM','11:37 AM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76122,'2018-03-17','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76123,'2018-03-18','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76124,'2018-03-19','31','07:23 AM','11:27 AM','11:27 AM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76125,'2018-03-20','31','07:25 AM','11:45 AM','11:45 AM','04:54 PM',NULL,NULL,'00:00:00','00:00:00','11:24:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76126,'2018-03-21','31','07:24 AM','11:05 AM','11:05 AM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76127,'2018-03-22','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76128,'2018-03-23','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76129,'2018-03-24','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76130,'2018-03-25','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76131,'2018-03-26','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76132,'2018-03-27','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76133,'2018-03-28','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76134,'2018-03-29','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76135,'2018-03-30','31','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76136,'2018-03-31','31','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76137,'2018-03-15','32','07:37 AM','','','06:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76138,'2018-03-16','32','07:57 AM','','','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76139,'2018-03-17','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76140,'2018-03-18','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76141,'2018-03-19','32','07:31 AM','12:18 PM','12:20 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76142,'2018-03-20','32','07:51 AM','12:05 PM','12:06 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76143,'2018-03-21','32','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76144,'2018-03-22','32','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76145,'2018-03-23','32','07:36 AM','12:34 PM','12:35 PM','06:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76146,'2018-03-24','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76147,'2018-03-25','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76148,'2018-03-26','32','07:37 AM','','12:56 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76149,'2018-03-27','32','07:47 AM','12:29 PM','12:30 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76150,'2018-03-28','32','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76151,'2018-03-29','32','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76152,'2018-03-30','32','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76153,'2018-03-31','32','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76154,'2018-03-15','33','07:45 AM','12:28 PM','06:13 PM','',NULL,NULL,'00:00:00','05:13:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,1,0,0,0,0,0,0,NULL,'Active'),(76155,'2018-03-16','33','07:23 AM','12:58 PM','12:59 PM','05:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76156,'2018-03-17','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76157,'2018-03-18','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76158,'2018-03-19','33','07:23 AM','12:47 PM','12:52 PM','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76159,'2018-03-20','33','07:25 AM','12:12 PM','12:13 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76160,'2018-03-21','33','07:24 AM','12:37 PM','12:39 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76161,'2018-03-22','33','07:26 AM','12:31 PM','12:34 PM','05:04 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76162,'2018-03-23','33','07:24 AM','12:06 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(76163,'2018-03-24','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76164,'2018-03-25','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76165,'2018-03-26','33','07:24 AM','12:01 PM','12:03 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76166,'2018-03-27','33','07:23 AM','12:36 PM','12:38 PM','05:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76167,'2018-03-28','33','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76168,'2018-03-29','33','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76169,'2018-03-30','33','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76170,'2018-03-31','33','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76171,'2018-03-15','34','07:49 AM','12:21 PM','12:21 PM','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76172,'2018-03-16','34','07:53 AM','12:44 PM','12:44 PM','04:53 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:06:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76173,'2018-03-17','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76174,'2018-03-18','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76175,'2018-03-19','34','07:50 AM','12:37 PM','12:37 PM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76176,'2018-03-20','34','','','12:55 PM','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76177,'2018-03-21','34','07:43 AM','01:04 PM','01:04 PM','05:28 PM',NULL,NULL,'00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76178,'2018-03-22','34','07:50 AM','12:10 PM','12:10 PM','06:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76179,'2018-03-23','34','07:55 AM','12:09 PM','12:09 PM','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76180,'2018-03-24','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76181,'2018-03-25','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76182,'2018-03-26','34','07:45 AM','12:53 PM','12:53 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76183,'2018-03-27','34','08:16 AM','12:31 PM','12:31 PM','05:35 PM',NULL,NULL,'00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76184,'2018-03-28','34','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76185,'2018-03-29','34','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76186,'2018-03-30','34','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76187,'2018-03-31','34','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76188,'2018-03-15','35','07:22 AM','12:01 PM','12:02 PM','04:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76189,'2018-03-16','35','07:31 AM','12:01 PM','12:03 PM','05:01 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76190,'2018-03-17','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76191,'2018-03-18','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76192,'2018-03-19','35','07:21 AM','12:06 PM','12:08 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76193,'2018-03-20','35','07:23 AM','12:15 PM','12:17 PM','04:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76194,'2018-03-21','35','07:35 AM','12:07 PM','12:43 PM','04:40 PM',NULL,NULL,'00:05:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76195,'2018-03-22','35','07:31 AM','12:05 PM','12:08 PM','04:42 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76196,'2018-03-23','35','06:25 AM','12:12 PM','12:14 PM','03:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:56:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76197,'2018-03-24','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76198,'2018-03-25','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76199,'2018-03-26','35','07:15 AM','12:00 PM','12:02 PM','04:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76200,'2018-03-27','35','07:21 AM','12:10 PM','12:12 PM','04:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76201,'2018-03-28','35','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76202,'2018-03-29','35','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76203,'2018-03-30','35','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76204,'2018-03-31','35','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76205,'2018-03-15','36','07:24 AM','12:53 PM','12:54 PM','05:09 PM',NULL,NULL,'00:00:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76206,'2018-03-16','36','07:31 AM','12:14 PM','12:15 PM','04:49 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76207,'2018-03-17','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76208,'2018-03-18','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76209,'2018-03-19','36','07:23 AM','12:32 PM','12:33 PM','04:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76210,'2018-03-20','36','07:25 AM','12:29 PM','12:35 PM','04:58 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76211,'2018-03-21','36','07:24 AM','12:02 PM','12:03 PM','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(76212,'2018-03-22','36','07:21 AM','12:31 PM','12:32 PM','04:51 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76213,'2018-03-23','36','07:30 AM','12:11 PM','12:12 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76214,'2018-03-24','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76215,'2018-03-25','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76216,'2018-03-26','36','07:33 AM','12:32 PM','12:33 PM','05:12 PM',NULL,NULL,'00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76217,'2018-03-27','36','07:22 AM','12:22 PM','12:23 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76218,'2018-03-28','36','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76219,'2018-03-29','36','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76220,'2018-03-30','36','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76221,'2018-03-31','36','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76222,'2018-03-15','37','08:14 AM','12:32 PM','12:34 PM','06:13 PM',NULL,NULL,'00:44:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76223,'2018-03-16','37','07:58 AM','','','05:48 PM',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76224,'2018-03-17','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76225,'2018-03-18','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76226,'2018-03-19','37','07:40 AM','12:10 PM','12:13 PM','05:34 PM',NULL,NULL,'00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76227,'2018-03-20','37','08:00 AM','','','05:53 PM',NULL,NULL,'00:30:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76228,'2018-03-21','37','07:58 AM','12:06 PM','','05:21 PM',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76229,'2018-03-22','37','08:04 AM','12:05 PM','12:07 PM','06:13 PM',NULL,NULL,'00:34:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76230,'2018-03-23','37','07:39 AM','12:23 PM','12:25 PM','05:43 PM',NULL,NULL,'00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76231,'2018-03-24','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76232,'2018-03-25','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76233,'2018-03-26','37','07:45 AM','12:19 PM','12:20 PM','05:47 PM',NULL,NULL,'00:15:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76234,'2018-03-27','37','07:57 AM','12:08 PM','12:09 PM','06:11 PM',NULL,NULL,'00:27:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76235,'2018-03-28','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76236,'2018-03-29','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76237,'2018-03-30','37','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76238,'2018-03-31','37','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76239,'2018-03-15','38','07:23 AM','','','04:36 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:23:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76240,'2018-03-16','38','07:23 AM','','','04:34 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:25:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76241,'2018-03-17','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76242,'2018-03-18','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76243,'2018-03-19','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76244,'2018-03-20','38','07:25 AM','12:12 PM','12:13 PM','04:33 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:26:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76245,'2018-03-21','38','07:24 AM','','','04:38 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:21:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76246,'2018-03-22','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76247,'2018-03-23','38','07:24 AM','12:18 PM','12:18 PM','04:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:19:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76248,'2018-03-24','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76249,'2018-03-25','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76250,'2018-03-26','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76251,'2018-03-27','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76252,'2018-03-28','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76253,'2018-03-29','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76254,'2018-03-30','38','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76255,'2018-03-31','38','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76256,'2018-03-15','39','06:15 AM','','','04:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:54:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76257,'2018-03-16','39','06:16 AM','','','03:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','01:04:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76258,'2018-03-17','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76259,'2018-03-18','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76260,'2018-03-19','39','06:30 AM','12:00 PM','12:03 PM','03:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','01:27:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76261,'2018-03-20','39','06:22 AM','12:24 PM','12:25 PM','04:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:50:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76262,'2018-03-21','39','06:17 AM','12:02 PM','12:09 PM','03:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','01:28:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76263,'2018-03-22','39','06:04 AM','','','06:46 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76264,'2018-03-23','39','06:23 AM','12:17 PM','12:22 PM','06:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76265,'2018-03-24','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76266,'2018-03-25','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76267,'2018-03-26','39','','12:01 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(76268,'2018-03-27','39','06:27 AM','12:25 PM','04:00 PM','04:00 PM',NULL,NULL,'00:00:00','03:00:00','00:00:00','00:59:00','00:00:00','00:00:00','1.00',0,1,0,1,0,0,0,0,NULL,'Active'),(76269,'2018-03-28','39','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76270,'2018-03-29','39','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76271,'2018-03-30','39','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76272,'2018-03-31','39','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76273,'2018-03-15','4','07:16 AM','12:04 PM','12:04 PM','04:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76274,'2018-03-16','4','07:09 AM','12:21 PM','12:21 PM','04:41 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76275,'2018-03-17','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76276,'2018-03-18','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76277,'2018-03-19','4','07:09 AM','12:35 PM','12:35 PM','04:34 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76278,'2018-03-20','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76279,'2018-03-21','4','06:55 AM','12:11 PM','12:11 PM','04:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76280,'2018-03-22','4','07:02 AM','12:00 PM','12:00 PM','04:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76281,'2018-03-23','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76282,'2018-03-24','4','07:21 AM','12:07 PM','12:07 PM','12:49 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76283,'2018-03-25','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76284,'2018-03-26','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76285,'2018-03-27','4','06:44 AM','12:19 PM','12:20 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76286,'2018-03-28','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76287,'2018-03-29','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76288,'2018-03-30','4','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76289,'2018-03-31','4','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76290,'2018-03-15','40','07:32 AM','12:13 PM','12:16 PM','05:04 PM',NULL,NULL,'00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76291,'2018-03-16','40','07:31 AM','12:14 PM','12:15 PM','05:09 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76292,'2018-03-17','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76293,'2018-03-18','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76294,'2018-03-19','40','07:28 AM','12:00 PM','12:01 PM','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76295,'2018-03-20','40','07:20 AM','12:54 PM','12:55 PM','05:51 PM',NULL,NULL,'00:00:00','00:05:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76296,'2018-03-21','40','','','12:51 PM','04:44 PM',NULL,NULL,'00:00:00','00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76297,'2018-03-22','40','07:13 AM','12:07 PM','12:08 PM','06:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76298,'2018-03-23','40','07:16 AM','12:32 PM','12:33 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76299,'2018-03-24','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76300,'2018-03-25','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76301,'2018-03-26','40','07:45 AM','12:11 PM','12:12 PM','05:50 PM',NULL,NULL,'00:15:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76302,'2018-03-27','40','08:11 AM','12:18 PM','12:19 PM','05:48 PM',NULL,NULL,'00:41:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76303,'2018-03-28','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76304,'2018-03-29','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76305,'2018-03-30','40','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76306,'2018-03-31','40','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76307,'2018-03-15','41','08:00 AM','12:00 PM','12:01 PM','05:40 PM',NULL,NULL,'00:30:00','00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76308,'2018-03-16','41','08:04 AM','12:58 PM','12:59 PM','05:09 PM',NULL,NULL,'00:34:00','00:59:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76309,'2018-03-17','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76310,'2018-03-18','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76311,'2018-03-19','41','08:02 AM','12:09 PM','01:01 PM','05:02 PM',NULL,NULL,'00:32:00','01:01:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,1,0,0,0,0,0,NULL,'Active'),(76312,'2018-03-20','41','08:06 AM','12:10 PM','01:05 PM','05:04 PM',NULL,NULL,'00:36:00','01:05:00','10:59:00','00:00:00','00:00:00','00:00:00','1.00',1,1,1,0,0,0,0,0,NULL,'Active'),(76313,'2018-03-21','41','07:56 AM','12:01 PM','01:01 PM','05:03 PM',NULL,NULL,'00:26:00','01:01:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76314,'2018-03-22','41','08:05 AM','12:11 PM','12:39 PM','05:18 PM',NULL,NULL,'00:35:00','00:39:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76315,'2018-03-23','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76316,'2018-03-24','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76317,'2018-03-25','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76318,'2018-03-26','41','07:33 AM','12:00 PM','12:53 PM','05:11 PM',NULL,NULL,'00:03:00','00:53:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76319,'2018-03-27','41','07:29 AM','12:00 PM','12:50 PM','05:12 PM',NULL,NULL,'00:00:00','00:50:00','11:09:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(76320,'2018-03-28','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76321,'2018-03-29','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76322,'2018-03-30','41','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76323,'2018-03-31','41','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76324,'2018-03-15','42','06:47 AM','11:12 AM','11:18 AM','06:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76325,'2018-03-16','42','06:47 AM','11:12 AM','11:19 AM','05:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76326,'2018-03-17','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76327,'2018-03-18','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76328,'2018-03-19','42','06:48 AM','11:16 AM','11:18 AM','05:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76329,'2018-03-20','42','06:43 AM','11:07 AM','11:12 AM','06:24 PM',NULL,NULL,'00:00:00','00:00:00','12:02:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76330,'2018-03-21','42','06:44 AM','11:07 AM','11:21 AM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:02:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76331,'2018-03-22','42','06:25 AM','11:18 AM','11:21 AM','07:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76332,'2018-03-23','42','06:40 AM','11:06 AM','11:16 AM','05:56 PM',NULL,NULL,'00:00:00','00:00:00','00:03:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76333,'2018-03-24','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76334,'2018-03-25','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76335,'2018-03-26','42','06:49 AM','11:26 AM','11:27 AM','04:52 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76336,'2018-03-27','42','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76337,'2018-03-28','42','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76338,'2018-03-29','42','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76339,'2018-03-30','42','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76340,'2018-03-31','42','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76341,'2018-03-15','43','','','12:42 PM','04:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76342,'2018-03-16','43','07:31 AM','12:36 PM','12:37 PM','05:06 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76343,'2018-03-17','43','08:42 AM','12:06 PM','12:07 PM','04:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76344,'2018-03-18','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76345,'2018-03-19','43','07:25 AM','12:03 PM','12:04 PM','05:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76346,'2018-03-20','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76347,'2018-03-21','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76348,'2018-03-22','43','07:23 AM','12:00 PM','12:59 PM','04:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76349,'2018-03-23','43','08:18 AM','12:18 PM','12:21 PM','05:42 PM',NULL,NULL,'00:48:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76350,'2018-03-24','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76351,'2018-03-25','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76352,'2018-03-26','43','','12:50 PM','12:55 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76353,'2018-03-27','43','07:21 AM','12:00 PM','12:31 PM','04:48 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76354,'2018-03-28','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76355,'2018-03-29','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76356,'2018-03-30','43','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76357,'2018-03-31','43','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76358,'2018-03-15','44','07:59 AM','12:23 PM','12:25 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76359,'2018-03-16','44','08:00 AM','12:19 PM','12:21 PM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76360,'2018-03-17','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76361,'2018-03-18','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76362,'2018-03-19','44','07:41 AM','12:20 PM','12:21 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76363,'2018-03-20','44','07:59 AM','12:07 PM','12:10 PM','05:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76364,'2018-03-21','44','07:55 AM','12:15 PM','12:16 PM','05:10 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76365,'2018-03-22','44','07:57 AM','12:01 PM','12:03 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76366,'2018-03-23','44','07:56 AM','12:11 PM','12:14 PM','05:03 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76367,'2018-03-24','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76368,'2018-03-25','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76369,'2018-03-26','44','07:45 AM','12:00 PM','12:02 PM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76370,'2018-03-27','44','07:54 AM','12:05 PM','12:07 PM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76371,'2018-03-28','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76372,'2018-03-29','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76373,'2018-03-30','44','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76374,'2018-03-31','44','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76375,'2018-03-15','45','07:23 AM','','','12:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','04:17:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76376,'2018-03-16','45','07:23 AM','','','11:31 AM',NULL,NULL,'00:00:00','00:00:00','00:00:00','04:58:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76377,'2018-03-17','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76378,'2018-03-18','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76379,'2018-03-19','45','07:33 AM','12:16 PM','12:16 PM','04:30 PM',NULL,NULL,'00:03:00','00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76380,'2018-03-20','45','07:25 AM','','','11:52 AM',NULL,NULL,'00:00:00','00:00:00','00:00:00','04:37:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76381,'2018-03-21','45','07:40 AM','12:10 PM','12:10 PM','04:30 PM',NULL,NULL,'00:10:00','00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76382,'2018-03-22','45','07:16 AM','12:15 PM','12:15 PM','04:30 PM',NULL,NULL,'00:00:00','00:15:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76383,'2018-03-23','45','07:23 AM','12:13 PM','12:13 PM','04:30 PM',NULL,NULL,'00:00:00','00:13:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76384,'2018-03-24','45','07:08 AM','','','09:45 AM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76385,'2018-03-25','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76386,'2018-03-26','45','07:24 AM','12:11 PM','12:11 PM','04:32 PM',NULL,NULL,'00:00:00','00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76387,'2018-03-27','45','07:23 AM','12:08 PM','12:08 PM','04:30 PM',NULL,NULL,'00:00:00','00:08:00','11:01:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(76388,'2018-03-28','45','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76389,'2018-03-29','45','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76390,'2018-03-30','45','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76391,'2018-03-31','45','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76392,'2018-03-15','46','07:26 AM','11:21 AM','11:22 AM','06:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76393,'2018-03-16','46','07:27 AM','12:01 PM','12:03 PM','05:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76394,'2018-03-17','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76395,'2018-03-18','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76396,'2018-03-19','46','07:20 AM','11:37 AM','11:39 AM','05:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76397,'2018-03-20','46','07:24 AM','11:19 AM','11:20 AM','04:58 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76398,'2018-03-21','46','07:34 AM','11:40 AM','11:42 AM','05:05 PM',NULL,NULL,'00:04:00','00:00:00','11:29:00','00:00:00','00:00:00','00:00:00','1.00',1,0,1,0,0,0,0,0,NULL,'Active'),(76399,'2018-03-22','46','07:18 AM','12:05 PM','12:07 PM','05:05 PM',NULL,NULL,'00:00:00','00:07:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76400,'2018-03-23','46','07:24 AM','12:12 PM','12:14 PM','05:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76401,'2018-03-24','46','12:36 PM','','','05:27 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76402,'2018-03-25','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76403,'2018-03-26','46','07:26 AM','11:25 AM','11:30 AM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76404,'2018-03-27','46','07:22 AM','11:21 AM','11:22 AM','04:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76405,'2018-03-28','46','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76406,'2018-03-29','46','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76407,'2018-03-30','46','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76408,'2018-03-31','46','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76409,'2018-03-15','47','04:39 AM','08:29 AM','10:08 AM','10:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76410,'2018-03-16','47','04:47 AM','11:16 AM','11:22 AM','03:59 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76411,'2018-03-17','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76412,'2018-03-18','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76413,'2018-03-19','47','05:02 AM','08:07 AM','11:00 AM','09:47 PM',NULL,NULL,'00:02:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76414,'2018-03-20','47','04:53 AM','08:12 AM','03:15 PM','09:43 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76415,'2018-03-21','47','04:59 AM','08:59 AM','03:46 PM','09:37 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76416,'2018-03-22','47','04:49 AM','09:48 AM','03:56 PM','09:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76417,'2018-03-23','47','04:48 AM','11:23 AM','11:54 AM','03:06 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76418,'2018-03-24','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76419,'2018-03-25','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76420,'2018-03-26','47','04:55 AM','08:03 AM','03:47 PM','09:44 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76421,'2018-03-27','47','04:57 AM','08:07 AM','03:10 PM','09:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76422,'2018-03-28','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76423,'2018-03-29','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76424,'2018-03-30','47','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76425,'2018-03-31','47','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76426,'2018-03-15','48','07:44 AM','12:28 PM','12:29 PM','06:18 PM',NULL,NULL,'00:14:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76427,'2018-03-16','48','07:22 AM','12:06 PM','12:07 PM','05:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76428,'2018-03-17','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76429,'2018-03-18','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76430,'2018-03-19','48','07:23 AM','12:32 PM','12:33 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76431,'2018-03-20','48','07:24 AM','12:29 PM','12:30 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76432,'2018-03-21','48','07:23 AM','12:15 PM','12:16 PM','05:11 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76433,'2018-03-22','48','07:26 AM','12:14 PM','12:15 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76434,'2018-03-23','48','07:23 AM','','','05:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76435,'2018-03-24','48','07:50 AM','12:13 PM','12:14 PM','03:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76436,'2018-03-25','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76437,'2018-03-26','48','07:24 AM','12:28 PM','12:29 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76438,'2018-03-27','48','07:22 AM','12:22 PM','12:23 PM','05:07 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76439,'2018-03-28','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76440,'2018-03-29','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76441,'2018-03-30','48','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76442,'2018-03-31','48','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76443,'2018-03-15','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76444,'2018-03-16','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76445,'2018-03-17','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76446,'2018-03-18','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76447,'2018-03-19','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76448,'2018-03-20','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76449,'2018-03-21','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76450,'2018-03-22','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76451,'2018-03-23','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76452,'2018-03-24','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76453,'2018-03-25','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76454,'2018-03-26','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76455,'2018-03-27','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76456,'2018-03-28','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76457,'2018-03-29','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76458,'2018-03-30','49','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76459,'2018-03-31','49','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76460,'2018-03-15','5','07:32 AM','12:13 PM','12:14 PM','05:05 PM',NULL,NULL,'00:02:00','00:14:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76461,'2018-03-16','5','07:31 AM','12:14 PM','12:14 PM','05:07 PM',NULL,NULL,'00:01:00','00:14:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76462,'2018-03-17','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76463,'2018-03-18','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76464,'2018-03-19','5','07:28 AM','12:00 PM','12:00 PM','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76465,'2018-03-20','5','07:20 AM','12:54 PM','12:54 PM','05:53 PM',NULL,NULL,'00:00:00','00:54:00','10:15:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(76466,'2018-03-21','5','07:42 AM','12:52 PM','12:52 PM','04:47 PM',NULL,NULL,'00:12:00','00:52:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76467,'2018-03-22','5','07:13 AM','12:10 PM','12:11 PM','06:06 PM',NULL,NULL,'00:00:00','00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76468,'2018-03-23','5','07:16 AM','12:32 PM','12:32 PM','05:04 PM',NULL,NULL,'00:00:00','00:32:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76469,'2018-03-24','5','08:00 AM','','','09:02 AM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76470,'2018-03-25','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76471,'2018-03-26','5','07:46 AM','12:11 PM','12:11 PM','05:50 PM',NULL,NULL,'00:16:00','00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76472,'2018-03-27','5','08:10 AM','12:18 PM','12:18 PM','05:48 PM',NULL,NULL,'00:40:00','00:18:00','10:51:00','00:00:00','00:00:00','00:00:00','1.00',1,1,1,1,0,0,0,0,NULL,'Active'),(76473,'2018-03-28','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76474,'2018-03-29','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76475,'2018-03-30','5','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76476,'2018-03-31','5','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76477,'2018-03-15','50','07:25 AM','11:24 AM','11:27 AM','04:31 PM',NULL,NULL,'00:00:00','00:00:00','00:35:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76478,'2018-03-16','50','06:48 AM','','','04:58 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76479,'2018-03-17','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76480,'2018-03-18','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76481,'2018-03-19','50','07:17 AM','11:57 AM','11:58 AM','04:42 PM',NULL,NULL,'00:00:00','00:00:00','00:02:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76482,'2018-03-20','50','06:55 AM','11:26 AM','11:31 AM','04:31 PM',NULL,NULL,'00:00:00','00:00:00','00:33:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76483,'2018-03-21','50','06:32 AM','11:46 AM','11:50 AM','04:35 PM',NULL,NULL,'00:00:00','00:00:00','00:13:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76484,'2018-03-22','50','06:31 AM','11:57 AM','11:58 AM','04:40 PM',NULL,NULL,'00:00:00','00:00:00','00:02:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76485,'2018-03-23','50','06:35 AM','11:15 AM','11:18 AM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:44:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,1,0,0,0,0,NULL,'Active'),(76486,'2018-03-24','50','06:48 AM','11:34 AM','11:35 AM','03:42 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76487,'2018-03-25','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76488,'2018-03-26','50','07:07 AM','11:26 AM','11:27 AM','04:35 PM',NULL,NULL,'00:00:00','00:00:00','00:33:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76489,'2018-03-27','50','06:52 AM','11:32 AM','11:33 AM','04:32 PM',NULL,NULL,'00:00:00','00:00:00','00:27:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76490,'2018-03-28','50','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76491,'2018-03-29','50','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76492,'2018-03-30','50','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76493,'2018-03-31','50','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76494,'2018-03-15','51','07:23 AM','12:32 PM','12:32 PM','05:13 PM',NULL,NULL,'00:00:00','00:32:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76495,'2018-03-16','51','07:23 AM','11:21 AM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(76496,'2018-03-17','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76497,'2018-03-18','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76498,'2018-03-19','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76499,'2018-03-20','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76500,'2018-03-21','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76501,'2018-03-22','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76502,'2018-03-23','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76503,'2018-03-24','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76504,'2018-03-25','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76505,'2018-03-26','51','07:24 AM','','','05:49 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76506,'2018-03-27','51','07:23 AM','11:03 AM','11:03 AM','06:10 PM',NULL,NULL,'00:00:00','00:00:00','12:06:00','00:00:00','00:00:00','00:00:00','1.00',0,0,1,0,0,0,0,0,NULL,'Active'),(76507,'2018-03-28','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76508,'2018-03-29','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76509,'2018-03-30','51','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76510,'2018-03-31','51','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76511,'2018-03-15','52','08:00 AM','12:07 PM','12:08 PM','07:12 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76512,'2018-03-16','52','07:53 AM','12:16 PM','12:17 PM','06:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76513,'2018-03-17','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76514,'2018-03-18','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76515,'2018-03-19','52','07:33 AM','12:25 PM','12:26 PM','05:38 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76516,'2018-03-20','52','07:47 AM','12:12 PM','12:13 PM','06:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76517,'2018-03-21','52','07:46 AM','','','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76518,'2018-03-22','52','07:50 AM','12:38 PM','12:39 PM','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76519,'2018-03-23','52','07:50 AM','12:06 PM','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.50',0,0,0,0,0,0,0,0,NULL,'Active'),(76520,'2018-03-24','52','','12:06 PM','12:07 PM','04:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76521,'2018-03-25','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76522,'2018-03-26','52','07:29 AM','12:02 PM','12:04 PM','05:14 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76523,'2018-03-27','52','07:58 AM','12:44 PM','12:45 PM','06:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76524,'2018-03-28','52','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76525,'2018-03-29','52','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76526,'2018-03-30','52','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76527,'2018-03-31','52','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76528,'2018-03-15','53','07:58 AM','12:24 PM','12:24 PM','05:01 PM',NULL,NULL,'00:28:00','00:24:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76529,'2018-03-16','53','07:23 AM','','','06:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76530,'2018-03-17','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76531,'2018-03-18','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76532,'2018-03-19','53','07:28 AM','12:48 PM','12:49 PM','06:05 PM',NULL,NULL,'00:00:00','00:49:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76533,'2018-03-20','53','07:33 AM','12:29 PM','12:31 PM','06:03 PM',NULL,NULL,'00:03:00','00:31:00','10:40:00','00:00:00','00:00:00','00:00:00','1.00',1,1,1,0,0,0,0,0,NULL,'Active'),(76534,'2018-03-21','53','07:58 AM','12:23 PM','12:23 PM','05:55 PM',NULL,NULL,'00:28:00','00:23:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76535,'2018-03-22','53','07:55 AM','12:08 PM','12:28 PM','05:08 PM',NULL,NULL,'00:25:00','00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76536,'2018-03-23','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76537,'2018-03-24','53','07:46 AM','12:20 PM','12:21 PM','01:25 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76538,'2018-03-25','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76539,'2018-03-26','53','07:24 AM','12:28 PM','12:29 PM','05:55 PM',NULL,NULL,'00:00:00','00:29:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76540,'2018-03-27','53','07:22 AM','12:53 PM','12:53 PM','06:10 PM',NULL,NULL,'00:00:00','00:53:00','10:16:00','00:00:00','00:00:00','00:00:00','1.00',0,1,1,0,0,0,0,0,NULL,'Active'),(76541,'2018-03-28','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76542,'2018-03-29','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76543,'2018-03-30','53','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76544,'2018-03-31','53','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76545,'2018-03-15','54','07:58 AM','12:24 PM','12:24 PM','05:06 PM',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76546,'2018-03-16','54','07:58 AM','12:41 PM','12:42 PM','06:31 PM',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76547,'2018-03-17','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76548,'2018-03-18','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76549,'2018-03-19','54','07:28 AM','','','06:05 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76550,'2018-03-20','54','07:33 AM','12:29 PM','12:29 PM','06:03 PM',NULL,NULL,'00:03:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76551,'2018-03-21','54','07:58 AM','12:17 PM','12:17 PM','05:55 PM',NULL,NULL,'00:28:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76552,'2018-03-22','54','07:55 AM','12:07 PM','12:08 PM','06:13 PM',NULL,NULL,'00:25:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76553,'2018-03-23','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76554,'2018-03-24','54','07:46 AM','12:20 PM','12:20 PM','01:26 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76555,'2018-03-25','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76556,'2018-03-26','54','07:25 AM','12:04 PM','12:05 PM','05:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76557,'2018-03-27','54','08:00 AM','12:32 PM','12:33 PM','06:10 PM',NULL,NULL,'00:30:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76558,'2018-03-28','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76559,'2018-03-29','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76560,'2018-03-30','54','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76561,'2018-03-31','54','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76562,'2018-03-15','55','07:24 AM','12:07 PM','12:08 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76563,'2018-03-16','55','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76564,'2018-03-17','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76565,'2018-03-18','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76566,'2018-03-19','55','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76567,'2018-03-20','55','07:28 AM','12:12 PM','12:13 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76568,'2018-03-21','55','07:25 AM','12:37 PM','12:39 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76569,'2018-03-22','55','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76570,'2018-03-23','55','07:23 AM','12:06 PM','12:08 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76571,'2018-03-24','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76572,'2018-03-25','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76573,'2018-03-26','55','07:24 AM','12:02 PM','12:04 PM','05:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76574,'2018-03-27','55','07:23 AM','12:36 PM','12:38 PM','02:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','02:27:00','00:00:00','00:00:00','1.00',0,0,0,1,0,0,0,0,NULL,'Active'),(76575,'2018-03-28','55','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76576,'2018-03-29','55','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76577,'2018-03-30','55','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76578,'2018-03-31','55','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76579,'2018-03-15','57','07:25 AM','12:02 PM','12:42 PM','06:26 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76580,'2018-03-16','57','07:29 AM','12:39 PM','12:42 PM','05:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76581,'2018-03-17','57','09:27 AM','12:08 PM','12:13 PM','05:30 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76582,'2018-03-18','57','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76583,'2018-03-19','57','07:09 AM','12:19 PM','12:21 PM','05:43 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76584,'2018-03-20','57','07:47 AM','12:07 PM','12:09 PM','06:32 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76585,'2018-03-21','57','07:22 AM','12:09 PM','12:11 PM','06:31 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76586,'2018-03-22','57','07:25 AM','12:08 PM','12:13 PM','06:02 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76587,'2018-03-23','57','07:34 AM','12:09 PM','12:22 PM','05:38 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76588,'2018-03-24','57','09:50 AM','12:01 PM','12:20 PM','05:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76589,'2018-03-25','57','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76590,'2018-03-26','57','07:20 AM','12:05 PM','12:48 PM','06:34 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76591,'2018-03-27','57','07:35 AM','12:00 PM','12:31 PM','07:18 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76592,'2018-03-28','57','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76593,'2018-03-29','57','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76594,'2018-03-30','57','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76595,'2018-03-31','57','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76596,'2018-03-15','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76597,'2018-03-16','58','07:55 AM','','','05:22 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76598,'2018-03-17','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76599,'2018-03-18','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76600,'2018-03-19','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76601,'2018-03-20','58','07:57 AM','12:07 PM','12:08 PM','05:16 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76602,'2018-03-21','58','07:52 AM','12:23 PM','12:24 PM','05:23 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76603,'2018-03-22','58','07:55 AM','12:10 PM','12:11 PM','05:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76604,'2018-03-23','58','07:57 AM','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76605,'2018-03-24','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76606,'2018-03-25','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76607,'2018-03-26','58','07:15 AM','12:00 PM','12:01 PM','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76608,'2018-03-27','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76609,'2018-03-28','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76610,'2018-03-29','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76611,'2018-03-30','58','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76612,'2018-03-31','58','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76613,'2018-03-15','6','07:17 AM','12:05 PM','12:08 PM','05:19 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76614,'2018-03-16','6','07:30 AM','12:23 PM','12:24 PM','05:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76615,'2018-03-17','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76616,'2018-03-18','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76617,'2018-03-19','6','08:18 AM','12:24 PM','12:25 PM','06:22 PM',NULL,NULL,'00:48:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76618,'2018-03-20','6','08:01 AM','12:06 PM','12:47 PM','05:39 PM',NULL,NULL,'00:31:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76619,'2018-03-21','6','07:46 AM','12:17 PM','12:20 PM','05:06 PM',NULL,NULL,'00:16:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76620,'2018-03-22','6','07:21 AM','12:15 PM','12:16 PM','05:34 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76621,'2018-03-23','6','07:27 AM','12:07 PM','12:09 PM','05:27 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76622,'2018-03-24','6','07:30 AM','','','10:26 AM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76623,'2018-03-25','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76624,'2018-03-26','6','07:30 AM','12:13 PM','12:14 PM','05:21 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76625,'2018-03-27','6','08:01 AM','12:05 PM','12:12 PM','05:31 PM',NULL,NULL,'00:31:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76626,'2018-03-28','6','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76627,'2018-03-29','6','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76628,'2018-03-30','6','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76629,'2018-03-31','6','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76630,'2018-03-15','62','07:40 AM','','','05:39 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76631,'2018-03-16','62','07:39 AM','12:30 PM','12:31 PM','05:15 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76632,'2018-03-17','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76633,'2018-03-18','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76634,'2018-03-19','62','07:15 AM','12:18 PM','12:19 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76635,'2018-03-20','62','07:39 AM','12:22 PM','12:23 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76636,'2018-03-21','62','07:39 AM','12:23 PM','12:24 PM','05:17 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76637,'2018-03-22','62','07:42 AM','12:21 PM','12:22 PM','05:01 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76638,'2018-03-23','62','07:36 AM','12:34 PM','12:35 PM','05:08 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76639,'2018-03-24','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76640,'2018-03-25','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76641,'2018-03-26','62','07:27 AM','','','05:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76642,'2018-03-27','62','07:40 AM','12:11 PM','12:12 PM','05:24 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76643,'2018-03-28','62','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76644,'2018-03-29','62','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76645,'2018-03-30','62','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76646,'2018-03-31','62','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76647,'2018-03-15','69','07:53 AM','12:05 PM','12:06 PM','05:33 PM',NULL,NULL,'00:23:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76648,'2018-03-16','69','07:54 AM','12:17 PM','12:18 PM','05:38 PM',NULL,NULL,'00:24:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76649,'2018-03-17','69','08:43 AM','12:07 PM','12:08 PM','04:24 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76650,'2018-03-18','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76651,'2018-03-19','69','07:25 AM','11:31 AM','11:32 AM','04:45 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76652,'2018-03-20','69','07:51 AM','12:03 PM','12:05 PM','05:21 PM',NULL,NULL,'00:21:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76653,'2018-03-21','69','07:52 AM','11:38 AM','11:39 AM','05:34 PM',NULL,NULL,'00:22:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76654,'2018-03-22','69','07:45 AM','12:09 PM','12:11 PM','05:34 PM',NULL,NULL,'00:15:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76655,'2018-03-23','69','07:51 AM','12:22 PM','12:23 PM','05:01 PM',NULL,NULL,'00:21:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76656,'2018-03-24','69','07:58 AM','12:03 PM','12:05 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76657,'2018-03-25','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76658,'2018-03-26','69','07:29 AM','11:20 AM','11:21 AM','04:40 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76659,'2018-03-27','69','07:38 AM','12:11 PM','12:12 PM','05:10 PM',NULL,NULL,'00:08:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76660,'2018-03-28','69','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76661,'2018-03-29','69','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76662,'2018-03-30','69','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76663,'2018-03-31','69','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76664,'2018-03-15','7','07:23 AM','12:29 PM','12:30 PM','06:22 PM',NULL,NULL,'00:00:00','00:20:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76665,'2018-03-16','7','07:42 AM','12:58 PM','12:59 PM','06:57 PM',NULL,NULL,'00:12:00','00:49:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76666,'2018-03-17','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76667,'2018-03-18','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76668,'2018-03-19','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76669,'2018-03-20','7','07:25 AM','12:11 PM','12:11 PM','06:00 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76670,'2018-03-21','7','07:38 AM','12:26 PM','12:25 PM','04:40 PM',NULL,NULL,'00:08:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76671,'2018-03-22','7','07:11 AM','12:13 PM','12:16 PM','05:39 PM',NULL,NULL,'00:00:00','00:06:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76672,'2018-03-23','7','07:23 AM','12:32 PM','12:33 PM','05:23 PM',NULL,NULL,'00:00:00','00:23:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,1,0,0,0,0,0,0,NULL,'Active'),(76673,'2018-03-24','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76674,'2018-03-25','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76675,'2018-03-26','7','09:18 AM','12:29 PM','12:30 PM','05:52 PM',NULL,NULL,'01:48:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76676,'2018-03-27','7','09:04 AM','','','06:18 PM',NULL,NULL,'01:34:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76677,'2018-03-28','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76678,'2018-03-29','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76679,'2018-03-30','7','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76680,'2018-03-31','7','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76681,'2018-03-15','8','07:44 AM','12:30 PM','12:31 PM','04:58 PM',NULL,NULL,'00:14:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76682,'2018-03-16','8','07:57 AM','12:23 PM','12:25 PM','05:34 PM',NULL,NULL,'00:27:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76683,'2018-03-17','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76684,'2018-03-18','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76685,'2018-03-19','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76686,'2018-03-20','8','07:30 AM','12:09 PM','12:10 PM','05:09 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76687,'2018-03-21','8','09:27 AM','12:21 PM','12:22 PM','05:14 PM',NULL,NULL,'01:57:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76688,'2018-03-22','8','07:29 AM','12:12 PM','12:13 PM','04:55 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76689,'2018-03-23','8','07:54 AM','12:02 PM','12:03 PM','05:07 PM',NULL,NULL,'00:24:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76690,'2018-03-24','8','11:57 AM','','','02:29 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76691,'2018-03-25','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76692,'2018-03-26','8','07:31 AM','12:13 PM','12:14 PM','04:54 PM',NULL,NULL,'00:01:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76693,'2018-03-27','8','07:41 AM','12:07 PM','12:08 PM','04:45 PM',NULL,NULL,'00:11:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,0,0,0,0,0,0,0,NULL,'Active'),(76694,'2018-03-28','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76695,'2018-03-29','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76696,'2018-03-30','8','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76697,'2018-03-31','8','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76698,'2018-03-15','9','07:36 AM','12:03 PM','12:05 PM','05:03 PM',NULL,NULL,'00:06:00','00:05:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76699,'2018-03-16','9','07:37 AM','12:05 PM','12:07 PM','05:03 PM',NULL,NULL,'00:07:00','00:07:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76700,'2018-03-17','9','08:20 AM','12:06 PM','12:09 PM','04:35 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76701,'2018-03-18','9','08:20 AM','','','03:35 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76702,'2018-03-19','9','07:32 AM','12:07 PM','12:09 PM','05:08 PM',NULL,NULL,'00:02:00','00:09:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76703,'2018-03-20','9','07:40 AM','12:10 PM','','',NULL,NULL,'00:10:00','00:00:00','10:59:00','00:00:00','00:00:00','00:00:00','0.50',1,0,1,0,0,0,0,0,NULL,'Active'),(76704,'2018-03-21','9','07:34 AM','12:09 PM','12:10 PM','05:01 PM',NULL,NULL,'00:04:00','00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76705,'2018-03-22','9','07:33 AM','12:00 PM','12:10 PM','05:17 PM',NULL,NULL,'00:03:00','00:10:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76706,'2018-03-23','9','07:46 AM','12:01 PM','12:04 PM','05:03 PM',NULL,NULL,'00:16:00','00:04:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76707,'2018-03-24','9','08:06 AM','12:00 PM','12:04 PM','05:13 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76708,'2018-03-25','9','08:17 AM','12:01 PM','12:10 PM','02:52 PM',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76709,'2018-03-26','9','07:53 AM','12:01 PM','12:05 PM','05:04 PM',NULL,NULL,'00:23:00','00:05:00','00:00:00','00:00:00','00:00:00','00:00:00','1.00',1,1,0,0,0,0,0,0,NULL,'Active'),(76710,'2018-03-27','9','07:44 AM','12:01 PM','12:05 PM','05:05 PM',NULL,NULL,'00:14:00','00:05:00','11:08:00','00:00:00','00:00:00','00:00:00','1.00',1,1,1,0,0,0,0,0,NULL,'Active'),(76711,'2018-03-28','9','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76712,'2018-03-29','9','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76713,'2018-03-30','9','','','','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active'),(76714,'2018-03-31','9','','DAY','OFF','',NULL,NULL,'00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','0.00',0,0,0,0,0,0,0,0,NULL,'Active');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `DepartmentCode` varchar(30) NOT NULL,
  `DepartmentDescription` varchar(150) DEFAULT NULL,
  `DepartmentHead` varchar(200) DEFAULT NULL,
  `Designation` varchar(200) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`DepartmentCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`DepartmentCode`,`DepartmentDescription`,`DepartmentHead`,`Designation`,`Remarks`,`Status`) values ('CID','Curriculum and Instruction Division','Arlene C. Agosto','SST 5','','Active'),('FAD','Finance and Administrative Division','Leonila N. Oyangoren','Supervising Administrative Officer','','Active'),('J.O.','FAD','','','','Deleted'),('REGULAR','REGULAR',NULL,NULL,NULL,'Deleted'),('SSD','Student Services Division','Danilo A. Quilates','SST 3','','Active');

/*Table structure for table `designation` */

DROP TABLE IF EXISTS `designation`;

CREATE TABLE `designation` (
  `DesignationCode` varchar(30) NOT NULL,
  `DesignationDescription` varchar(200) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`DesignationCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `designation` */

insert  into `designation`(`DesignationCode`,`DesignationDescription`,`Remarks`,`Status`) values ('','Science Research Specialist I','','Deleted'),('AAI','Administrative Aide I','','Active'),('AAIII','Administrative Aide III','','Active'),('AAIV','Administrative Aide IV','','Active'),('AAVI','Administrative Aide VI','','Active'),('AII','Accountant II','','Active'),('AO4','Administrative Officer IV','','Active'),('AO5','Admin Officer V','','Active'),('AOC','Accounting Office Clerk','','Active'),('AOIIBO','Admin Officer V / Budget Officer','','Deleted'),('AOIII','Admin Officer III','','Active'),('AOV','Admin Officer V','','Active'),('CA','Cashier Assistant','','Active'),('CIDOC','CID Office Clerk','','Active'),('CII','Cashier II','','Active'),('DM','Dormitory Manager','','Active'),('GSAI','Guidance Service Associate I','','Active'),('ISAI','Information Systems Analyst I','','Active'),('J.O.','Job Order','','Active'),('LI','Librarian I','','Active'),('NII','Nurse II','','Active'),('RE','Resident Engineer','','Active'),('RI','Registrar I','','Active'),('SAO','Supervising Administrative Officer','','Active'),('SOC','Supply Office Clerk','','Active'),('SP','School Physician','','Active'),('SRA','Science Research Assistant','','Active'),('SRS1','Science Research Specialist I','','Active'),('SSTI','Special Science Teacher I','','Active'),('SSTII','Special Science Teacher II','','Active'),('SSTIII','Special Science Teacher III','','Active'),('SSTIV','Special Science Teacher IV','','Active'),('SSTV','Special Science Teacher V','','Active');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `EmployeeNo` varchar(30) NOT NULL,
  `LastName` varchar(30) DEFAULT ' ',
  `FirstName` varchar(30) DEFAULT ' ',
  `MiddleName` varchar(30) DEFAULT ' ',
  `Active` enum('Y','N') DEFAULT 'Y',
  `BiometricsId` varchar(30) DEFAULT NULL,
  `EmploymentType` varchar(30) DEFAULT NULL,
  `DesignationCode` varchar(30) DEFAULT NULL,
  `DepartmentCode` varchar(30) DEFAULT NULL,
  `WorkScheduleCode` varchar(30) DEFAULT NULL,
  `Birthday` date DEFAULT '1900-01-01',
  `TIN` varchar(30) DEFAULT NULL,
  `TINDeducted` enum('Y','N') DEFAULT 'Y',
  `PhilHealthId` varchar(30) DEFAULT NULL,
  `PhilHealthDeducted` enum('Y','N') DEFAULT 'Y',
  `GSISId` varchar(30) DEFAULT NULL,
  `GSISDeducted` enum('Y','N') DEFAULT 'Y',
  `PagibigId` varchar(30) DEFAULT NULL,
  `PagibigDeducted` enum('Y','N') DEFAULT 'Y',
  `PagibigPS` decimal(10,2) DEFAULT '0.00',
  `PagibigGS` decimal(10,2) DEFAULT '0.00',
  `NoOfDependent` int(5) DEFAULT '0',
  `RateType` enum('Monthly','Daily') DEFAULT NULL,
  `BasicPay` decimal(10,2) DEFAULT '0.00',
  `RA` enum('Y','N') DEFAULT 'N',
  `TA` enum('Y','N') DEFAULT 'N',
  `PERA` enum('Y','N') DEFAULT 'N',
  `Subsistence` enum('Y','N') DEFAULT 'N',
  `Laundry` enum('Y','N') DEFAULT 'N',
  `Hazard` enum('Y','N') DEFAULT 'N',
  `RAAmount` decimal(10,2) DEFAULT '0.00',
  `TAAmount` decimal(10,2) DEFAULT '0.00',
  `PERAAmount` decimal(10,2) DEFAULT '0.00',
  `SubsistenceAmount` decimal(10,2) DEFAULT '0.00',
  `LaundryAmount` decimal(10,2) DEFAULT '0.00',
  `HazardAPSPercentage` decimal(5,2) DEFAULT '0.00',
  `HazardAmount` decimal(10,2) DEFAULT '0.00',
  `ImmediateSupervisor` varchar(150) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Picture` longtext,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`EmployeeNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`EmployeeNo`,`LastName`,`FirstName`,`MiddleName`,`Active`,`BiometricsId`,`EmploymentType`,`DesignationCode`,`DepartmentCode`,`WorkScheduleCode`,`Birthday`,`TIN`,`TINDeducted`,`PhilHealthId`,`PhilHealthDeducted`,`GSISId`,`GSISDeducted`,`PagibigId`,`PagibigDeducted`,`PagibigPS`,`PagibigGS`,`NoOfDependent`,`RateType`,`BasicPay`,`RA`,`TA`,`PERA`,`Subsistence`,`Laundry`,`Hazard`,`RAAmount`,`TAAmount`,`PERAAmount`,`SubsistenceAmount`,`LaundryAmount`,`HazardAPSPercentage`,`HazardAmount`,`ImmediateSupervisor`,`Remarks`,`Picture`,`Status`) values ('1','Abegonia','Norma','B.','Y','1','Regular','AO5','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','35693.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('10','Bajenting','Jovanie','O.','Y','10','Regular','SRA','CID','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',1,'Monthly','23257.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','23.00','0.00','','','','Active'),('100','Beceril','Niñokay','L','Y','72','Job Order','SSTI','CID','Faculty1','2017-10-30','','Y','','N','','N','','N','0.00','0.00',0,'Monthly','23257.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('101','Valmoria','Timmy Rose','','Y','12','Job Order','J.O.','SSD','GaDM2','2017-10-30','','N','','N','','N','','N','0.00','0.00',0,'Daily','366.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('102','Inoferio','Fermin','P','Y','76','Regular','SSTIII','CID','Faculty2','2017-11-24','','N','','N','','N','','N','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('103','Laude','Ro-ann','S.','Y','74','Regular','SSTIII','CID','Faculty2','2017-11-24','','N','','N','','N','','N','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('104','Mancao','Victor','W.','Y','75','Regular','SSTIII','CID','Faculty4','2017-11-24','','N','','N','','N','','N','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('11','Balais','Janeth','S. ','Y','11','Regular','SSTII','CID','faculty8','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','30044.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('13','Balili','Kenneth','C. ','Y','13','Regular','SSTIV','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','52783.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('14','Barcoma','Wesley','C.','Y','14','Regular','SSTII','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','30044.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('15','Batoctoy','Elsi Marie','B.','Y','15','Regular','SSTI','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','23257.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('16','Buscato','Maria Vilma','R.','Y','16','Regular','DM','SSD','GDM','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','17142.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('17','Agosto','Arlene ','C','Y','17','Regular','SSTV','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','64416.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('18','Calvo','Felix','S.','Y','18','Regular','SSTII','CID','Faculty5','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','30044.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('19','Camarillo','Marco Lorenzo','R. ','Y','19','Regular','SSTIII','CID','faculty12','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('2','Abrea','Jayfe Anthony','A. ','Y','2','Regular','SSTIII','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','23.00','0.00','','','','Active'),('20','Carumba','Gee Elle','L.','Y','20','Regular','SSTII','CID','Faculty7','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','30044.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('200','Beceril','Niñokay','L','Y','','Job Order','SSTI','CID','Faculty1','2017-11-24','','N','','N','','N','','N','0.00','0.00',0,'','0.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Deleted'),('21','Chavez','Arlo','S.','Y','21','Regular','SSTII','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','30044.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('22','Datanagan','Lyn ','L. ','Y','22','Regular','AII','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','30751.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('23','De Castro','Nardgin ','V.','Y','23','Regular','SSTIV','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','52783.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('24','Dizon','Paul Isaac','O.','Y','24','Regular','SRS1','CID','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','23257.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('25','Flores','Shella Mae','S.','Y','25','Regular','SSTI','CID','Faculty7','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','23257.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('26','Fuentes','Jed Michael','E.','Y','26','Regular','SSTIII','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('27','Gayda','Ruby Cres','J.','Y','27','Regular','SSTIII','CID','Faculty5','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','52783.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('28','Geslaga','Ligaya','B.','Y','28','Regular','LI','SSD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','19853.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('3','Gil','Riza Reyna','A','Y','3','Regular','SSTV','CID','faculty 9','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','64416.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('30','Guia','Eleazar','B.','Y','30','Regular','SSTI','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','64416.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('31','Hortezuela','Joseph','P.','Y','31','Regular','SSTIV','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','52783.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('32','Kintanar','Nilo Jeremias','C.','Y','32','Regular','CII','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','25859.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('33','Lagura','Kathreena','C.','Y','33','Regular','GSAI','SSD','CS','1900-01-01','','Y','','N','','N','','N','0.00','0.00',0,'Monthly','21387.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('34','Magallanes','Cyril','B.','Y','34','Regular','ISAI','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',2,'Monthly','21626.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','23.00','0.00','','','','Active'),('35','Magbanua','Jessa Mae','.','Y','35','Regular','SSTI','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','23257.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('36','Narvacan','Christian','I.','Y','36','Regular','SSTI','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','23257.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('37','Omboy','Lucas','E.','Y','37','Regular','SSTIII','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('38','Oyangoren','Leonila','N.','Y','38','Regular','SAO','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','52783.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('39','Puerto','Abraham','P.','Y','39','Regular','AAIII','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','12155.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','30.00','0.00','','','','Active'),('4','Albina','Julius','O. ','Y','4','Regular','SSTIII','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('40','Albiso','Princess Garnet','Q','Y','40','Regular','SSTII','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'','0.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('41','Quilates','Danilo ','A.','Y','41','Regular','SSTIII','SSD','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','23.00','0.00','','','','Active'),('42','Ramayla','Sherry','P.','Y','42','Regular','SSTV','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','64416.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('43','Rendon','Lilian','P.','Y','43','Regular','AAIV','FAD','','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','27565.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('44','Retardo','Rosita','A.','Y','44','Regular','AOIII','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',2,'Monthly','25573.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('45','Rosero','Larry','S.','Y','45','Regular','SSTII','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',4,'Monthly','30044.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('46','Saquibal','Ma. Fengina','S.','Y','46','Regular','SSTI','CID','faculty11','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','23257.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('47','Sasaban','Felixberto','L.','Y','47','Regular','DM','SSD','BDM','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','17142.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('48','Sumarago','Mary Jane','R.','Y','48','Regular','SSTI','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','23257.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('49','Tabay','Anthony','A.','Y','49','Regular','SSTIII','CID','Faculty3','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','23.00','0.00','','','','Active'),('5','Albiso','Romil','P.','Y','5','Regular','SSTIII','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('50','Tan','Kim Jose Orven','P.','Y','50','Regular','SSTI','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','23257.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','23.00','0.00','','','','Active'),('51','Tolentino','AlcoKenneth ','C.','Y','51','Regular','SSTIII','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('52','Villaflor','Jesseca Athena','S.','Y','52','Regular','NII','SSD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','27887.00','N','N','Y','Y','Y','Y','0.00','0.00','3300.00','3300.00','500.00','15.00','0.00','','','','Active'),('53','Villamora','Mary Joy ','M.','Y','53','Regular','SSTIII','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','52783.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','23.00','0.00','','','','Active'),('54','Villamora','Rey Giovanni','L.','Y','54','Regular','SSTIII','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','52783.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','23.00','0.00','','','','Active'),('55','Zamora','Diana Jane','P.','Y','55','Regular','RI','SSD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','100.00',0,'Monthly','19853.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('56','Aco','Lucille','A.','Y','56','Job Order','J.O.','SSD','GaDM1','1900-01-01','','Y','','N','','N','','N','0.00','0.00',0,'Monthly','13417.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('57','Bañados','Mercy','B.','Y','57','Regular','AAI','SSD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','9981.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('58','Gesoro','Daniel','L','Y','58','Regular','AAI','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','11387.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('59','Carreon','Ma. Emmalyn','.','Y','59','Job Order','SOC','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'','0.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('6','Albores','Maricel','A.','Y','6','Regular','SSTII','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','30044.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('60','Emos','Richelle','N.','Y','60','Job Order','CA','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'','0.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('61','Ilustrismo','Estanislao Jr.','.','Y','61','Job Order','J.O.','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'','0.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('62','Oyangoren','Jerl','M.','Y','62','Regular','AO5','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','35693.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('63','Neri','Dyesebel','V.','Y','63','Job Order','AOC','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'','0.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('64','Puerto','Denisse','R.','Y','64','Job Order','CIDOC','FAD','CS','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'','0.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('65','Quillosa','Estaneslao Jr.','.','Y','65','Job Order','J.O.','FAD','9am-6pm','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'','0.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('66','Toong','Nestor','V.','Y','66','Job Order','J.O.','SSD','BaDM2','1900-01-01','','Y','','N','','N','','N','0.00','0.00',0,'Monthly','13417.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('67','Ty-Farma','Joey Jergens','.','Y','67','Job Order','RE','FAD','CS','1900-01-01','','Y','','N','','N','','N','0.00','0.00',0,'Monthly','24000.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('68','Veloso','Rogelio Jr.','S.','Y','68','Job Order','J.O.','SSD','BaDM1','1900-01-01','','Y','','N','','N','','N','0.00','0.00',0,'Monthly','13417.00','N','N','N','N','N','N','0.00','0.00','0.00','0.00','0.00','0.00','0.00','','','','Active'),('69','Balais','Richard','C','Y','69','Regular','SSTIV','CID','faculty10','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','52783.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('7','Arnais','Rowena','R.','Y','7','Regular','SSTIII','CID','faculty8','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('8','Awit','Maria Ana','C.','Y','8','Regular','SSTIII','CID','Faculty2','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active'),('9','Baje','Benito','A. ','Y','9','Regular','SSTIII','CID','Faculty1','1900-01-01','','Y','','Y','','Y','','Y','0.00','0.00',0,'Monthly','39151.00','N','N','Y','Y','Y','Y','0.00','0.00','2000.00','3300.00','500.00','15.00','0.00','','','','Active');

/*Table structure for table `holiday` */

DROP TABLE IF EXISTS `holiday`;

CREATE TABLE `holiday` (
  `HolidayCode` varchar(30) NOT NULL,
  `HolidayDescription` varchar(200) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`HolidayCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `holiday` */

insert  into `holiday`(`HolidayCode`,`HolidayDescription`,`Type`,`Remarks`,`Status`) values ('','Transport strike','','','Deleted'),('AJ','Amun Jadid','Muslim, Common Local Holiday','','Active'),('ASD','All Saint`s Day','Specila Non-Working Holiday','','Active'),('ASoulD','All Soul`s Day','Observance','','Active'),('BD','Bonifacio Day','Regular Holiday','','Active'),('CD','Christmas Day','Regular Holiday','','Active'),('CE','Christmas Eve','Special Non-Working Holiday','','Active'),('CLNYD','Chinese Lunar New Year`s Day','Special Non-Working Holiday','','Active'),('DS','December Solstice','Season','','Active'),('EF','Eidul-Fitar','Common Local Holiday','','Active'),('ES','Easter Sunday','Observance','','Active'),('GF','Good Friday','Regular Holiday','','Active'),('HS','Holy Saturday','Special Non-Working Holiday','','Active'),('ID','Independence Day','Regular Holiday','','Active'),('IuA','Id-ul-Adha(Feast of the Sacrifice)','Common Local Holiday','','Active'),('JS','June Solstice','Season','','Active'),('LD','Labor Day','Regular Holiday','','Active'),('LIWMR','Lailatul Isra Wal Mi Raj','Common Local Holiday','','Active'),('ME','March Equinox','Season','','Active'),('MT','Maundy Thursday','Regular Holiday','','Active'),('MuN','Maulid un-Nabi','Common Local Holiday','','Active'),('NAD','Ninoy Aquino Day','Special Non-Working Holiday','','Active'),('NHD','National Heroe`s Day','Regular Holiday','','Active'),('NYD','New Year`s Day','Regular Holiday','','Active'),('NYE','New Year`s Eve','Special Non-Working Holiday','','Active'),('PPA','People Power Anniversary','Observance','','Active'),('RD','Rizal Day','Regular Holiday','','Active'),('SDaC','Specila Day after Christmas','Special Non-Working Holiday','','Active'),('SE','September Equinox','Season','','Active'),('TDV','The Day of Valor','Regular Holiday','','Active');

/*Table structure for table `holidayentry` */

DROP TABLE IF EXISTS `holidayentry`;

CREATE TABLE `holidayentry` (
  `HolidayEntryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `HolidayCode` varchar(30) DEFAULT NULL,
  `Approve` enum('Y','N') DEFAULT 'N',
  `ApprovedBy` varchar(30) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`HolidayEntryId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `holidayentry` */

insert  into `holidayentry`(`HolidayEntryId`,`Date`,`HolidayCode`,`Approve`,`ApprovedBy`,`Remarks`,`Status`) values (1,'2014-02-03','LD','Y','admin','','Active'),(2,'2014-04-04','RD','Y','admin','','Active'),(3,'2017-10-17','','Y','admin','','Active'),(4,'2017-10-18','','Y','admin','','Active'),(5,'2017-10-26','','Y','admin','','Active');

/*Table structure for table `itemrights` */

DROP TABLE IF EXISTS `itemrights`;

CREATE TABLE `itemrights` (
  `ItemName` varchar(50) DEFAULT NULL,
  `Rights` varchar(50) DEFAULT NULL,
  `RightsSeqNo` int(5) DEFAULT NULL,
  KEY `ItemName` (`ItemName`,`Rights`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `itemrights` */

insert  into `itemrights`(`ItemName`,`Rights`,`RightsSeqNo`) values ('tsmDesignation','Refresh',1),('tsmDesignation','Create',2),('tsmDesignation','Update',3),('tsmDesignation','Remove',4),('tsmDesignation','Search',5),('tsmDesignation','Preview',6),('tsmDepartment','Refresh',1),('tsmDepartment','Create',2),('tsmDepartment','Update',3),('tsmDepartment','Remove',4),('tsmDepartment','Search',5),('tsmDepartment','Preview',6),('tsmWorkSchedule','Refresh',1),('tsmWorkSchedule','Create',2),('tsmWorkSchedule','Update',3),('tsmWorkSchedule','Remove',4),('tsmWorkSchedule','Search',5),('tsmWorkSchedule','Preview',6),('tsmLeaveType','Refresh',1),('tsmLeaveType','Create',2),('tsmLeaveType','Update',3),('tsmLeaveType','Remove',4),('tsmLeaveType','Search',5),('tsmLeaveType','Preview',6),('tsmHoliday','Refresh',1),('tsmHoliday','Create',2),('tsmHoliday','Update',3),('tsmHoliday','Remove',4),('tsmHoliday','Search',5),('tsmHoliday','Preview',6),('tsmImportDataFromBiometrics','Import',1),('tsmProcessDailyTimeRecord','Refresh',1),('tsmProcessDailyTimeRecord','Save',2),('tsmProcessDailyTimeRecord','Preview',3),('tsmProcessDailyTimeRecordHospital','Refresh',1),('tsmProcessDailyTimeRecordHospital','Save',2),('tsmProcessDailyTimeRecordHospital','Preview',3),('tsmOvertimeEntry','Refresh',1),('tsmOvertimeEntry','Create',2),('tsmOvertimeEntry','Update',3),('tsmOvertimeEntry','Remove',4),('tsmOvertimeEntry','Approve',5),('tsmOvertimeEntry','Search',6),('tsmOvertimeEntry','Preview',7),('tsmOfficialBusinessEntry','Refresh',1),('tsmOfficialBusinessEntry','Create',2),('tsmOfficialBusinessEntry','Update',3),('tsmOfficialBusinessEntry','Remove',4),('tsmOfficialBusinessEntry','Approve',5),('tsmOfficialBusinessEntry','Search',6),('tsmOfficialBusinessEntry','Preview',7),('tsmLeaveEntry','Refresh',1),('tsmLeaveEntry','Create',2),('tsmLeaveEntry','Update',3),('tsmLeaveEntry','Remove',4),('tsmLeaveEntry','Approve',5),('tsmLeaveEntry','Search',6),('tsmLeaveEntry','Preview',7),('tsmHolidayEntry','Refresh',1),('tsmHolidayEntry','Create',2),('tsmHolidayEntry','Update',3),('tsmHolidayEntry','Remove',4),('tsmHolidayEntry','Approve',5),('tsmHolidayEntry','Search',6),('tsmHolidayEntry','Preview',7),('tsmAttendanceSummary','Refresh',3),('tsmAttendanceSummary','Preview',1),('tsmAttendanceSummaryHospital','Refresh',1),('tsmAttendanceSummaryHospital','Preview',2),('tsmCSForm48','Refresh',1),('tsmCSForm48','Print',2),('tsmCSForm48','Print All',3),('tsmAuditTrail','Refresh',1),('tsmAuditTrail','Search',2),('tsmAuditTrail','Preview',3),('tsmSystemConfiguration','Save',1),('tsmUser','Refresh',1),('tsmUser','Create',2),('tsmUser','Update',3),('tsmUser','Remove',4),('tsmUser','Search',5),('tsmUser','Preview',6),('tsmUserGroup','Refresh',1),('tsmUserGroup','Create',2),('tsmUserGroup','Update',3),('tsmUserGroup','Remove',4),('tsmUserGroup','Search',5),('tsmUserGroup','Preview',6),('tsmUserGroup','Save',7),('tsmUserGroup','Reload',8),('tsmUserGroup','Save Rights',9),('tsmChangeUserPassword','Save',1),('tsmScreenSaver','Save',1),('tsmBackupRestoreDatabase','Backup',1),('tsmBackupRestoreDatabase','Restore',2),('tsmBackupRestoreDatabase','Check Table Updates',3),('tsmSupport','Refresh',1),('tsmSupport','Create',2),('tsmSupport','Update',3),('tsmSupport','Remove',4),('tsmSupport','Close',5),('tsmSupport','Preview',6),('tsmCSForm48Hospital','Refresh',1),('tsmCSForm48Hospital','Print',2),('tsmCSForm48Hospital','Print All',3),('tsmEmployee','Refresh',1),('tsmEmployee','Create',2),('tsmEmployee','Update',3),('tsmEmployee','Remove',4),('tsmEmployee','Search',5),('tsmEmployee','Preview',6);

/*Table structure for table `leaveentry` */

DROP TABLE IF EXISTS `leaveentry`;

CREATE TABLE `leaveentry` (
  `LeaveEntryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `EmployeeNo` varchar(30) DEFAULT NULL,
  `LeaveTypeCode` varchar(30) DEFAULT NULL,
  `ReferenceNo` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` enum('Morning','Afternoon','Whole Day') DEFAULT NULL,
  `Explanation` varchar(500) DEFAULT NULL,
  `Approve` enum('Y','N') DEFAULT 'N',
  `ApprovedBy` varchar(30) DEFAULT NULL,
  `DateFiled` date DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`LeaveEntryId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `leaveentry` */

insert  into `leaveentry`(`LeaveEntryId`,`EmployeeNo`,`LeaveTypeCode`,`ReferenceNo`,`Date`,`Time`,`Explanation`,`Approve`,`ApprovedBy`,`DateFiled`,`Remarks`,`Status`) values (1,'34','SL','','2017-10-10','Whole Day','','Y','admin','2017-11-02','','Active');

/*Table structure for table `leavetype` */

DROP TABLE IF EXISTS `leavetype`;

CREATE TABLE `leavetype` (
  `LeaveTypeCode` varchar(30) NOT NULL,
  `LeaveTypeDescription` varchar(150) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`LeaveTypeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `leavetype` */

insert  into `leavetype`(`LeaveTypeCode`,`LeaveTypeDescription`,`Category`,`Status`) values ('aa','acccc','','Deleted'),('CTO','Compensatory Time Off','','Active'),('FL','Force Leave','Vacation Leave','Active'),('ML','Maternity Leave','','Active'),('MOL','Mourning Leave','Vacation Leave','Active'),('PL','Paternity Leave','','Active'),('SL','Sick Leave','Sick Leave','Active'),('SPL','Special/Priviledge Leave','','Active'),('VL','Vacation Leave','Vacation Leave','Active');

/*Table structure for table `lookuptable` */

DROP TABLE IF EXISTS `lookuptable`;

CREATE TABLE `lookuptable` (
  `Key` varchar(30) NOT NULL,
  `Value` varchar(200) NOT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`Key`,`Value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `lookuptable` */

insert  into `lookuptable`(`Key`,`Value`,`Status`) values ('CreditCardType','American Express','Active'),('CreditCardType','Diners','Active'),('CreditCardType','JCB','Active'),('CreditCardType','Master Card','Active'),('CreditCardType','Other Card','Active'),('CreditCardType','Visa','Active');

/*Table structure for table `menuitem` */

DROP TABLE IF EXISTS `menuitem`;

CREATE TABLE `menuitem` (
  `MenuName` varchar(50) DEFAULT NULL,
  `MenuText` varchar(50) DEFAULT NULL,
  `ItemName` varchar(50) DEFAULT NULL,
  `ItemText` varchar(50) DEFAULT NULL,
  `MenuSeqNo` int(10) DEFAULT NULL,
  `ItemSeqNo` int(10) DEFAULT NULL,
  KEY `MenuName` (`MenuName`,`ItemName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `menuitem` */

insert  into `menuitem`(`MenuName`,`MenuText`,`ItemName`,`ItemText`,`MenuSeqNo`,`ItemSeqNo`) values ('MasterFilesMenu','Master File','tsmEmployee','Employee',1,1),('MasterFilesMenu','Master File','tsmDesignation','Designation',1,2),('MasterFilesMenu','Master File','tsmDepartment','Department',1,3),('MasterFilesMenu','Master File','tsmWorkSchedule','Work Schedule',1,4),('MasterFilesMenu','Master File','tsmLeaveType','Leave Type',1,5),('MasterFilesMenu','Master File','tsmHoliday','Holiday',1,6),('TransactionsMenu','Transactions','tsmImportDataFromBiometrics','Import Data From Biometrics',2,1),('TransactionsMenu','Transactions','tsmProcessDailyTimeRecord','Process Daily Time Record',2,2),('TransactionsMenu','Transactions','tsmProcessDailyTimeRecordHospital','Process Daily Time Record(Hospital)',2,3),('TransactionsMenu','Transactions','tsmOvertimeEntry','Overtime Entry',2,5),('TransactionsMenu','Transactions','tsmOfficialBusinessEntry','Official Business Entry',2,6),('TransactionsMenu','Transactions','tsmLeaveEntry','Leave Entry',2,7),('TransactionsMenu','Transactions','tsmHolidayEntry','Holiday Entry',2,8),('ReportsMenu','Reports','tsmAttendanceSummary','Attendance Summary',3,1),('ReportsMenu','Reports','tsmAttendanceSummaryHospital','Attendance Summary(Hospital)',3,2),('ReportsMenu','Reports','tsmCSForm48','CS Form 48',3,3),('ReportsMenu','Reports','tsmCSForm48Hospital','CS From 48(Hospital)',3,4),('ReportsMenu','Reports','tsmAuditTrail','Audit Trail',3,5),('SystemsMenu','Systems','tsmSystemConfiguration','System Configuration',4,1),('SystemsMenu','Systems','tsmUser','User',4,2),('SystemsMenu','Systems','tsmUserGroup','User Group',4,3),('SystemsMenu','Systems','tsmChangeUserPassword','Change User Password',4,4),('SystemsMenu','Systems','tsmScreenSaver','Screen Saver',4,5),('SystemsMenu','Systems','tsmLockScreen','Lock Screen',4,6),('SystemsMenu','Systems','tsmBackupRestoreDatabase','Backup/Restore Database',4,7),('SystemsMenu','Systems','tsmSupport','Support',4,8),('SystemsMenu','Systems','tsmExit','Exit',4,9);

/*Table structure for table `officialbusinessentry` */

DROP TABLE IF EXISTS `officialbusinessentry`;

CREATE TABLE `officialbusinessentry` (
  `OfficialBusinessEntryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `EmployeeNo` varchar(30) DEFAULT NULL,
  `Type` enum('Official Business','Official Time','Pass Slip','Seminar','Travel Order','Trip Ticket') DEFAULT NULL,
  `ReferenceNo` varchar(50) DEFAULT NULL,
  `TimeIn` enum('Y','N') DEFAULT 'N',
  `BreakOut` enum('Y','N') DEFAULT 'N',
  `BreakIn` enum('Y','N') DEFAULT 'N',
  `TimeOut` enum('Y','N') DEFAULT 'N',
  `Purpose` varchar(200) DEFAULT NULL,
  `Approve` enum('Y','N') DEFAULT 'N',
  `ApprovedBy` varchar(30) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`OfficialBusinessEntryId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `officialbusinessentry` */

insert  into `officialbusinessentry`(`OfficialBusinessEntryId`,`Date`,`EmployeeNo`,`Type`,`ReferenceNo`,`TimeIn`,`BreakOut`,`BreakIn`,`TimeOut`,`Purpose`,`Approve`,`ApprovedBy`,`Remarks`,`Status`) values (1,'2014-02-03','10007','Official Business','','Y','Y','Y','Y','','Y','admin','','Active'),(2,'2014-02-03','10026','Official Business','','Y','Y','Y','Y','','N',NULL,'','Active'),(3,'2014-02-03','10080','','','Y','Y','N','N','','N',NULL,'','Active'),(4,'2014-06-02','10085','Official Business','2542','Y','Y','Y','Y','Medical Mission','N',NULL,'','Deleted'),(5,'2014-04-02','10085','Official Business','1244','Y','Y','Y','Y','Medical Mission in Brgy. Umapad','Y','admin','','Active');

/*Table structure for table `overtimeentry` */

DROP TABLE IF EXISTS `overtimeentry`;

CREATE TABLE `overtimeentry` (
  `OvertimeEntryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `EmployeeNo` varchar(30) DEFAULT NULL,
  `TimeIn` time DEFAULT '00:00:00',
  `TimeOut` time DEFAULT '00:00:00',
  `Overtime` time DEFAULT '00:00:00',
  `Approve` enum('Y','N') DEFAULT 'N',
  `ApprovedBy` varchar(30) DEFAULT NULL,
  `Remarks` varchar(200) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`OvertimeEntryId`)
) ENGINE=InnoDB AUTO_INCREMENT=5527 DEFAULT CHARSET=latin1;

/*Data for the table `overtimeentry` */


/*Table structure for table `searchdisplayfield` */

DROP TABLE IF EXISTS `searchdisplayfield`;

CREATE TABLE `searchdisplayfield` (
  `TableName` varchar(100) NOT NULL,
  `TemplateName` varchar(100) NOT NULL,
  `DisplayFields` varchar(100) NOT NULL,
  `SequenceNo` int(10) DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `Private` enum('Y','N') DEFAULT 'N',
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  `Backup` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`TableName`,`TemplateName`,`DisplayFields`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `searchdisplayfield` */

/*Table structure for table `searchfilters` */

DROP TABLE IF EXISTS `searchfilters`;

CREATE TABLE `searchfilters` (
  `TableName` varchar(100) NOT NULL,
  `TemplateName` varchar(100) NOT NULL,
  `Fields` varchar(100) NOT NULL,
  `Operator` varchar(30) NOT NULL,
  `OperatorSign` varchar(10) DEFAULT NULL,
  `Values` varchar(100) NOT NULL,
  `CheckAnd` enum('Y','N') DEFAULT 'Y',
  `CheckOr` enum('Y','N') DEFAULT 'N',
  `SequenceNo` int(5) DEFAULT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `Private` enum('Y','N') DEFAULT 'N',
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  `Backup` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`TableName`,`TemplateName`,`Fields`,`Operator`,`Values`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `searchfilters` */

/*Table structure for table `searchgrouping` */

DROP TABLE IF EXISTS `searchgrouping`;

CREATE TABLE `searchgrouping` (
  `TableName` varchar(100) NOT NULL,
  `TemplateName` varchar(100) NOT NULL,
  `FieldName` varchar(100) NOT NULL,
  `GroupBy` enum('Y','N') NOT NULL DEFAULT 'N',
  `SortBy` enum('Ascending','Descending') DEFAULT NULL,
  `SequenceNo` int(5) NOT NULL,
  `CreatedBy` varchar(30) DEFAULT NULL,
  `Private` enum('Y','N') DEFAULT 'N',
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  `Backup` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`TableName`,`TemplateName`,`FieldName`,`GroupBy`,`SequenceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `searchgrouping` */

/*Table structure for table `sequence` */

DROP TABLE IF EXISTS `sequence`;

CREATE TABLE `sequence` (
  `Table` varchar(30) NOT NULL,
  `Prefix` varchar(30) DEFAULT NULL,
  `Length` int(10) DEFAULT NULL,
  `LastNumber` int(12) DEFAULT NULL,
  `OutletCode` varchar(30) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`Table`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sequence` */

insert  into `sequence`(`Table`,`Prefix`,`Length`,`LastNumber`,`OutletCode`,`Status`) values ('Employee','E1',5,0,NULL,'Active'),('Payslip','',1,0,NULL,'Active'),('TaxDependent','TD',5,0,NULL,'Active'),('UserGroup','UG',5,3,NULL,'Active');

/*Table structure for table `systemconfiguration` */

DROP TABLE IF EXISTS `systemconfiguration`;

CREATE TABLE `systemconfiguration` (
  `Key` varchar(30) NOT NULL,
  `Value` longtext,
  `OutletCode` varchar(30) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`Key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `systemconfiguration` */


/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Fullname` varchar(100) DEFAULT NULL,
  `UserGroupId` varchar(30) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`Username`,`Password`,`Fullname`,`UserGroupId`,`Status`) values ('a','d41d8cd98f00b204e9800998ecf8427e','cccccccc','UG00001','Active'),('aa','d41d8cd98f00b204e9800998ecf8427e','bb','UG00001','Active'),('aaa','d41d8cd98f00b204e9800998ecf8427e','ccccc','UG00002','Active'),('aaaa','d41d8cd98f00b204e9800998ecf8427e','bbb','UG00001','Active'),('admin','d41d8cd98f00b204e9800998ecf8427e','Administrator','UG00001','Active'),('jesryl','21232f297a57a5a743894a0e4a801fc3','Jesryl A. Plarisans','UG00001','Active'),('sabwils19','e10adc3949ba59abbe56e057f20f883e','Wilson S. Sarmiento','UG00001','Active'),('try lang','d41d8cd98f00b204e9800998ecf8427e','jesryl','UG00001','Active');

/*Table structure for table `usergroup` */

DROP TABLE IF EXISTS `usergroup`;

CREATE TABLE `usergroup` (
  `UserGroupId` varchar(30) NOT NULL,
  `UserGroupDescription` varchar(200) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  `Backup` enum('Y','N') DEFAULT 'N',
  PRIMARY KEY (`UserGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usergroup` */

insert  into `usergroup`(`UserGroupId`,`UserGroupDescription`,`Status`,`Backup`) values ('UG00001','Supervisor','Active','N'),('UG00002','try lang','Active','N'),('UG00003','bbbbb','Active','N');

/*Table structure for table `usergroupmenuitems` */

DROP TABLE IF EXISTS `usergroupmenuitems`;

CREATE TABLE `usergroupmenuitems` (
  `UserGroupId` varchar(30) DEFAULT NULL,
  `Menu` varchar(50) DEFAULT NULL,
  `Item` varchar(50) DEFAULT NULL,
  `Status` enum('Enable','Disable','Active','Deleted') DEFAULT 'Enable',
  `Backup` enum('Y','N') DEFAULT 'N',
  KEY `Menu` (`UserGroupId`,`Menu`,`Item`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usergroupmenuitems` */

insert  into `usergroupmenuitems`(`UserGroupId`,`Menu`,`Item`,`Status`,`Backup`) values ('UG00001','MasterFilesMenu','tsmEmployee','Enable','N'),('UG00001','MasterFilesMenu','tsmDesignation','Enable','N'),('UG00001','MasterFilesMenu','tsmDepartment','Enable','N'),('UG00001','MasterFilesMenu','tsmWorkSchedule','Enable','N'),('UG00001','MasterFilesMenu','tsmLeaveType','Enable','N'),('UG00001','MasterFilesMenu','tsmHoliday','Enable','N'),('UG00001','TransactionsMenu','tsmImportDataFromBiometrics','Enable','N'),('UG00001','TransactionsMenu','tsmProcessDailyTimeRecord','Enable','N'),('UG00001','TransactionsMenu','tsmProcessDailyTimeRecordHospital','Enable','N'),('UG00001','TransactionsMenu','tsmOvertimeEntry','Enable','N'),('UG00001','TransactionsMenu','tsmOfficialBusinessEntry','Enable','N'),('UG00001','TransactionsMenu','tsmLeaveEntry','Enable','N'),('UG00001','TransactionsMenu','tsmHolidayEntry','Enable','N'),('UG00001','ReportsMenu','tsmAttendanceSummary','Enable','N'),('UG00001','ReportsMenu','tsmAttendanceSummaryHospital','Enable','N'),('UG00001','ReportsMenu','tsmCSForm48','Enable','N'),('UG00001','ReportsMenu','tsmCSForm48Hospital','Enable','N'),('UG00001','ReportsMenu','tsmAuditTrail','Enable','N'),('UG00001','SystemsMenu','tsmSystemConfiguration','Enable','N'),('UG00001','SystemsMenu','tsmUser','Enable','N'),('UG00001','SystemsMenu','tsmUserGroup','Enable','N'),('UG00001','SystemsMenu','tsmChangeUserPassword','Enable','N'),('UG00001','SystemsMenu','tsmScreenSaver','Enable','N'),('UG00001','SystemsMenu','tsmLockScreen','Enable','N'),('UG00001','SystemsMenu','tsmBackupRestoreDatabase','Enable','N'),('UG00001','SystemsMenu','tsmSupport','Enable','N'),('UG00001','SystemsMenu','tsmExit','Enable','N');

/*Table structure for table `usergrouprights` */

DROP TABLE IF EXISTS `usergrouprights`;

CREATE TABLE `usergrouprights` (
  `UserGroupId` varchar(30) DEFAULT NULL,
  `ItemName` varchar(50) DEFAULT NULL,
  `Rights` varchar(50) DEFAULT NULL,
  `Status` enum('Enable','Disable','Active','Deleted') DEFAULT 'Enable',
  `Backup` enum('Y','N') DEFAULT 'N',
  KEY `UserGroupId` (`UserGroupId`,`ItemName`,`Rights`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usergrouprights` */

insert  into `usergrouprights`(`UserGroupId`,`ItemName`,`Rights`,`Status`,`Backup`) values ('UG00001','tsmEmployee','Refresh','Enable','N'),('UG00001','tsmEmployee','Create','Enable','N'),('UG00001','tsmEmployee','Update','Enable','N'),('UG00001','tsmEmployee','Remove','Enable','N'),('UG00001','tsmEmployee','Search','Enable','N'),('UG00001','tsmEmployee','Preview','Enable','N'),('UG00001','tsmDesignation','Refresh','Enable','N'),('UG00001','tsmDesignation','Create','Enable','N'),('UG00001','tsmDesignation','Update','Enable','N'),('UG00001','tsmDesignation','Remove','Enable','N'),('UG00001','tsmDesignation','Search','Enable','N'),('UG00001','tsmDesignation','Preview','Enable','N'),('UG00001','tsmDepartment','Refresh','Enable','N'),('UG00001','tsmDepartment','Create','Enable','N'),('UG00001','tsmDepartment','Update','Enable','N'),('UG00001','tsmDepartment','Remove','Enable','N'),('UG00001','tsmDepartment','Search','Enable','N'),('UG00001','tsmDepartment','Preview','Enable','N'),('UG00001','tsmWorkSchedule','Refresh','Enable','N'),('UG00001','tsmWorkSchedule','Create','Enable','N'),('UG00001','tsmWorkSchedule','Update','Enable','N'),('UG00001','tsmWorkSchedule','Remove','Enable','N'),('UG00001','tsmWorkSchedule','Search','Enable','N'),('UG00001','tsmWorkSchedule','Preview','Enable','N'),('UG00001','tsmLeaveType','Refresh','Enable','N'),('UG00001','tsmLeaveType','Create','Enable','N'),('UG00001','tsmLeaveType','Update','Enable','N'),('UG00001','tsmLeaveType','Remove','Enable','N'),('UG00001','tsmLeaveType','Search','Enable','N'),('UG00001','tsmLeaveType','Preview','Enable','N'),('UG00001','tsmHoliday','Refresh','Enable','N'),('UG00001','tsmHoliday','Create','Enable','N'),('UG00001','tsmHoliday','Update','Enable','N'),('UG00001','tsmHoliday','Remove','Enable','N'),('UG00001','tsmHoliday','Search','Enable','N'),('UG00001','tsmHoliday','Preview','Enable','N'),('UG00001','tsmImportDataFromBiometrics','Import','Enable','N'),('UG00001','tsmProcessDailyTimeRecord','Refresh','Enable','N'),('UG00001','tsmProcessDailyTimeRecord','Save','Enable','N'),('UG00001','tsmProcessDailyTimeRecord','Preview','Enable','N'),('UG00001','tsmProcessDailyTimeRecordHospital','Refresh','Enable','N'),('UG00001','tsmProcessDailyTimeRecordHospital','Save','Enable','N'),('UG00001','tsmProcessDailyTimeRecordHospital','Preview','Enable','N'),('UG00001','tsmOfficialBusinessEntry','Refresh','Enable','N'),('UG00001','tsmOfficialBusinessEntry','Create','Enable','N'),('UG00001','tsmOfficialBusinessEntry','Update','Enable','N'),('UG00001','tsmOfficialBusinessEntry','Remove','Enable','N'),('UG00001','tsmOfficialBusinessEntry','Approve','Enable','N'),('UG00001','tsmOfficialBusinessEntry','Search','Enable','N'),('UG00001','tsmOfficialBusinessEntry','Preview','Enable','N'),('UG00001','tsmLeaveEntry','Refresh','Enable','N'),('UG00001','tsmLeaveEntry','Create','Enable','N'),('UG00001','tsmLeaveEntry','Update','Enable','N'),('UG00001','tsmLeaveEntry','Remove','Enable','N'),('UG00001','tsmLeaveEntry','Approve','Enable','N'),('UG00001','tsmLeaveEntry','Search','Enable','N'),('UG00001','tsmLeaveEntry','Preview','Enable','N'),('UG00001','tsmHolidayEntry','Refresh','Enable','N'),('UG00001','tsmHolidayEntry','Create','Enable','N'),('UG00001','tsmHolidayEntry','Update','Enable','N'),('UG00001','tsmHolidayEntry','Remove','Enable','N'),('UG00001','tsmHolidayEntry','Approve','Enable','N'),('UG00001','tsmHolidayEntry','Search','Enable','N'),('UG00001','tsmHolidayEntry','Preview','Enable','N'),('UG00001','tsmAttendanceSummary','Preview','Enable','N'),('UG00001','tsmAttendanceSummary','Refresh','Enable','N'),('UG00001','tsmAttendanceSummaryHospital','Refresh','Enable','N'),('UG00001','tsmAttendanceSummaryHospital','Preview','Enable','N'),('UG00001','tsmCSForm48','Refresh','Enable','N'),('UG00001','tsmCSForm48','Print','Enable','N'),('UG00001','tsmCSForm48','Print All','Enable','N'),('UG00001','tsmCSForm48Hospital','Refresh','Enable','N'),('UG00001','tsmCSForm48Hospital','Print','Enable','N'),('UG00001','tsmCSForm48Hospital','Print All','Enable','N'),('UG00001','tsmAuditTrail','Refresh','Enable','N'),('UG00001','tsmAuditTrail','Search','Enable','N'),('UG00001','tsmAuditTrail','Preview','Enable','N'),('UG00001','tsmSystemConfiguration','Save','Enable','N'),('UG00001','tsmUser','Refresh','Enable','N'),('UG00001','tsmUser','Create','Enable','N'),('UG00001','tsmUser','Update','Enable','N'),('UG00001','tsmUser','Remove','Enable','N'),('UG00001','tsmUser','Search','Enable','N'),('UG00001','tsmUser','Preview','Enable','N'),('UG00001','tsmUserGroup','Refresh','Enable','N'),('UG00001','tsmUserGroup','Create','Enable','N'),('UG00001','tsmUserGroup','Update','Enable','N'),('UG00001','tsmUserGroup','Remove','Enable','N'),('UG00001','tsmUserGroup','Search','Enable','N'),('UG00001','tsmUserGroup','Preview','Enable','N'),('UG00001','tsmUserGroup','Save','Enable','N'),('UG00001','tsmUserGroup','Reload','Enable','N'),('UG00001','tsmUserGroup','Save Rights','Enable','N'),('UG00001','tsmChangeUserPassword','Save','Enable','N'),('UG00001','tsmScreenSaver','Save','Enable','N'),('UG00001','tsmBackupRestoreDatabase','Backup','Enable','N'),('UG00001','tsmBackupRestoreDatabase','Restore','Enable','N'),('UG00001','tsmBackupRestoreDatabase','Check Table Updates','Enable','N'),('UG00001','tsmSupport','Refresh','Enable','N'),('UG00001','tsmSupport','Create','Enable','N'),('UG00001','tsmSupport','Update','Enable','N'),('UG00001','tsmSupport','Remove','Enable','N'),('UG00001','tsmSupport','Close','Enable','N'),('UG00001','tsmSupport','Preview','Enable','N'),('UG00001','tsmOvertimeEntry','Refresh','Enable','N');

/*Table structure for table `workschedule` */

DROP TABLE IF EXISTS `workschedule`;

CREATE TABLE `workschedule` (
  `WorkScheduleCode` varchar(30) NOT NULL,
  `WorkScheduleDescription` varchar(200) DEFAULT NULL,
  `HospitalEmployee` enum('Y','N') DEFAULT 'N',
  `Remarks` varchar(200) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`WorkScheduleCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `workschedule` */

insert  into `workschedule`(`WorkScheduleCode`,`WorkScheduleDescription`,`HospitalEmployee`,`Remarks`,`Status`) values ('','7:30-4:30 Schedule','N','','Active'),('10pm-6am','10pm-6am Schedule','N','','Deleted'),('11am-7pm','11am-7pm Schedule','N','','Deleted'),('12pm-8pm','12pm-8pm Schedule','N','','Deleted'),('2pm-10pm','2pm-10pm Schedule','N','','Deleted'),('3am-11am','3am-11pm Schedule','N','','Deleted'),('3pm-11pm','3pm-11pm Schedule','N','','Deleted'),('4am-12nn','4am-12nn Schedule','N','','Deleted'),('5am-1pm','5am-1pm Schedule','N','','Deleted'),('6am-2pm','6am-2pm Schedule','N','','Deleted'),('7am-3pm','7am-3pm Schedule','N','','Deleted'),('9am-6pm','9:00-6:00 Schedule','N','','Active'),('BaDM1','7:30am-12nn, 1pm-4:30pm Dorm','N','','Active'),('BaDM2','BaDM2 Dorm Schedule','N','','Active'),('BDM','5am-8am, 4pm-9pm Dorm','N','','Active'),('CS','Regular Schedule','N','','Active'),('CSWS','Regular Schedule with Sat and Sun','N','','Active'),('faculty 9','tue, 11:10 break','N','','Active'),('Faculty1','7:30-4:30, 11:10break','N','','Active'),('faculty10','mon, wed 11:10 break','N','','Active'),('faculty11','fri 12 break','N','','Active'),('faculty12','thu 12 break','N','','Active'),('Faculty2','7:30-4:30, 12break','N','','Active'),('Faculty3','7:30-4:30, 11:10 or 12 break','N','','Active'),('Faculty4','7:30-4:30, 12break wed','N','','Active'),('Faculty5','tue, fri 11:10 break','N','','Active'),('Faculty6','mon 11:10 break','N','','Active'),('Faculty7','fri 11:10 break','N','','Active'),('faculty8','thu, fri 11:10 break','N','','Active'),('GaDM1','GaDM1 Dorm','N','','Active'),('GaDM2','GaDM2 9am-12pm, 1-6pm','N','','Active'),('GDM','5-8am, 4-9pm GirlsDorm','N','','Active'),('NBS','No Break Schedule (08:00AM-05:00PM)','N','','Active'),('NWS','No Work Schedule','N','','Active'),('OTS','Open Time Schedule','N','','Active');

/*Table structure for table `workscheduledetail` */

DROP TABLE IF EXISTS `workscheduledetail`;

CREATE TABLE `workscheduledetail` (
  `WorkScheduleDetailId` bigint(20) NOT NULL AUTO_INCREMENT,
  `WorkScheduleCode` varchar(30) DEFAULT NULL,
  `Day` varchar(20) DEFAULT NULL,
  `TimeIn` varchar(30) DEFAULT NULL,
  `BreakOut` varchar(30) DEFAULT NULL,
  `BreakIn` varchar(30) DEFAULT NULL,
  `TimeOut` varchar(30) DEFAULT NULL,
  `Status` enum('Active','Deleted') DEFAULT 'Active',
  PRIMARY KEY (`WorkScheduleDetailId`)
) ENGINE=InnoDB AUTO_INCREMENT=292 DEFAULT CHARSET=latin1;

/*Data for the table `workscheduledetail` */

insert  into `workscheduledetail`(`WorkScheduleDetailId`,`WorkScheduleCode`,`Day`,`TimeIn`,`BreakOut`,`BreakIn`,`TimeOut`,`Status`) values (42,'NBS','Monday','08:00 AM','','','05:00 PM','Active'),(43,'NBS','Tuesday','08:00 AM','','','05:00 PM','Active'),(44,'NBS','Wednesday','08:00 AM','','','05:00 PM','Active'),(45,'NBS','Thursday','08:00 AM','','','05:00 PM','Active'),(46,'NBS','Friday','08:00 AM','','','05:00 PM','Active'),(124,'3am-11pm','Sunday','03:00 AM','03:00 AM','03:00 AM','11:00 AM','Active'),(125,'3am-11pm','Monday','03:00 AM','03:00 AM','03:00 AM','11:00 AM','Active'),(126,'3am-11pm','Tuesday','03:00 AM','03:00 AM','03:00 AM','11:00 AM','Active'),(127,'3am-11pm','Wednesday','03:00 AM','03:00 AM','03:00 AM','11:00 AM','Active'),(128,'3am-11pm','Thursday','03:00 AM','03:00 AM','03:00 AM','11:00 AM','Active'),(129,'3am-11pm','Friday','03:00 AM','03:00 AM','03:00 AM','11:00 AM','Active'),(130,'3am-11pm','Saturday','03:00 AM','03:00 AM','03:00 AM','11:00 AM','Active'),(145,'CS','Monday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(146,'CS','Tuesday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(147,'CS','Wednesday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(148,'CS','Thursday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(149,'CS','Friday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(150,'CSWS','Sunday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(151,'CSWS','Monday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(152,'CSWS','Tuesday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(153,'CSWS','Wednesday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(154,'CSWS','Thursday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(155,'CSWS','Friday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(156,'CSWS','Saturday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(162,'','Monday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(163,'','Tuesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(164,'','Wednesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(165,'','Thursday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(166,'','Friday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(167,'9am-6pm','Monday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(168,'9am-6pm','Tuesday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(169,'9am-6pm','Wednesday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(170,'9am-6pm','Thursday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(171,'9am-6pm','Friday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(192,'BDM','Monday','05:00 AM','08:00 AM','04:00 PM','09:00 PM','Active'),(193,'BDM','Tuesday','05:00 AM','08:00 AM','04:00 PM','09:00 PM','Active'),(194,'BDM','Wednesday','05:00 AM','08:00 AM','04:00 PM','09:00 PM','Active'),(195,'BDM','Thursday','05:00 AM','08:00 AM','04:00 PM','09:00 PM','Active'),(196,'BDM','Friday','05:00 AM','11:00 AM','01:00 PM','03:00 PM','Active'),(197,'BaDM1','Sunday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(198,'BaDM1','Monday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(199,'BaDM1','Tuesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(200,'BaDM1','Wednesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(201,'BaDM1','Saturday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(202,'BaDM2','Sunday','06:00 AM','07:30 AM','04:30 PM','11:00 PM','Active'),(203,'BaDM2','Monday','07:00 AM','08:00 AM','04:00 PM','11:00 PM','Active'),(204,'BaDM2','Thursday','07:00 AM','12:00 PM','07:00 PM','10:00 PM','Active'),(205,'BaDM2','Friday','07:00 AM','09:00 AM','03:00 PM','09:00 PM','Active'),(206,'BaDM2','Saturday','06:00 AM','07:30 AM','04:30 PM','11:00 PM','Active'),(207,'GDM','Monday','05:00 AM','08:00 AM','04:00 PM','09:00 PM','Active'),(208,'GDM','Tuesday','05:00 AM','08:00 AM','04:00 PM','09:00 PM','Active'),(209,'GDM','Wednesday','05:00 AM','08:00 AM','04:00 PM','09:00 PM','Active'),(210,'GDM','Thursday','05:00 AM','08:00 AM','04:00 PM','09:00 PM','Active'),(211,'GDM','Friday','05:00 AM','08:00 AM','01:00 PM','06:00 PM','Active'),(212,'GaDM1','Sunday','06:00 AM','12:00 PM','01:00 PM','03:00 PM','Active'),(213,'GaDM1','Monday','07:00 AM','12:00 PM','01:00 PM','04:00 PM','Active'),(214,'GaDM1','Tuesday','03:00 PM','','','11:00 PM','Active'),(215,'GaDM1','Wednesday','08:00 AM','12:00 PM','01:00 PM','05:00 PM','Active'),(216,'GaDM1','Saturday','06:00 AM','12:00 PM','01:00 PM','03:00 PM','Active'),(217,'GaDM2','Monday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(218,'GaDM2','Tuesday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(219,'GaDM2','Wednesday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(220,'GaDM2','Thursday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(221,'GaDM2','Friday','09:00 AM','12:00 PM','01:00 PM','06:00 PM','Active'),(227,'Faculty2','Monday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(228,'Faculty2','Tuesday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(229,'Faculty2','Wednesday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(230,'Faculty2','Thursday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(231,'Faculty2','Friday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(232,'Faculty1','Monday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(233,'Faculty1','Tuesday','07:30 AM','11:10 PM','12:00 PM','04:30 PM','Active'),(234,'Faculty1','Wednesday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(235,'Faculty1','Thursday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(236,'Faculty1','Friday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(237,'Faculty3','Monday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(238,'Faculty3','Tuesday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(239,'Faculty3','Wednesday','07:30 AM','12:00 PM','12:00 PM','04:30 PM','Active'),(240,'Faculty3','Thursday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(241,'Faculty3','Friday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(242,'Faculty4','Monday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(243,'Faculty4','Tuesday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(244,'Faculty4','Wednesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(245,'Faculty4','Thursday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(246,'Faculty4','Friday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(252,'Faculty5','Monday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(253,'Faculty5','Tuesday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(254,'Faculty5','Wednesday','07:30 AM','12:00 PM','01:00 PM','04:30 AM','Active'),(255,'Faculty5','Thursday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(256,'Faculty5','Friday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(257,'Faculty6','Monday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(258,'Faculty6','Tuesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(259,'Faculty6','Wednesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(260,'Faculty6','Thursday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(261,'Faculty6','Friday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(262,'Faculty7','Monday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(263,'Faculty7','Tuesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(264,'Faculty7','Wednesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(265,'Faculty7','Thursday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(266,'Faculty7','Friday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(267,'faculty8','Monday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(268,'faculty8','Tuesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(269,'faculty8','Wednesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(270,'faculty8','Thursday','07:30 AM','11:10 AM','12:10 PM','04:30 PM','Active'),(271,'faculty8','Friday','07:30 AM','11:10 AM','12:10 PM','04:30 PM','Active'),(272,'faculty 9','Monday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(273,'faculty 9','Tuesday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(274,'faculty 9','Wednesday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(275,'faculty 9','Thursday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(276,'faculty 9','Friday','07:30 AM','12:00 PM','01:00 PM','04:30 PM','Active'),(277,'faculty10','Monday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(278,'faculty10','Tuesday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(279,'faculty10','Wednesday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(280,'faculty10','Thursday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(281,'faculty10','Friday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(282,'faculty11','Monday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(283,'faculty11','Tuesday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(284,'faculty11','Wednesday','07:30 AM','11:10 PM','12:00 PM','04:30 PM','Active'),(285,'faculty11','Thursday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(286,'faculty11','Friday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(287,'faculty12','Monday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(288,'faculty12','Tuesday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(289,'faculty12','Wednesday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active'),(290,'faculty12','Thursday','07:30 AM','12:00 PM','12:50 PM','04:30 PM','Active'),(291,'faculty12','Friday','07:30 AM','11:10 AM','12:00 PM','04:30 PM','Active');

/* Function  structure for function  `fGenerateSequence` */

/*!50003 DROP FUNCTION IF EXISTS `fGenerateSequence` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fGenerateSequence`(pTable VARCHAR(100)) RETURNS varchar(30) CHARSET latin1
BEGIN
	UPDATE sequence SET LastNumber = LastNumber + 1 WHERE `Table` = pTable;
	
	RETURN (SELECT CONCAT(Prefix,LPAD(LastNumber,`Length`,'0')) AS SequenceId
	FROM sequence WHERE `Table` = pTable);
    END */$$
DELIMITER ;

/* Function  structure for function  `fGenerateSequenceNoPrefix` */

/*!50003 DROP FUNCTION IF EXISTS `fGenerateSequenceNoPrefix` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fGenerateSequenceNoPrefix`(pTable
VARCHAR(100)) RETURNS int(10)
BEGIN
	UPDATE sequence SET LastNumber = LastNumber + 1 WHERE `Table` = pTable;	
	RETURN (SELECT LastNumber FROM sequence WHERE `Table` = pTable);
    END */$$
DELIMITER ;

/* Function  structure for function  `fGetSequenceNoPlus1` */

/*!50003 DROP FUNCTION IF EXISTS `fGetSequenceNoPlus1` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fGetSequenceNoPlus1`(pTable
VARCHAR(100), pOutletCode VARCHAR(30)) RETURNS varchar(30) CHARSET latin1
BEGIN
	RETURN (SELECT CONCAT(Prefix,LPAD(LastNumber+1,`Length`,'0')) AS SequenceId
	FROM sequence WHERE `Table` = pTable AND OutletCode = pOutletCode);
    END */$$
DELIMITER ;

/* Function  structure for function  `fGetSequenceNoPrefix` */

/*!50003 DROP FUNCTION IF EXISTS `fGetSequenceNoPrefix` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fGetSequenceNoPrefix`(pTable
VARCHAR(100)) RETURNS int(10)
BEGIN
	RETURN (SELECT LastNumber FROM sequence WHERE `Table` = pTable);
    END */$$
DELIMITER ;

/* Function  structure for function  `fGetUsername` */

/*!50003 DROP FUNCTION IF EXISTS `fGetUsername` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fGetUsername`() RETURNS varchar(30) CHARSET latin1
BEGIN
	return @Username;
    END */$$
DELIMITER ;

/* Function  structure for function  `fWhosThisUser` */

/*!50003 DROP FUNCTION IF EXISTS `fWhosThisUser` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `fWhosThisUser`(pUsername VARCHAR(30)) RETURNS varchar(100) CHARSET latin1
BEGIN
	RETURN (SELECT Fullname from `user` where Username = pUsername);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getUserGroupRights` */

/*!50003 DROP PROCEDURE IF EXISTS  `getUserGroupRights` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserGroupRights`(pUsername varchar(30))
BEGIN
	set @UserGroupId = (Select UserGroupId from `user` where Username = pUsername);
	Select ItemName,Rights from usergrouprights where UserGroupId = @UserGroupId and `Status`='Enable';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `SETUPUSERGROUP` */

/*!50003 DROP PROCEDURE IF EXISTS  `SETUPUSERGROUP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SETUPUSERGROUP`()
BEGIN
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmBook',ItemText='Books',MenuSeqNo=1,ItemSeqNo=1;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmCategory',ItemText='Category',MenuSeqNo=1,ItemSeqNo=2;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmBranch',ItemText='Branch',MenuSeqNo=1,ItemSeqNo=3;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmPublisher',ItemText='Publisher',MenuSeqNo=1,ItemSeqNo=4;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmCustomer',ItemText='Customer',MenuSeqNo=1,ItemSeqNo=5;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmAgent',ItemText='Agent',MenuSeqNo=1,ItemSeqNo=6;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmDiscount',ItemText='Discount',MenuSeqNo=1,ItemSeqNo=7;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmCurrency',ItemText='Currency',MenuSeqNo=1,ItemSeqNo=8;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmEmployee',ItemText='Employee',MenuSeqNo=1,ItemSeqNo=9;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmCompany',ItemText='Company',MenuSeqNo=1,ItemSeqNo=10;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmDepartment',ItemText='Department',MenuSeqNo=1,ItemSeqNo=11;
	INSERT INTO menuitem SET MenuName = 'MasterFileMenu',MenuText='Master File',ItemName ='tsmPosition',ItemText='Position',MenuSeqNo=1,ItemSeqNo=12;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spApproveHolidayEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spApproveHolidayEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spApproveHolidayEntry`(pHolidayEntryId BIGINT(20),pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	SET @HolidayDate = (SELECT `Date` FROM holidayentry WHERE HolidayEntryId = pHolidayEntryId AND `Status`='Active' AND Approve = 'N');
	UPDATE dailytimerecord SET
	TimeIn = 'Holiday',
	BreakOut =  'Holiday',
	BreakIn = 'Holiday',
	TimeOut = 'Holiday',
	HolidayCount = 1,
	DaysWorkCount = 1
	WHERE
	date(Date) = date(@HolidayDate) AND `Status` = 'Active';
	
	UPDATE holidayentry SET
	Approve = 'Y',
	ApprovedBy = pUsername
	WHERE
	HolidayEntryId = pHolidayEntryId AND `Status`='Active' AND Approve = 'N';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' approves a Holiday Entry. HolidayEntryId:',pHolidayEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spApproveLeaveEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spApproveLeaveEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spApproveLeaveEntry`(pLeaveEntryId bigint(20),pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN
	set @EmployeeNo = (select EmployeeNo from leaveentry where LeaveEntryId = pLeaveEntryId);
	SET @LeaveTypeDescription = (SELECT lt.LeaveTypeDescription FROM leaveentry le LEFT JOIN leavetype lt ON le.LeaveTypeCode = lt.LeaveTypeCode WHERE le.LeaveEntryId = pLeaveEntryId);
	SET @Category = (SELECT lt.Category FROM leaveentry le left join leavetype lt on le.LeaveTypeCode = lt.LeaveTypeCode WHERE le.LeaveEntryId = pLeaveEntryId);
	SET @LeaveEntryDate = (SELECT `Date` FROM leaveentry WHERE LeaveEntryId = pLeaveEntryId);
	SET @LeaveTime =(SELECT `Time` FROM leaveentry WHERE LeaveEntryId = pLeaveEntryId);
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = @LeaveEntryDate AND EmployeeNo = @EmployeeNo AND `Status` = 'Active' LIMIT 1);
	SET @TimeOut = (SELECT TimeOut FROM dailytimerecord WHERE DailyTimeRecordId = @DailyTimeRecordId);
	
	IF(@DailyTimeRecordId != '') THEN
		if(@LeaveTime = 'Whole Day') then
			UPDATE dailytimerecord SET
			TimeIn = @Category,
			BreakOut = @Category,
			BreakIn = @Category,
			TimeOut = @Category,
			DaysWorkCount =  1,
			LeaveCount = 1
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		end if;
		
		IF(@LeaveTime = 'Morning') THEN
			if(@TimeOut = '')then
				UPDATE dailytimerecord SET
				TimeIn = @Category,
				BreakOut = @Category,
				DaysWorkCount = 0.50,
				LeaveCount = 1
				WHERE
				DailyTimeRecordId = @DailyTimeRecordId;
			else
				UPDATE dailytimerecord SET
				TimeIn = @Category,
				BreakOut = @Category,
				DaysWorkCount = 1,
				LeaveCount = 1
				WHERE
				DailyTimeRecordId = @DailyTimeRecordId;
			end if;
		END IF;
		
		IF(@LeaveTime = 'Afternoon') THEN
			UPDATE dailytimerecord SET
			BreakIn = @Category,
			TimeOut = @Category,
			DaysWorkCount =  0.50,
			LeaveCount = 1
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		END IF;
	else
		IF(@LeaveTime = 'Whole Day') THEN
			INSERT INTO dailytimerecord SET
			`Date` = @LeaveEntryDate,
			EmployeeNo = @EmployeeNo,
			TimeIn = @Category,
			BreakOut = @Category,
			BreakIn = @Category,
			TimeOut = @Category,
			DaysWorkCount =  1,
			LeaveCount = 1;
		END IF;
		
		IF(@LeaveTime = 'Morning') THEN
			INSERT INTO dailytimerecord SET
			`Date` = @LeaveEntryDate,
			EmployeeNo = @EmployeeNo,
			TimeIn = @Category,
			BreakOut = @Category,
			DaysWorkCount =  0.50,
			LeaveCount = 1;
		END IF;
		
		IF(@LeaveTime = 'Afternoon') THEN
			INSERT INTO dailytimerecord SET
			`Date` = @LeaveEntryDate,
			EmployeeNo = @EmployeeNo,
			BreakIn = @Category,
			TimeOut = @Category,
			DaysWorkCount =  0.50,
			LeaveCount = 1;
		END IF;
	end if;
	update leaveentry SET
	Approve = 'Y',
	ApprovedBy = pUsername
	where
	LeaveEntryId = pLeaveEntryId and `Status` = 'Active';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' approves a Leave Entry. LeaveEntryId:',pLeaveEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spApproveOfficialBusinessEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spApproveOfficialBusinessEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spApproveOfficialBusinessEntry`(pOfficialBusinessEntryId BIGINT(20),
							pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	SET @EmployeeNo = (SELECT EmployeeNo FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'N');
	SET @OfficialBusinessDate = (SELECT `Date` FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'N');	
	SET @TimeIn = (SELECT TimeIn FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'N');
	SET @BreakOut = (SELECT BreakOut FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'N');
	SET @BreakIn = (SELECT BreakIn FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'N');
	SET @TimeOut = (SELECT TimeOut FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'N');
	SET @OBType = (SELECT `Type` FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'N');
	set @DailyTimeRecordId = (select DailyTimeRecordId from dailytimerecord where DATE(`Date`) = @OfficialBusinessDate AND EmployeeNo = @EmployeeNo AND `Status` = 'Active' limit 1);
	SET @TimeOutDTR = (SELECT TimeOut FROM dailytimerecord WHERE DailyTimeRecordId = @DailyTimeRecordId);
	
	IF(@DailyTimeRecordId != '') THEN
		if(@TimeIn = 'Y') then
			UPDATE dailytimerecord SET
			TimeIn = 'OB',
			OfficialBusinessCount =  1
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		end if;
		IF(@BreakOut = 'Y') THEN
			if(@TimeOutDTR = '') then
				UPDATE dailytimerecord SET
				BreakOut = 'OB',
				OfficialBusinessCount =  1,
				DaysWorkCount =  0.50
				WHERE
				DailyTimeRecordId = @DailyTimeRecordId;
			else
				UPDATE dailytimerecord SET
				BreakOut = 'OB',
				OfficialBusinessCount =  1,
				DaysWorkCount =  1
				WHERE
				DailyTimeRecordId = @DailyTimeRecordId;
			end if;
		END IF;
		IF(@BreakIn = 'Y') THEN
			UPDATE dailytimerecord SET
			BreakIn = 'OB',
			OfficialBusinessCount =  1
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		END IF;
		IF(@TimeOut = 'Y') THEN
			UPDATE dailytimerecord SET
			TimeOut = 'OB',
			OfficialBusinessCount =  1,
			DaysWorkCount =  1
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		END IF;
	else		
		/*if the theres no dtr*/
		IF(@TimeIn = 'Y' and @BreakOut = 'Y' and @BreakIn = 'Y' and @TimeOut = 'Y') THEN
			INSERT INTO dailytimerecord SET
			`Date` = @OfficialBusinessDate,
			EmployeeNo = @EmployeeNo,
			TimeIn = 'OB',
			BreakOut =  'OB',
			BreakIn = 'OB',
			TimeOut = 'OB',
			DaysWorkCount =  1,
			OfficialBusinessCount = 1;
		else 
			if(@TimeIn = 'Y' AND @BreakOut = 'Y') then
				INSERT INTO dailytimerecord SET
				`Date` = @OfficialBusinessDate,
				EmployeeNo = @EmployeeNo,
				TimeIn = 'OB',
				BreakOut = 'OB',
				DaysWorkCount =  0.50,
				OfficialBusinessCount = 1;
			else 
				IF(@BreakIn = 'Y' AND @TimeOut = 'Y') THEN
					INSERT INTO dailytimerecord SET
					`Date` = @OfficialBusinessDate,
					EmployeeNo = @EmployeeNo,
					BreakIn = 'OB',
					TimeOut = 'OB',
					DaysWorkCount =  0.50,
					OfficialBusinessCount = 1;
				else
					IF(@TimeIn = 'Y' AND @TimeOut = 'Y') THEN
						INSERT INTO dailytimerecord SET
						`Date` = @OfficialBusinessDate,
						EmployeeNo = @EmployeeNo,
						TimeIn = 'OB',
						TimeOut = 'OB',
						DaysWorkCount =  1.00,
						OfficialBusinessCount = 1;
					ELSE
						IF(@TimeIn = 'Y') THEN
							INSERT INTO dailytimerecord SET
							`Date` = @OfficialBusinessDate,
							EmployeeNo = @EmployeeNo,
							TimeIn = 'OB',
							OfficialBusinessCount = 1;
						end if;
						IF(@BreakOut = 'Y') THEN
							INSERT INTO dailytimerecord SET
							`Date` = @OfficialBusinessDate,
							EmployeeNo = @EmployeeNo,
							BreakOut = 'OB',
							DaysWorkCount = 0.50,
							OfficialBusinessCount = 1;
						END IF;
						IF(@BreakIn = 'Y') THEN
							INSERT INTO dailytimerecord SET
							`Date` = @OfficialBusinessDate,
							EmployeeNo = @EmployeeNo,
							BreakIn = 'OB',
							OfficialBusinessCount = 1;
						END IF;
						IF(@TimeOut = 'Y') THEN
							INSERT INTO dailytimerecord SET
							`Date` = @OfficialBusinessDate,
							EmployeeNo = @EmployeeNo,
							TimeOut = 'OB',
							DaysWorkCount =  1,
							OfficialBusinessCount = 1;
						END IF;
					end if;
				end if;
			END IF; 
		END IF;
	end if;
	
	UPDATE officialbusinessentry SET
	Approve = 'Y',
	ApprovedBy = pUsername
	WHERE
	OfficialBusinessEntryId = pOfficialBusinessEntryId and 
	`Status` = 'Active' and Approve = 'N';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' approves a Official Business Entry. OfficialBusinessEntryId:',pOfficialBusinessEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spApproveOvertimeEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spApproveOvertimeEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spApproveOvertimeEntry`(pOvertimeEntryId BIGINT(20),pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	SET @EmployeeNo = (SELECT EmployeeNo FROM overtimeentry WHERE OvertimeEntryId = pOvertimeEntryId AND `Status`='Active' AND Approve = 'N');
	SET @OvertimeDate = (SELECT `Date` FROM overtimeentry WHERE OvertimeEntryId = pOvertimeEntryId AND `Status`='Active' AND Approve = 'N');	
	set @TimeIn = (Select DATE_FORMAT(TimeIn,'%h:%i %p') from overtimeentry where OvertimeEntryId = pOvertimeEntryId and `Status`='Active' AND Approve = 'N');
	SET @TimeOut = (SELECT DATE_FORMAT(TimeOut,'%h:%i %p') FROM overtimeentry WHERE OvertimeEntryId = pOvertimeEntryId AND `Status`='Active' AND Approve = 'N');
	SET @Overtime = (SELECT Overtime FROM overtimeentry WHERE OvertimeEntryId = pOvertimeEntryId AND `Status`='Active' AND Approve = 'N');
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = @OvertimeDate AND EmployeeNo = @EmployeeNo AND `Status` = 'Active');
	SET @countDailyTimeRecordId = (SELECT count(DailyTimeRecordId) FROM dailytimerecord WHERE DATE(`Date`) = @OvertimeDate AND EmployeeNo = @EmployeeNo AND `Status` = 'Active');
	
	IF(@countDailyTimeRecordId != 0) THEN
		UPDATE dailytimerecord SET
		OvertimeIn = @TimeIn,
		OvertimeOut =  @TimeOut,
		Overtime = @Overtime,
		OvertimeCount = 1
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId AND `Status` = 'Active';
	else
		INSERT INTO dailytimerecord SET
		`Date` = @OvertimeDate,
		EmployeeNo = @EmployeeNo,
		OvertimeIn = @TimeIn,
		OvertimeOut =  @TimeOut,
		Overtime = @Overtime,
		OvertimeCount = 1;
	end if;
	
	UPDATE overtimeentry SET
	Approve = 'Y',
	ApprovedBy = pUsername
	WHERE
	OvertimeEntryId = pOvertimeEntryId AND `Status`='Active' AND Approve = 'N';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' approves a Overtime Entry. OvertimeEntryId:',pOvertimeEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spAuthenticateUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `spAuthenticateUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spAuthenticateUser`(pUsername VARCHAR(30),
					pPassword VARCHAR(50), pHostname VARCHAR(15))
BEGIN
	SELECT * FROM `user` WHERE Username = pUsername AND `Password` = MD5(pPassword) AND `Status` = 'Active';
		
	SET @counter = (SELECT COUNT(*) FROM `user` WHERE Username = pUsername AND `Password` = MD5(pPassword) AND `Status` = 'Active');
	IF (@counter = 1) THEN
		INSERT audittrail SET
		LogDescription = CONCAT(fWhosThisUser(pUsername),' has log in using the password:',pPassword),
		Username = pUsername,
		`Date` = NOW(),
		Hostname = pHostname;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCancelHolidayEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCancelHolidayEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCancelHolidayEntry`(pHolidayEntryId BIGINT(20),pCancelledReason varchar(200),
							pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	SET @HolidayDate = (SELECT `Date` FROM holidayentry WHERE HolidayEntryId = pHolidayEntryId AND `Status`='Active' AND Approve = 'Y');
	
	UPDATE dailytimerecord SET
	TimeIn = '',
	BreakOut =  '',
	BreakIn = '',
	TimeOut = '',
	HolidayCount = 0,
	DaysWorkCount = 0
	WHERE
	DATE(DATE) = DATE(@HolidayDate) AND `Status` = 'Active';
	
	UPDATE holidayentry SET
	Cancel = 'Y',
	CancelledBy = pUsername,
	CancelledReason = pCancelledReason
	WHERE
	HolidayEntryId = pHolidayEntryId AND `Status`='Active' AND Approve = 'Y';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' cancels a Holiday Entry. HolidayEntryId:',pHolidayEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCancelLeaveEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCancelLeaveEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCancelLeaveEntry`(pLeaveEntryId BIGINT(20),pCancelledReason varchar(200),pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN
	SET @EmployeeNo = (SELECT EmployeeNo FROM leaveentry WHERE LeaveEntryId = pLeaveEntryId);
	SET @LeaveEntryDate = (SELECT `Date` FROM leaveentry WHERE LeaveEntryId = pLeaveEntryId);
	SET @LeaveTime =(SELECT `Time` FROM leaveentry WHERE LeaveEntryId = pLeaveEntryId);
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = @LeaveEntryDate AND EmployeeNo = @EmployeeNo AND `Status` = 'Active' LIMIT 1);
	
	IF(@LeaveTime = 'Whole Day') THEN
		UPDATE dailytimerecord SET
		TimeIn = '',
		BreakOut = '',
		BreakIn = '',
		TimeOut = '',
		DaysWorkCount = 0,
		LeaveCount = 0
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	END IF;
	
	IF(@LeaveTime = 'Morning') THEN
		IF(@TimeOut = '')THEN
			UPDATE dailytimerecord SET
			TimeIn = '',
			BreakOut = '',
			DaysWorkCount = 0,
			LeaveCount = 0
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		ELSE
			UPDATE dailytimerecord SET
			TimeIn = '',
			BreakOut = '',
			DaysWorkCount = 0,
			LeaveCount = 0
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		END IF;
	END IF;
	
	IF(@LeaveTime = 'Afternoon') THEN
		UPDATE dailytimerecord SET
		BreakIn = '',
		TimeOut = '',
		DaysWorkCount = 0,
		LeaveCount = 0
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	END IF;
	
	UPDATE leaveentry SET
	Cancel = 'Y',
	CancelledBy = pUsername,
	CancelledReason = pCancelledReason
	WHERE
	LeaveEntryId = pLeaveEntryId AND `Status` = 'Active';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' cancels a Leave Entry. LeaveEntryId:',pLeaveEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCancelOfficialBusinessEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCancelOfficialBusinessEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCancelOfficialBusinessEntry`(pOfficialBusinessEntryId BIGINT(20),
							pCancelledReason varchar(200),
							pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	SET @EmployeeNo = (SELECT EmployeeNo FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'Y');
	SET @OfficialBusinessDate = (SELECT `Date` FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'Y');	
	SET @TimeIn = (SELECT TimeIn FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'Y');
	SET @BreakOut = (SELECT BreakOut FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'Y');
	SET @BreakIn = (SELECT BreakIn FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'Y');
	SET @TimeOut = (SELECT TimeOut FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'Y');
	SET @OBType = (SELECT `Type` FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'Y');	
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = @OfficialBusinessDate AND EmployeeNo = @EmployeeNo AND `Status` = 'Active' LIMIT 1);
	SET @TimeOutDTR = (SELECT TimeOut FROM dailytimerecord WHERE DailyTimeRecordId = @DailyTimeRecordId);	
	
	IF(@TimeIn = 'Y') THEN
		UPDATE dailytimerecord SET
		TimeIn = '',
		OfficialBusinessCount = 0
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	END IF;
	IF(@BreakOut = 'Y') THEN
		IF(@TimeOutDTR = '') THEN
			UPDATE dailytimerecord SET
			BreakOut = '',
			OfficialBusinessCount = 0,
			DaysWorkCount = 0
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		ELSE
			UPDATE dailytimerecord SET
			BreakOut = '',
			OfficialBusinessCount = 0,
			DaysWorkCount = 0
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		END IF;
	END IF;
	IF(@BreakIn = 'Y') THEN
		UPDATE dailytimerecord SET
		BreakIn = '',
		OfficialBusinessCount = 0
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	END IF;
	IF(@TimeOut = 'Y') THEN
		UPDATE dailytimerecord SET
		TimeOut = '',
		OfficialBusinessCount = 0,
		DaysWorkCount = 0
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	END IF;
	
	
	UPDATE officialbusinessentry SET
	Cancel = 'Y',
	CancelledBy = pUsername,
	CancelledReason = pCancelledReason
	WHERE
	OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status`='Active' AND Approve = 'Y';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' cancels an Official Business Entry. OfficialBusinessEntryId:',pOfficialBusinessEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCancelOvertimeEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCancelOvertimeEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCancelOvertimeEntry`(pOvertimeEntryId BIGINT(20),pCancelledReason varchar(200),pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	SET @EmployeeNo = (SELECT EmployeeNo FROM overtimeentry WHERE OvertimeEntryId = pOvertimeEntryId AND `Status`='Active' AND Approve = 'Y');
	SET @OvertimeDate = (SELECT `Date` FROM overtimeentry WHERE OvertimeEntryId = pOvertimeEntryId AND `Status`='Active' AND Approve = 'Y');	
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = @OvertimeDate AND EmployeeNo = @EmployeeNo AND `Status` = 'Active');
	
	UPDATE dailytimerecord SET
	OvertimeIn = null,
	OvertimeOut =  null,
	Overtime = '00:00:00',
	OvertimeCount = 0
	WHERE
	DailyTimeRecordId = @DailyTimeRecordId AND `Status` = 'Active';
	
	UPDATE overtimeentry SET
	Cancel = 'Y',
	CancelledBy = pUsername,
	CancelledReason = pCancelledReason
	WHERE
	OvertimeEntryId = pOvertimeEntryId AND `Status`='Active' AND Approve = 'Y';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' cancels an Overtime Entry. OvertimeEntryId:',pOvertimeEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spChangePassword` */

/*!50003 DROP PROCEDURE IF EXISTS  `spChangePassword` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spChangePassword`(pUsername VARCHAR(30), pNewPassword VARCHAR(30), 
								pCurrentPassword VARCHAR(30), pHostname VARCHAR(15))
BEGIN
	UPDATE `user` SET
	`Password` = MD5(pNewPassword)
	WHERE
	Username = pUsername AND `Status` = 'Active';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' changes its password from (',pCurrentPassword,') to (',pNewPassword,')'),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCheckUserPassword` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCheckUserPassword` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCheckUserPassword`(pCurrentPassword VARCHAR(30), pUsername VARCHAR(30))
BEGIN
	SELECT * FROM `user` WHERE Username = pUsername AND `Password` = MD5(pCurrentPassword);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spCreateDTRDate` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCreateDTRDate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCreateDTRDate`(pEmployeeNo VARCHAR(30),pStartDate date,
						pEndDate date,pWorkScheduleCode VARCHAR(30))
BEGIN
	DECLARE startDate DATE;
	DECLARE endDate DATE;
	SET startDate = DATE(pStartDate);
	SET endDate = DATE(pEndDate);
	WHILE startDate <= endDate DO
		set @IsExistingCount = (select count(*) from dailytimerecord where date(`Date`)=date(startDate) and EmployeeNo=pEmployeeNo);
		if(@IsExistingCount = 0) then
			INSERT INTO dailytimerecord SET
			`Date` = startDate,
			EmployeeNo = pEmployeeNo,
			TimeIn = '',
			BreakOut = 'DAY', 
			BreakIn = 'OFF', 
			TimeOut = '';
			
			SET @DaysCount = (Select count(WorkScheduleDetailId) from workscheduledetail where `Day` = Dayname(startDate) and WorkScheduleCode = pWorkScheduleCode);
			if(@DaysCount = 1) then 
				update dailytimerecord set
				TimeIn = '',
				BreakOut = '', 
				BreakIn = '', 
				TimeOut = ''
				where
				Date(`Date`)>= date(startDate) and EmployeeNo = pEmployeeNo;
			end if;
		else
			UPDATE dailytimerecord SET
			TimeIn = '',
			BreakOut = 'DAY', 
			BreakIn = 'OFF', 
			TimeOut = ''
			WHERE
			DATE(`Date`)>= DATE(startDate) AND EmployeeNo = pEmployeeNo;
		end if;
		
	        SET startDate = DATE_ADD(startDate,INTERVAL 1 DAY);
	END WHILE;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spDELETEFORTESTING` */

/*!50003 DROP PROCEDURE IF EXISTS  `spDELETEFORTESTING` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spDELETEFORTESTING`()
BEGIN
	DELETE FROM audittrail;
	DELETE FROM dailytimerecord;
	DELETE FROM holidayentry;
	DELETE FROM leaveentry;
	DELETE FROM officialbusinessentry;
	DELETE FROM overtimeentry;
	DELETE FROM holidayentry;	
	
	UPDATE sequence SET
	LastNumber = 0
	WHERE `Table` != 'UserGroup';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetActiveEmployees` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetActiveEmployees` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetActiveEmployees`(pEmploymentType varchar(30))
BEGIN
	Select EmployeeNo,BiometricsId,WorkScheduleCode,DepartmentCode,WorkScheduleCode
	from employee
	where
	EmploymentType = pEmploymentType and Active = 'Y' and `Status` ='Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetAllMenuItems` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetAllMenuItems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetAllMenuItems`()
BEGIN
	SELECT * FROM menuitem GROUP BY ItemName ORDER BY MenuSeqNo,ItemSeqNo;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetAllRights` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetAllRights` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetAllRights`(pItemName varchar(50))
BEGIN
	Select * from itemrights where ItemName = pItemName order by RightsSeqNo Asc; 
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetAllSpecialRights` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetAllSpecialRights` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetAllSpecialRights`()
BEGIN
	Select SpecialRights from specialrights where `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetAttendanceSummary` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetAttendanceSummary` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetAttendanceSummary`(pEmploymentType VARCHAR(30),pFromDate DATE, pToDate DATE)
BEGIN
	SELECT dtr.EmployeeNo AS `Emp. No.`,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
	d.DepartmentDescription AS `Department`,des.DesignationDescription AS `Designation`,
	CONCAT('#',SEC_TO_TIME(SUM(TIME_TO_SEC(ADDTIME(Late1,Late2)))),'#') AS `Late`,
	CONCAT('#',SEC_TO_TIME(SUM(TIME_TO_SEC(ADDTIME(Undertime1,Undertime2)))),'#') AS `Undertime`,
	CONCAT('#',SEC_TO_TIME(SUM(TIME_TO_SEC(dtr.Overtime))),'#') AS `Overtime`,
	sum(Late1Count+Late2Count) as `Late Count`,SUM(Undertime1Count+Undertime2Count) AS `Undertime Count`,
	sum(OvertimeCount) as `Overtime Count`,SUM(OfficialBusinessCount) AS `Official Business Count`,
	SUM(LeaveCount) AS `Leave Count`,SUM(HolidayCount) AS `Holiday Count`
	FROM dailytimerecord dtr
	LEFT JOIN employee e
	ON dtr.EmployeeNo = e.EmployeeNo
	LEFT JOIN department d
	ON e.DepartmentCode = d.DepartmentCode
	LEFT JOIN designation des
	ON e.DesignationCode = des.DesignationCode
	WHERE
	e.EmploymentType = pEmploymentType AND 
	DATE(dtr.Date) >= DATE(pFromDate) AND 
	DATE(dtr.Date) <= DATE(pToDate) AND 
	dtr.Status = 'Active' GROUP BY dtr.EmployeeNo ORDER BY d.DepartmentDescription,e.LastName;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetAuditTrailByDate` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetAuditTrailByDate` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetAuditTrailByDate`(pFrom Date,pTo Date)
BEGIN
	SELECT DATE_FORMAT(`Date`,'%M %d, %Y') AS `Transaction Date`,DATE_FORMAT(`Date`,'%h:%i:%s %p') AS `Transaction Time`,
	LogDescription AS `Log Description`, Hostname AS `Computer Name`
	FROM audittrail WHERE DATE(`Date`)>= DATE(pFrom) AND DATE(`Date`)<=DATE(pTo) ORDER BY `Date` ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetCSForm48Details` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetCSForm48Details` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetCSForm48Details`(pEmployeeNo VARCHAR(30),pFromDate DATE,pToDate DATE)
BEGIN
	SELECT DATE_FORMAT(`Date`,'%d') AS `Date`,TimeIn,BreakOut,BreakIn,TimeOut,
	OvertimeIn,OvertimeOut,Overtime,
	ADDTIME(addtime(Late1,Late2),addtime(Undertime1,Undertime2)) AS LateUT
	FROM dailytimerecord
	WHERE EmployeeNo = pEmployeeNo AND 
	DATE(`Date`) >= DATE(pFromDate) AND DATE(`Date`) <= DATE(pToDate) AND 
	`Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetCSForm48Total` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetCSForm48Total` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetCSForm48Total`(pEmployeeNo VARCHAR(30),pFromDate DATE, pToDate DATE)
BEGIN
	SELECT CONCAT('#',SEC_TO_TIME(SUM(TIME_TO_SEC(Overtime))),'#') AS `Total Overtime`,
	CONCAT('#',SEC_TO_TIME(SUM(TIME_TO_SEC(Addtime(ADDTIME(Late1,Late2),ADDTIME(Undertime1,Undertime2))))),'#') AS `Total LateUT`
	FROM dailytimerecord
	WHERE
	EmployeeNo = pEmployeeNo AND 
	DATE(Date) >= DATE(pFromDate) AND 
	DATE(Date) <= DATE(pToDate) AND 
	`Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetDailyTimeRecordHospital` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetDailyTimeRecordHospital` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetDailyTimeRecordHospital`(pEmployeeNo varchar(30),pFromDate date,pToDate date)
BEGIN
	SELECT DailyTimeRecordId as `Id`,
	DATE_FORMAT(`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(`Date`) AS `Day`,
	TimeIn AS `Time In`,BreakOut AS `Break Out`,BreakIn AS `Break In`,TimeOut AS `Time Out`,
	concat('#',HoursWork,'#') as `Hours Work`,Overtime,
	ADDTIME(Late1,Late2) as Late,
	ADDTIME(Undertime1,Undertime2) AS Undertime,
	Remarks
	FROM
	dailytimerecord
	WHERE
	`Status` = 'Active' AND EmployeeNo = pEmployeeNo and 
	DATE(`Date`) >= DATE(pFromDate) AND DATE(`Date`) <= DATE(pToDate) order BY DailyTimeRecordId ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetDailyTimeRecordRegular` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetDailyTimeRecordRegular` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetDailyTimeRecordRegular`(pEmployeeNo varchar(30),pFromDate date,pToDate date)
BEGIN
	SELECT DailyTimeRecordId as `Id`,
	DATE_FORMAT(`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(`Date`) AS `Day`,
	TimeIn AS `Time In`,BreakOut AS `Break Out`,BreakIn AS `Break In`,TimeOut AS `Time Out`,
	OvertimeIn AS `Overtime In`,OvertimeOut AS `Overtime Out`,
	ADDTIME(Late1,Late2) as Late,
	ADDTIME(Undertime1,Undertime2) AS Undertime,
	Overtime,Remarks
	FROM
	dailytimerecord
	WHERE
	`Status` = 'Active' AND EmployeeNo = pEmployeeNo and 
	DATE(`Date`) >= DATE(pFromDate) AND DATE(`Date`) <= DATE(pToDate) order BY DailyTimeRecordId ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetDepartments` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetDepartments` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetDepartments`(pDisplayType VARCHAR(15),pSearchString VARCHAR(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT DepartmentCode AS `Code`, DepartmentDescription AS `Department Description`,
			DepartmentHead AS `Department Head`,Designation,Remarks
			FROM department
			WHERE `Status` = 'Active' AND DepartmentDescription LIKE @SearchString;
	ELSE 
		IF(pDisplayType = 'ViewAll') THEN
			SELECT DepartmentCode AS `Code`, DepartmentDescription AS `Department Description`,
			DepartmentHead AS `Department Head`,Designation,Remarks
			FROM department
			WHERE `Status` = 'Active';
		END IF;
	END IF;	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetDepartmentsRegular` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetDepartmentsRegular` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetDepartmentsRegular`(pDisplayType VARCHAR(15),pSearchString VARCHAR(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT DepartmentCode AS `Code`, DepartmentDescription AS `Department Description`,
			DepartmentHead AS `Department Head`,Remarks
			FROM department
			WHERE `Status` = 'Active' AND DepartmentCode != 'CH' and 
			DepartmentDescription LIKE @SearchString;
	ELSE 
		IF(pDisplayType = 'ViewAll') THEN
			SELECT DepartmentCode AS `Code`, DepartmentDescription AS `Department Description`,
			DepartmentHead AS `Department Head`,Remarks
			FROM department
			WHERE `Status` = 'Active' and DepartmentCode != 'CH';
		END IF;
	END IF;	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetDesignations` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetDesignations` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetDesignations`(pDisplayType VARCHAR(15),pSearchString VARCHAR(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT DesignationCode as `Code`, DesignationDescription AS `Designation Description`,Remarks FROM designation WHERE `Status` = 'Active' AND DesignationDescription LIKE @SearchString;
	ELSE 
		IF(pDisplayType = 'ViewAll') THEN
			SELECT DesignationCode AS `Code`, DesignationDescription AS `Designation Description`,Remarks
			FROM designation WHERE `Status` = 'Active';
		END IF;
	END IF;	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetDTREmployeeList` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetDTREmployeeList` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetDTREmployeeList`(pFromDate date,pToDate date,pSearchString varchar(100),pDepartmentCode VARCHAR(30))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT dtr.EmployeeNo AS `No.`,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
		des.DesignationDescription AS `Designation`
		FROM
		dailytimerecord dtr
		LEFT JOIN employee e
		ON dtr.EmployeeNo = e.EmployeeNo
		LEFT JOIN designation des
		ON e.DesignationCode = des.DesignationCode
		WHERE
		dtr.Status = 'Active' AND
		DATE(`Date`) >= DATE(pFromDate) AND DATE(`Date`) <= DATE(pToDate) and
		(e.LastName LIKE @SearchString or e.FirstName LIKE @SearchString) GROUP BY dtr.EmployeeNo ASC;
	else
		if(pDepartmentCode != '') then
			SELECT dtr.EmployeeNo AS `No.`,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			des.DesignationDescription AS `Designation`
			FROM
			dailytimerecord dtr
			LEFT JOIN employee e
			ON dtr.EmployeeNo = e.EmployeeNo
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			WHERE
			dtr.Status = 'Active' AND
			DATE(`Date`) >= DATE(pFromDate) AND DATE(`Date`) <= DATE(pToDate) and
			e.DepartmentCode = pDepartmentCode GROUP BY dtr.EmployeeNo ASC;
		else
			SELECT dtr.EmployeeNo AS `No.`,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			des.DesignationDescription AS `Designation`
			FROM
			dailytimerecord dtr
			LEFT JOIN employee e
			ON dtr.EmployeeNo = e.EmployeeNo
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			WHERE
			dtr.Status = 'Active' AND
			DATE(`Date`) >= DATE(pFromDate) AND DATE(`Date`) <= DATE(pToDate) GROUP BY dtr.EmployeeNo ASC;
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetEmployee`(pEmployeeNo varchar(30))
BEGIN
	select 
	EmployeeNo,
	LastName,
	FirstName,
	MiddleName,
	Active,
	BiometricsId,
	EmploymentType,
	DesignationCode,
	DepartmentCode,
	WorkScheduleCode,
	Birthday,
	TIN,
	TINDeducted,
	PhilHealthId,
	PhilHealthDeducted,
	GSISId,
	GSISDeducted,
	PagibigId,
	PagibigDeducted,
	PagibigPS,
	PagibigGS,
	NoOfDependent,
	RateType,
	BasicPay,
	RA,TA,PERA,Subsistence,Laundry,Hazard,
	RAAmount,TAAmount,PERAAmount,SubsistenceAmount,
	LaundryAmount,HazardAPSPercentage,HazardAmount,
	ImmediateSupervisor,Remarks,Picture
	from employee
	where
	EmployeeNo = pEmployeeNo and `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetEmployeeListByEmploymentType` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetEmployeeListByEmploymentType` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetEmployeeListByEmploymentType`(pEmploymentType VARCHAR(30))
BEGIN
	SELECT e.EmployeeNo AS `No.`, CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
	des.DesignationDescription AS `Designation`,d.DepartmentDescription AS Department,
	e.ImmediateSupervisor as `Supervisor`
	FROM employee e
	LEFT JOIN department d
	ON e.DepartmentCode = d.DepartmentCode
	LEFT JOIN designation des
	ON e.DesignationCode = des.DesignationCode
	WHERE
	e.EmploymentType = pEmploymentType AND e.Status = 'Active' AND 
	e.Active = 'Y' ORDER BY d.DepartmentDescription,e.LastName ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetEmployeeListHospital` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetEmployeeListHospital` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetEmployeeListHospital`(pEmploymentType VARCHAR(30),pSearchString varchar(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT e.EmployeeNo AS `No.`,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
		d.DepartmentDescription AS Department,des.DesignationDescription AS Designation
		FROM employee e
		LEFT JOIN department d
		ON e.DepartmentCode = d.DepartmentCode
		LEFT JOIN designation des
		ON e.DesignationCode = des.DesignationCode
		WHERE
		e.Status = 'Active' AND e.Active = 'Y' AND e.EmploymentType = pEmploymentType AND 
		e.DepartmentCode = 'CH' AND
		(e.LastName LIKE @SearchString OR e.FirstName LIKE @SearchString) ORDER BY d.DepartmentDescription,e.LastName,e.FirstName ASC;
	ELSE
		SELECT e.EmployeeNo AS `No.`,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
		d.DepartmentDescription AS Department,des.DesignationDescription AS Designation
		FROM employee e
		LEFT JOIN department d
		ON e.DepartmentCode = d.DepartmentCode
		LEFT JOIN designation des
		ON e.DesignationCode = des.DesignationCode
		WHERE
		e.Status = 'Active' AND e.Active = 'Y' AND e.EmploymentType = pEmploymentType AND 
		e.DepartmentCode = 'CH' ORDER BY d.DepartmentDescription,e.LastName,e.FirstName ASC;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetEmployeeListRegular` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetEmployeeListRegular` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetEmployeeListRegular`(pEmploymentType varchar(30),pSearchString varchar(100),pDepartmentCode VARCHAR(30))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT e.EmployeeNo AS `No.`,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
		d.DepartmentDescription as Department,des.DesignationDescription AS Designation
		FROM employee e
		left join department d
		ON e.DepartmentCode = d.DepartmentCode
		LEFT JOIN designation des
		ON e.DesignationCode = des.DesignationCode
		WHERE
		e.Status = 'Active' and e.Active = 'Y' AND e.EmploymentType = pEmploymentType and 
		e.DepartmentCode != 'CH' and
		(e.LastName LIKE @SearchString or e.FirstName LIKE @SearchString) order BY d.DepartmentDescription,e.LastName,e.FirstName ASC;
	else
		if(pDepartmentCode != '') then
			SELECT e.EmployeeNo AS `No.`,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			d.DepartmentDescription AS Department,des.DesignationDescription AS Designation,e.BiometricsId AS `Bio. Id No.`
			FROM employee e
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			WHERE
			e.Status = 'Active' AND e.Active = 'Y' AND e.EmploymentType = pEmploymentType AND 
			e.DepartmentCode != 'CH' AND
			e.DepartmentCode = pDepartmentCode ORDER BY d.DepartmentDescription,e.LastName,e.FirstName ASC;
		else
			SELECT e.EmployeeNo AS `No.`,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			d.DepartmentDescription AS Department,des.DesignationDescription AS Designation,e.BiometricsId AS `Bio. Id No.`
			FROM employee e
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			WHERE
			e.Status = 'Active' AND e.Active = 'Y' AND e.EmploymentType = pEmploymentType AND 
			e.DepartmentCode != 'CH' order BY d.DepartmentDescription,e.LastName,e.FirstName ASC;
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetEmployees` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetEmployees` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetEmployees`(pDisplayType VARCHAR(15),pSearchString VARCHAR(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT e.EmployeeNo AS `No.`,e.LastName AS `Last Name`,
			e.FirstName AS `First Name`,e.MiddleName AS `Middle Name`,
			e.Active,e.BiometricsId AS `Bio. Id No.`,
			e.EmploymentType AS `Employment Type`,
			des.DesignationDescription AS `Designation`,
			d.DepartmentDescription AS `Department`,
			ws.WorkScheduleDescription AS `Work Schedule`,
			DATE_FORMAT(e.Birthday,'%m-%d-%Y') AS Birthday,
			e.TIN,e.TINDeducted AS `TIN Deducted`,
			e.PhilHealthId AS `PhilHealth Id`,e.PhilHealthDeducted AS `PhilHealth Deducted`,
			e.GSISId AS `GSIS Id`,e.GSISDeducted AS `GSIS Deducted`,
			e.PagibigId AS `Pagibig Id`,e.PagibigDeducted AS `Pagibig Deducted`,
			e.PagibigPS AS `Pagibig(PS)`,e.PagibigGS AS `Pagibig(GS)`,
			e.NoOfDependent AS `No. of Dependent`,
			e.RateType AS `Rate Type`,e.BasicPay AS `Basic Pay`,
			e.RA,e.TA,e.PERA,e.Subsistence,e.Laundry,e.Hazard,
			e.RAAmount AS `RA Amount`,e.TAAmount AS `TA Amount`,
			e.PERAAmount AS `PERA Amount`,e.SubsistenceAmount AS `Subsistence Amount`,
			e.LaundryAmount AS `Laundry Amount`,e.HazardAPSPercentage AS `Hazard APS(%)`,e.HazardAmount AS `Hazard Amount`,
			e.ImmediateSupervisor AS `Immediate Supervisor`,e.Remarks
			FROM employee e
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			LEFT JOIN workschedule ws
			ON e.WorkScheduleCode = ws.WorkScheduleCode
			WHERE e.Status = 'Active' AND (e.LastName LIKE @SearchString or 
			e.FirstName LIKE @SearchString or e.MiddleName LIKE @SearchString)
			ORDER BY e.LastName,e.FirstName;
	ELSE 
		IF(pDisplayType = 'ViewAll') THEN
			SELECT e.EmployeeNo AS `No.`,e.LastName AS `Last Name`,
			e.FirstName AS `First Name`,e.MiddleName AS `Middle Name`,
			e.Active,e.BiometricsId AS `Bio. Id No.`,
			e.EmploymentType AS `Employment Type`,
			des.DesignationDescription AS `Designation`,
			d.DepartmentDescription AS `Department`,
			ws.WorkScheduleDescription AS `Work Schedule`,
			DATE_FORMAT(e.Birthday,'%m-%d-%Y') AS Birthday,
			e.TIN,e.TINDeducted as `TIN Deducted`,
			e.PhilHealthId AS `PhilHealth Id`,e.PhilHealthDeducted as `PhilHealth Deducted`,
			e.GSISId AS `GSIS Id`,e.GSISDeducted as `GSIS Deducted`,
			e.PagibigId AS `Pagibig Id`,e.PagibigDeducted as `Pagibig Deducted`,
			e.PagibigPS AS `Pagibig(PS)`,e.PagibigGS AS `Pagibig(GS)`,
			e.NoOfDependent AS `No. of Dependent`,
			e.RateType AS `Rate Type`,e.BasicPay AS `Basic Pay`,
			e.RA,e.TA,e.PERA,e.Subsistence,e.Laundry,e.Hazard,
			e.RAAmount AS `RA Amount`,e.TAAmount AS `TA Amount`,
			e.PERAAmount AS `PERA Amount`,e.SubsistenceAmount AS `Subsistence Amount`,
			e.LaundryAmount AS `Laundry Amount`,e.HazardAPSPercentage AS `Hazard APS(%)`,e.HazardAmount as `Hazard Amount`,
			e.ImmediateSupervisor as `Immediate Supervisor`,e.Remarks
			FROM employee e
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			LEFT Join workschedule ws
			ON e.WorkScheduleCode = ws.WorkScheduleCode
			WHERE e.Status = 'Active' order by e.LastName,e.FirstName;
		END IF;
	END IF;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetEnableRights` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetEnableRights` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetEnableRights`(pItemName VARCHAR(50),pUserGroupId VARCHAR(30))
BEGIN
	SELECT * FROM usergrouprights WHERE ItemName = pItemName AND `Status`='Enable' AND UserGroupId=pUserGroupId;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetFilters` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetFilters` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetFilters`(pTableName VARCHAR(100),pTemplateName VARCHAR(100))
BEGIN
	SELECT `Fields`,Operator,OperatorSign,`Values`,CheckAnd,CheckOr,SequenceNo,Private FROM searchfilters
	WHERE TableName = pTableName AND TemplateName = pTemplateName AND `Status` = 'Active' ORDER BY SequenceNo ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetHolidayEntries` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetHolidayEntries` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetHolidayEntries`()
BEGIN
	select he.HolidayEntryId as `Id`,
	he.Approve,
	DATE_FORMAT(he.`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(he.`Date`) AS `Day`,
	h.HolidayDescription as `Holiday Description`,h.Type,
	he.ApprovedBy as `Approved By`,he.Remarks
	from holidayentry he
	left join holiday h
	on he.HolidayCode = h.HolidayCode
	where
	he.Status = 'Active' order by he.Date Desc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetHolidayEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetHolidayEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetHolidayEntry`(pHolidayEntryId bigint(20))
BEGIN
	SELECT he.HolidayEntryId AS `Id`,
	he.Date,
	he.HolidayCode,h.HolidayDescription,
	h.Type,he.Approve,he.ApprovedBy AS `Approved By`,
	he.Remarks
	FROM holidayentry he
	LEFT JOIN holiday h
	ON he.HolidayCode = h.HolidayCode
	WHERE
	he.HolidayEntryId = pHolidayEntryId and 
	he.`Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetHolidayEntryStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetHolidayEntryStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetHolidayEntryStatus`(pHolidayEntryId BIGINT(20))
BEGIN
	SELECT Approve,Approvedby FROM holidayentry WHERE HolidayEntryId = pHolidayEntryId AND `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetHolidays` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetHolidays` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetHolidays`(pDisplayType VARCHAR(15),pSearchString VARCHAR(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT HolidayCode AS `Code`, HolidayDescription AS `Holiday Description`,
			`Type`,Remarks
			FROM holiday
			WHERE `Status` AND HolidayDescription LIKE @SearchString;
	ELSE 
		IF(pDisplayType = 'ViewAll') THEN
			SELECT HolidayCode AS `Code`, HolidayDescription AS `Holiday Description`,
			`Type`,Remarks
			FROM holiday
			WHERE `Status` = 'Active';
		END IF;
	END IF;	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetHolidayType` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetHolidayType` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetHolidayType`(pHolidayCode varchar(30))
BEGIN
	select `Type` from holiday where HolidayCode = pHolidayCode and `Status` ='Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetLastTimeIn` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetLastTimeIn` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetLastTimeIn`(pEmployeeNo varchar(30))
BEGIN
	Select DailyTimeRecordId,`Date`,TimeIn from dailytimerecord where EmployeeNo = pEmployeeNo and TimeIn != '' and TimeIn != 'Day Off' order by DailyTimeRecordId desc limit 1;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetLeaveEntries` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetLeaveEntries` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetLeaveEntries`(pEmploymentType VARCHAR(30),pFromDate DATE,pToDate DATE,
				pSearchString VARCHAR(100),pDepartmentCode VARCHAR(30))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT le.LeaveEntryId AS `Id`,le.EmployeeNo AS `Emp. No.`,le.Approve,
			CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation,
			lt.LeaveTypeDescription AS `Leave Type`,le.ReferenceNo AS `Ref. No.`,
			DATE_FORMAT(le.Date,'%m-%d-%Y') AS `Date`,DAYNAME(le.Date) AS `Day`,le.Time,
			le.Explanation,le.ApprovedBy AS `Approved By`,
			DATE_FORMAT(le.DateFiled,'%m-%d-%Y') AS `Date Filed`,le.Remarks
			FROM leaveentry le
			LEFT JOIN employee e
			ON le.EmployeeNo = e.EmployeeNo
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			LEFT JOIN leavetype lt
			ON lt.LeaveTypeCode = le.LeaveTypeCode
			WHERE e.EmploymentType = pEmploymentType AND 
			DATE(le.`Date`) >= DATE(pFromDate) AND DATE(le.`Date`) <= DATE(pToDate) AND
			(e.LastName LIKE @SearchString OR e.FirstName LIKE @SearchString) and  
			le.`Status` = 'Active' ORDER BY d.DepartmentDescription,e.LastName,e.FirstName,le.Date Asc;
	else
		if(pDepartmentCode != '') then
			SELECT le.LeaveEntryId AS `Id`,le.EmployeeNo AS `Emp. No.`,le.Approve,
			CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation,
			lt.LeaveTypeDescription AS `Leave Type`,le.ReferenceNo AS `Ref. No.`,
			DATE_FORMAT(le.Date,'%m-%d-%Y') AS `Date`,DAYNAME(le.Date) AS `Day`,le.Time,
			le.Explanation,le.ApprovedBy AS `Approved By`,
			DATE_FORMAT(le.DateFiled,'%m-%d-%Y') AS `Date Filed`,le.Remarks
			FROM leaveentry le
			LEFT JOIN employee e
			ON le.EmployeeNo = e.EmployeeNo
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			left join designation des
			on e.DesignationCode = des.DesignationCode
			LEFT JOIN leavetype lt
			ON lt.LeaveTypeCode = le.LeaveTypeCode
			WHERE e.EmploymentType = pEmploymentType AND 
			DATE(le.`Date`) >= DATE(pFromDate) AND DATE(le.`Date`) <= DATE(pToDate) AND
			e.DepartmentCode = pDepartmentCode and  
			le.`Status` = 'Active' ORDER BY d.DepartmentDescription,e.LastName,e.FirstName,le.Date ASC;
		else
			SELECT le.LeaveEntryId AS `Id`,le.EmployeeNo as `Emp. No.`,le.Approve,
			CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation,
			lt.LeaveTypeDescription as `Leave Type`,le.ReferenceNo as `Ref. No.`,
			DATE_FORMAT(le.Date,'%m-%d-%Y') AS `Date`,DAYNAME(le.Date) AS `Day`,le.Time,
			le.Explanation,le.ApprovedBy AS `Approved By`,
			DATE_FORMAT(le.DateFiled,'%m-%d-%Y') AS `Date Filed`,le.Remarks
			FROM leaveentry le
			LEFT JOIN employee e
			ON le.EmployeeNo = e.EmployeeNo
			left join department d
			on e.DepartmentCode = d.DepartmentCode
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			LEFT JOIN leavetype lt
			ON lt.LeaveTypeCode = le.LeaveTypeCode
			WHERE e.EmploymentType = pEmploymentType AND 
			DATE(le.`Date`) >= DATE(pFromDate) AND DATE(le.`Date`) <= DATE(pToDate) AND 
			le.`Status` = 'Active' ORDER BY d.DepartmentDescription,e.LastName,e.FirstName,le.Date ASC;
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetLeaveEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetLeaveEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetLeaveEntry`(pLeaveEntryId bigint(20))
BEGIN
	SELECT le.LeaveEntryId AS `Id`,le.EmployeeNo as `Emp. No.`,
	CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
	lt.LeaveTypeDescription AS `Leave Type`,lt.Category,le.ReferenceNo AS `Ref. No.`,
	DATE_FORMAT(le.Date,'%m-%d-%Y') AS `Date`,le.Time,
	le.Explanation,le.Approve,le.ApprovedBy AS `Approved By`,
	DATE_FORMAT(le.DateFiled,'%m-%d-%Y') AS `Date Filed`,le.Remarks
	FROM leaveentry le
	LEFT JOIN employee e
	ON le.EmployeeNo = e.EmployeeNo
	LEFT JOIN leavetype lt
	ON lt.LeaveTypeCode = le.LeaveTypeCode
	WHERE
	le.LeaveEntryId = pLeaveEntryId and 
	le.`Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetLeaveEntryStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetLeaveEntryStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetLeaveEntryStatus`(pLeaveEntryId BIGINT(20))
BEGIN
	SELECT Approve,Approvedby FROM leaveentry WHERE LeaveEntryId = pLeaveEntryId AND `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetLeaves` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetLeaves` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetLeaves`(pEmploymentType VARCHAR(30),pFromDate DATE,pToDate DATE)
BEGIN
	SELECT le.LeaveEntryId AS `Id`,
	CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
	lt.LeaveTypeDescription as `Leave Type`,lt.Category,le.ReferenceNo as `Ref. No.`,
	DATE_FORMAT(le.Date,'%m-%d-%Y') AS `Date`,le.Time,
	le.Explanation,le.Approve,le.ApprovedBy AS `Approved By`,
	DATE_FORMAT(le.DateFiled,'%m-%d-%Y') AS `Date Filed`,le.Remarks
	FROM leaveentry le
	LEFT JOIN employee e
	ON le.EmployeeNo = e.EmployeeNo
	LEFT JOIN leavetype lt
	ON lt.LeaveTypeCode = le.LeaveTypeCode
	WHERE e.EmploymentType = pEmploymentType AND 
	DATE(le.`Date`) >= DATE(pFromDate) AND DATE(le.`Date`) <= DATE(pToDate) AND 
	le.`Status` = 'Active' ORDER BY e.LastName,le.`Date` ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetLeaveStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetLeaveStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetLeaveStatus`(pLeaveId bigint(20))
BEGIN
	SELECT Approve,ApprovedBy FROM `leave` WHERE LeaveId = pLeaveId AND `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetLeaveTypes` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetLeaveTypes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetLeaveTypes`(pDisplayType VARCHAR(15),pSearchString VARCHAR(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT LeaveTypeCode AS `Code`,LeaveTypeDescription AS `Leave Type Description`,Category
			FROM leavetype
			WHERE `Status` = 'Active' AND LeaveTypeDescription LIKE @SearchString;
	ELSE 
		IF(pDisplayType = 'ViewAll') THEN
			SELECT LeaveTypeCode AS `Code`,LeaveTypeDescription AS `Leave Type Description`,Category
			FROM leavetype
			WHERE `Status` = 'Active';
		END IF;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetMenuItemsByUserGroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetMenuItemsByUserGroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetMenuItemsByUserGroup`(pUserGroupId VARCHAR(30))
BEGIN
	SELECT 
	Menu,Item,`Status`
	FROM usergroupmenuitems
	WHERE UsergroupId = pUserGroupId AND `Status` = 'Enable';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetNextNo` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetNextNo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetNextNo`(pTable varchar(30))
BEGIN
	SELECT CONCAT(Prefix,LPAD(LastNumber+1,`Length`,'0')) AS SequenceId
	FROM sequence WHERE `Table` = pTable;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetOfficialBusinessEntries` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetOfficialBusinessEntries` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetOfficialBusinessEntries`(pEmploymentType VARCHAR(30),pFromDate DATE,pToDate DATE,
		pSearchString VARCHAR(100),pDepartmentCode VARCHAR(30))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN	
		SELECT obe.OfficialBusinessEntryId AS `Id`,obe.EmployeeNo AS `Emp. No.`,obe.Approve,
		CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
		d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation,
		DATE_FORMAT(obe.`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(obe.`Date`) AS `Day`,
		obe.Type,obe.ReferenceNo AS `Ref. No.`,
		obe.TimeIn AS `Time In`,obe.BreakOut AS `Break Out`,
		obe.BreakIn AS `Break In`, obe.TimeOut AS `Time Out`,
		obe.Purpose,obe.ApprovedBy AS `Approved By`,
		obe.Remarks
		FROM officialbusinessentry obe
		LEFT JOIN employee e
		ON obe.EmployeeNo = e.EmployeeNo
		LEFT JOIN department d
		ON e.DepartmentCode = d.DepartmentCode
		LEFT JOIN designation des
		ON e.DesignationCode = des.DesignationCode
		WHERE e.EmploymentType = pEmploymentType AND 
		DATE(obe.`Date`) >= DATE(pFromDate) AND DATE(obe.`Date`) <= DATE(pToDate) AND 
		obe.`Status` = 'Active' AND (e.LastName LIKE @SearchString OR e.FirstName LIKE @SearchString) 
		ORDER BY d.DepartmentDescription,e.LastName,e.FirstName,obe.Date ASC;
	else
		IF(pDepartmentCode != '') THEN
			SELECT obe.OfficialBusinessEntryId AS `Id`,obe.EmployeeNo AS `Emp. No.`,obe.Approve,
			CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation,
			DATE_FORMAT(obe.`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(obe.`Date`) AS `Day`,
			obe.Type,obe.ReferenceNo AS `Ref. No.`,
			obe.TimeIn AS `Time In`,obe.BreakOut AS `Break Out`,
			obe.BreakIn AS `Break In`, obe.TimeOut AS `Time Out`,
			obe.Purpose,obe.ApprovedBy AS `Approved By`,
			obe.Remarks
			FROM officialbusinessentry obe
			LEFT JOIN employee e
			ON obe.EmployeeNo = e.EmployeeNo
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			WHERE e.EmploymentType = pEmploymentType AND 
			DATE(obe.`Date`) >= DATE(pFromDate) AND DATE(obe.`Date`) <= DATE(pToDate) AND 
			obe.`Status` = 'Active' AND e.DepartmentCode = pDepartmentCode 
			ORDER BY d.DepartmentDescription,e.LastName,e.FirstName,obe.Date ASC;
		else
			SELECT obe.OfficialBusinessEntryId AS `Id`,obe.EmployeeNo AS `Emp. No.`,obe.Approve,
			CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			d.DepartmentDescription AS `Department`,des.DesignationDescription as Designation,
			DATE_FORMAT(obe.`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(obe.`Date`) AS `Day`,
			obe.Type,obe.ReferenceNo as `Ref. No.`,
			obe.TimeIn as `Time In`,obe.BreakOut as `Break Out`,
			obe.BreakIn as `Break In`, obe.TimeOut as `Time Out`,
			obe.Purpose,obe.ApprovedBy as `Approved By`,
			obe.Remarks
			FROM officialbusinessentry obe
			LEFT JOIN employee e
			ON obe.EmployeeNo = e.EmployeeNo
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			left join designation des
			on e.DesignationCode = des.DesignationCode
			WHERE e.EmploymentType = pEmploymentType AND 
			DATE(obe.`Date`) >= DATE(pFromDate) AND DATE(obe.`Date`) <= DATE(pToDate) AND 
			obe.`Status` = 'Active' ORDER BY d.DepartmentDescription,e.LastName,e.FirstName,obe.Date ASC;
		end if;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetOfficialBusinessEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetOfficialBusinessEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetOfficialBusinessEntry`(pOfficialBusinessEntryId VARCHAR(30))
BEGIN
	SELECT obe.OfficialBusinessEntryId AS `Id`,obe.EmployeeNo AS `Emp. No.`,
	CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
	DATE_FORMAT(obe.`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(obe.`Date`) AS `Day`,
	obe.Type,obe.ReferenceNo as `Ref. No.`,
	obe.TimeIn as `Time In`,obe.BreakOut as `Break Out`,
	obe.BreakIn as `Break In`, obe.TimeOut as `Time Out`,
	obe.Purpose,obe.Approve,obe.ApprovedBy as `Approved By`,
	obe.Remarks
	FROM officialbusinessentry obe
	LEFT JOIN employee e
	ON obe.EmployeeNo = e.EmployeeNo
	WHERE 
	obe.OfficialBusinessEntryId = pOfficialBusinessEntryId AND 
	obe.`Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetOfficialBusinessEntryStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetOfficialBusinessEntryStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetOfficialBusinessEntryStatus`(pOfficialBusinessEntryId varchar(20))
BEGIN
	SELECT Approve,Approvedby FROM officialbusinessentry WHERE OfficialBusinessEntryId = pOfficialBusinessEntryId AND `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetOvertimeEntries` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetOvertimeEntries` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetOvertimeEntries`(pEmploymentNo varchar(30),pFromDate date,pToDate date)
BEGIN
	SELECT oe.OvertimeEntryId AS `Id`,oe.Approve AS `Approve`,
	DATE_FORMAT(oe.`Date`,'%m-%d-%Y') AS `Date`,DAYNAME(oe.`Date`) AS `Day`,
	DATE_FORMAT(oe.TimeIn,'%h:%i %p') AS `Time In`,DATE_FORMAT(oe.TimeOut,'%h:%i %p') AS `Time Out`,
	DATE_FORMAT(oe.Overtime,'%H:%i')  AS `Overtime`,
	oe.ApprovedBy AS `Approved By`,
	oe.Remarks
	FROM overtimeentry oe
	LEFT JOIN employee e
	ON oe.EmployeeNo = e.EmployeeNo
	LEFT JOIN department d
	ON e.DepartmentCode = d.DepartmentCode
	WHERE oe.EmployeeNo = pEmploymentNo AND 
	DATE(oe.`Date`) >= DATE(pFromDate) AND DATE(oe.`Date`) <= DATE(pToDate) AND 
	oe.`Status` = 'Active' ORDER BY oe.`Date` ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetOvertimeEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetOvertimeEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetOvertimeEntry`(pOvertimeEntryId varchar(30))
BEGIN
	SELECT oe.OvertimeEntryId,
	oe.Date,oe.EmployeeNo,CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS EmployeeName,
	oe.TimeIn,oe.TimeOut,
	oe.Overtime,
	oe.Remarks
	FROM overtimeentry oe
	LEFT JOIN employee e
	ON oe.EmployeeNo = e.EmployeeNo
	where
	oe.OvertimeEntryId = pOvertimeEntryId AND oe.`Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetOvertimeEntryEmployeeList` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetOvertimeEntryEmployeeList` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetOvertimeEntryEmployeeList`(pEmploymentType varchar(30),
			pFromDate date,pToDate date,pSearchString VARCHAR(100),pDepartmentCode VARCHAR(30))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT oe.EmployeeNo AS `No.`,
		CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
		d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation
		FROM overtimeentry oe
		LEFT JOIN employee e
		ON oe.EmployeeNo = e.EmployeeNo
		LEFT JOIN department d
		ON e.DepartmentCode = d.DepartmentCode
		LEFT JOIN designation des
		ON e.DesignationCode = des.DesignationCode
		WHERE e.EmploymentType = pEmploymentType AND 
		DATE(oe.`Date`) >= DATE(pFromDate) AND DATE(oe.`Date`) <= DATE(pToDate) AND 
		oe.`Status` = 'Active' and (e.LastName LIKE @SearchString OR e.FirstName LIKE @SearchString) 
		GROUP BY oe.EmployeeNo ORDER BY d.DepartmentDescription,e.LastName,e.FirstName ASC;
	ELSE 
		IF(pDepartmentCode != '') THEN
			SELECT oe.EmployeeNo AS `No.`,
			CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation
			FROM overtimeentry oe
			LEFT JOIN employee e
			ON oe.EmployeeNo = e.EmployeeNo
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			WHERE e.EmploymentType = pEmploymentType AND 
			DATE(oe.`Date`) >= DATE(pFromDate) AND DATE(oe.`Date`) <= DATE(pToDate) AND 
			oe.`Status` = 'Active' and e.DepartmentCode = pDepartmentCode GROUP BY oe.EmployeeNo 
			ORDER BY d.DepartmentDescription,e.LastName,e.FirstName ASC;
		ELSE
			SELECT oe.EmployeeNo AS `No.`,
			CONCAT(e.LastName,', ',e.FirstName,' ',e.MiddleName) AS `Employee Name`,
			d.DepartmentDescription AS `Department`,des.DesignationDescription AS Designation
			FROM overtimeentry oe
			LEFT JOIN employee e
			ON oe.EmployeeNo = e.EmployeeNo
			LEFT JOIN department d
			ON e.DepartmentCode = d.DepartmentCode
			LEFT JOIN designation des
			ON e.DesignationCode = des.DesignationCode
			WHERE e.EmploymentType = pEmploymentType AND 
			DATE(oe.`Date`) >= DATE(pFromDate) AND DATE(oe.`Date`) <= DATE(pToDate) AND 
			oe.`Status` = 'Active' GROUP BY oe.EmployeeNo ORDER BY d.DepartmentDescription,e.LastName,e.FirstName ASC;
		END IF;
	END IF;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetOvertimeEntryStatus` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetOvertimeEntryStatus` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetOvertimeEntryStatus`(pOvertimeEntryId BIGINT(20))
BEGIN
	select Approve,Approvedby from overtimeentry where OvertimeEntryId = pOvertimeEntryId and `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetSequenceId` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetSequenceId` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetSequenceId`(pTablename varchar(50), pOutletCode varchar(30))
BEGIN
	select fGenerateSequence(pTablename,pOutletCode) as SequenceId,pointofsale.fGetInventoryId() AS `InventoryId`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetSupervisorRights` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetSupervisorRights` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetSupervisorRights`(pEmployeeCode varchar(30))
BEGIN
	Select EmployeeName from employee where EmployeeCode = pEmployeeCode and `Status`='Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetSystemConfigurations` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetSystemConfigurations` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetSystemConfigurations`()
BEGIN
	select `Key`,`Value` from systemconfiguration;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetTemplateNames` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetTemplateNames` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetTemplateNames`(pTableName varchar(100),pUsername varchar(30))
BEGIN
	/*get public */
	Select TemplateName from searchdisplayfield
	where TableName = pTableName and `Status` = 'Active' and Private = 'N' Group by TemplateName Asc
	union
	SELECT TemplateName FROM searchfilters
	WHERE TableName = pTableName AND `Status` = 'Active' AND Private = 'N' GROUP BY TemplateName ASC
	UNION
	SELECT TemplateName FROM searchgrouping
	WHERE TableName = pTableName AND `Status` = 'Active' AND Private = 'N' GROUP BY TemplateName ASC
	/*get public */
	Union
	SELECT TemplateName FROM searchdisplayfield
	WHERE TableName = pTableName AND `Status` = 'Active' AND Private = 'Y' and CreatedBy = pUsername GROUP BY TemplateName ASC
	UNION
	SELECT TemplateName FROM searchfilters
	WHERE TableName = pTableName AND `Status` = 'Active' AND Private = 'Y' AND CreatedBy = pUsername GROUP BY TemplateName ASC
	UNION
	SELECT TemplateName FROM searchgrouping
	WHERE TableName = pTableName AND `Status` = 'Active' AND Private = 'Y' AND CreatedBy = pUsername GROUP BY TemplateName ASC;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetUser`(pUsername VARCHAR(30))
BEGIN
	SELECT	u.Username,u.Fullname,
	u.UserGroupId,ug.UserGroupDescription
	FROM `user` u
	LEFT JOIN usergroup ug
	ON u.UserGroupId = ug.UserGroupId 
	WHERE u.`Status` = 'Active' AND u.Username = pUsername;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetUserGroupMenuItems` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetUserGroupMenuItems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetUserGroupMenuItems`(pUsername VARCHAR(30))
BEGIN
	SELECT 
	ugmi.Menu, ugmi.Item,ugmi.`Status`
	FROM usergroupmenuitems ugmi
	LEFT JOIN usergroup ug
	ON ugmi.UserGroupId = ug.UserGroupId
	LEFT JOIN `user` u
	ON ug.UserGroupId = u.UserGroupId
	WHERE u.Username = pUsername;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetUserGroupReport` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetUserGroupReport` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetUserGroupReport`(pUserGroupId varchar(30))
BEGIN
	SELECT ugmi.Menu,ugmi.Item,ugr.Rights
	FROM usergroupmenuitems ugmi
	LEFT JOIN usergrouprights ugr
	ON ugmi.Item = ugr.ItemName
	WHERE ugmi.`Status` = 'Enable' AND ugmi.UserGroupId = pUserGroupId;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetUserGroupRights` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetUserGroupRights` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetUserGroupRights`(pUsername varchar(30))
BEGIN
	set @UserGroupId = (Select UserGroupId from `user` where Username = pUsername);
	Select ItemName,Rights from usergrouprights where UserGroupId = @UserGroupId and `Status`='Enable';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetUserGroups` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetUserGroups` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetUserGroups`(pDisplayType VARCHAR(15),pSearchString VARCHAR(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT UserGroupId, UserGroupDescription
		FROM usergroup WHERE `Status` = 'Active' AND UserGroupDescription LIKE @SearchString;
	ELSE 
		IF(pDisplayType = 'ViewAll') THEN
			SELECT UserGroupId, UserGroupDescription
			FROM usergroup WHERE `Status` = 'Active';
		END IF;
	END IF;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetUserInfo` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetUserInfo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetUserInfo`(pUsername VARCHAR(30))
BEGIN
	SELECT u.Username, u.Fullname,
	u.UserGroupId,ugmi.Status 
	FROM `user` u
	LEFT JOIN usergroup ug
	ON u.UserGroupId = ug.UserGroupId
	LEFT JOIN usergroupmenuitems ugmi
	ON ug.UserGroupId = ugmi.UserGroupId AND ugmi.Item = 'CanViewOrderTransaction'
	WHERE u.Username = pUsername AND u.`Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetUserPicture` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetUserPicture` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetUserPicture`(pUsername varchar(30))
BEGIN
	Select Picture from `user` where Username = pUsername and `Status`='Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetUsers` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetUsers` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetUsers`(pDisplayType VARCHAR(15),pSearchString VARCHAR(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT	u.Username,u.Fullname,
			ug.UserGroupDescription AS `User Group`
			FROM `user` u
			LEFT JOIN usergroup ug
			ON u.UserGroupId = ug.UserGroupId 
			WHERE u.`Status` = 'Active' AND (u.Username LIKE @SearchString || u.Fullname LIKE @SearchString);
	ELSE 
		IF(pDisplayType = 'ViewAll') THEN
			SELECT	u.Username,u.Fullname,
			ug.UserGroupDescription AS `User Group`
			FROM `user` u
			LEFT JOIN usergroup ug
			ON u.UserGroupId = ug.UserGroupId 
			WHERE u.`Status` = 'Active';
		END IF;
	END IF;		
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetWorkSchedule` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetWorkSchedule` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetWorkSchedule`(pWorkScheduleCode VARCHAR(30))
BEGIN
	SELECT WorkScheduleCode AS `Code`, WorkScheduleDescription AS `Work Schedule Description`,HospitalEmployee as `Hospital Employee`,Remarks
	FROM workschedule
	WHERE `Status` = 'Active' AND WorkScheduleCode = pWorkScheduleCode;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetWorkScheduleDetails` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetWorkScheduleDetails` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetWorkScheduleDetails`(pWorkScheduleCode varchar(30))
BEGIN
	select `Day`,TimeIn as `Time In`,BreakOut as `Break Out`,BreakIn as `Break In`,TimeOut as `Time Out`
	from workscheduledetail
	where
	WorkScheduleCode = pWorkScheduleCode and `Status` ='Active' order by WorkScheduleDetailId Asc;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spGetWorkSchedules` */

/*!50003 DROP PROCEDURE IF EXISTS  `spGetWorkSchedules` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spGetWorkSchedules`(pDisplayType VARCHAR(15),pSearchString VARCHAR(100))
BEGIN
	SET @SearchString  = CONCAT('%',pSearchString,'%');
	IF(pSearchString != '') THEN
		SELECT WorkScheduleCode AS `Code`, WorkScheduleDescription AS `Work Schedule Description`,HospitalEmployee AS `Hospital Employee`,Remarks
		FROM workschedule
		WHERE `Status` = 'Active' AND WorkScheduleDescription LIKE @SearchString;
	ELSE 
		IF(pDisplayType = 'ViewAll') THEN
			SELECT WorkScheduleCode AS `Code`, WorkScheduleDescription AS `Work Schedule Description`,HospitalEmployee AS `Hospital Employee`,Remarks
			FROM workschedule
			WHERE `Status` = 'Active';
		END IF;
	END IF;	
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertAttendanceForNoWorkSchedule` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertAttendanceForNoWorkSchedule` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertAttendanceForNoWorkSchedule`(pEmployeeNo VARCHAR(30),pStartDate DATE,
						pEndDate DATE)
BEGIN
	DECLARE startDate DATE;
	DECLARE endDate DATE;
	SET startDate = DATE(pStartDate);
	SET endDate = DATE(pEndDate);
	WHILE startDate <= endDate DO
		SET @IsExistingCount = (SELECT COUNT(*) FROM dailytimerecord WHERE DATE(`Date`)=DATE(startDate) AND EmployeeNo=pEmployeeNo);
		IF(@IsExistingCount = 0) THEN
			if(DAYNAME(startDate) = 'Sunday' or DAYNAME(startDate) = 'Saturday') then
				INSERT INTO dailytimerecord SET
				`Date` = startDate,
				EmployeeNo = pEmployeeNo,
				TimeIn = 'Day Off',
				BreakOut = 'Day Off', 
				BreakIn = 'Day Off', 
				TimeOut = 'Day Off';
			else
				INSERT INTO dailytimerecord SET
				`Date` = startDate,
				EmployeeNo = pEmployeeNo,
				TimeIn = '08:00 AM',
				BreakOut = '12:00 PM', 
				BreakIn = '01:00 PM', 
				TimeOut = '05:00 PM',
				DaysWorkCount = 1;
			end if;
		END IF;
		
	        SET startDate = DATE_ADD(startDate,INTERVAL 1 DAY);
	END WHILE;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertAuditTrail` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertAuditTrail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertAuditTrail`(pLogDescription varchar(300),pUsername varchar(30),pHostname varchar(15))
BEGIN
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),pLogDescription),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertBreakIn` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertBreakIn` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertBreakIn`(pDate date,pEmployeeNo varchar(30),pBreakIn varchar(30),pLate time,
						pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = DATE(pDate) AND EmployeeNo = pEmployeeNo AND `Status` = 'Active');
	IF(pLate = '00:00:00') THEN
		UPDATE dailytimerecord SET
		BreakIn = pBreakIn,
		Late2 = pLate
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	else
		UPDATE dailytimerecord SET
		BreakIn = pBreakIn,
		Late2 = pLate,
		Late2Count = 1
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertBreakOut` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertBreakOut` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertBreakOut`(pDate date,pEmployeeNo varchar(30),pBreakOut varchar(30),pUndertime time,
						pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = DATE(pDate) AND EmployeeNo = pEmployeeNo AND `Status` = 'Active');
	if(pUndertime = '00:00:00') then
		UPDATE dailytimerecord SET
		BreakOut = pBreakOut,
		Undertime1 = pUndertime,
		DaysWorkCount = 0.50
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	else
		UPDATE dailytimerecord SET
		BreakOut = pBreakOut,
		Undertime1 = pUndertime,
		DaysWorkCount = 0.50,
		Undertime1Count = 1
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertDepartment` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertDepartment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertDepartment`(pDepartmentCode VARCHAR(30), 
								pDepartmentDescription VARCHAR(150),
								pDepartmentHead varchar(200),
								pDesignation varchar(200),
								pRemarks varchar(200),
								pUsername VARCHAR(30),
								pHostname VARCHAR(15))
BEGIN	
	SET @counter = (SELECT COUNT(*) FROM department WHERE DepartmentCode = pDepartmentCode AND `Status` = 'Deleted');
	IF (@counter = 1) THEN
		UPDATE department SET
		`Status` = 'Active',
		DepartmentDescription = pDepartmentDescription,
		DepartmentHead = pDepartmentHead,
		Designation = pDesignation,
		Remarks = pRemarks
		WHERE
		DepartmentCode = pDepartmentCode;
	ELSE
		INSERT INTO department SET
		DepartmentCode = pDepartmentCode,
		DepartmentDescription = pDepartmentDescription,
		DepartmentHead = pDepartmentHead,
		Designation = pDesignation,
		Remarks = pRemarks;
	END IF;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Department. DepartmentCode:',pDepartmentCode,
	'; DepartmentDescription:', pDepartmentDescription,'; DepartmentHead:', pDepartmentHead,'; Designation:', pDesignation,
	'; Remarks:', pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertDesignation` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertDesignation` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertDesignation`(pDesignationCode VARCHAR(30),pDesignationDescription VARCHAR(200),
				pRemarks varchar(200),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM designation WHERE DesignationCode = pDesignationCode AND `Status` = 'Deleted');
	IF (@counter = 1) THEN
		UPDATE designation SET
		`Status` = 'Active',
		DesignationDescription = pDesignationDescription,
		Remarks = pRemarks
		WHERE
		DesignationCode = pDesignationCode;
	ELSE
		INSERT INTO designation SET
		DesignationCode = pDesignationCode,
		DesignationDescription = pDesignationDescription,
		Remarks = pRemarks;
	END IF;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Designation. DesignationCode:',
		pDesignationCode,'; DesignationDescription:',pDesignationDescription,'; Remarks:',pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertEmployee`(pEmployeeNo VARCHAR(30),
						pLastName VARCHAR(50), pFirstName VARCHAR(50),pMiddleName VARCHAR(50),
						pActive varchar(1),pBiometricsId varchar(30),pEmploymentType VARCHAR(30),
						pDesignationCode varchar(30),pDepartmentCode VARCHAR(30),
						pWorkScheduleCode VARCHAR(30),
						pBirthday date,
						pTIN varchar(30),pTINDeducted varchar(1),pPhilHealthId varchar(30),pPhilHealthDeducted varchar(1),
						pGSISId varchar(30),pGSISDeducted varchar(1),pPagibigId VARCHAR(30),pPagibigDeducted varchar(1),
						pPagibigPS decimal(10,2),pPagibigGS DECIMAL(10,2),
						pNoOfDependent int(5),
						pRateType VARCHAR(30),pBasicPay DECIMAL(10,2),
						pRA varchar(1),pTA VARCHAR(1),pPERA varchar(1),pSubsistence varchar(1),pLaundry varchar(1),pHazard varchar(1),
						pRAAmount decimal(10,2),pTAAmount DECIMAL(10,2),pPERAAmount decimal(10,2),pSubsistenceAmount decimal(10,2),
						pLaundryAmount decimal(10,2),pHazardAPSPercentage decimal(5,2),pHazardAmount DECIMAL(10,2),
						pImmediateSupervisor varchar(150),pRemarks varchar(200),pPicture longtext,
						pUsername VARCHAR(30),
						pHostname VARCHAR(15))
BEGIN
	insert into employee SET
		EmployeeNo = pEmployeeNo,
		LastName = pLastName,
		FirstName = pFirstName,
		MiddleName = pMiddleName,
		Active = pActive,
		BiometricsId = pBiometricsId,
		EmploymentType = pEmploymentType,
		DesignationCode = pDesignationCode,
		DepartmentCode = pDepartmentCode,
		WorkScheduleCode = pWorkScheduleCode,
		Birthday = pBirthday,
		TIN = pTIN,
		TINDeducted = pTINDeducted,
		PhilHealthId = pPhilHealthId,
		PhilHealthDeducted = pPhilHealthDeducted,
		GSISId = pGSISId,
		GSISDeducted = pGSISDeducted,
		PagibigId = pPagibigId,
		PagibigDeducted = pPagibigDeducted,
		PagibigPS = pPagibigPS,
		PagibigGS = pPagibigGS,
		NoOfDependent = pNoOfDependent,
		RateType = pRateType,
		BasicPay = pBasicPay,
		RA= pRA,
		TA = pTA,
		PERA = pPERA,
		Subsistence = pSubsistence,
		Laundry = pLaundry,
		Hazard = pHazard,
		RAAmount = pRAAmount,
		TAAmount = pTAAmount,
		PERAAmount = pPERAAmount,
		SubsistenceAmount = pSubsistenceAmount,
		LaundryAmount = pLaundryAmount,
		HazardAPSPercentage = pHazardAPSPercentage,
		HazardAmount = pHazardAmount,
		ImmediateSupervisor = pImmediateSupervisor,
		Remarks = pRemarks,
		Picture = pPicture;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates an Employee. EmployeeNo.:',pEmployeeNo,'; EmployeeName:',
		pLastName,", ",pFirstName ," ",pMiddleName,'; BiometricsId:',pBiometricsId,'; EmploymentType:',pEmploymentType,
		'; DepartmentCode:',pDepartmentCode,'; DesignationCode:',pDesignationCode,'; WorkScheduleCode:',pWorkScheduleCode,
		'; Birthday:',pBirthday,'; RateType:',pRateType,'; BasicPay:',pBasicPay,
		'; TIN:',pTIN,'; PhilHealthId:',pPhilHealthId,'; PagibigId:',pPagibigId,'; GSISId:',pGSISId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertHoliday` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertHoliday` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertHoliday`(pHolidayCode VARCHAR(30), 
								pHolidayDescription VARCHAR(200),
								pType varchar(100),
								pRemarks varchar(200),
								pUsername VARCHAR(30),
								pHostname VARCHAR(15))
BEGIN	
	SET @counter = (SELECT COUNT(*) FROM holiday WHERE HolidayCode = pHolidayCode AND `Status` = 'Deleted');
	IF (@counter = 1) THEN
		UPDATE holiday SET
		`Status` = 'Active',
		HolidayDescription = pHolidayDescription,
		`Type` = pType,
		Remarks = pRemarks
		WHERE
		HolidayCode = pHolidayCode;
	ELSE
		INSERT INTO holiday SET
		HolidayCode = pHolidayCode,
		HolidayDescription = pHolidayDescription,
		`Type` = pType,
		Remarks = pRemarks;
	END IF;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Holiday. HolidayCode:',pHolidayCode,
	'; HolidayDescription:', pHolidayDescription,'; Type:', pType,
	'; Remarks:', pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertHolidayEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertHolidayEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertHolidayEntry`(pDate date,
				pHolidayCode varchar(30),pRemarks varchar(200),pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN	
	INSERT INTO holidayentry SET
	`Date` = pDate,
	HolidayCode = pHolidayCode,
	Remarks = pRemarks;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Holiday Entry. Date:',pDate,'; HolidayCode:',pHolidayCode,'; Remarks:',pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertLeaveEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertLeaveEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertLeaveEntry`(pEmployeeNo VARCHAR(30),
				pLeaveTypeCode varchar(30),pReferenceNo VARCHAR(50),pDate date,pTime varchar(30),
				pExplanation varchar(500),pRemarks varchar(200),pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN	
	INSERT INTO leaveentry SET
	EmployeeNo = pEmployeeNo,
	LeaveTypeCode = pLeaveTypeCode,
	ReferenceNo = pReferenceNo,
	`Date` = pDate,
	`Time` = pTime,
	Explanation = pExplanation,
	DateFiled = now(),
	Remarks = pRemarks;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Leave Entry. EmployeeNo:',pEmployeeNo,'; LeaveTypeCode:',pLeaveTypeCode,
	'; ReferenceNo:',pReferenceNo,
	'; Date:',pDate,'; Time:',pTime,'; Explanation:',pExplanation,'; Remarks:',pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertLeaveType` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertLeaveType` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertLeaveType`(pLeaveTypeCode varchar(30),pLeaveTypeDescription varchar(150),
						pCategory varchar(30),
						pUsername varchar(30),pHostname varchar(15))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM leavetype WHERE LeaveTypeCode = pLeaveTypeCode AND `Status` = 'Deleted');
	IF (@counter = 1) THEN
		UPDATE leavetype SET
		`Status` = 'Active',
		LeaveTypeDescription = pLeaveTypeDescription,
		Category = pCategory
		WHERE
		LeaveTypeCode = pLeaveTypeCode;
	ELSE
		INSERT INTO leavetype SET
		LeaveTypeCode = pLeaveTypeCode,
		LeaveTypeDescription = pLeaveTypeDescription,
		Category = pCategory;
	END IF;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Leave Type. LeaveTypeCode:',pLeaveTypeCode,
	'; LeaveTypeDescription:',pLeaveTypeDescription,'; Category:',pCategory),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertOfficialBusinessEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertOfficialBusinessEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertOfficialBusinessEntry`(pDate DATE, pEmployeeNo VARCHAR(30),
							pType varchar(50),pReferenceNo varchar(50),
							pTimeIn varchar(1), pBreakOut varchar(1),
							pBreakIn varchar(1), pTimeOut varchar(1),
							pPurpose varchar(100),
							pRemarks VARCHAR(200),pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	INSERT INTO officialbusinessentry SET
	`Date` = pDate,
	EmployeeNo = pEmployeeNo,
	`Type` = pType,
	ReferenceNo = pReferenceNo,
	TimeIn = pTimeIn,
	BreakOut = pBreakOut,
	BreakIn = pBreakIn,
	TimeOut = pTimeOut,
	Purpose = pPurpose,
	Remarks = pRemarks;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Officila Business Entry. Date:',pDate,'; EmployeeNo:',pEmployeeNo,
	'; Type:',pType,'; ReferenceNo:',pReferenceNo,
	'; TimeIn:',pTimeIn,'; BreakOut:',pBreakOut,'; BreakIn:',pBreakIn,'; TimeOut:',pTimeOut,
	'; Purpose:',pPurpose,'; Remarks:',pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertOvertimeEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertOvertimeEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertOvertimeEntry`(pDate date, pEmployeeNo varchar(30),
							pTimeIn time, pTimeOut time,pOvertime time,
							pRemarks varchar(200),pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	SET @ExistCount = (SELECT COUNT(*) FROM overtimeentry WHERE DATE(`Date`) = DATE(pDate) AND 
		EmployeeNo = pEmployeeNo AND `Status` = 'Active');
	IF(@ExistCount = 0) THEN	
		INSERT INTO overtimeentry SET
		`Date` = pDate,
		EmployeeNo = pEmployeeNo,
		TimeIn = pTimeIn,
		TimeOut = pTimeOut,
		Overtime = pOvertime,
		Remarks = pRemarks;
		
		INSERT audittrail SET
		LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Overtime Entry. Date:',pDate,'; EmployeeNo:',pEmployeeNo,
		'; TimeIn:',pTimeIn,'; TimeOut:',pTimeOut,'; Overtime:',pOvertime,'; Remarks:',pRemarks),
		Username = pUsername,
		`Date` = NOW(),
		Hostname = pHostname;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertSearchDisplayFields` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertSearchDisplayFields` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertSearchDisplayFields`(pTableName varchar(100),
									pTemplateName varchar(100),
									pDisplayFields varchar(100),
									pSequenceNo int(10),
									pCreatedBy varchar(30),
									pPrivate VARCHAR(1),
									pUsername VARCHAR(30),
									pHostname VARCHAR(15))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM searchdisplayfield WHERE TableName = pTableName AND TemplateName = pTemplateName);
	IF (@counter = 1) THEN		
		update searchdisplayfield SET
		DisplayFields = pDisplayFields,
		SequenceNo = pSequenceNo,
		Private = pPrivate,
		CreatedBy = pCreatedBy
		WHERE TableName = pTableName AND TemplateName = pTemplateName;
	else
		INSERT INTO searchdisplayfield SET
		TableName = pTableName,
		TemplateName = pTemplateName,
		DisplayFields = pDisplayFields,
		SequenceNo = pSequenceNo,
		Private = pPrivate,
		CreatedBy = pCreatedBy;
	end if;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertSearchFilters` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertSearchFilters` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertSearchFilters`(pTableName VARCHAR(100),
					pTemplateName VARCHAR(100),
					pFields varchar(100),
					pOperator varchar(30),
					pOperatorSign varchar(10),
					pValues varchar(100),
					pCheckAnd varchar(1),
					pCheckOr varchar(1),
					pSequenceNo int(5),
					pCreatedBy varchar(30),
					pPrivate VARCHAR(1),
					pUsername VARCHAR(30),
					pHostname VARCHAR(15))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM searchfilters WHERE TableName = pTableName AND TemplateName = pTemplateName);
	IF (@counter = 1) THEN	
		update searchfilters SET
		`Fields` = pFields,
		Operator = pOperator,
		OperatorSign = pOperatorSign,
		`Values` = pValues,
		CheckAnd = pCheckAnd,
		CheckOr = pCheckOr,
		SequenceNo = pSequenceNo,
		Private = pPrivate,
		CreatedBy = pCreatedBy
		where
		TableName = pTableName AND TemplateName = pTemplateName;
	else
		INSERT INTO searchfilters SET
		TableName = pTableName,
		TemplateName = pTemplateName,
		`Fields` = pFields,
		Operator = pOperator,
		OperatorSign = pOperatorSign,
		`Values` = pValues,
		CheckAnd = pCheckAnd,
		CheckOr = pCheckOr,
		SequenceNo = pSequenceNo,
		Private = pPrivate,
		CreatedBy = pCreatedBy;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertSearchGroupings` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertSearchGroupings` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertSearchGroupings`(pTableName VARCHAR(100),
					pTemplateName VARCHAR(100),
					pFieldName VARCHAR(100),
					pGroupBy varchar(1),
					pSortBy varchar(30),
					pSequenceNo INT(10),
					pCreatedBy VARCHAR(30),
					pPrivate VARCHAR(1),
					pUsername VARCHAR(30),
					pHostname VARCHAR(15))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM searchgrouping WHERE TableName = pTableName AND TemplateName = pTemplateName);
	IF (@counter = 1) THEN
		update searchgrouping SET
		FieldName = pFieldName,
		GroupBy = pGroupBy,
		SortBy = pSortBy,
		SequenceNo = pSequenceNo,
		Private = pPrivate,
		CreatedBy = pCreatedBy
		where TableName = pTableName AND TemplateName = pTemplateName;
	else
		INSERT INTO searchgrouping SET
		TableName = pTableName,
		TemplateName = pTemplateName,
		FieldName = pFieldName,
		GroupBy = pGroupBy,
		SortBy = pSortBy,
		SequenceNo = pSequenceNo,
		Private = pPrivate,
		CreatedBy = pCreatedBy;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertSequence` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertSequence` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertSequence`(pTable varchar(30),
					pOutletCode varchar(30),
					pPrefix varchar(30),
					pLength int(10),
					pLastNumber int(12),
					pUsername VARCHAR(30),
					pHostname VARCHAR(15))
BEGIN
	DECLARE  Stat VARCHAR(10);
	    SET Stat = 'Deleted';
	IF(pHostname = 'Restore') THEN
		SET Stat = 'Active';
	END IF;		
	SET @counter = (SELECT COUNT(*) FROM sequence WHERE `Table` = pTable AND OutletCode = pOutletCode);
	IF (@counter = 1) THEN
		update sequence set
		Prefix = pPrefix,
		`Length` = pLength,
		LastNumber = pLastNumber
		WHERE `Table` = pTable AND OutletCode = pOutletCode;
	else
		INSERT INTO sequence SET
		`Table` = pTable,
		OutletCode = pOutletCode,
		Prefix = pPrefix,
		`Length` = pLength,
		LastNumber = pLastNumber;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertTimeIn` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertTimeIn` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertTimeIn`(pDate date,pEmployeeNo varchar(30),pTimeIn varchar(30),pLate time,
						pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = DATE(pDate) AND EmployeeNo = pEmployeeNo AND `Status` = 'Active');
	SET @DailyTimeRecordCount = (SELECT COUNT(*) FROM dailytimerecord WHERE DATE(`Date`) = DATE(pDate) AND EmployeeNo = pEmployeeNo AND `Status` = 'Active' AND TimeIn = '');	
	set @ForOvertimeCount = (SELECT COUNT(*) FROM dailytimerecord WHERE DailyTimeRecordId = @DailyTimeRecordId  AND `Status` = 'Active' AND TimeIn != '' AND TimeOut != '');
	if(@ForOvertimeCount = 0)then
		IF(@DailyTimeRecordCount = 1) THEN		
			IF(pLate = '00:00:00') THEN
				UPDATE dailytimerecord SET
				TimeIn = pTimeIn,
				BreakOut = '',
				BreakIn = '',
				TimeOut = '',
				Late1 = pLate
				WHERE
				DailyTimeRecordId = @DailyTimeRecordId;
			else
				UPDATE dailytimerecord SET
				TimeIn = pTimeIn,
				BreakOut = '',
				BreakIn = '',
				TimeOut = '',
				Late1 = pLate,
				Late1Count = 1
				WHERE
				DailyTimeRecordId = @DailyTimeRecordId;
			end if;
		end if;
	else
		UPDATE dailytimerecord SET
		OvertimeIn = pTimeIn
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
		
		SET @OvertimeEntryIdCount = (SELECT COUNT(*) FROM overtimeentry WHERE DATE(`Date`) = DATE(pDate) AND EmployeeNo = pEmployeeNo AND `Status` = 'Active');
		IF(@OvertimeEntryIdCount = 0) THEN
			INSERT INTO overtimeentry SET
			`Date` = pDate,
			EmployeeNo = pEmployeeNo,
			TimeIn = pTimeIn;
		END IF;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertTimeOut` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertTimeOut` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertTimeOut`(pDate date,pEmployeeNo varchar(30),pTimeOut varchar(30),pUndertime time,
						pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = DATE(pDate) AND EmployeeNo = pEmployeeNo AND `Status` = 'Active');
	SET @ForOvertimeCount = (SELECT COUNT(*) FROM dailytimerecord WHERE DailyTimeRecordId = @DailyTimeRecordId  AND `Status` = 'Active' AND TimeOut != '' and OvertimeIn != '');
	IF(@ForOvertimeCount = 0)THEN
		IF(pUndertime = '00:00:00') THEN		
			UPDATE dailytimerecord SET
			TimeOut = pTimeOut,
			Undertime2 = pUndertime,
			DaysWorkCount = 1
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		else
			UPDATE dailytimerecord SET
			TimeOut = pTimeOut,
			Undertime2 = pUndertime,
			DaysWorkCount = 1,
			Undertime2Count = 1
			WHERE
			DailyTimeRecordId = @DailyTimeRecordId;
		end if;
	else
		UPDATE dailytimerecord SET
		OvertimeOut = pTimeOut
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
		
		set @OvertimeEntrId = (select OvertimeEntryId from overtimeentry WHERE DATE(`Date`) = DATE(pDate) AND 
		EmployeeNo = pEmployeeNo AND `Status` = 'Active');
		set @Overtime = (Select subTime(pTimeOut,TimeIn) FROM overtimeentry WHERE DATE(`Date`) = DATE(pDate) AND 
		EmployeeNo = pEmployeeNo AND `Status` = 'Active');
		update overtimeentry SET
		TimeOut = pTimeOut,
		Overtime = @Overtime;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertTimeOutHospital` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertTimeOutHospital` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertTimeOutHospital`(pDate date,pEmployeeNo varchar(30),pTimeOut varchar(30),pUndertime time,pHoursWork time,
						pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN
	SET @DailyTimeRecordId = (SELECT DailyTimeRecordId FROM dailytimerecord WHERE DATE(`Date`) = DATE(pDate) AND EmployeeNo = pEmployeeNo AND `Status` = 'Active');
	SET @ForOvertimeCount = (SELECT COUNT(*) FROM dailytimerecord WHERE DailyTimeRecordId = @DailyTimeRecordId  AND `Status` = 'Active' AND TimeIn != '' AND TimeOut != '');
	IF(@ForOvertimeCount = 0)THEN
		UPDATE dailytimerecord SET
		TimeOut = pTimeOut,
		Undertime2 = pUndertime,
		HoursWork = pHoursWork
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	else
		UPDATE dailytimerecord SET
		OvertimeOut = pTimeOut
		WHERE
		DailyTimeRecordId = @DailyTimeRecordId;
	end if;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertUser`(pUsername VARCHAR(30),
						pPassword VARCHAR(100),
						pFullname VARCHAR(100),
						pUserGroupId VARCHAR(30),
						pUsernameCreate VARCHAR(30),
						pHostname VARCHAR(15))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM `user` WHERE username = pUsername AND `Status` = 'Deleted');
	IF (@counter = 1) THEN
		UPDATE `user` SET
		`Status` = 'Active',
		`Password` = MD5(pPassword),
		Fullname = pFullname,
		UserGroupId = pUserGroupId
		WHERE
		Username = pUsername;
	ELSE
		INSERT INTO `user` SET
		Username = pUsername,
		`Password` = MD5(pPassword),
		Fullname = pFullname,
		UserGroupId = pUserGroupId;
	END IF;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsernameCreate),' creates new User. Username:',
		pUsername,'; Fullname:',pFullname,'; Password:',pPassword,'; UserGroupId:',pUserGroupId),
	Username = pUsernameCreate,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertUserGroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertUserGroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertUserGroup`(pUserGroupDescription VARCHAR(200),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	DECLARE  Stat VARCHAR(10);
	    SET Stat = 'Deleted';
	IF(pHostname = 'Restore') THEN
		SET Stat = 'Active';
	END IF;		
	
	SET @counter = (SELECT COUNT(*) FROM usergroup WHERE UserGroupDescription = UserGroupDescription AND `Status` = Stat);
	IF (@counter = 1) THEN	
		update usergroup SET
		UserGroupDescription = pUserGroupDescription;
	else
		SET @Id = fGenerateSequence("UserGroup");
		INSERT INTO usergroup SET
		UserGroupId = @Id,
		UserGroupDescription = pUserGroupDescription;
	end if;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Usergroup. Description:',
		pUserGroupDescription),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertUserGroupMenuItems` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertUserGroupMenuItems` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertUserGroupMenuItems`(pUserGroupId varchar(30),pMenu varchar(50),pItem varchar(50),
						pUsername VARCHAR(30),
						pHostname VARCHAR(15))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM usergroupmenuitems WHERE UserGroupId = pUserGroupId AND Menu = pMenu and Item = pItem);
	IF (@counter = 0) THEN
		INSERT INTO usergroupmenuitems SET
		UserGroupId = pUserGroupId,
		Menu = pMenu,
		Item = pItem;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertUserGroupRights` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertUserGroupRights` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertUserGroupRights`(pUserGroupId varchar(30),
						pItemName varchar(50),
						pRigths varchar(50),
						pUsername VARCHAR(30),
						pHostname VARCHAR(15))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM usergrouprights WHERE UserGroupId = pUserGroupId AND ItemName = pItemName AND Rigths= pRigths);
	IF (@counter = 0) THEN
		INSERT INTO usergroupmenuitems SET
		UItemName = pItemName,
		OutletCode = pOutletCode,
		Rigths= pRigths;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertWorkSchedule` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertWorkSchedule` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertWorkSchedule`(pWorkScheduleCode VARCHAR(30), 
								pWorkScheduleDescription VARCHAR(200),
								pHospitalEmployee varchar(1),
								pRemarks varchar(200),
								pUsername VARCHAR(30),
								pHostname VARCHAR(15))
BEGIN	
	SET @counter = (SELECT COUNT(*) FROM workschedule WHERE WorkScheduleCode = pWorkScheduleCode AND `Status` = 'Deleted');
	IF (@counter = 1) THEN
		UPDATE workschedule SET
		`Status` = 'Active',
		WorkScheduleDescription = pWorkScheduleDescription,
		HospitalEmployee = pHospitalEmployee,
		Remarks = pRemarks
		WHERE
		WorkScheduleCode = pWorkScheduleCode;
	ELSE
		INSERT INTO workschedule SET
		WorkScheduleCode = pWorkScheduleCode,
		WorkScheduleDescription = pWorkScheduleDescription,
		HospitalEmployee =pHospitalEmployee,
		Remarks = pRemarks;
	END IF;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Work Schedule. WorkScheduleCode:',pWorkScheduleCode,
	'; WorkScheduleDescription:', pWorkScheduleDescription,'; HospitalEmployee:', pHospitalEmployee,
	'; Remarks:', pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spInsertWorkScheduleDetail` */

/*!50003 DROP PROCEDURE IF EXISTS  `spInsertWorkScheduleDetail` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsertWorkScheduleDetail`(pWorkScheduleCode VARCHAR(30), 
								pDay VARCHAR(20),
								pTimeIn varchar(30),
								pBreakOut varchar(30),
								pBreakIn varchar(30),
								pTimeOut varchar(30),
								pUsername VARCHAR(30),
								pHostname VARCHAR(15))
BEGIN	
	INSERT INTO workscheduledetail SET
	WorkScheduleCode = pWorkScheduleCode,
	`Day` = pDay,
	TimeIn = pTimeIn,
	BreakOut = pBreakOut,
	BreakIn = pBreakIn,
	TimeOut = pTimeOut;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' creates new Work Schedule Detail. WorkScheduleCode:',pWorkScheduleCode,
	'; Day:', pDay,
	'; TimeIn:', pTimeIn,'; BreakOut:', pBreakOut,'; BreakIn:', pBreakIn,'; TimeOut:', pTimeOut),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveAllRights` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveAllRights` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveAllRights`(pUserGroupId VARCHAR(30),pItemName varchar(50),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	DELETE FROM usergrouprights WHERE UserGroupId = pUserGroupId and ItemName=pItemName;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes all rights from User Groups. UserGroupId:',
		pUserGroupId,'; ItemName:',pItemName),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveAllUserGroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveAllUserGroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveAllUserGroup`(pUserGroupId VARCHAR(30))
BEGIN
	DELETE FROM usergroupmenuitems WHERE UserGroupId = pUserGroupId;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveDepartment` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveDepartment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveDepartment`(pDepartmentCode VARCHAR(30),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	UPDATE department SET
	`Status` = 'Deleted'
	WHERE
	DepartmentCode = pDepartmentCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes a Departement. DepartmentCode:',
		pDepartmentCode),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveDesignation` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveDesignation` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveDesignation`(pDesignationCode varchar(30),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	UPDATE designation SET
	`Status` = 'Deleted'
	WHERE
	DesignationCode = pDesignationCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes a Designation. DesignationCode:',
		pDesignationCode),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveEmployee`(pEmployeeNo varchar(30),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	UPDATE employee SET
	`Status` = 'Deleted'
	WHERE
	EmployeeNo = pEmployeeNo;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes an Employee. EmployeeNo:',
		pEmployeeNo),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveHoliday` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveHoliday` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveHoliday`(pHolidayCode VARCHAR(30),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	UPDATE Holiday SET
	`Status` = 'Deleted'
	WHERE
	HolidayCode = pHolidayCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes a Holiday. HolidayCode:',
		pHolidayCode),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveHolidayEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveHolidayEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveHolidayEntry`(pHolidayEntryId VARCHAR(30),pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN	
	UPDATE holidayentry SET
	`Status` = 'Deleted'
	WHERE
	HolidayEntryId = pHolidayEntryId;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes a Holiday Entry. HolidayEntryId:',pHolidayEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveLeaveEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveLeaveEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveLeaveEntry`(pLeaveEntryId VARCHAR(30),pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN	
	UPDATE leaveentry SET
	`Status` = 'Deleted'
	WHERE
	LeaveEntryId = pLeaveEntryId;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes a Leave Entry. LeaveEntryId:',pLeaveEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveLeaveType` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveLeaveType` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveLeaveType`(pLeaveTypeCode VARCHAR(30),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	UPDATE leavetype SET
	`Status` = 'Deleted'
	WHERE
	LeaveTypeCode = pLeaveTypeCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes Leave Type. LeaveTypeCode:',
		pLeaveTypeCode),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveOfficialBusinessEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveOfficialBusinessEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveOfficialBusinessEntry`(pOfficialBusinessEntryId BIGINT(20),pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	UPDATE officialbusinessentry SET
	`Status` = 'Deleted'
	WHERE
	OfficialBusinessEntryId = pOfficialBusinessEntryId;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes a Official Business Entry. OfficialBusinessEntryId:',pOfficialBusinessEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveOvertimeEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveOvertimeEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveOvertimeEntry`(pOvertimeEntryId BIGINT(20),pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	UPDATE overtimeentry SET
	`Status` = 'Deleted'
	WHERE
	OvertimeEntryId = pOvertimeEntryId;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes a Overtime Entry. OvertimeEntryId:',pOvertimeEntryId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveTemplateName` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveTemplateName` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveTemplateName`(pTableName VARCHAR(100),pTemplateName VARCHAR(100))
BEGIN
	Delete from searchdisplayfield where TableName=pTableName and TemplateName=pTemplateName;
	DELETE FROM searchfilters WHERE TableName=pTableName AND TemplateName=pTemplateName;
	DELETE FROM searchgrouping WHERE TableName=pTableName AND TemplateName=pTemplateName;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveUser`(pUsername varchar(30),
				pUsernameRemove VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	UPDATE `user` SET
	`Status` = 'Deleted'
	WHERE
	Username = pUsername;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsernameRemove),' removes a Username. Username:',
		pUsername),
	Username = pUsernameRemove,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveUserGroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveUserGroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveUserGroup`(pUserGroupId VARCHAR(30),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	UPDATE usergroup SET
	`Status` = 'Deleted'
	WHERE UserGroupId = pUserGroupId;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes a UserGroup. UserGroupId:',
		pUserGroupId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRemoveWorkSchedule` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRemoveWorkSchedule` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRemoveWorkSchedule`(pWorkScheduleCode VARCHAR(30),
				pUsername VARCHAR(30),
				pHostname VARCHAR(15))
BEGIN
	UPDATE workschedule SET
	`Status` = 'Deleted'
	WHERE
	WorkScheduleCode = pWorkScheduleCode;
	
	delete from workscheduledetail where WorkScheduleCode = pWorkScheduleCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' removes a Work Schedule. WorkScheduleCode:',
		pWorkScheduleCode),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spRenameTemplateName` */

/*!50003 DROP PROCEDURE IF EXISTS  `spRenameTemplateName` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spRenameTemplateName`(pTableName VARCHAR(100),pTemplateName VARCHAR(100),pNewTemplateName varchar(100))
BEGIN
	update searchdisplayfield set
	TemplateName = pNewTemplateName
	where
	TableName = pTableName and TemplateName=pTemplateName;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateDailyTimeRecord` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateDailyTimeRecord` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateDailyTimeRecord`(pDailyTimeRecordId varchar(30),pTimeIn varchar(30),pBreakOut varchar(30),
				pBreakIn varchar(30),pTimeOut varchar(30),pOvertimeIn varchar(30),pOvertimeOut varchar(30),
				pLate time,pUndertime time,pOvertime time,pHoursWork TIME, pRemarks varchar(200))
BEGIN
	update dailytimerecord set
	TimeIn = pTimeIn,
	BreakOut = pBreakOut,
	BreakIn = pBreakIn,
	TimeOut = pTimeOut,
	OvertimeIn = pOvertimeIn,
	OvertimeOut = pOvertimeOut,
	Late1 = pLate,
	Late2 = '00:00:00',
	Undertime1 = pUndertime,
	Undertime2 = '00:00:00',
	Overtime = pOvertime,
	HoursWork = pHoursWork,
	DaysWorkCount = 0,
	Remarks = pRemarks
	where
	DailyTimeRecordId = pDailyTimeRecordId and `Status` = 'Active';
	
	IF(pTimeOut != '') THEN
		UPDATE dailytimerecord SET
		DaysWorkCount = 1.00
		WHERE
		DailyTimeRecordId = pDailyTimeRecordId AND `Status` = 'Active';
	else 
		IF(pBreakOut != '') THEN
			UPDATE dailytimerecord SET
			DaysWorkCount = 0.50
			WHERE
			DailyTimeRecordId = pDailyTimeRecordId AND `Status` = 'Active';
		END IF;
	END IF;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateDepartment` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateDepartment` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateDepartment`(pDepartmentCode VARCHAR(30), 
								pDepartmentDescription VARCHAR(150),
								pDepartmentHead VARCHAR(200),
								pDesignation VARCHAR(200),
								pRemarks VARCHAR(200),
								pUsername VARCHAR(30),
								pHostname VARCHAR(15))
BEGIN
	UPDATE department SET
	DepartmentDescription = pDepartmentDescription,
	DepartmentHead = pDepartmentHead,
	Designation = pDesignation,
	Remarks = pRemarks
	WHERE
	DepartmentCode = pDepartmentCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a Department. DescriptionCode:',
	      pDepartmentCode,'; DepartmentDescription:',pDepartmentDescription,'; DepartmentHead:', pDepartmentHead,
	      '; Designation:', pDesignation,
	      '; Remarks:', pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateDesignation` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateDesignation` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateDesignation`(pDesignationCode VARCHAR(30),pDesignationDescription VARCHAR(200),
					pRemarks varchar(200),
					pUsername VARCHAR(30),
					pHostname VARCHAR(15))
BEGIN
	UPDATE designation SET
	DesignationDescription = pDesignationDescription,
	Remarks = pRemarks
	WHERE
	DesignationCode = pDesignationCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a Designation. DesignationCode:',
	      pDesignationCode,'; DesignationDescription:',pDesignationDescription,'; Remarks:',pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateEmployee` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateEmployee` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateEmployee`(pEmployeeNo VARCHAR(30),
						pLastName VARCHAR(50), pFirstName VARCHAR(50),pMiddleName VARCHAR(50),
						pActive VARCHAR(1),pBiometricsId VARCHAR(30),pEmploymentType VARCHAR(30),
						pDesignationCode VARCHAR(30),pDepartmentCode VARCHAR(30),
						pWorkScheduleCode VARCHAR(30),
						pBirthday DATE,
						pTIN VARCHAR(30),pTINDeducted VARCHAR(1),pPhilHealthId VARCHAR(30),pPhilHealthDeducted VARCHAR(1),
						pGSISId VARCHAR(30),pGSISDeducted VARCHAR(1),pPagibigId VARCHAR(30),pPagibigDeducted VARCHAR(1),
						pPagibigPS DECIMAL(10,2),pPagibigGS DECIMAL(10,2),
						pNoOfDependent INT(5),
						pRateType VARCHAR(30),pBasicPay DECIMAL(10,2),
						pRA VARCHAR(1),pTA VARCHAR(1),pPERA VARCHAR(1),pSubsistence VARCHAR(1),pLaundry VARCHAR(1),pHazard VARCHAR(1),
						pRAAmount DECIMAL(10,2),pTAAmount DECIMAL(10,2),pPERAAmount DECIMAL(10,2),pSubsistenceAmount DECIMAL(10,2),
						pLaundryAmount DECIMAL(10,2),pHazardAPSPercentage DECIMAL(5,2),pHazardAmount DECIMAL(10,2),
						pImmediateSupervisor VARCHAR(150),pRemarks VARCHAR(200),pPicture LONGTEXT,
						pUsername VARCHAR(30),
						pHostname VARCHAR(15))
BEGIN
	UPDATE employee SET
	LastName = pLastName,
	FirstName = pFirstName,
	MiddleName = pMiddleName,
	Active = pActive,
	BiometricsId = pBiometricsId,
	EmploymentType = pEmploymentType,
	DesignationCode = pDesignationCode,
	DepartmentCode = pDepartmentCode,
	WorkScheduleCode = pWorkScheduleCode,
	Birthday = pBirthday,
	TIN = pTIN,
	TINDeducted = pTINDeducted,
	PhilHealthId = pPhilHealthId,
	PhilHealthDeducted = pPhilHealthDeducted,
	GSISId = pGSISId,
	GSISDeducted = pGSISDeducted,
	PagibigId = pPagibigId,
	PagibigDeducted = pPagibigDeducted,
	PagibigPS = pPagibigPS,
	PagibigGS = pPagibigGS,
	NoOfDependent = pNoOfDependent,
	RateType = pRateType,
	BasicPay = pBasicPay,
	RA= pRA,
	TA = pTA,
	PERA = pPERA,
	Subsistence = pSubsistence,
	Laundry = pLaundry,
	Hazard = pHazard,
	RAAmount = pRAAmount,
	TAAmount = pTAAmount,
	PERAAmount = pPERAAmount,
	SubsistenceAmount = pSubsistenceAmount,
	LaundryAmount = pLaundryAmount,
	HazardAPSPercentage = pHazardAPSPercentage,
	HazardAmount = pHazardAmount,
	ImmediateSupervisor = pImmediateSupervisor,
	Remarks = pRemarks,
	Picture	 = pPicture
	WHERE EmployeeNo = pEmployeeNo and `Status` = 'Active';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates an Employee. Employee No:',pEmployeeNo,'; EmployeeName:',
		pLastName,", ",pFirstName ," ",pMiddleName,'; BiometricsId:',pBiometricsId,'; EmploymentType:',pEmploymentType,
		'; DepartmentCode:',pDepartmentCode,'; DesignationCode:',pDesignationCode,'; WorkScheduleCode:',pWorkScheduleCode,
		'; Birthday:',pBirthday,'; RateType:',pRateType,'; BasicPay:',pBasicPay,
		'; TIN:',pTIN,'; PhilHealthId:',pPhilHealthId,'; PagibigId:',pPagibigId,'; GSISId:',pGSISId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateHoliday` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateHoliday` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateHoliday`(pHolidayCode VARCHAR(30), 
								pHolidayDescription VARCHAR(200),
								pType VARCHAR(100),
								pRemarks VARCHAR(200),
								pUsername VARCHAR(30),
								pHostname VARCHAR(15))
BEGIN
	UPDATE holiday SET
	HolidayDescription = pHolidayDescription,
	`Type` = pType,
	Remarks = pRemarks
	WHERE
	HolidayCode = pHolidayCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a Holiday. HolidayCode:',
	      pHolidayCode,'; HolidayDescription:',pHolidayDescription,'; Type:', pType,
	      '; Remarks:', pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateHolidayEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateHolidayEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateHolidayEntry`(pHolidayEntryId bigint(20),pDate date,pHolidayCode varchar(30),
				pRemarks varchar(200),pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN	
	update holidayentry SET
	`Date` = pDate,
	HolidayCode = pHolidayCode,
	Remarks = pRemarks
	where
	HolidayEntryId = pHolidayEntryId and `Status` = 'Active';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a Holiday Entry. Date:',pDate,
	'; HolidayCode:',pHolidayCode,'; Remarks:',pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateLeaveEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateLeaveEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateLeaveEntry`(pLeaveEntryId bigint(20),pEmployeeNo VARCHAR(30),
				pLeaveTypeCode varchar(30),pReferenceNo VARCHAR(50),pDate date,pTime varchar(30),
				pExplanation varchar(500),pRemarks varchar(200),pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN	
	update leaveentry SET
	EmployeeNo = pEmployeeNo,
	LeaveTypeCode = pLeaveTypeCode,
	ReferenceNo = pReferenceNo,
	`Date` = pDate,
	`Time` = pTime,
	Explanation = pExplanation,
	Remarks = pRemarks
	where
	LeaveEntryId = pLeaveEntryId and `Status` = 'Active';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a Leave Entry. LeaveEntryId:',pLeaveEntryId,
	'; EmployeeNo:',pEmployeeNo,'; LeaveTypeCode:',pLeaveTypeCode,
	'; ReferenceNo:',pReferenceNo,
	'; Date:',pDate,'; Time:',pTime,'; Explanation:',pExplanation,'; Remarks:',pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateLeaveType` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateLeaveType` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateLeaveType`(pLeaveTypeCode VARCHAR(30),pLeaveTypeDescription VARCHAR(150),
						pCategory varchar(30),
						pUsername VARCHAR(30),pHostname VARCHAR(15))
BEGIN
	UPDATE leavetype SET
		LeaveTypeDescription = pLeaveTypeDescription,
		Category = pCategory
		WHERE
		LeaveTypeCode = pLeaveTypeCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a LeaveType. LeaveTypeCode:',pLeaveTypeCode,
	'; LeaveTypeDescription:',pLeaveTypeDescription,'; Category:',pCategory),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateOfficialBusinessEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateOfficialBusinessEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateOfficialBusinessEntry`(pOfficialBusinessEntryId bigint(20),pDate DATE, pEmployeeNo VARCHAR(30),
							pType varchar(50),pReferenceNo varchar(50),
							pTimeIn varchar(1), pBreakOut varchar(1),
							pBreakIn varchar(1), pTimeOut varchar(1),
							pPurpose varchar(100),
							pRemarks VARCHAR(200),pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	update officialbusinessentry SET
	`Date` = pDate,
	EmployeeNo = pEmployeeNo,
	`Type` = pType,
	ReferenceNo = pReferenceNo,
	TimeIn = pTimeIn,
	BreakOut = pBreakOut,
	BreakIn = pBreakIn,
	TimeOut = pTimeOut,
	Purpose = pPurpose,
	Remarks = pRemarks
	where
	OfficialBusinessEntryId = pOfficialBusinessEntryId and `Status` = 'Active';
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a Official Business Entry. Date:',pDate,'; EmployeeNo:',pEmployeeNo,
	'; Type:',pType,'; ReferenceNo:',pReferenceNo,
	'; TimeIn:',pTimeIn,'; BreakOut:',pBreakOut,'; BreakIn:',pBreakIn,'; TimeOut:',pTimeOut,
	'; Purpose:',pPurpose,'; Remarks:',pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateOvertimeEntry` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateOvertimeEntry` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateOvertimeEntry`(pOvertimeEntryId bigint(20),pDate DATE, pEmployeeNo VARCHAR(30),
							pTimeIn time, pTimeOut time,pOvertime TIME,
							pRemarks VARCHAR(200),pUsername VARCHAR(30),
							pHostname VARCHAR(15))
BEGIN
	update overtimeentry SET
	`Date` = pDate,
	EmployeeNo = pEmployeeNo,
	TimeIn = pTimeIn,
	TimeOut = pTimeOut,
	Overtime = pOvertime,
	Remarks = pRemarks
	where
	OvertimeEntryId = pOvertimeEntryId;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a Overtime Entry. OvertimeEntryId:',pOvertimeEntryId,
	';Date:',pDate,'; EmployeeNo:',pEmployeeNo,
	'; TimeIn:',pTimeIn,'; TimeOut:',pTimeOut,'; Overtime:',pOvertime,'; Remarks:',pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateSearchDisplayFields` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateSearchDisplayFields` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateSearchDisplayFields`(pTableName VARCHAR(100),
						pTemplateName VARCHAR(100),
						pDisplayFields VARCHAR(100),
						pSequenceNo int(10),
						pPrivate VARCHAR(1),
						pCreatedBy VARCHAR(30))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM searchdisplayfield WHERE TableName = pTableName AND TemplateName = pTemplateName AND DisplayFields=pDisplayFields AND `Status` = 'Deleted');	
	
	IF (@counter = 1) THEN
		UPDATE searchdisplayfield SET
		`Status` = 'Active',
		SequenceNo = pSequenceNo,
		Private = pPrivate
		WHERE
		TableName = pTableName AND TemplateName = pTemplateName AND DisplayFields=pDisplayFields;
	ELSE
		INSERT INTO searchdisplayfield SET
		TableName = pTableName,
		TemplateName = pTemplateName,
		DisplayFields = pDisplayFields,
		SequenceNo = pSequenceNo,
		Private = pPrivate,
		CreatedBy = pCreatedBy;
	END IF;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateSearchFilters` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateSearchFilters` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateSearchFilters`(pTableName VARCHAR(100),
					pTemplateName VARCHAR(100),
					pFields VARCHAR(100),
					pOperator VARCHAR(30),
					pOperatorSign VARCHAR(10),
					pValues VARCHAR(100),
					pCheckAnd VARCHAR(1),
					pCheckOr VARCHAR(1),
					pSequenceNo INT(5),
					pPrivate varchar(1),
					pCreatedBy VARCHAR(30))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM searchfilters WHERE TableName = pTableName 
		AND TemplateName = pTemplateName AND `Fields`=pFields 
		and Operator=pOperator and `Values`=pValues AND `Status` = 'Deleted');	
	
	IF (@counter = 1) THEN
		UPDATE searchfilters SET
		`Status` = 'Active',
		SequenceNo = pSequenceNo,
		Private = pPrivate
		WHERE
		TableName = pTableName 
		AND TemplateName = pTemplateName AND `Fields`=pFields 
		AND Operator=pOperator AND `Values`=pValues AND `Status` = 'Deleted';
	ELSE
		INSERT INTO searchfilters SET
		TableName = pTableName,
		TemplateName = pTemplateName,
		`Fields` = pFields,
		Operator = pOperator,
		OperatorSign = pOperatorSign,
		`Values` = pValues,
		CheckAnd = pCheckAnd,
		CheckOr = pCheckOr,
		SequenceNo = pSequenceNo,
		Private = pPrivate,
		CreatedBy = pCreatedBy;
	END IF;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateSearchGroupings` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateSearchGroupings` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateSearchGroupings`(pTableName VARCHAR(100),
				pTemplateName VARCHAR(100),pFieldName VARCHAR(100),
				pGroupBy VARCHAR(1),pSortBy VARCHAR(30),
				pSequenceNo INT(10),pPrivate varchar(1),pCreatedBy VARCHAR(30))
BEGIN
	SET @counter = (SELECT COUNT(*) FROM searchgrouping WHERE TableName = pTableName 
			AND TemplateName = pTemplateName AND FieldName=pFieldName 
			and GroupBy = pGroupBy and SortBy = pSortBy AND `Status` = 'Deleted');	
	
	IF (@counter = 1) THEN
		UPDATE searchgrouping SET
		`Status` = 'Active',
		SequenceNo = pSequenceNo,
		GroupBy = pGroupBy,
		SortBy = pSortBy,
		Private = pPrivate
		WHERE
		TableName = pTableName AND TemplateName = pTemplateName AND DisplayFields=pDisplayFields AND 
		FieldName=pFieldName AND GroupBy = pGroupBy and SortBy = pSortBy;	
	ELSE
		INSERT INTO searchgrouping SET
		TableName = pTableName,
		TemplateName = pTemplateName,
		FieldName = pFieldName,
		GroupBy = pGroupBy,
		SortBy = pSortBy,
		SequenceNo = pSequenceNo,
		Private = pPrivate,
		CreatedBy = pCreatedBy;
	END IF;	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateSoftwareConfigUnpaid` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateSoftwareConfigUnpaid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateSoftwareConfigUnpaid`(pKey varchar(30),pValue longtext)
BEGIN
	update systemconfiguration set
	`Value` = pValue
	where
	`Key` = pKey and `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateSoftwareInfo` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateSoftwareInfo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateSoftwareInfo`(pKey varchar(30),pValue longtext)
BEGIN
	update systemconfiguration set
	`Value` = pValue
	where
	`Key` = pKey and `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateSystemConfiguration` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateSystemConfiguration` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateSystemConfiguration`(pKey VARCHAR(30), pValue longtext)
BEGIN
	UPDATE systemconfiguration SET
	`Value` = pValue
	WHERE `Key` = pKey AND `Status` = 'Active';
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateUser`(pUsername VARCHAR(30),
						pPassword VARCHAR(30),
						pFullname VARCHAR(100),
						pUserGroupId VARCHAR(30),
						pUsernameUpdate VARCHAR(30),
						pHostname VARCHAR(15))
BEGIN
	UPDATE `user` SET
	Fullname = pFullname,
	UserGroupId = pUserGroupId
	WHERE
	Username = pUsername;
	
	IF (pPassword != '') THEN
		UPDATE `user` SET
		`Password` = MD5(pPassword)
		WHERE
		Username = pUsername;
		
		INSERT audittrail SET
		LogDescription = CONCAT(fWhosThisUser(pUsername),' update a Password. Password:',
		      pPassword,'; Username:',pUsername),
		Username = pUsername,
		`Date` = NOW(),
		Hostname = pHostname;
	END IF;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsernameUpdate),' updates a User. Fullname:',
	      pFullname,'; UserGroupId:',pUserGroupId,'; Username:',pUsername),
	Username = pUsernameUpdate,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateUserGroup` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateUserGroup` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateUserGroup`(pUserGroupId VARCHAR(30), pUserGroupDescription VARCHAR(200),
					pUsername VARCHAR(30),
					pHostname VARCHAR(15))
BEGIN
	UPDATE usergroup SET
	UserGroupDescription = pUserGroupDescription
	WHERE
	UserGroupId = pUserGroupId;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a Usergroup. Description:',
	      pUserGroupDescription,'; UserGroupId:',pUserGroupId),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateUserGroupMenuItem` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateUserGroupMenuItem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateUserGroupMenuItem`(pUserGroupId VARCHAR(30), pMenu VARCHAR(50),pItem VARCHAR(50))
BEGIN
	INSERT INTO usergroupmenuitems SET
	UserGroupId = pUserGroupId,
	Menu = pMenu,
	Item = pItem;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateUserGroupRights` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateUserGroupRights` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateUserGroupRights`(pUserGroupId varchar(30),pItemName varchar(50),pRights varchar(50))
BEGIN
	INSERT INTO usergrouprights SET
	UserGroupId = pUserGroupId,
	ItemName = pItemName,
	Rights = pRights;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUpdateWorkSchedule` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUpdateWorkSchedule` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdateWorkSchedule`(pWorkScheduleCode VARCHAR(30), 
								pWorkScheduleDescription VARCHAR(200),
								pHospitalEmployee VARCHAR(1),
								pRemarks VARCHAR(200),
								pUsername VARCHAR(30),
								pHostname VARCHAR(15))
BEGIN
	UPDATE workschedule SET
	WorkScheduleDescription = pWorkScheduleDescription,
	HospitalEmployee = pHospitalEmployee,
	Remarks = pRemarks
	WHERE
	WorkScheduleCode = pWorkScheduleCode;
	
	delete from workscheduledetail where
	WorkScheduleCode = pWorkScheduleCode;
	
	INSERT audittrail SET
	LogDescription = CONCAT(fWhosThisUser(pUsername),' updates a Work Schedule. WorkScheduleCode:',
	      pWorkScheduleCode,'; WorkScheduleDescription:',pWorkScheduleDescription,'; HospitalEmployee:',pHospitalEmployee,
	      '; Remarks:', pRemarks),
	Username = pUsername,
	`Date` = NOW(),
	Hostname = pHostname;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `spUserGroupSearch` */

/*!50003 DROP PROCEDURE IF EXISTS  `spUserGroupSearch` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spUserGroupSearch`(pSearchString VARCHAR(100))
BEGIN
	SELECT UserGroupId, UserGroupDesc
	FROM usergroup WHERE UserGroupDesc LIKE CONCAT('%',pSearchString,'%') AND `Status` = 'Active';
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
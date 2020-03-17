-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: MyDataBase
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.19.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `App_Parameter`
--

DROP TABLE IF EXISTS `App_Parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `App_Parameter` (
  `ID` int(11) DEFAULT NULL,
  `Key_Type` varchar(30) DEFAULT NULL,
  `Key_value` int(11) DEFAULT NULL,
  `key_text` varchar(40) DEFAULT NULL,
  `cur_status` varchar(40) DEFAULT NULL,
  `Lastupd_User` varchar(40) DEFAULT NULL,
  `Lastupd_Stamp` varchar(30) DEFAULT NULL,
  `Creator_Stamp` varchar(40) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  `Seq_Num` int(11) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `App_Parameter_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`),
  CONSTRAINT `App_Parameter_ibfk_2` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `App_Parameter`
--

LOCK TABLES `App_Parameter` WRITE;
/*!40000 ALTER TABLE `App_Parameter` DISABLE KEYS */;
/*!40000 ALTER TABLE `App_Parameter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Bank_Deatails`
--

DROP TABLE IF EXISTS `Candidate_Bank_Deatails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Bank_Deatails` (
  `Candidate_id` int(11) DEFAULT NULL,
  `Name` char(30) DEFAULT NULL,
  `Account_Number` int(11) DEFAULT NULL,
  `is_Account_Verified` varchar(10) DEFAULT NULL,
  `ifsc_Code` varchar(30) DEFAULT NULL,
  `Is_Ifsc_Code_Verified` varchar(15) DEFAULT NULL,
  `Pan_Number` varchar(25) DEFAULT NULL,
  `Is_Pan_Number_Verifed` varchar(15) DEFAULT NULL,
  `Aadhar_Number` int(40) DEFAULT NULL,
  `Is_Aadhar_Number_Verified` varchar(15) DEFAULT NULL,
  `Creator_Stamp` varchar(20) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `Candidate_id` (`Candidate_id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Candidate_Bank_Deatails_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`),
  CONSTRAINT `Candidate_Bank_Deatails_ibfk_2` FOREIGN KEY (`Candidate_id`) REFERENCES `Candidate_personalDetail_Check` (`Candidate_Id`),
  CONSTRAINT `Candidate_Bank_Deatails_ibfk_3` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Bank_Deatails`
--

LOCK TABLES `Candidate_Bank_Deatails` WRITE;
/*!40000 ALTER TABLE `Candidate_Bank_Deatails` DISABLE KEYS */;
INSERT INTO `Candidate_Bank_Deatails` VALUES (1111,'Shashi',36524012,'verified','SBI0014','verified','L2G5D5412','verified',732546518,'verified','12/01/2020',11,101),(1112,'Prashanth',1102125,'verified','kVB2034','verified','F7438V10','verified',39821455,'verified','13/01/2020',12,102),(1113,'Bala',3986210,'verified','SBI4757','verified','02JG54GS','verified',5245127,'verified','07/01/2020',13,103);
/*!40000 ALTER TABLE `Candidate_Bank_Deatails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Documents`
--

DROP TABLE IF EXISTS `Candidate_Documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Documents` (
  `ID` int(11) DEFAULT NULL,
  `Candidate_Id` int(11) DEFAULT NULL,
  `Doc_Type` varchar(30) DEFAULT NULL,
  `Doc_Path` varchar(40) DEFAULT NULL,
  `Status` varchar(40) DEFAULT NULL,
  `Creator_Stamp` varchar(40) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  KEY `Creator_user` (`Creator_user`),
  KEY `ID` (`ID`),
  KEY `Candidate_Id` (`Candidate_Id`),
  CONSTRAINT `Candidate_Documents_ibfk_1` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`),
  CONSTRAINT `Candidate_Documents_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`),
  CONSTRAINT `Candidate_Documents_ibfk_3` FOREIGN KEY (`Candidate_Id`) REFERENCES `Candidate_personalDetail_Check` (`Candidate_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Documents`
--

LOCK TABLES `Candidate_Documents` WRITE;
/*!40000 ALTER TABLE `Candidate_Documents` DISABLE KEYS */;
INSERT INTO `Candidate_Documents` VALUES (101,1111,'Pdf file','101certificate.pdf','Verified','15/01/2020',11),(102,1112,'Pdf file','102certificate.pdf','Verified','10/01/2020',12),(103,1113,'Pdf file','103certificate.pdf','Verified','15/01/2020',13);
/*!40000 ALTER TABLE `Candidate_Documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Qualification`
--

DROP TABLE IF EXISTS `Candidate_Qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Qualification` (
  `ID` int(11) DEFAULT NULL,
  `candidate_id` int(11) DEFAULT NULL,
  `diploma` varchar(30) DEFAULT NULL,
  `degree_name` varchar(40) DEFAULT NULL,
  `is_degree_name_verified` char(20) DEFAULT NULL,
  `employee_decipline` varchar(40) DEFAULT NULL,
  `is_employee_decipline_verified` varchar(40) DEFAULT NULL,
  `Passing_Year` varchar(30) DEFAULT NULL,
  `is_passing_year_verified` varchar(20) DEFAULT NULL,
  `aggr_per` double DEFAULT NULL,
  `is_aggr_per_verified` varchar(20) DEFAULT NULL,
  `final_year_per` double DEFAULT NULL,
  `is_final_year_per_verified` varchar(20) DEFAULT NULL,
  `training_institute` varchar(50) DEFAULT NULL,
  `is_training_institute_verified` varchar(20) DEFAULT NULL,
  `training_duration_month` int(11) DEFAULT NULL,
  `is_training_duration_month_verified` varchar(20) DEFAULT NULL,
  `other_training` varchar(40) DEFAULT NULL,
  `is_other_training_verified` varchar(20) DEFAULT NULL,
  `creator_Stamp` varchar(40) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `candidate_id` (`candidate_id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Candidate_Qualification_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`),
  CONSTRAINT `Candidate_Qualification_ibfk_2` FOREIGN KEY (`candidate_id`) REFERENCES `Candidate_personalDetail_Check` (`Candidate_Id`),
  CONSTRAINT `Candidate_Qualification_ibfk_3` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Qualification`
--

LOCK TABLES `Candidate_Qualification` WRITE;
/*!40000 ALTER TABLE `Candidate_Qualification` DISABLE KEYS */;
INSERT INTO `Candidate_Qualification` VALUES (101,1111,'puc','Computer science','verified','fresher','Null','0.003722084367245657','Yes',83.5,'Verified',7.8,'verified','Jspider','verified',4,'verified','null','null','11/01/2020',11),(102,1112,'Diploma','CSE','verified','fresher','Null','0.004464285714285714','Yes',80.48,'Verified',7,'verified','Qspider','verified',3,'verified','null','null','05/01/2020',12),(103,1113,'DEEE','civil','verified','trainee','verified','0.003598014888337468','Yes',79.42,'Verified',7.1,'verified','Qspider','verified',3,'verified','null','null','14/01/2020',13);
/*!40000 ALTER TABLE `Candidate_Qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Tech_Stack`
--

DROP TABLE IF EXISTS `Candidate_Tech_Stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Tech_Stack` (
  `ID` int(11) DEFAULT NULL,
  `Requirement_Id` int(11) DEFAULT NULL,
  `Candidate_Id` int(11) DEFAULT NULL,
  `Assign_Date` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Creator_Stamp` varchar(30) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  KEY `Candidate_Id` (`Candidate_Id`),
  KEY `Creator_user` (`Creator_user`),
  KEY `ID` (`ID`),
  KEY `Requirement_Id` (`Requirement_Id`),
  CONSTRAINT `Candidate_Tech_Stack_ibfk_1` FOREIGN KEY (`Candidate_Id`) REFERENCES `Candidate_personalDetail_Check` (`Candidate_Id`),
  CONSTRAINT `Candidate_Tech_Stack_ibfk_2` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`),
  CONSTRAINT `Candidate_Tech_Stack_ibfk_3` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`),
  CONSTRAINT `Candidate_Tech_Stack_ibfk_4` FOREIGN KEY (`Requirement_Id`) REFERENCES `Company_Requirement` (`Requirement_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Tech_Stack`
--

LOCK TABLES `Candidate_Tech_Stack` WRITE;
/*!40000 ALTER TABLE `Candidate_Tech_Stack` DISABLE KEYS */;
INSERT INTO `Candidate_Tech_Stack` VALUES (101,801,1111,'16/02/2020','Assigned','03/01/2020',11),(102,802,1112,'27/01/2020','Assigned','09/01/2020',12),(103,802,1113,'20/01/2020','Assigned','23/01/2020',12),(102,803,1113,'03/02/2020','Assigned','01/02/2020',13);
/*!40000 ALTER TABLE `Candidate_Tech_Stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_personalDetail_Check`
--

DROP TABLE IF EXISTS `Candidate_personalDetail_Check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_personalDetail_Check` (
  `ID` int(11) DEFAULT NULL,
  `Candidate_Id` int(11) NOT NULL,
  `Field_Name` char(20) DEFAULT NULL,
  `is_Verified` varchar(20) DEFAULT NULL,
  `LastUpd_Stamp` varchar(20) DEFAULT NULL,
  `Lastupd_User` varchar(30) DEFAULT NULL,
  `Creator_Stamp` varchar(30) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`Candidate_Id`),
  KEY `fk_hiredCandidateDetailCheck` (`ID`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Candidate_personalDetail_Check_ibfk_1` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`),
  CONSTRAINT `fk_hiredCandidateDetailCheck` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_personalDetail_Check`
--

LOCK TABLES `Candidate_personalDetail_Check` WRITE;
/*!40000 ALTER TABLE `Candidate_personalDetail_Check` DISABLE KEYS */;
INSERT INTO `Candidate_personalDetail_Check` VALUES (101,1111,'Email_Id','yes','06/01/2020','111','08/01/2020',11),(102,1112,'Email_Id','yes','24/12/2019','112','12/01/2020',12),(103,1113,'Email_Id','yes','27/12/2019','113','13/01/2020',13);
/*!40000 ALTER TABLE `Candidate_personalDetail_Check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `Company_Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `Location` varchar(40) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Creator_Stamp` varchar(30) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`Company_Id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Company_ibfk_1` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (11101,'ABC','ITPL','WhiteFiled','StartUp','22/12/2019',11),(11102,'HCL','E-City','Phase-1','MNC','02/01/2020',12),(11103,'Capgemini','Marathalli','Domlur','MNC','05/01/2020',13),(11104,'','ITPL','GlobalTechPark','StartUp','12/01/2020',14);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company_Requirement`
--

DROP TABLE IF EXISTS `Company_Requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company_Requirement` (
  `Requirement_Id` int(11) NOT NULL,
  `Company_Id` int(11) DEFAULT NULL,
  `Requested_Month` varchar(20) DEFAULT NULL,
  `City` varchar(30) DEFAULT NULL,
  `Is_Doc_Veriification` varchar(20) DEFAULT NULL,
  `Requirement_Doc_Path` varchar(40) DEFAULT NULL,
  `No_Of_Engg` int(11) DEFAULT NULL,
  `Tech_Stack_Id` int(11) DEFAULT NULL,
  `Tech_Type_Id` int(11) DEFAULT NULL,
  `Maker_Program_Id` int(11) DEFAULT NULL,
  `Lead_Id` varchar(20) DEFAULT NULL,
  `Ideation_Engg_Id` varchar(30) DEFAULT NULL,
  `Buddy_Engg_Id` varchar(20) DEFAULT NULL,
  `Special_Remark_Status` varchar(30) DEFAULT NULL,
  `Creator_Stamp` varchar(40) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`Requirement_Id`),
  KEY `Company_Id` (`Company_Id`),
  KEY `Tech_Stack_Id` (`Tech_Stack_Id`),
  KEY `Tech_Type_Id` (`Tech_Type_Id`),
  KEY `Maker_Program_Id` (`Maker_Program_Id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Company_Requirement_ibfk_1` FOREIGN KEY (`Company_Id`) REFERENCES `Company` (`Company_Id`),
  CONSTRAINT `Company_Requirement_ibfk_2` FOREIGN KEY (`Tech_Stack_Id`) REFERENCES `Tech_Stack` (`Tech_Stack_Id`),
  CONSTRAINT `Company_Requirement_ibfk_3` FOREIGN KEY (`Tech_Type_Id`) REFERENCES `Tech_Type` (`Tech_Type_Id`),
  CONSTRAINT `Company_Requirement_ibfk_4` FOREIGN KEY (`Maker_Program_Id`) REFERENCES `Maker_Program` (`Maker_Program_Id`),
  CONSTRAINT `Company_Requirement_ibfk_5` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company_Requirement`
--

LOCK TABLES `Company_Requirement` WRITE;
/*!40000 ALTER TABLE `Company_Requirement` DISABLE KEYS */;
INSERT INTO `Company_Requirement` VALUES (801,11101,'March','chennai','yes','10101.doc',21,4001,6001,701,'5468','9785','87878','7.8','14/03/2020',11),(802,11101,'april','Banglore','yes','102210.doc',15,4002,6002,702,'34542','8221','8454','8.2','16/04/2020',12),(803,11102,'Feb','Mumbai','yes','102652.doc',13,4003,6003,703,'3454','7245','8525','8.0','21/02/2020',13),(804,11103,'Feb','Mumbai','yes','102620.doc',10,4003,6004,703,'3074','7345','8575','8.2','18/02/2020',14);
/*!40000 ALTER TABLE `Company_Requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fellowship_Candidates`
--

DROP TABLE IF EXISTS `Fellowship_Candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fellowship_Candidates` (
  `ID` int(11) DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Mobile_Number` int(15) DEFAULT NULL,
  `Degree` varchar(50) DEFAULT NULL,
  `Birth_Date` varchar(50) DEFAULT NULL,
  `Is_BirthDate_Verified` varchar(50) DEFAULT NULL,
  `Parent_Name` varchar(50) DEFAULT NULL,
  `Parent_Occupation` varchar(50) DEFAULT NULL,
  `Parents_MobileNumber` int(15) DEFAULT NULL,
  `Parents_AnnualSalary` int(15) DEFAULT NULL,
  `Local_Address` varchar(50) DEFAULT NULL,
  `Permanent_Address` varchar(50) DEFAULT NULL,
  `Photo_Path` varchar(50) DEFAULT NULL,
  `Joining_Date` varchar(50) DEFAULT NULL,
  `Educational_Information` varchar(50) DEFAULT NULL,
  `Document_Status` varchar(50) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  KEY `ID` (`ID`),
  CONSTRAINT `Fellowship_Candidates_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fellowship_Candidates`
--

LOCK TABLES `Fellowship_Candidates` WRITE;
/*!40000 ALTER TABLE `Fellowship_Candidates` DISABLE KEYS */;
INSERT INTO `Fellowship_Candidates` VALUES (101,'Shashi','Kala','R',86520125,'B.Tech','22.06.2000','yes','Rajanna.v','Business',944307887,300000,'Lalbagh','Hosur','001Shashi.jpg','15/12/2019','2019','verified','Good'),(102,'prashanth','Kumar','R',807214820,'B.E(CSE)','21.02.2003','yes','Rajappa.A','Hardware_Shop',994490749,350000,'Malur','salem','002rpth.jpg','22/12/2019','2019','verified','Good'),(103,'Bala','Krishna','Y',999439156,'B.E(Civil)','01.01.1998','yes','Yellappa.V','CompanyWorker',962611254,300000,'chennai','Madurai','003bala.jpg','02/10/2019','2018','verified','Good');
/*!40000 ALTER TABLE `Fellowship_Candidates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hired_Candidate`
--

DROP TABLE IF EXISTS `Hired_Candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hired_Candidate` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(30) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Mobile_Number` int(11) DEFAULT NULL,
  `Degree` varchar(50) DEFAULT NULL,
  `Permanent_Pincode` varchar(50) DEFAULT NULL,
  `Hired_City` varchar(50) DEFAULT NULL,
  `Hired_Date` varchar(50) DEFAULT NULL,
  `Hired_Lab` varchar(50) DEFAULT NULL,
  `Attitude` decimal(10,0) DEFAULT NULL,
  `Communication_Remark` decimal(10,0) DEFAULT NULL,
  `Knowledge_Remark` decimal(10,0) DEFAULT NULL,
  `Aggregate_Percentage` decimal(10,0) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  `Creator_Stamp` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Hired_Candidate_ibfk_1` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hired_Candidate`
--

LOCK TABLES `Hired_Candidate` WRITE;
/*!40000 ALTER TABLE `Hired_Candidate` DISABLE KEYS */;
INSERT INTO `Hired_Candidate` VALUES (101,'Shashi','Kala','R','shashi2204@gmail.com',86520125,'B.Tech','5600625','HSR','10/12/2019','Banglore',1,2,2,8,11,'13/01/2019','selected'),(102,'Prashanth','Kumar','R','rpthkmr@gmail.com',807214820,'B.E(CSE)','635251','Chennai','13/11/2019','guindy',1,2,1,7,12,'10/01/2020','selected'),(103,'Bala','Krishna','Y','balakrishna@gmail.com',999436156,'B.E(Civil)','592642','Banglore','20/11/2019','blore',1,2,1,7,13,'09/01/2020','selected');
/*!40000 ALTER TABLE `Hired_Candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab`
--

DROP TABLE IF EXISTS `Lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab` (
  `Lab_Id` int(11) NOT NULL,
  `Lab_Name` varchar(30) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `Creator_Stamp` varchar(30) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  `Status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Lab_Id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Lab_ibfk_1` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab`
--

LOCK TABLES `Lab` WRITE;
/*!40000 ALTER TABLE `Lab` DISABLE KEYS */;
INSERT INTO `Lab` VALUES (2001,'Bangolre','Blore','HSR Layout','04/03/2017',11,'150 candidates'),(2002,'Mumbai','Mumbai','Towers','20/07/2015',12,'200 candidates'),(2003,'Chennai','guindy','tankStreet','18/11/2018',13,'180 candidates');
/*!40000 ALTER TABLE `Lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab_Threshold`
--

DROP TABLE IF EXISTS `Lab_Threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab_Threshold` (
  `Lab_Id` int(11) DEFAULT NULL,
  `Lab_Capacity` varchar(30) DEFAULT NULL,
  `Lead_Threshold` varchar(30) DEFAULT NULL,
  `Ideation_Engg_Threshold` varchar(30) DEFAULT NULL,
  `Buddy_Engg_Threshold` varchar(30) DEFAULT NULL,
  `Status` varchar(30) DEFAULT NULL,
  `Creator_Stamp` varchar(30) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  KEY `Lab_Id` (`Lab_Id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Lab_Threshold_ibfk_1` FOREIGN KEY (`Lab_Id`) REFERENCES `Lab` (`Lab_Id`),
  CONSTRAINT `Lab_Threshold_ibfk_2` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab_Threshold`
--

LOCK TABLES `Lab_Threshold` WRITE;
/*!40000 ALTER TABLE `Lab_Threshold` DISABLE KEYS */;
INSERT INTO `Lab_Threshold` VALUES (2001,'200Cadidates','Minimum','150','38','Maximum','26/06/2019',11),(2002,'180Cadidates','Max','128','47','Maximum','16/09/2019',12),(2003,'170Cadidates','Min','103','30','Medium','07/05/2019',13);
/*!40000 ALTER TABLE `Lab_Threshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LogiReg`
--

DROP TABLE IF EXISTS `LogiReg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LogiReg` (
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(40) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `ReEnter_Password` varchar(50) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Mobile_NO` varchar(40) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LogiReg`
--

LOCK TABLES `LogiReg` WRITE;
/*!40000 ALTER TABLE `LogiReg` DISABLE KEYS */;
/*!40000 ALTER TABLE `LogiReg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginReg`
--

DROP TABLE IF EXISTS `LoginReg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginReg` (
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(40) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `ReEnter_Password` varchar(50) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Mobile_NO` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginReg`
--

LOCK TABLES `LoginReg` WRITE;
/*!40000 ALTER TABLE `LoginReg` DISABLE KEYS */;
INSERT INTO `LoginReg` VALUES ('Sandhya','C','csandhyait@gmail.com','sandhya','sandy2204','sandy2204','female','8988671332'),('aaa','c','ab@gmail.com','sandhya','123','123','on','96854585');
/*!40000 ALTER TABLE `LoginReg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maker_Program`
--

DROP TABLE IF EXISTS `Maker_Program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Maker_Program` (
  `Maker_Program_Id` int(11) NOT NULL,
  `Program_Name` varchar(40) DEFAULT NULL,
  `Program_Type` varchar(30) DEFAULT NULL,
  `Program_Link` varchar(30) DEFAULT NULL,
  `Tech_Type_Id` int(11) DEFAULT NULL,
  `Is_Program_Approved_Description` varchar(60) DEFAULT NULL,
  `Status` varchar(40) DEFAULT NULL,
  `Creator_Stamp` varchar(40) DEFAULT NULL,
  `Ctreator_User` varchar(40) DEFAULT NULL,
  `Tech_Stack_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Maker_Program_Id`),
  KEY `Tech_Stack_Id` (`Tech_Type_Id`),
  KEY `Tech_Stack_Id_2` (`Tech_Stack_Id`),
  CONSTRAINT `Maker_Program_ibfk_1` FOREIGN KEY (`Tech_Type_Id`) REFERENCES `Tech_Type` (`Tech_Type_Id`),
  CONSTRAINT `Maker_Program_ibfk_2` FOREIGN KEY (`Tech_Stack_Id`) REFERENCES `Tech_Stack` (`Tech_Stack_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maker_Program`
--

LOCK TABLES `Maker_Program` WRITE;
/*!40000 ALTER TABLE `Maker_Program` DISABLE KEYS */;
INSERT INTO `Maker_Program` VALUES (701,'basicPrograms','java','https://basicjavapgm.com',6001,'yes','12Candidate','09/12/2019','11',4001),(702,'DataStructures','python','https://datastructpypgm.com',6002,'yes','9Candidate','11/12/2019','12',4002),(703,'LoginAndRegistration','javascript','https://loginRegjspgm.com',6003,'yes','15Candidate','19/12/2019','13',4003);
/*!40000 ALTER TABLE `Maker_Program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor`
--

DROP TABLE IF EXISTS `Mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor` (
  `Name` char(40) DEFAULT NULL,
  `Mentor_Type` varchar(40) DEFAULT NULL,
  `Lab_Id` int(11) DEFAULT NULL,
  `Status` varchar(40) DEFAULT NULL,
  `Creator_Stamp` varchar(40) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  `Mentor_Id` int(11) NOT NULL,
  PRIMARY KEY (`Mentor_Id`),
  KEY `Creator_user` (`Creator_user`),
  KEY `Lab_Id` (`Lab_Id`),
  CONSTRAINT `Mentor_ibfk_1` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`),
  CONSTRAINT `Mentor_ibfk_2` FOREIGN KEY (`Lab_Id`) REFERENCES `Lab` (`Lab_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor`
--

LOCK TABLES `Mentor` WRITE;
/*!40000 ALTER TABLE `Mentor` DISABLE KEYS */;
INSERT INTO `Mentor` VALUES ('Venkat','JavaBackEnd',2001,'15 Candidate','10/04/2018',11,3001),('kalpesh','JavaFullStack',2001,'17 Candidate','13/08/2018',12,3002),('kunjan','python',2002,'24 Candidate','19/01/2018',12,3003),('varsha','.net',2003,'17 Candidate','21/05/2018',13,3004);
/*!40000 ALTER TABLE `Mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor_Ideation_Map`
--

DROP TABLE IF EXISTS `Mentor_Ideation_Map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor_Ideation_Map` (
  `ID` int(11) DEFAULT NULL,
  `Mentor_Id` int(11) DEFAULT NULL,
  `Status` varchar(40) DEFAULT NULL,
  `Creator_Stamp` varchar(40) DEFAULT NULL,
  `Creator_User` int(11) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `Mentor_Id` (`Mentor_Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Mentor_Ideation_Map_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`),
  CONSTRAINT `Mentor_Ideation_Map_ibfk_2` FOREIGN KEY (`Mentor_Id`) REFERENCES `Mentor` (`Mentor_Id`),
  CONSTRAINT `Mentor_Ideation_Map_ibfk_3` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor_Ideation_Map`
--

LOCK TABLES `Mentor_Ideation_Map` WRITE;
/*!40000 ALTER TABLE `Mentor_Ideation_Map` DISABLE KEYS */;
INSERT INTO `Mentor_Ideation_Map` VALUES (101,3001,'4week','12/12/2019',11),(102,3002,'5week','24/11/2019',11),(103,3003,'2week','08/01/2019',12),(103,3003,'2week','02/01/2020',14);
/*!40000 ALTER TABLE `Mentor_Ideation_Map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor_Tech_Stack`
--

DROP TABLE IF EXISTS `Mentor_Tech_Stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor_Tech_Stack` (
  `ID` int(11) DEFAULT NULL,
  `Mentor_Id` int(11) DEFAULT NULL,
  `Tech_Stack_Id` int(11) DEFAULT NULL,
  `Status` varchar(40) DEFAULT NULL,
  `Creator_Stamp` varchar(40) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  KEY `ID` (`ID`),
  KEY `Mentor_Id` (`Mentor_Id`),
  KEY `Tech_Stack_Id` (`Tech_Stack_Id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_2` FOREIGN KEY (`Mentor_Id`) REFERENCES `Mentor` (`Mentor_Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_3` FOREIGN KEY (`Tech_Stack_Id`) REFERENCES `Tech_Stack` (`Tech_Stack_Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_4` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor_Tech_Stack`
--

LOCK TABLES `Mentor_Tech_Stack` WRITE;
/*!40000 ALTER TABLE `Mentor_Tech_Stack` DISABLE KEYS */;
INSERT INTO `Mentor_Tech_Stack` VALUES (101,3001,4001,'4Week','14/12/2019',11),(102,3001,4002,'3Week','03/01/2020',12),(103,3002,4003,'2Week','09/01/2020',13),(103,3003,4002,'5Week','22/11/2019',12);
/*!40000 ALTER TABLE `Mentor_Tech_Stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SBdata`
--

DROP TABLE IF EXISTS `SBdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SBdata` (
  `id` int(11) DEFAULT NULL,
  `Name` varchar(40) DEFAULT NULL,
  `Tech` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SBdata`
--

LOCK TABLES `SBdata` WRITE;
/*!40000 ALTER TABLE `SBdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `SBdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tech_Stack`
--

DROP TABLE IF EXISTS `Tech_Stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tech_Stack` (
  `Tech_Stack_Id` int(11) NOT NULL,
  `Tech_Name` char(40) DEFAULT NULL,
  `Image_Path` varchar(40) DEFAULT NULL,
  `FrameWork` varchar(40) DEFAULT NULL,
  `Cur_Status` varchar(40) DEFAULT NULL,
  `Creator_Stamp` varchar(40) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`Tech_Stack_Id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Tech_Stack_ibfk_1` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tech_Stack`
--

LOCK TABLES `Tech_Stack` WRITE;
/*!40000 ALTER TABLE `Tech_Stack` DISABLE KEYS */;
INSERT INTO `Tech_Stack` VALUES (4001,'java','javaimg.jpg','React node.js','2month','04/10/2019',11),(4002,'javaBackEnd','springimg.jpg','SpringBoot','1month','09/10/2019',12),(4003,'javaFBend','fstackimg.jpg','FullStack','2month','02/01/2019',13),(4004,'python','pythonimg.jpg','pythonFullStack','7Weeks','07/11/2019',13);
/*!40000 ALTER TABLE `Tech_Stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tech_Type`
--

DROP TABLE IF EXISTS `Tech_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tech_Type` (
  `Tech_Type_Id` int(11) NOT NULL,
  `Type_Name` varchar(30) DEFAULT NULL,
  `Cur_Status` varchar(30) DEFAULT NULL,
  `Creator_Stamp` varchar(30) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`Tech_Type_Id`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `Tech_Type_ibfk_1` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tech_Type`
--

LOCK TABLES `Tech_Type` WRITE;
/*!40000 ALTER TABLE `Tech_Type` DISABLE KEYS */;
INSERT INTO `Tech_Type` VALUES (6001,'java','120Candidates','27/08/2019',11),(6002,'python','90Candidates','13/09/2019',12),(6003,'.net','67Candidates','19/10/2019',13),(6004,'reactNode','42Candidates','06/12/2019',12);
/*!40000 ALTER TABLE `Tech_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Details`
--

DROP TABLE IF EXISTS `User_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Details` (
  `User_Id` int(11) NOT NULL,
  `Email` varchar(40) DEFAULT NULL,
  `First_Name` varchar(30) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Contact_Number` int(15) DEFAULT NULL,
  `Verified` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Details`
--

LOCK TABLES `User_Details` WRITE;
/*!40000 ALTER TABLE `User_Details` DISABLE KEYS */;
INSERT INTO `User_Details` VALUES (1,'csandhyait@gmail.com','Sandy','abc',770814432,'yes','hosur'),(11,'anu@gmail.com','Anu','Anu@123',898686252,'verified','Marathalli'),(12,'priya12@gmail.com','priya','priya45s',978785876,'verified','whiteField'),(13,'karthick@gmail.com','karthick','karthi@145',807462436,'verified','HsrLayout'),(14,'subash91109@gmail.com','Subash','SubashR90',876547310,'verified','Manglore');
/*!40000 ALTER TABLE `User_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Role`
--

DROP TABLE IF EXISTS `User_Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Role` (
  `User_Id` int(11) DEFAULT NULL,
  `Role_Name` varchar(40) DEFAULT NULL,
  KEY `User_Id` (`User_Id`),
  CONSTRAINT `User_Role_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Role`
--

LOCK TABLES `User_Role` WRITE;
/*!40000 ALTER TABLE `User_Role` DISABLE KEYS */;
INSERT INTO `User_Role` VALUES (11,'Lead'),(12,'Superior_Lead'),(12,'Lead'),(12,'Asst.Lead');
/*!40000 ALTER TABLE `User_Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate_educationalDetail_Check`
--

DROP TABLE IF EXISTS `candidate_educationalDetail_Check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate_educationalDetail_Check` (
  `ID` int(11) DEFAULT NULL,
  `Candidate_Id` int(11) DEFAULT NULL,
  `Field_Name` char(30) DEFAULT NULL,
  `is_Verified` char(20) DEFAULT NULL,
  `Lastpd_Stamp` varchar(40) DEFAULT NULL,
  `Lastupd_User` varchar(30) DEFAULT NULL,
  `Creator_Stamp` varchar(30) DEFAULT NULL,
  `Creator_user` int(11) DEFAULT NULL,
  KEY `Candidate_Id` (`Candidate_Id`),
  KEY `ID` (`ID`),
  KEY `Creator_user` (`Creator_user`),
  CONSTRAINT `candidate_educationalDetail_Check_ibfk_1` FOREIGN KEY (`Candidate_Id`) REFERENCES `Candidate_personalDetail_Check` (`Candidate_Id`),
  CONSTRAINT `candidate_educationalDetail_Check_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `Hired_Candidate` (`ID`),
  CONSTRAINT `candidate_educationalDetail_Check_ibfk_3` FOREIGN KEY (`Creator_user`) REFERENCES `User_Details` (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate_educationalDetail_Check`
--

LOCK TABLES `candidate_educationalDetail_Check` WRITE;
/*!40000 ALTER TABLE `candidate_educationalDetail_Check` DISABLE KEYS */;
INSERT INTO `candidate_educationalDetail_Check` VALUES (101,1111,'Email_Id','Verified','12/01/2020','201','07/01/2020',11),(102,1112,'Email_Id','Verified','11/01/2020','202','28/12/2020',12),(103,1113,'Email_Id','Verified','14/01/2020','203','06/01/2020',13);
/*!40000 ALTER TABLE `candidate_educationalDetail_Check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (4);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sbdata`
--

DROP TABLE IF EXISTS `sbdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sbdata` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tech` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sbdata`
--

LOCK TABLES `sbdata` WRITE;
/*!40000 ALTER TABLE `sbdata` DISABLE KEYS */;
INSERT INTO `sbdata` VALUES (1,'sandhya','java'),(2,'manju','javaScript'),(3,'shashi','javaScript');
/*!40000 ALTER TABLE `sbdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporary_MIS`
--

DROP TABLE IF EXISTS `temporary_MIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temporary_MIS` (
  `Date_Time` date NOT NULL,
  `Cpu_Count` int(11) NOT NULL,
  `Cpu_Working_Time` double(11,3) NOT NULL,
  `Cpu_idle_Time` double(11,3) NOT NULL,
  `cpu_percent` double(11,3) NOT NULL,
  `Usage_cpu_count` int(11) NOT NULL,
  `number_of_software_interrupts_since_boot` double(11,3) NOT NULL,
  `number_of_system_calls_since_boot` int(11) NOT NULL,
  `number_of_interrupts_since_boot` int(11) NOT NULL,
  `cpu_avg_load_over_1_min` double(11,3) NOT NULL,
  `cpu_avg_load_over_5_min` double(11,3) NOT NULL,
  `cpu_avg_load_over_15_min` double(11,3) NOT NULL,
  `system_total_memory` bigint(20) NOT NULL,
  `system_used_memory` bigint(20) NOT NULL,
  `system_free_memory` bigint(20) NOT NULL,
  `system_active_memory` bigint(20) NOT NULL,
  `system_inactive_memory` bigint(20) NOT NULL,
  `system_buffers_memory` bigint(20) NOT NULL,
  `system_cached_memory` bigint(20) NOT NULL,
  `system_shared_memory` bigint(20) NOT NULL,
  `system_avalible_memory` bigint(20) NOT NULL,
  `disk_total_memory` bigint(20) NOT NULL,
  `disk_used_memory` bigint(20) NOT NULL,
  `disk_free_memory` bigint(20) NOT NULL,
  `disk_read_count` bigint(20) NOT NULL,
  `disk_write_count` bigint(20) NOT NULL,
  `disk_read_bytes` bigint(20) NOT NULL,
  `disk_write_bytes` bigint(20) NOT NULL,
  `time_spent_reading_from_disk` bigint(20) NOT NULL,
  `time_spent_writing_to_disk` bigint(20) NOT NULL,
  `time_spent_doing_actual_Input_Output` bigint(20) NOT NULL,
  `number_of_bytes_sent` bigint(20) NOT NULL,
  `number_of_bytes_received` bigint(20) NOT NULL,
  `number_of_packets_sent` bigint(20) NOT NULL,
  `number_of_packets_recived` bigint(20) NOT NULL,
  `total_number_of_errors_while_receiving` bigint(20) NOT NULL,
  `total_number_of_errors_while_sending` bigint(20) NOT NULL,
  `total_number_of_incoming_packets_which_were_dropped` bigint(20) NOT NULL,
  `total_number_of_outgoing_packets_which_were_dropped` bigint(20) NOT NULL,
  `boot_time` varchar(100) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `keyboard` int(11) NOT NULL,
  `mouse` int(11) NOT NULL,
  `technology` varchar(100) NOT NULL,
  `files_changed` int(11) NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporary_MIS`
--

LOCK TABLES `temporary_MIS` WRITE;
/*!40000 ALTER TABLE `temporary_MIS` DISABLE KEYS */;
INSERT INTO `temporary_MIS` VALUES ('2019-11-17',2,2937.500,276422.960,53.600,2,26718321.000,0,21852873,0.000,0.010,0.000,7893839872,2104496128,858034176,3811336192,2197868544,584396800,4346912768,407351296,5064630272,117088358400,56368902144,54727581696,448828,296929,3147111424,7024268288,550333,442946,376080,20332343,273405746,157626,585066,0,0,128,0,'1day15:20:58.870261','ismpraful@gmail.com',0,0,'android',8),('2019-11-17',2,2057.070,269460.200,50.000,2,24988954.000,0,20125421,0.000,0.010,0.000,7893831680,2020208640,711634944,3779506176,2349027328,622518272,4539469824,250732544,5305536512,117088358400,36491653120,74604830720,492170,251067,3220555776,6267409408,491999,393366,401452,89915961,327646828,249119,633754,0,0,52,0,'1day14:16:11.068401','sahil24c@gmail.com',0,0,'android',5),('2019-11-17',2,1010.690,136340.090,50.000,2,18961098.000,0,19345486,0.060,0.050,0.000,7893815296,778010624,4038762496,1855426560,1007542272,592011264,2485030912,124264448,6674055168,117088358400,75194273792,35902210048,172272,44459,1632532480,1544938496,204350,113490,131880,2064439602,2128790849,2515278,2736332,0,0,49,0,'19:36:09.905103','aman.raj251@gmail.com',0,0,'android',3),('2019-11-17',2,296.680,253.530,100.000,2,524189.000,0,705726,4.250,2.740,1.260,7896846336,2723995648,2499514368,3268259840,1529487360,321069056,2352267264,468410368,4506882048,30149586944,22185988096,6408458240,115830,10291,1641146368,395179008,128928,90184,233408,3662080,9550927,7375,10207,0,0,0,0,'0:05:59.472480','puruissimple@gmail.com',2,0,'testing',352),('2019-11-17',2,406.230,239.440,71.800,2,625064.000,0,883176,2.910,3.000,1.590,7896846336,4501045248,482000896,5116416000,1695092736,340381696,2573418496,531742720,2745532416,30149586944,20049604608,8544841728,126368,7654,1813397504,302871552,112496,80468,251156,2360920,31191391,9583,25669,0,0,0,0,'0:06:30.049256','prathameshsalap@gmail.com',21,31,'nodejs',555),('2019-11-17',2,228.720,362.600,75.000,2,415573.000,0,504875,2.780,1.650,0.770,7896846336,3615014912,2164424704,3965419520,1340329984,217378816,1900027904,303054848,3763367936,30149586944,20117209088,8477237248,85395,4304,1505929216,195191808,67508,38464,336788,1248086,17221566,9937,16901,0,0,0,0,'0:05:45.132525','shelkeva@gmail.com',37,0,'java',159),('2019-11-17',2,254.760,540.450,50.000,2,420366.000,0,543760,1.080,1.650,1.010,7896842240,3574640640,2460766208,4034338816,1011957760,267825152,1593610240,170164224,3835527168,30149586944,22344265728,6250180608,102024,6555,1411770368,313656320,74392,117568,428040,1206769,17431522,10294,16849,0,0,0,0,'0:07:35.914847','naineshpatil11@gmail.com',63,825,'testing',440),('2019-11-17',2,204.080,712.260,54.500,2,459482.000,0,538889,0.270,0.830,0.690,7897001984,4047589376,1464410112,5024571392,973504512,361308160,2023694336,190529536,3342118912,22160134144,20788682752,222162944,86810,6271,1685742592,527860736,976064,1015716,108092,6907733,9590972,18828,21347,0,0,0,0,'0:08:53.201706','kalyani24deobhankar@gmail.com',1,0,'nodejs',12),('2019-11-17',2,284.410,626.160,53.100,2,574541.000,0,697106,0.480,0.940,0.650,7896829952,3518005248,1736081408,4305035264,1374654464,400138240,2242605056,288960512,3779907584,30149586944,28103802880,490643456,141830,7922,1856157696,312042496,143400,130264,267456,1139575,25301496,9418,22093,0,0,0,0,'0:08:43.583558','nitishtech.info@gmail.com',132,0,'SDET',328),('2019-11-17',2,360.990,1560.430,53.100,2,837865.000,0,957464,0.380,0.710,0.850,7896842240,3687485440,1931038720,4298936320,1026506752,414171136,1864146944,178855936,3718074368,30149586944,22347698176,6246748160,137511,9922,1572984832,403031040,81564,219488,992744,1612509,19507234,13306,22246,0,0,0,0,'0:17:36.245848','hemilturakhia@gmail.com',344,3961,'testing',163),('2019-11-17',4,205.990,1508.910,41.700,4,890363.000,0,772988,0.690,1.730,1.450,8284807168,4375953408,1659346944,4941807616,1238966272,313024512,1936482304,307380224,3291045888,313445539840,29483261952,267968770048,75685,9602,1614189568,285590528,2196588,3545500,392436,1035018,6282068,5534,7761,0,0,0,0,'0:09:54.412906','you@example.com',68,0,'java',135),('2019-11-17',2,294.380,474.950,100.000,2,596215.000,0,806333,0.240,1.620,1.170,7896915968,3289980928,1807351808,4150599680,1361784832,428441600,2371141632,360185856,4065746944,30149586944,20953411584,7641034752,98693,9287,1918254080,493630464,756544,1107544,112496,1366120,10598362,5962,10471,0,0,0,0,'0:07:58.075598','kaleshwetaanil@gmail.com',3,0,'nodejs',220),('2019-11-17',2,416.100,408.940,53.900,2,635107.000,0,820401,2.230,2.360,1.370,7896846336,5218693120,220798976,5386100736,1616429056,455221248,2002132992,370520064,2187022336,30149586944,24151711744,4442734592,204037,7080,1784322048,191779840,233544,105708,285352,1934801,5577132,6661,9149,0,0,0,0,'0:08:12.049378','vaishusawant143@gmail.com',260,0,'nodejs',235),('2019-11-17',4,44.340,1124.040,25.800,4,266891.000,0,349630,1.910,1.580,0.800,8285835264,1368485888,5550874624,1545838592,906133504,144015360,1222459392,290570240,6345342976,313973989376,23246274560,274707361792,39395,4392,1245752320,107126784,1716500,1837976,183868,496115,4585286,4027,4757,0,0,0,0,'0:06:12.375443','dipakalagate1991@gmail.com',595,20,'java',261),('2019-11-17',4,86.070,1807.740,25.000,4,313905.000,0,364594,0.320,0.720,0.540,8285839360,1689628672,4872769536,2117099520,982712320,175935488,1547505664,264880128,6035886080,313973989376,18072711168,279880925184,42088,6213,1216494592,404275200,1553516,2408632,178096,990263,9576409,8555,10468,0,0,0,0,'0:09:10.005422','gaikwadravi03',356,1453,'java',42),('2019-11-17',2,107.000,522.810,48.400,2,267147.000,0,255641,0.500,0.880,0.510,7896940544,1003819008,5298741248,1558667264,682078208,276410368,1317969920,207458304,6368710656,30149586944,20971728896,7622717440,56548,5207,1125911552,348877824,374316,1106528,66600,243165,5064142,2853,4111,0,0,0,0,'0:06:09.807084','zafaraabid3295@gmail.com',0,0,'mean',32),('2019-11-17',4,151.940,1458.600,24.100,4,702609.000,0,657465,3.340,3.400,2.040,8284905472,3123974144,2252009472,3954864128,1326600192,426848256,2482073600,427401216,4430790656,313445539840,33643888640,263808143360,86272,13823,1845778432,584578048,4204972,17683768,545808,1184743,10713198,7468,10247,0,0,0,0,'0:11:17.753621','20150773@dbatu.ac.in',1121,0,'java',395),('2019-11-17',4,192.400,1769.840,25.000,4,506849.000,0,545703,0.310,1.050,0.770,8243900416,5062770688,443342848,6105092096,1237233664,458252288,2279534592,251289600,2620203008,313445539840,45568835584,251883196416,148466,7403,1845827584,433366016,3338776,4098980,249660,710621,9495105,6975,8915,0,0,0,0,'0:09:43.580526','priyagund18@gmail.com',284,1137,'mean',701),('2019-11-17',2,130.260,359.010,88.300,2,337552.000,0,330586,1.170,1.190,0.590,7896952832,931913728,5721464832,1298026496,657596416,91947008,1151627264,151048192,6553153536,30149586944,20092211200,8502235136,27281,3833,964319232,334926848,391592,542888,43344,293325,5778364,3319,5365,0,0,0,0,'0:05:08.314758','deepak.63584@gmail.com',0,0,'python',31),('2019-11-17',4,236.680,1408.050,32.600,4,1045302.000,0,954607,2.850,3.500,2.460,8243769344,2828230656,2607345664,3599134720,1511452672,523309056,2284883968,444178432,4662480896,313445539840,53145464832,244306567168,119426,15613,1905429504,395715584,3903492,8335508,783616,1382242,6504226,6440,7962,0,0,0,0,'0:12:50.895630','shivanjalisangale5456@gmail.com',295,4049,'automation',490),('2019-11-17',4,66.870,1865.050,23.300,4,495474.000,0,437806,0.050,0.560,0.510,8245903360,945606656,5646290944,1375109120,923828224,208633856,1445371904,216268800,6784606208,313445539840,16013959168,281438072832,53671,4157,961909248,667927552,1710592,2046836,134200,5694171,244074923,83005,162881,0,0,0,0,'0:09:00.747070','manojmansukh7@gmail.com',0,0,'javascript',11),('2019-11-17',4,239.190,1542.330,35.300,4,1014857.000,0,1708768,0.790,1.550,1.150,8284807168,1327935488,4906205184,1739087872,1277071360,198316032,1852350464,402948096,6248919040,313445539840,21339115520,276112916480,56699,8128,1348451328,293106688,967180,8419304,267060,1777362,16183395,13265,16981,0,0,0,0,'0:09:44.517062','jitendrabachhav0435@gmail.com',257,2209,'Automation',108),('2019-11-17',4,103.610,7029.920,24.200,4,620895.000,0,586084,0.860,0.820,0.430,8273219584,1516785664,4237488128,2466996224,1091112960,586010624,1932935168,301490176,6142730240,483759775744,45799063552,413363531776,120306,3887,1659492352,215941120,1137328,448820,200824,191433,2757352,1826,6844,0,0,0,0,'0:30:57.856428','pramodmane58@gmail.com',1,1,'testing',120),('2019-11-17',4,295.260,776.660,42.900,4,887361.000,0,826319,3.220,3.620,2.020,8284807168,2339164160,2772975616,3135705088,1902727168,491282432,2681384960,754249728,4881403904,313445539840,36035989504,261416042496,89012,9621,1927249920,399614976,1851668,3595040,422972,1833404,37003107,13814,30457,0,0,0,0,'0:07:26.689101','sachinbarpete87@gmail.com',1,2,'angular',4),('2019-11-17',4,126.230,1670.220,100.000,4,769422.000,0,644223,4.430,4.220,2.260,8256757760,2152099840,3588104192,2534391808,1140506624,389869568,2126684160,435888128,5423218688,313973989376,27896700928,270056935424,104372,9850,1589399552,289153024,3984649,568586,184664,437853,3927497,3429,5407,0,0,0,0,'0:11:51.639662','antonyalexcm@gmail.com',1,1,'java',191),('2019-11-17',4,165.590,1381.310,25.800,4,1632195.000,0,1196061,2.950,4.350,3.330,8281841664,2572439552,2300440576,3410624512,1102381056,701755392,2707206144,329293824,5151186944,313445539840,26737532928,270714499072,182083,19598,1833952256,442668032,3998501,244408,284244,2768412,8632787,6128,9582,0,0,0,0,'0:16:45.595913','tekina.makin@gmail.com',1291,0,'React',103),('2020-03-09',4,163.760,1543.890,36.990,4,1345467.756,0,1164515,2.146,4.120,3.157,8689845824,2554676465,2356140454,3289741648,11265765465,775945495,2567465154,332864455,5455456165,223644565964,32964689419,272181844185,198745,13864,2157549745,555746455,4058915,244518,267196,2448945,8587549,3264,5484,0,0,0,0,'0:16:45.595913','aftdssu@gmail.com',1,0,'python',154),('2020-03-09',4,163.760,1543.890,36.990,4,1345467.756,0,1164515,2.146,4.120,3.157,8689845824,2554676465,2356140454,3289741648,11265765465,775945495,2567465154,332864455,5455456165,223644565964,32964689419,272181844185,198745,13864,2157549745,555746455,4058915,244518,267196,2448945,8587549,3264,5484,0,0,0,0,'0:16:45.595913','sana@gmail.com',1,0,'python',154),('2020-03-09',4,163.760,1543.890,36.990,4,1345467.756,0,1164515,2.146,4.120,3.157,8689845824,2554676465,2356140454,3289741648,11265765465,775945495,2567465154,332864455,5455456165,223644565964,32964689419,272181844185,198745,13864,2157549745,555746455,4058915,244518,267196,2448945,8587549,3264,5484,0,0,0,0,'0:16:45.595913','asana@gmail.com',1,0,'python',154);
/*!40000 ALTER TABLE `temporary_MIS` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sandhya`@`localhost`*/ /*!50003 trigger user_engagement_Mis_trigger after insert on temporary_MIS
for each row 
begin
insert into user_engagement_MIS (id,
Date_Time,
candidate_id,
Date_Time,
Cpu_Count,
Cpu_Working_Time ,
cpu_percent,
Usage_cpu_count,
number_of_software_interrupts_since_boot,
number_of_system_calls_since_boot,
number_of_interrupts_since_boot,
cpu_avg_load_over_1_min,
cpu_avg_load_over_5_min ,
cpu_avg_load_over_15_min ,
system_total_memory ,
system_used_memory,
system_free_memory ,
system_active_memory,
system_inactive_memory ,
system_buffers_memory,
system_cached_memory ,
system_shared_memory ,
system_avalible_memory ,
disk_total_memory,
disk_used_memory ,
disk_free_memory ,
disk_read_count ,
disk_write_count,
disk_read_bytes ,
disk_write_bytes,
time_spent_reading_from_disk ,
time_spent_writing_to_disk ,
time_spent_doing_actual_Input_Output ,
number_of_bytes_sent,
number_of_bytes_received ,
number_of_packets_sent ,
number_of_packets_recived ,
total_number_of_errors_while_receiving ,
total_number_of_errors_while_sending ,
total_number_of_incoming_packets_which_were_dropped ,
total_number_of_outgoing_packets_which_were_dropped ,
boot_time ,
keyboard, 
mouse,
technology ,
files_changed) values(10001,
101,
now(),
new.Cpu_Count,Cpu_Working_Time ,
new.cpu_percent,
new.Usage_cpu_count,
new.number_of_software_interrupts_since_boot,
new.number_of_system_calls_since_boot,
new.number_of_interrupts_since_boot,
new.cpu_avg_load_over_1_min,
new.cpu_avg_load_over_5_min ,
new.cpu_avg_load_over_15_min ,
new.system_total_memory ,
new.system_used_memory,
new.system_free_memory ,
new.system_active_memory,
new.system_inactive_memory ,
new.system_buffers_memory,
new.system_cached_memory ,
new.system_shared_memory ,
new.system_avalible_memory ,
new.disk_total_memory,
new.disk_used_memory ,
new.disk_free_memory ,
new.disk_read_count ,
new.disk_write_count,
new.disk_read_bytes ,
new.disk_write_bytes,
new.time_spent_reading_from_disk ,
new.time_spent_writing_to_disk ,
new.time_spent_doing_actual_Input_Output ,
new.number_of_bytes_sent,
new.number_of_bytes_received ,
new.number_of_packets_sent ,
new.number_of_packets_recived ,
new.total_number_of_errors_while_receiving ,
new.total_number_of_errors_while_sending,
new.total_number_of_incoming_packets_which_were_dropped,
new.total_number_of_outgoing_packets_which_were_dropped ,
new.boot_time,
new.keyboard, 
new.mouse,
new.technology,
new.files_changed);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sandhya`@`localhost`*/ /*!50003 trigger user_engagement_Mis_trigger1 after insert on temporary_MIS
for each row 
begin
insert into user_engagement_MIS (id,
Date_Time,
candidate_id,
Date_Time,
Cpu_Count,
Cpu_Working_Time ,
cpu_percent,
Usage_cpu_count,
number_of_software_interrupts_since_boot,
number_of_system_calls_since_boot,
number_of_interrupts_since_boot,
cpu_avg_load_over_1_min,
cpu_avg_load_over_5_min ,
cpu_avg_load_over_15_min ,
system_total_memory ,
system_used_memory,
system_free_memory ,
system_active_memory,
system_inactive_memory ,
system_buffers_memory,
system_cached_memory ,
system_shared_memory ,
system_avalible_memory ,
disk_total_memory,
disk_used_memory ,
disk_free_memory ,
disk_read_count ,
disk_write_count,
disk_read_bytes ,
disk_write_bytes,
time_spent_reading_from_disk ,
time_spent_writing_to_disk ,
time_spent_doing_actual_Input_Output ,
number_of_bytes_sent,
number_of_bytes_received ,
number_of_packets_sent ,
number_of_packets_recived ,
total_number_of_errors_while_receiving ,
total_number_of_errors_while_sending ,
total_number_of_incoming_packets_which_were_dropped ,
total_number_of_outgoing_packets_which_were_dropped ,
boot_time ,
keyboard, 
mouse,
technology ,
files_changed) values(10001,
101,
now(),
new.Cpu_Count,Cpu_Working_Time ,
new.cpu_percent,
new.Usage_cpu_count,
new.number_of_software_interrupts_since_boot,
new.number_of_system_calls_since_boot,
new.number_of_interrupts_since_boot,
new.cpu_avg_load_over_1_min,
new.cpu_avg_load_over_5_min ,
new.cpu_avg_load_over_15_min ,
new.system_total_memory ,
new.system_used_memory,
new.system_free_memory ,
new.system_active_memory,
new.system_inactive_memory ,
new.system_buffers_memory,
new.system_cached_memory ,
new.system_shared_memory ,
new.system_avalible_memory ,
new.disk_total_memory,
new.disk_used_memory ,
new.disk_free_memory ,
new.disk_read_count ,
new.disk_write_count,
new.disk_read_bytes ,
new.disk_write_bytes,
new.time_spent_reading_from_disk ,
new.time_spent_writing_to_disk ,
new.time_spent_doing_actual_Input_Output ,
new.number_of_bytes_sent,
new.number_of_bytes_received ,
new.number_of_packets_sent ,
new.number_of_packets_recived ,
new.total_number_of_errors_while_receiving ,
new.total_number_of_errors_while_sending,
new.total_number_of_incoming_packets_which_were_dropped,
new.total_number_of_outgoing_packets_which_were_dropped ,
new.boot_time,
new.keyboard, 
new.mouse,
new.technology,
new.files_changed);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tech` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sandhya','Java');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`sandhya`@`localhost`*/ /*!50003 trigger usertrigger1
before update on user
for each row
insert into usertrigger
set action = 'update',
name = OLD.name,
change_time = now() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_engagement_MIS`
--

DROP TABLE IF EXISTS `user_engagement_MIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_engagement_MIS` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `Date_Time` date NOT NULL,
  `Cpu_Count` int(11) NOT NULL,
  `Cpu_Working_Time` double(11,3) NOT NULL,
  `Cpu_idle_Time` double(11,3) NOT NULL,
  `cpu_percent` double(11,3) NOT NULL,
  `Usage_cpu_count` int(11) NOT NULL,
  `number_of_software_interrupts_since_boot` double(11,3) NOT NULL,
  `number_of_system_calls_since_boot` int(11) NOT NULL,
  `number_of_interrupts_since_boot` int(11) NOT NULL,
  `cpu_avg_load_over_1_min` double(11,3) NOT NULL,
  `cpu_avg_load_over_5_min` double(11,3) NOT NULL,
  `cpu_avg_load_over_15_min` double(11,3) NOT NULL,
  `system_total_memory` bigint(20) NOT NULL,
  `system_used_memory` bigint(20) NOT NULL,
  `system_free_memory` bigint(20) NOT NULL,
  `system_active_memory` bigint(20) NOT NULL,
  `system_inactive_memory` bigint(20) NOT NULL,
  `system_buffers_memory` bigint(20) NOT NULL,
  `system_cached_memory` bigint(20) NOT NULL,
  `system_shared_memory` bigint(20) NOT NULL,
  `system_avalible_memory` bigint(20) NOT NULL,
  `disk_total_memory` bigint(20) NOT NULL,
  `disk_used_memory` bigint(20) NOT NULL,
  `disk_free_memory` bigint(20) NOT NULL,
  `disk_read_count` bigint(20) NOT NULL,
  `disk_write_count` bigint(20) NOT NULL,
  `disk_read_bytes` bigint(20) NOT NULL,
  `disk_write_bytes` bigint(20) NOT NULL,
  `time_spent_reading_from_disk` bigint(20) NOT NULL,
  `time_spent_writing_to_disk` bigint(20) NOT NULL,
  `time_spent_doing_actual_Input_Output` bigint(20) NOT NULL,
  `number_of_bytes_sent` bigint(20) NOT NULL,
  `number_of_bytes_received` bigint(20) NOT NULL,
  `number_of_packets_sent` bigint(20) NOT NULL,
  `number_of_packets_recived` bigint(20) NOT NULL,
  `total_number_of_errors_while_receiving` bigint(20) NOT NULL,
  `total_number_of_errors_while_sending` bigint(20) NOT NULL,
  `total_number_of_incoming_packets_which_were_dropped` bigint(20) NOT NULL,
  `total_number_of_outgoing_packets_which_were_dropped` bigint(20) NOT NULL,
  `boot_time` varchar(100) NOT NULL,
  `keyboard` int(11) NOT NULL,
  `mouse` int(11) NOT NULL,
  `technology` varchar(100) NOT NULL,
  `files_changed` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_user_engagement_mis_candidate_id` (`candidate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_engagement_MIS`
--

LOCK TABLES `user_engagement_MIS` WRITE;
/*!40000 ALTER TABLE `user_engagement_MIS` DISABLE KEYS */;
INSERT INTO `user_engagement_MIS` VALUES (1026,126,'2019-11-17',2,2652.300,254215.000,53.400,2,21542635.000,0,16993215,0.000,0.000,0.000,7893641677,21185666644,844808192,3782115328,2349031424,624975872,4539592704,250732544,5304971264,117088358400,54717935616,54717935616,172272,299647,3220555776,6306980864,491999,395847,377612,90082876,327795215,250351,585978,0,0,49,0,'20:11:10.207571',0,0,'android',9),(1025,125,'2019-11-17',2,1689.400,186757.000,42.000,2,13061824.000,0,23212044,0.000,0.040,0.000,7893218578,23301251441,4035493888,3815280640,2349027328,586858496,4357058560,407351296,5063503872,117088358400,74604826624,35902205952,492170,45211,3147111424,7090287616,550333,446777,402804,90082876,273558913,158872,2737665,0,0,105,0,'20:11:10.207571',0,0,'android',5),(1024,124,'2019-11-17',2,2485.700,277877.000,46.000,2,26957214.000,0,21663589,0.000,0.050,0.000,7893641677,21532889965,845582336,1855737856,2197872640,592297984,2485047296,124264448,5307981824,117088358400,35902205952,74604830720,448828,252789,1632532480,1549042688,204350,114748,132072,20506537,2129046305,2516799,634532,0,0,124,0,'1 day 14:51:10.797954',0,0,'android',4),(1023,123,'2019-11-17',2,2052.600,105868.000,53.000,2,24581854.000,0,16532258,0.000,0.030,0.000,7893641677,20968577415,712949760,3778830336,1007542272,624648192,4539527168,250732544,5307981824,117088358400,54717935616,74604830720,172272,299353,3220555776,6304134144,491999,395505,131964,2064729112,327775554,250195,585861,0,0,47,0,'1 day 15:55:58.315155',0,0,'android',8),(1022,122,'2019-11-17',2,2331.780,236767.000,52.000,2,13698770.000,0,24410021,0.000,0.000,0.000,7893218578,22856622525,4038987776,3814780928,2349027328,586588160,4356915200,407351296,5063340032,117088358400,74604826624,54717935616,172272,45098,3147111424,7075300352,550333,445960,402012,90060680,273537797,158719,585861,0,0,43,0,'20:06:09.268461',0,0,'android',10),(1021,121,'2019-11-17',2,1664.900,287575.000,57.000,2,19856325.000,0,17502426,0.000,0.000,0.000,7893218578,23301251441,713183232,1858699264,2197868544,592248832,2485043200,124264448,6671175680,117088358400,54717935616,35902205952,492170,252509,1632532480,1548456960,204350,114598,376692,20485400,2128999914,2516553,2737444,0,0,55,0,'1 day 14:46:10.645043',0,0,'android',12),(1020,120,'2019-11-17',2,2012.500,205767.000,52.000,2,20341552.000,0,16675222,0.000,0.010,0.000,7893641677,20563994971,713183232,3778527232,1007546368,624328704,4539490304,250732544,5307592704,117088358400,35902205952,74604830720,172272,252509,3220555776,6289470464,491999,394931,131920,2064678976,327752636,250031,634410,0,0,52,0,'1 day 15:50:58.657642',0,0,'android',6),(1019,119,'2019-11-17',2,1524.300,186775.000,50.000,2,21254252.000,0,18650214,0.000,0.030,0.000,7893218578,21185666644,845058048,3814187008,2349027328,586235904,4356923392,407351296,5063262208,117088358400,74604830720,54717935616,492170,298970,3147111424,7072629760,550333,445481,401776,90037430,273519551,158565,585750,0,0,58,0,'1 day 15:50:58.657642',0,0,'android',5),(1018,118,'2019-11-17',2,2485.100,166757.000,54.000,2,16589232.000,0,21106758,0.000,0.060,0.000,7893218578,21136558597,4039258112,1859035136,2197864448,592207872,2485100544,124268544,6671048704,117088358400,54717935616,35902210048,448828,44923,1632532480,1547416576,204350,114306,376372,2064648676,2128974760,2516364,2737279,0,0,46,0,'20:01:10.005204',0,0,'android',4),(1017,117,'2019-11-17',2,2123.500,167577.000,49.000,2,23152499.000,0,22445109,0.000,0.020,0.000,7893641677,20698975554,713441280,3814264832,1007542272,585949184,4356915200,407351296,5063741440,117088358400,35902205952,54717935616,172272,298688,3220555776,6283559936,491999,445253,131880,20446148,327735712,158415,585639,0,0,42,0,'1 day 15:45:58.823837',0,0,'android',3),(1016,116,'2019-11-17',2,2485.600,277457.000,46.000,2,14202205.000,0,16526007,0.000,0.060,0.000,7893641677,22396778258,856444928,3778158592,2349027328,624017408,4539482112,250732544,6674415616,117088358400,35902205952,74604830720,492170,252247,3147111424,7042565120,550333,394746,401452,90018431,327735712,249881,634299,0,0,117,0,'1 day 14:41:10.472704',0,0,'android',8),(1015,115,'2019-11-17',2,2354.100,145866.000,52.000,2,17526636.000,0,26530410,0.000,0.060,0.000,7893218578,21156336204,4039053312,1855533056,2197868544,592146432,2485030912,124264448,6674415616,117088358400,74604830720,35902210048,448828,44806,1632532480,1545327616,204350,114124,376080,2064587835,2128919186,2516087,2737020,0,0,55,0,'19:56:09.411085',0,0,'android',5),(1014,114,'2019-11-17',2,1658.400,298664.000,51.000,2,21158362.000,0,24105622,0.000,0.010,0.000,7893218578,21696356998,713408512,3777916928,2207506432,623730688,4539457536,250732544,5308284928,117088358400,54717935616,74604830720,172272,252032,3220555776,6282261504,491999,394601,402544,89996352,327716941,249723,634183,0,0,62,0,'1 day 14:36:11.189084',0,0,'android',7),(1013,113,'2019-11-17',2,1855.560,198757.000,46.000,2,15589694.000,0,16671004,0.000,0.070,0.000,7893641677,20458598444,854114304,3813838848,1007550464,585637888,4356911104,407351296,5062901760,117088358400,35902210048,54717935616,492170,298394,3147111424,7027282944,550333,444915,377324,20426440,273486254,158267,585534,0,0,65,0,'1 day 15:40:59.185849',0,0,'android',6),(1012,112,'2019-11-17',2,2485.500,230538.000,52.000,2,24450113.000,0,15996560,0.000,0.020,0.000,7893641677,22485544778,4039258112,1855418368,2349027328,592101376,2485035008,124264448,6674644992,117088358400,74604830720,35902210048,448828,44702,1632532480,1544938496,204350,113954,132016,2064565263,2128901868,2515921,2736904,0,0,57,0,'19:51:10.178520',0,0,'android',12),(1011,111,'2019-11-17',2,1758.860,248750.000,57.000,2,17564255.000,0,20154259,0.000,0.020,0.000,7893218578,20698564843,714440704,3777634304,2207506432,623443968,4539465728,250732544,5308264448,117088358400,54727577600,74604830720,172272,251781,3220555776,6267409408,491999,394393,402264,89977616,327700667,249576,634080,0,0,43,0,'1day14:31:10.870261',0,0,'android',5),(1010,110,'2019-11-17',2,2077.850,164258.000,47.000,2,24632104.000,0,17782558,0.000,0.000,0.000,7893641677,21154599986,854646784,3812921344,1007550464,585334784,4346982400,407351296,5064048640,117088358400,54727577600,54727577600,492170,298070,3147111424,7024268288,550333,444327,376984,20404156,273467165,158110,585418,0,0,48,0,'1day15:35:59.870261',0,0,'android',8),(1009,109,'2019-11-17',2,1454.700,203757.000,50.000,2,16532980.000,0,16639658,0.000,0.000,0.000,7893218578,22524558584,4038762496,1855393792,2349027328,592064512,2485030912,124264448,6674399232,117088358400,35902210048,35902210048,448828,44601,1632532480,7070692352,204350,113760,131964,2064517525,2128859121,2515696,2736704,0,0,46,0,'19:46:09.382559',0,0,'android',4),(1008,108,'2019-11-17',2,1658.400,274954.000,43.000,2,14555882.000,0,20016855,0.000,0.030,0.000,7893218578,21105485858,711634944,3777200128,2207506432,623116288,4539457536,250732544,5307895808,117088358400,74604830720,74604830720,172272,251550,3220555776,6287889408,491999,394209,402012,89957172,327683890,249421,633972,0,0,110,0,'1day14:26:10.870261',0,0,'android',12),(1007,107,'2019-11-17',2,2865.400,296846.000,46.000,2,23305598.000,0,18862207,0.000,0.010,0.000,7893218578,20957442216,858034176,3815469056,2207506432,585003008,4346978304,407351296,5061390336,117088358400,54727577600,54727577600,492170,297731,3147111424,1546781696,550333,444029,376692,20374266,273443582,157934,585289,0,0,49,0,'1day15:30:58.870261',0,0,'android',3),(1006,106,'2019-11-17',2,3424.100,255466.000,48.000,2,18622520.000,0,21120889,0.000,0.050,0.000,7893641677,21499595220,4039258112,1855356928,2207506432,592048128,2485026816,124264448,6674583552,117088358400,35902210048,35902210048,448828,44530,1632532480,6286480384,204350,113601,131920,2064491955,2128837497,2515532,2736563,0,0,121,0,'19:41:09.601800',0,0,'android',7),(1005,105,'2019-11-17',2,2985.400,133565.000,41.000,2,14599996.000,0,23301222,0.000,0.000,0.000,7893218578,23022545100,714440704,3777097728,2349027328,622833664,4539478016,250732544,5308665856,117088358400,74604830720,74604830720,492170,251345,3220555776,7068382208,491999,394067,401776,89938988,327667516,249279,633868,0,0,43,0,'1day14:21:10.870261',0,0,'android',9),(1004,104,'2019-11-17',2,2487.000,232374.000,51.000,2,24450039.000,0,16952544,0.000,0.010,0.000,7893218578,19359419446,856444928,3815432192,1007542272,584708096,4346957824,407351296,5061607424,117088358400,54727581696,54727581696,172272,297404,3147111424,1546220544,550333,443342,376372,20352964,273422526,157781,585174,0,0,51,0,'1day15:25:58.870261',0,0,'android',4),(1003,103,'2019-11-17',2,1645.800,198977.000,56.000,2,27740401.000,0,17659210,0.000,0.020,0.000,7893641677,20018141965,4038762496,1855426560,2349027328,592011264,2485030912,124264448,6674055168,117088358400,35902210048,35902210048,172272,44459,1632532480,6284977152,204350,113490,131880,2064439602,2128790849,2515278,2736332,0,0,52,0,'19:36:09.905103',0,0,'android',5),(1002,102,'2019-11-17',2,1503.300,244647.000,55.000,2,16693255.000,0,15988696,0.000,0.010,0.000,7893641677,21580442052,854646784,3779506176,2207506432,622518272,4539469824,250732544,5305536512,117088358400,74604830720,74604830720,492170,251067,3220555776,7045342208,491999,393366,401452,89915961,327646828,249119,633754,0,0,45,0,'1day14:16:11.068401',0,0,'android',8),(1001,101,'2019-11-17',2,2643.500,168787.000,46.000,2,24530117.000,0,25540212,0.000,0.010,0.000,7893641677,21025525155,711860224,3811336192,1007546368,584396800,4346912768,407351296,5064630272,117088358400,56368902144,54727581696,448828,296929,3147111424,1545688064,550333,442946,376984,20332343,273405746,157626,585066,0,0,128,0,'1day15:20:58.870261',0,0,'android',12),(2026,126,'2019-11-17',2,2652.300,254215.460,53.400,2,21542635.170,0,16993215,0.000,0.000,0.000,7893641677,21185666644,844808192,3782115328,2349031424,624975872,4539592704,250732544,5304971264,117088358400,54717935616,54717935616,172272,299647,3220555776,6306980864,491999,395847,377612,90082876,327795215,250351,585978,0,0,49,0,'20:11:10.207571',0,0,'android',9),(2025,125,'2019-11-17',2,1689.400,186757.840,42.210,2,13061824.120,0,23212044,0.010,0.040,0.000,7893218578,23301251441,4035493888,3815280640,2349027328,586858496,4357058560,407351296,5063503872,117088358400,74604826624,35902205952,492170,45211,3147111424,7090287616,550333,446777,402804,90082876,273558913,158872,2737665,0,0,105,0,'20:11:10.207571',0,0,'android',5),(2024,124,'2019-11-17',2,2485.700,277877.160,46.150,2,26957214.100,0,21663589,0.010,0.050,0.000,7893641677,21532889965,845582336,1855737856,2197872640,592297984,2485047296,124264448,5307981824,117088358400,35902205952,74604830720,448828,252789,1632532480,1549042688,204350,114748,132072,20506537,2129046305,2516799,634532,0,0,124,0,'1 day 14:51:10.797954',0,0,'android',4),(2023,123,'2019-11-17',2,2052.600,105868.840,53.240,2,24581854.240,0,16532258,0.000,0.030,0.000,7893641677,20968577415,712949760,3778830336,1007542272,624648192,4539527168,250732544,5307981824,117088358400,54717935616,74604830720,172272,299353,3220555776,6304134144,491999,395505,131964,2064729112,327775554,250195,585861,0,0,47,0,'1 day 15:55:58.315155',0,0,'android',8),(2022,122,'2019-11-17',2,2331.780,236767.190,52.850,2,13698770.540,0,24410021,0.000,0.000,0.000,7893218578,22856622525,4038987776,3814780928,2349027328,586588160,4356915200,407351296,5063340032,117088358400,74604826624,54717935616,172272,45098,3147111424,7075300352,550333,445960,402012,90060680,273537797,158719,585861,0,0,43,0,'20:06:09.268461',0,0,'android',10),(2021,121,'2019-11-17',2,1664.900,287575.640,57.140,2,19856325.000,0,17502426,0.000,0.000,0.000,7893218578,23301251441,713183232,1858699264,2197868544,592248832,2485043200,124264448,6671175680,117088358400,54717935616,35902205952,492170,252509,1632532480,1548456960,204350,114598,376692,20485400,2128999914,2516553,2737444,0,0,55,0,'1 day 14:46:10.645043',0,0,'android',12),(2020,120,'2019-11-17',2,2012.500,205767.430,52.340,2,20341552.030,0,16675222,0.000,0.010,0.000,7893641677,20563994971,713183232,3778527232,1007546368,624328704,4539490304,250732544,5307592704,117088358400,35902205952,74604830720,172272,252509,3220555776,6289470464,491999,394931,131920,2064678976,327752636,250031,634410,0,0,52,0,'1 day 15:50:58.657642',0,0,'android',6),(2019,119,'2019-11-17',2,1524.300,186775.510,50.360,2,21254252.010,0,18650214,0.000,0.030,0.000,7893218578,21185666644,845058048,3814187008,2349027328,586235904,4356923392,407351296,5063262208,117088358400,74604830720,54717935616,492170,298970,3147111424,7072629760,550333,445481,401776,90037430,273519551,158565,585750,0,0,58,0,'1 day 15:50:58.657642',0,0,'android',5),(2018,118,'2019-11-17',2,2485.100,166757.340,54.020,2,16589232.140,0,21106758,0.000,0.060,0.000,7893218578,21136558597,4039258112,1859035136,2197864448,592207872,2485100544,124268544,6671048704,117088358400,54717935616,35902210048,448828,44923,1632532480,1547416576,204350,114306,376372,2064648676,2128974760,2516364,2737279,0,0,46,0,'20:01:10.005204',0,0,'android',4),(2017,117,'2019-11-17',2,2123.500,167577.280,49.460,2,23152499.770,0,22445109,0.000,0.020,0.000,7893641677,20698975554,713441280,3814264832,1007542272,585949184,4356915200,407351296,5063741440,117088358400,35902205952,54717935616,172272,298688,3220555776,6283559936,491999,445253,131880,20446148,327735712,158415,585639,0,0,42,0,'1 day 15:45:58.823837',0,0,'android',3),(2016,116,'2019-11-17',2,2485.600,277457.490,46.120,2,14202205.220,0,16526007,0.000,0.060,0.000,7893641677,22396778258,856444928,3778158592,2349027328,624017408,4539482112,250732544,6674415616,117088358400,35902205952,74604830720,492170,252247,3147111424,7042565120,550333,394746,401452,90018431,327735712,249881,634299,0,0,117,0,'1 day 14:41:10.472704',0,0,'android',8),(2015,115,'2019-11-17',2,2354.100,145866.160,52.470,2,17526636.100,0,26530410,0.010,0.060,0.000,7893218578,21156336204,4039053312,1855533056,2197868544,592146432,2485030912,124264448,6674415616,117088358400,74604830720,35902210048,448828,44806,1632532480,1545327616,204350,114124,376080,2064587835,2128919186,2516087,2737020,0,0,55,0,'19:56:09.411085',0,0,'android',5),(2014,114,'2019-11-17',2,1658.400,298664.420,51.360,2,21158362.410,0,24105622,0.000,0.010,0.000,7893218578,21696356998,713408512,3777916928,2207506432,623730688,4539457536,250732544,5308284928,117088358400,54717935616,74604830720,172272,252032,3220555776,6282261504,491999,394601,402544,89996352,327716941,249723,634183,0,0,62,0,'1 day 14:36:11.189084',0,0,'android',7),(2013,113,'2019-11-17',2,1855.560,198757.740,46.010,2,15589694.330,0,16671004,0.000,0.070,0.000,7893641677,20458598444,854114304,3813838848,1007550464,585637888,4356911104,407351296,5062901760,117088358400,35902210048,54717935616,492170,298394,3147111424,7027282944,550333,444915,377324,20426440,273486254,158267,585534,0,0,65,0,'1 day 15:40:59.185849',0,0,'android',6),(2012,112,'2019-11-17',2,2485.500,230538.110,52.520,2,24450113.500,0,15996560,0.040,0.020,0.000,7893641677,22485544778,4039258112,1855418368,2349027328,592101376,2485035008,124264448,6674644992,117088358400,74604830720,35902210048,448828,44702,1632532480,1544938496,204350,113954,132016,2064565263,2128901868,2515921,2736904,0,0,57,0,'19:51:10.178520',0,0,'android',12),(2011,111,'2019-11-17',2,1758.860,248750.460,57.120,2,17564255.450,0,20154259,0.000,0.020,0.000,7893218578,20698564843,714440704,3777634304,2207506432,623443968,4539465728,250732544,5308264448,117088358400,54727577600,74604830720,172272,251781,3220555776,6267409408,491999,394393,402264,89977616,327700667,249576,634080,0,0,43,0,'1day14:31:10.870261',0,0,'android',5),(2010,110,'2019-11-17',2,2077.850,164258.220,47.900,2,24632104.000,0,17782558,0.000,0.000,0.000,7893641677,21154599986,854646784,3812921344,1007550464,585334784,4346982400,407351296,5064048640,117088358400,54727577600,54727577600,492170,298070,3147111424,7024268288,550333,444327,376984,20404156,273467165,158110,585418,0,0,48,0,'1day15:35:59.870261',0,0,'android',8),(2009,109,'2019-11-17',2,1454.700,203757.710,50.000,2,16532980.100,0,16639658,0.000,0.000,0.000,7893218578,22524558584,4038762496,1855393792,2349027328,592064512,2485030912,124264448,6674399232,117088358400,35902210048,35902210048,448828,44601,1632532480,7070692352,204350,113760,131964,2064517525,2128859121,2515696,2736704,0,0,46,0,'19:46:09.382559',0,0,'android',4),(2008,108,'2019-11-17',2,1658.400,274954.240,43.740,2,14555882.500,0,20016855,0.000,0.030,0.000,7893218578,21105485858,711634944,3777200128,2207506432,623116288,4539457536,250732544,5307895808,117088358400,74604830720,74604830720,172272,251550,3220555776,6287889408,491999,394209,402012,89957172,327683890,249421,633972,0,0,110,0,'1day14:26:10.870261',0,0,'android',12),(2007,107,'2019-11-17',2,2865.400,296846.180,46.360,2,23305598.100,0,18862207,0.000,0.010,0.000,7893218578,20957442216,858034176,3815469056,2207506432,585003008,4346978304,407351296,5061390336,117088358400,54727577600,54727577600,492170,297731,3147111424,1546781696,550333,444029,376692,20374266,273443582,157934,585289,0,0,49,0,'1day15:30:58.870261',0,0,'android',3),(2006,106,'2019-11-17',2,3424.100,255466.310,48.210,2,18622520.400,0,21120889,0.000,0.050,0.000,7893641677,21499595220,4039258112,1855356928,2207506432,592048128,2485026816,124264448,6674583552,117088358400,35902210048,35902210048,448828,44530,1632532480,6286480384,204350,113601,131920,2064491955,2128837497,2515532,2736563,0,0,121,0,'19:41:09.601800',0,0,'android',7),(2005,105,'2019-11-17',2,2985.400,133565.110,41.740,2,14599996.020,0,23301222,0.000,0.000,0.000,7893218578,23022545100,714440704,3777097728,2349027328,622833664,4539478016,250732544,5308665856,117088358400,74604830720,74604830720,492170,251345,3220555776,7068382208,491999,394067,401776,89938988,327667516,249279,633868,0,0,43,0,'1day14:21:10.870261',0,0,'android',9),(2004,104,'2019-11-17',2,2487.000,232374.740,51.010,2,24450039.000,0,16952544,0.010,0.010,0.000,7893218578,19359419446,856444928,3815432192,1007542272,584708096,4346957824,407351296,5061607424,117088358400,54727581696,54727581696,172272,297404,3147111424,1546220544,550333,443342,376372,20352964,273422526,157781,585174,0,0,51,0,'1day15:25:58.870261',0,0,'android',4),(2003,103,'2019-11-17',2,1645.800,198977.140,56.710,2,27740401.200,0,17659210,0.000,0.020,0.000,7893641677,20018141965,4038762496,1855426560,2349027328,592011264,2485030912,124264448,6674055168,117088358400,35902210048,35902210048,172272,44459,1632532480,6284977152,204350,113490,131880,2064439602,2128790849,2515278,2736332,0,0,52,0,'19:36:09.905103',0,0,'android',5),(2002,102,'2019-11-17',2,1503.300,244647.520,55.600,2,16693255.000,0,15988696,0.000,0.010,0.000,7893641677,21580442052,854646784,3779506176,2207506432,622518272,4539469824,250732544,5305536512,117088358400,74604830720,74604830720,492170,251067,3220555776,7045342208,491999,393366,401452,89915961,327646828,249119,633754,0,0,45,0,'1day14:16:11.068401',0,0,'android',8),(2001,101,'2019-11-17',2,2643.500,168787.320,46.200,2,24530117.100,0,25540212,0.000,0.010,0.000,7893641677,21025525155,711860224,3811336192,1007546368,584396800,4346912768,407351296,5064630272,117088358400,56368902144,54727581696,448828,296929,3147111424,1545688064,550333,442946,376984,20332343,273405746,157626,585066,0,0,128,0,'1day15:20:58.870261',0,0,'android',12),(2027,127,'2019-11-17',2,2541.020,23892.220,53.100,2,23265241.220,0,14252135,0.020,0.030,0.000,7824525212,21136255148,452158525,3251041528,2525415589,544639880,43269857812,2471395845,5430451845,117824515850,46285546545,55875154651,155724,302181,3258014545,3362566545,425245,363856,402155,982584545,2041158875,322501,744145,0,0,54,0,'20:11:10.207571',0,0,'android',7);
/*!40000 ALTER TABLE `user_engagement_MIS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertrigger`
--

DROP TABLE IF EXISTS `usertrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertrigger` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertrigger`
--

LOCK TABLES `usertrigger` WRITE;
/*!40000 ALTER TABLE `usertrigger` DISABLE KEYS */;
INSERT INTO `usertrigger` VALUES (1,'Sandy','2020-02-29 18:20:35','update');
/*!40000 ALTER TABLE `usertrigger` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-17 12:12:42

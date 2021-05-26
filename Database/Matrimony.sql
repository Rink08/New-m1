-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: matrimony
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `basic_details`
--

DROP TABLE IF EXISTS `basic_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basic_details` (
  `uid` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date DEFAULT NULL,
  `mail` varchar(50) NOT NULL,
  `phone_num` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_details`
--

LOCK TABLES `basic_details` WRITE;
/*!40000 ALTER TABLE `basic_details` DISABLE KEYS */;
INSERT INTO `basic_details` VALUES ('123 123','abcd','female','2021-04-01','abc@gmail.com','9187127121','abc','india','telengana','hyd'),('1234 1225 1235','bob','male','1999-09-09','bob671233424@gmail.com','99999','bob','america','xyz','pqr'),('1234 1234','bob','male','1999-09-09','bob@gmail.com','99999','bob','america','xyz','pqr'),('1234 1235','bob','male','1999-09-09','bob123@gmail.com','99999','bob','america','xyz','pqr'),('1234 1235 123','bob','male','1999-09-09','bob1233424@gmail.com','99999','bob','america','xyz','pqr'),('1234 1985 1235','bob','male','1999-09-09','bob829@gmail.com','99999','preethi829','america','xyz','pqr'),('12683 383','xyz','male','2017-09-09','preetiasasas@gmail.com','98172','abc','abc','abc','abc'),('1268923 383','xyz','male','2017-09-09','preetia@gmail.com','98172','abc','abc','abc','abc'),('18923 383 12','xyz','male','2017-09-09','preetwjeewia@gmail.com','98172','abc','abc','abc','abc'),('3284 2766 4934','anil kumar','Male','2000-08-20','anil@gmail.com','9849478589','anil12345','India','Andhra Pradesh','Adivivaram'),('8107 9950 8112','Rinkesh Sunil Kore','Male','1997-09-08','rink08@gmail.com','8888888888','11111111','India','Maharashtra','Navi Mumbai'),('8177 2545 3387','preethi','Female','1999-06-02','p123j@gmail.com','3746397390','djsdhew8gw','India','Telangana','Achampet'),('9210 8780 3557','ujwala','Female','1965-03-20','ujwala@gmail.com','9238923232','ujwala123','India','Maharashtra','Mumbai');
/*!40000 ALTER TABLE `basic_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caste`
--

DROP TABLE IF EXISTS `caste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caste` (
  `caste_name` varchar(100) NOT NULL,
  PRIMARY KEY (`caste_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caste`
--

LOCK TABLES `caste` WRITE;
/*!40000 ALTER TABLE `caste` DISABLE KEYS */;
INSERT INTO `caste` VALUES ('24 Manai Telugu Chettiar'),('Ad Dharmi'),('Adi Andhra'),('Aggarwal'),('Agri'),('Ahir'),('Ahom'),('Ambalavasi'),('Amma Kodava'),('Arakh Arakvanshiya'),('Arekatica'),('Arora'),('Arunthathiyar'),('Arya Vysya'),('Ayyaraka'),('Badaga'),('Badhai'),('Bagdi'),('Baghel Gaderiya'),('Bahi'),('Baidya'),('Baishnab'),('Baishya'),('Bajantri'),('Balija'),('Balija Naidu'),('Banayat Oriya'),('Bania'),('Banik'),('Banjara'),('Barai'),('Bari'),('Barujibi'),('Beldar'),('Besta'),('Bhajantri'),('Bhandari'),('Bhatia'),('Bhatraju'),('Bhavsar'),('Bhovi Bhoi'),('Bhoyar'),('Bhulia Meher'),('Billava'),('Bisa Agarwal'),('Bishnoi Vishnoi'),('Bondili'),('Boyer'),('Brahmakshatriya'),('Brahmbatt'),('Brahmin'),('Chalawadi Holeya'),('Chamar'),('Chambhar'),('Chandravanshi Kahar'),('Charan'),('Chasa'),('Chattada Sri Vaishnava'),('Chaudary'),('Chaurasia'),('Chennadasar'),('Cheramar'),('Chettiar'),('Chhetri'),('Chippolu Mera'),('CKP'),('Coorgi'),('Dasapalanjika Kannada Saineegar'),('Deshastha Maratha'),('Devadigas'),('Devang Koshthi'),('Devendra Kula Vellalar'),('Devipujak (Vaghri)'),('Dhangar'),('Dheevara'),('Dhobi'),('Dhor'),('Dommala'),('Dumal'),('Dusadh'),('Edigas'),('Ezhava'),('Ezhuthachan'),('Gabit'),('Gangai Ganesh'),('Ganiga'),('Garhwali'),('Gatti'),('Gavali'),('Gavandi'),('Gavara'),('Ghisadi'),('Ghumar'),('Goala'),('Goan'),('Gomantak Maratha'),('Gond Gondi Raj Gond'),('Gondhali'),('Gopal'),('Goud'),('Gounder'),('Gowda'),('Gramani'),('Gudia'),('Gujjar'),('Gupta'),('Gurav'),('Halba Koshti'),('Hegde'),('Helava'),('Jaalari'),('Jaiswal'),('Jandra'),('Jangam'),('Jat'),('Jatav'),('Kachara'),('Kadava patel'),('Kahar'),('Kaibarta'),('Kaikaala'),('Kakkalan'),('Kalal'),('Kalanji'),('Kalar'),('Kalinga Vysya'),('Kalita'),('Kalwar'),('Kamboj'),('Kamma'),('Kanakkan Padanna'),('Kaniyan'),('Kansari'),('Kansyakaar'),('Kapol'),('Kapu'),('Karakala Bhakthula'),('Karana'),('Karmakar'),('Karuneegar'),('Kasar'),('Kashyap'),('Katiya'),('Kayastha'),('Khandayat'),('Khandelwal'),('Kharvi'),('Kharwar'),('Khatik'),('Khatri'),('Koeri Koiri'),('Kokanastha Maratha'),('Koli'),('Kongu Vellala Gounder'),('Konkani'),('Koracha'),('Korama'),('Kori'),('Koshti'),('Krishnavaka'),('Kshatriya'),('Kshatriya Agnikula'),('Kudumbi'),('Kulalar'),('Kulita'),('Kumawat'),('Kumbhar'),('Kummari'),('Kunbi'),('Kurmi'),('Kurmi kshatriya'),('Kuruba'),('Kuruhina shetty'),('Kurumbar'),('Kushwaha'),('Kutchi'),('Kutchi Gurjar'),('Lambadi'),('Leva Patidar'),('Leva Patil'),('Lingayat'),('Lodhi Rajput'),('Lohana'),('Lohar'),('Lubana'),('Madiga'),('Mahajan'),('Mahar'),('Mahendra'),('Maheshwari'),('Mahindra'),('Mahisya'),('Majabi Mazhbi'),('Mala'),('Mali'),('Mallah'),('Manikpuri'),('Manipuri'),('Manjhi'),('Mapila'),('Maratha'),('Maravar'),('Maruthuvar'),('Marwari'),('Matang'),('Mathur'),('Maurya'),('Meena'),('Meenavar'),('Mehra'),('Menon'),('Meru'),('Meru darji'),('Modak'),('Mogaveera'),('Monchi'),('Motati Reddy'),('Mudaliar'),('Mudiraj'),('Muthuraja'),('Naagavamsam'),('Nadar'),('Nagaralu'),('Naicker'),('Naidu'),('Naik Nayak Nayaka'),('Nair'),('Namasudra Namosudra'),('Nambiar'),('Namboodiri'),('Namdev Chhipa'),('Napit'),('Nath Jogi'),('Nepali'),('Nhavi'),('Nonia'),('OBC'),('Oswal'),('Otari'),('Others'),('Padmashali'),('Pal'),('Panchal'),('Panchamsali'),('Pandaram'),('Panicker'),('Parkava Kulam'),('Pasi'),('Patel'),('Pathare Prabhu'),('Patil'),('Patnaick'),('Patra'),('Perika'),('Pillai'),('Poosala'),('Prajapati'),('Rabari'),('Raigar'),('Raikwar'),('Rajaka'),('Rajbhar'),('Rajbongshi'),('Rajpurohit'),('Rajput'),('Reddy'),('Sadgope'),('Saha'),('Sahu'),('Saini'),('Saliya'),('Sathwara'),('Sawantwadi'),('SC'),('Senai Thalaivar'),('Senguntha Mudaliyar'),('Settibalija'),('Shah'),('Shimpi'),('Sindhi'),('SKP'),('Sonar'),('Soni'),('Sood'),('Sourashtra'),('Sozhiya Vellalar'),('Srisayani'),('SSK'),('ST'),('Subarna Banik'),('Sudi Suri Sundhi Shaundik'),('Sutar'),('Swakula sali'),('Swarnkar'),('Tamboli'),('Tanti'),('Tantuway'),('Telaga'),('Teli'),('Thakkar'),('Thakur'),('Thevar Mukkulathor'),('Thigala'),('Thiyya'),('Tili'),('Togata'),('Tonk Kshatriya'),('Tribe'),('Turupu Kapu'),('Uppara'),('Vadar'),('Vaddera'),('Vaidiki Velanadu'),('Vaish'),('Vaishnav'),('Vaishnav Vanik'),('Vaishnava'),('Vaishya'),('Vaishya Vani'),('Vallala'),('Valluvar'),('Valmiki'),('Vania'),('Vanjari'),('Vankar'),('Vannar'),('Vannia Kula Kshatriyar'),('Vanniyar'),('Variar'),('Varshney'),('Veershaiva Veera Saivam'),('Velaan'),('Velama'),('Velan'),('Vellalar'),('Vettuva Gounder'),('Vishwakarma'),('Vokkaliga'),('Vysya'),('Yadav Yadava'),('Yellapu');
/*!40000 ALTER TABLE `caste` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatrequest`
--

DROP TABLE IF EXISTS `chatrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chatrequest` (
  `send_from` varchar(45) DEFAULT NULL,
  `send_to` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chatrequest`
--

LOCK TABLES `chatrequest` WRITE;
/*!40000 ALTER TABLE `chatrequest` DISABLE KEYS */;
INSERT INTO `chatrequest` VALUES ('9210 8780 3557','8107 9950 8112','accepted'),('9210 8780 3557','3284 2766 4934','accepted');
/*!40000 ALTER TABLE `chatrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_details`
--

DROP TABLE IF EXISTS `contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_details` (
  `uid` varchar(15) NOT NULL,
  `person_type1` varchar(15) DEFAULT NULL,
  `person_type1_num1` varchar(15) DEFAULT NULL,
  `person_type1_num2` varchar(15) DEFAULT NULL,
  `person_type2` varchar(15) DEFAULT NULL,
  `person_type2_num1` varchar(15) DEFAULT NULL,
  `person_type2_num2` varchar(15) DEFAULT NULL,
  `person_type3` varchar(15) DEFAULT NULL,
  `person_type3_num1` varchar(15) DEFAULT NULL,
  `person_type3_num2` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `uid_idx` (`uid`),
  CONSTRAINT `contactpk` FOREIGN KEY (`uid`) REFERENCES `basic_details` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_details`
--

LOCK TABLES `contact_details` WRITE;
/*!40000 ALTER TABLE `contact_details` DISABLE KEYS */;
INSERT INTO `contact_details` VALUES ('8107 9950 8112','Father','7878787878',NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9210 8780 3557',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo`
--

DROP TABLE IF EXISTS `demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo` (
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `aadhar` varchar(45) DEFAULT NULL,
  `image` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo`
--

LOCK TABLES `demo` WRITE;
/*!40000 ALTER TABLE `demo` DISABLE KEYS */;
INSERT INTO `demo` VALUES ('shubhamkore','1234','rinkesh.kore35gmail.com','1111',NULL),('rinkesh','1111111111','rink@tcs.com','111111111111',NULL);
/*!40000 ALTER TABLE `demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `eduname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES ('BE / BTech'),('BCA'),('BSc IT'),('B Arch'),('ME / Mtech'),('MS'),('MCA'),('MSc IT'),('M Arch'),('MBBS'),('BDS'),('BPT'),('BPharm'),('BVSc'),('BSc Nursing'),('BAMS'),('BHMS'),('BUMS'),('MD / MS'),('MDS'),('MPT'),('Mpharm'),('MVSc'),('CA'),('CFA'),('CS'),('ICWA'),('BCom'),('MCom'),('BBA'),('MBA'),('LLB'),('LLM'),('BA'),('BSc'),('BEd'),('BFA '),('BMM'),('BDes/BFT'),('BSW'),('BPhil'),('MA'),('MSc'),('MEd'),('MFA'),('MMM'),('MDes/MFT'),('MSW'),('MPhil'),('PhD'),('Diploma'),('High School'),('Trade School'),('Higher Secondary / Secondary School');
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_details`
--

DROP TABLE IF EXISTS `education_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_details` (
  `uid` varchar(15) NOT NULL,
  `highest_degree` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `salary` varchar(50) DEFAULT NULL,
  KEY `uid` (`uid`),
  CONSTRAINT `education_details_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `basic_details` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_details`
--

LOCK TABLES `education_details` WRITE;
/*!40000 ALTER TABLE `education_details` DISABLE KEYS */;
INSERT INTO `education_details` VALUES ('123 123','btech','sw',NULL),('18923 383 12','ahas','xyz',NULL),('1234 1234','degree','enter',NULL),('1234 1235','degree','enter',NULL),('1234 1225 1235','degree','enter',NULL),('1234 1985 1235','degree','enter',NULL),('9210 8780 3557','B.E/B.Tech','Chartered Accountant',NULL),('3284 2766 4934','B.E/B.Tech','Chartered Accountant',NULL),('8107 9950 8112','MCA','Financial Analyst / Planning','7 lakh-8 lakh');
/*!40000 ALTER TABLE `education_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `family_details`
--

DROP TABLE IF EXISTS `family_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `family_details` (
  `uid` varchar(15) NOT NULL,
  `father_name` varchar(45) DEFAULT NULL,
  `father_occupation` varchar(45) DEFAULT NULL,
  `mother_name` varchar(45) DEFAULT NULL,
  `mother_occupation` varchar(45) DEFAULT NULL,
  `sibiling` varchar(5) DEFAULT NULL,
  `family_type` varchar(45) DEFAULT NULL,
  `family_status` varchar(45) DEFAULT NULL,
  `family_value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `uid_idx` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `basic_details` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `family_details`
--

LOCK TABLES `family_details` WRITE;
/*!40000 ALTER TABLE `family_details` DISABLE KEYS */;
INSERT INTO `family_details` VALUES ('8107 9950 8112','Sunil','Operator / Technician',NULL,NULL,NULL,NULL,NULL,NULL),('9210 8780 3557',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `family_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heightrange`
--

DROP TABLE IF EXISTS `heightrange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heightrange` (
  `height` varchar(50) DEFAULT NULL,
  `height_in_num` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heightrange`
--

LOCK TABLES `heightrange` WRITE;
/*!40000 ALTER TABLE `heightrange` DISABLE KEYS */;
INSERT INTO `heightrange` VALUES ('4ft 5',4.50),('4ft 6',4.60),('4ft 7',4.70),('4ft 8',4.80),('4ft 9',4.90),('5ft',5.00),('5ft 1',5.10),('5ft 2',5.20),('5ft 3',5.30),('5ft 4',5.40),('5ft 5',5.50),('5ft 6',5.60),('5ft 7',5.70),('5ft 8',5.80),('5ft 9',5.90),('6ft',6.00),('6ft 1',6.10),('6ft 2',6.20),('6ft 3',6.30),('6ft 4',6.40),('6ft 5',6.50),('6ft 6',6.60),('6ft 7',6.70),('6ft 8',6.80),('6ft 9',6.90),('7ft',7.00);
/*!40000 ALTER TABLE `heightrange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (_binary '{}');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imageup`
--

DROP TABLE IF EXISTS `imageup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imageup` (
  `uid` varchar(45) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imageup`
--

LOCK TABLES `imageup` WRITE;
/*!40000 ALTER TABLE `imageup` DISABLE KEYS */;
INSERT INTO `imageup` VALUES ('1234','image-1621959510352.png'),('44','image-1621959922000.png'),('99','image-1621962019843.jpg'),('111','uploads\\image-1622003160170.png'),('7','image-1622004382033.jpg'),('7','image-1622005822994.jpg'),('1','image-1622022566509.jpg'),('2','image-1622022651650.jpg'),('3','image-1622022917447.jpg');
/*!40000 ALTER TABLE `imageup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `send_from` varchar(50) DEFAULT NULL,
  `send_to` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES ('8107 9950 8112','123 123'),('9210 8780 3557','undefined'),('9210 8780 3557','8107 9950 8112');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mothertongue`
--

DROP TABLE IF EXISTS `mothertongue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mothertongue` (
  `mother_tongue` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mothertongue`
--

LOCK TABLES `mothertongue` WRITE;
/*!40000 ALTER TABLE `mothertongue` DISABLE KEYS */;
INSERT INTO `mothertongue` VALUES ('Angika'),('Arunachali'),('Assamese'),('Awadhi'),('Badaga'),('Bengali'),('Bhojpuri'),('Bihari'),('Brij'),('Chatisgarhi'),('Dogri'),('English'),('French'),('Garhwali'),('Garo'),('Gujarati'),('Haryanvi'),('HimachaliPahari'),('Hindi'),('Kanauji'),('Kannada'),('Kashmiri'),('Khandesi'),('Khasi'),('Konkani'),('Koshali'),('Kutchi'),('Ladacki'),('Lepcha'),('Magahi'),('Maithili'),('Malayalam'),('Manipuri'),('Marathi'),('Marwari'),('Miji'),('Mizo'),('Monpa'),('Nepali'),('Nicobarese'),('Oriya'),('Punjabi'),('Rajasthani'),('Sanskrit'),('Santhali'),('Sindhi'),('Sourashtra'),('Tamil'),('Telugu'),('Tripuri'),('Tulu'),('Urdu');
/*!40000 ALTER TABLE `mothertongue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `occupation`
--

DROP TABLE IF EXISTS `occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `occupation` (
  `occuname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `occupation`
--

LOCK TABLES `occupation` WRITE;
/*!40000 ALTER TABLE `occupation` DISABLE KEYS */;
INSERT INTO `occupation` VALUES ('Admin Professional'),('Clerk'),('Operator / Technician'),('Secretary / Front Office'),('Actor / Model'),('Film / Entertainment Professional'),('Advertising / PR Professional'),('Event Management Professional'),('Journalist'),('Media Professional'),('Farmer / Horticulturist'),('Pilot'),('Air Hostess / Flight Attendent'),('Airline Professional'),('Architect'),('Interior Designer'),('BPO / KPO / ITES Professional'),('Customer Service Professional'),('Chartered Accountant'),('Company Secretary'),('Auditor'),('Accounts / Finance Professional'),('Banking Professional'),('Financial Analyst / Planning'),('Investment Banker'),('Private Equity Professional'),('Fashion Designer'),('Beautician'),('Hair Stylist'),('Jewellery Designer'),('Designer'),('Makeup Artist'),('Tailor'),('IAS'),('IPS'),('IRS'),('IES'),('IFS'),('Analyst'),('Consultant'),('Corporate Communication'),('Corporate Planning'),('HR Professional'),('Marketing Professional'),('Operations Management'),('Sales / Business Development Professional'),('Subject Matter Expert'),('Senior Manager / Manager'),('Content Writer'),('Army'),('Navy '),('Air Force'),('Paramilitary '),('Defense Services'),('Professor / Lecturer'),('Teacher'),('Research Assistant'),('Librarian'),('Educational Professional'),('Civil Engineer'),('Electronics / Telecom Engineer'),('Mechanical / Production Engineer'),('Quality Assurance Engineer - Non IT'),('Engineer - Non IT'),('Designer'),('Product Manager - Non IT'),('Project Manager - Non IT'),('Restaurant / Catering Professional'),('Chef / Cook'),('Hotel / Hospitality Professional'),('Software Professional'),('Hardware Professional'),('Product Manager'),('Project Manager'),('Program Manager'),('Animator'),('Cyber / Network Security'),('UI / UX Designer'),('Web / Graphic Designer'),('Software Consultant'),('Data Analyst'),('Data Scientist'),('Network Engineer'),('Quality Assurance Engineer'),('Lawyer'),('Judge'),('Legal Professional'),('Police'),('Doctor'),('Healthcare Professional'),('Paramedical Professional'),('Nurse'),('Pharmacist'),('Physiotherapist'),('Psychologist'),('Veterinary Doctor'),('Dentist'),('Surgeon'),('Therapist'),('Medical Transcriptionist'),('Dietician / Nutritionist'),('Lab Technician'),('Mariner'),('Sailor'),('Merchant Navy'),('Scientist / Researcher'),('CXO'),('Director'),('Chairman'),('President'),('VP'),('AVP'),('GM'),('DGM'),('AGM'),('Technician'),('Arts & Craftsman'),('Transportation / Logistic Professional'),('Agent / Broder / Trader'),('Contractor'),('Fitness Professional'),('Security Professional'),('Social Worker / Voluteer / NGO'),('Sports Person'),('Travel Professional'),('Singer'),('Writer'),('Politician'),('Builder'),('Chemist'),('CNC Operator'),('Distributor'),('Driver'),('Freelancer'),('Mechanic'),('Medical Representative'),('Musician'),('Photo / Videographer'),('Surveyor');
/*!40000 ALTER TABLE `occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_details`
--

DROP TABLE IF EXISTS `other_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `other_details` (
  `uid` varchar(15) NOT NULL,
  `drink` varchar(45) DEFAULT NULL,
  `smoke` varchar(45) DEFAULT NULL,
  `diet` varchar(45) DEFAULT NULL,
  KEY `otherpk_idx` (`uid`),
  CONSTRAINT `otherpk` FOREIGN KEY (`uid`) REFERENCES `basic_details` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_details`
--

LOCK TABLES `other_details` WRITE;
/*!40000 ALTER TABLE `other_details` DISABLE KEYS */;
INSERT INTO `other_details` VALUES ('9210 8780 3557',NULL,NULL,NULL),('8107 9950 8112',NULL,NULL,NULL);
/*!40000 ALTER TABLE `other_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_details`
--

DROP TABLE IF EXISTS `partner_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partner_details` (
  `uid` varchar(15) NOT NULL,
  `age_from` varchar(5) DEFAULT NULL,
  `age_to` varchar(5) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `mother_tongue` varchar(45) DEFAULT NULL,
  `highest_degree` varchar(45) DEFAULT NULL,
  `occupation` varchar(45) DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `caste` varchar(50) DEFAULT NULL,
  `subcaste` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `uid_idx` (`uid`),
  CONSTRAINT `pk` FOREIGN KEY (`uid`) REFERENCES `basic_details` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_details`
--

LOCK TABLES `partner_details` WRITE;
/*!40000 ALTER TABLE `partner_details` DISABLE KEYS */;
INSERT INTO `partner_details` VALUES ('8107 9950 8112',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('9210 8780 3557',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `partner_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_details`
--

DROP TABLE IF EXISTS `personal_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_details` (
  `uid` varchar(15) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `mother_tongue` varchar(50) NOT NULL,
  `caste` varchar(50) NOT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `weight` varchar(10) DEFAULT NULL,
  `aboutme` longtext,
  `subcaste` varchar(50) DEFAULT NULL,
  KEY `uid` (`uid`),
  CONSTRAINT `personal_details_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `basic_details` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_details`
--

LOCK TABLES `personal_details` WRITE;
/*!40000 ALTER TABLE `personal_details` DISABLE KEYS */;
INSERT INTO `personal_details` VALUES ('123 123','never','telugu','xxx',NULL,NULL,NULL,NULL),('18923 383 12','no','tel','abc',NULL,NULL,NULL,NULL),('1234 1234','no','eng','yue',NULL,NULL,NULL,NULL),('1234 1235','no','eng','yue',NULL,NULL,NULL,NULL),('8177 2545 3387','unmarried','Assamese','marathi',NULL,NULL,NULL,NULL),('1234 1235 123','no','eng','yue',NULL,NULL,NULL,NULL),('1234 1225 1235','no','eng','yue',NULL,NULL,NULL,NULL),('1234 1985 1235','no','eng','yue',NULL,NULL,NULL,NULL),('9210 8780 3557','unmarried','Hindi','marathi',NULL,NULL,NULL,NULL),('3284 2766 4934','unmarried','Assamese','marathi',NULL,NULL,NULL,NULL),('8107 9950 8112','unmarried','Angika','24 Manai Telugu Chettiar',5.30,NULL,NULL,NULL);
/*!40000 ALTER TABLE `personal_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request` (
  `send_from` varchar(50) DEFAULT NULL,
  `send_to` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` VALUES ('8107 9950 8112','123 123'),('9210 8780 3557','undefined'),('9210 8780 3557','undefined'),('9210 8780 3557','undefined'),('9210 8780 3557','8107 9950 8112');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salaryscale`
--

DROP TABLE IF EXISTS `salaryscale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salaryscale` (
  `salary` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salaryscale`
--

LOCK TABLES `salaryscale` WRITE;
/*!40000 ALTER TABLE `salaryscale` DISABLE KEYS */;
INSERT INTO `salaryscale` VALUES ('less than 50000'),('50000-1 lakh'),('1 lakh-1.5 lakh'),('1.5 lakh-2 lakh'),('2 lakh-2.5 lakh'),('2.5 lakh-3 lakh'),('3 lakh- 4 lakh'),('4 lakh-5 lakh'),('5 lakh-6 lakh'),('6 lakh-7 lakh'),('7 lakh-8 lakh'),('8 lakh-9 lakh'),('9 lakh-10 lakh'),('10 lakh-12 lakh'),('12 lakh-15 lakh'),('15 lakh-20 lakh'),('20 lakh-25 lakh'),('25 lakh-30 lakh'),('30 lakh-50 lakh'),('above 50 lakh');
/*!40000 ALTER TABLE `salaryscale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_details`
--

DROP TABLE IF EXISTS `search_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_details` (
  `uid` varchar(15) DEFAULT NULL,
  `marital_statue` varchar(255) DEFAULT NULL,
  `age_from` varchar(255) DEFAULT NULL,
  `age_to` varchar(255) DEFAULT NULL,
  `height_from` varchar(255) DEFAULT NULL,
  `height_to` varchar(255) DEFAULT NULL,
  `caste` varchar(255) DEFAULT NULL,
  `subcaste` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `highest_degree` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `drink` varchar(255) DEFAULT NULL,
  `smoke` varchar(255) DEFAULT NULL,
  `diet` varchar(255) DEFAULT NULL,
  KEY `uid_idx` (`uid`),
  CONSTRAINT `searchpk` FOREIGN KEY (`uid`) REFERENCES `basic_details` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_details`
--

LOCK TABLES `search_details` WRITE;
/*!40000 ALTER TABLE `search_details` DISABLE KEYS */;
INSERT INTO `search_details` VALUES ('8107 9950 8112','unmarried,widow,','23','30','4.50','5.50','Ad Dharmi,',NULL,NULL,NULL,NULL,'MCA,BSc IT,MBBS,','Software Professional,Project Manager,Product Manager,Program Manager,UI / UX Designer,Web / Graphic Designer,Software Consultant,Data Analyst,Data Scientist,','Light / Social Drinker,','Occasional Smoker,','Non-Veg Occasional,Veg,Eggetarian,');
/*!40000 ALTER TABLE `search_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcaste`
--

DROP TABLE IF EXISTS `subcaste`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcaste` (
  `caste_name` varchar(100) NOT NULL,
  `subcaste_name` varchar(100) NOT NULL,
  KEY `caste_name_idx` (`caste_name`),
  CONSTRAINT `caste_name` FOREIGN KEY (`caste_name`) REFERENCES `caste` (`caste_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcaste`
--

LOCK TABLES `subcaste` WRITE;
/*!40000 ALTER TABLE `subcaste` DISABLE KEYS */;
INSERT INTO `subcaste` VALUES ('Aggarwal','Bisa Agarwal'),('Aggarwal','Gulhare'),('Ambalavasi','Pisharody'),('Ambalavasi','Poduval'),('Balija','Balija Naidu'),('Balija','Balija Reddy'),('Balija','Kavara'),('Balija','Setti Balija'),('Balija','Surya Balija'),('Balija','Vada Balija'),('Balija','Waada Balija'),('Bania','Agarwal'),('Bania','Agrahari'),('Bania','Asathi'),('Bania','Baniya Kumuti'),('Bania','Barnwals'),('Bania','Choudharys'),('Bania','Dosar Dusra'),('Bania','Gahoi'),('Bania','Gandha Vanika'),('Bania','Gupta'),('Bania','Jaiswal'),('Bania','Kalwar'),('Bania','Kanojia Kanu'),('Bania','Kanykubj Bania'),('Bania','Kasaundhan'),('Bania','Keshris Kesarwani'),('Bania','Khandelwal'),('Bania','Komti Arya Vaishya'),('Bania','Lad'),('Bania','Madhesiya Kawa Halwai'),('Bania','Mahajan'),('Bania','Modh Ghanchi'),('Bania','Modi'),('Bania','Nema'),('Bania','Oswal'),('Bania','Padmavati Porwal'),('Bania','Patwa'),('Bania','Patwa'),('Bania','Porwal Porwar'),('Bania','Rastogi'),('Bania','Rathi'),('Bania','Rauniars'),('Bania','Rauniars'),('Bania','Rauniyar'),('Bania','Shaw Sahu Teli'),('Bania','Sinduriya'),('Bania','Sudi Suri Sundhi Shaundik'),('Bania','Ummar Umre Bagaria'),('Bania','Vaishnav'),('Bania','Varshneys'),('Bania','Vijayvargia'),('Brahmin','Anavil'),('Brahmin','Andhra'),('Brahmin','Audichya'),('Brahmin','Bajkhedwal'),('Brahmin','Bardai'),('Brahmin','Barendra'),('Brahmin','Bhargava'),('Brahmin','Bhatt'),('Brahmin','Bhumihar'),('Brahmin','Brahacharanam'),('Brahmin','BrahmBhatt'),('Brahmin','Brajastha Maithil'),('Brahmin','Dadhich'),('Brahmin','Daivadnya'),('Brahmin','Danua'),('Brahmin','Deshastha'),('Brahmin','Devrukhe'),('Brahmin','Dhiman'),('Brahmin','Dravida'),('Brahmin','Embrandiri'),('Brahmin','Garhwali'),('Brahmin','Gaud Saraswat (GSB)'),('Brahmin','Gaur'),('Brahmin','Goswami'),('Brahmin','Gujar'),('Brahmin','Gujrati'),('Brahmin','Gurukkal'),('Brahmin','Halua'),('Brahmin','Havyaka'),('Brahmin','Hoysala'),('Brahmin','Iyengar'),('Brahmin','Iyer'),('Brahmin','Jangid'),('Brahmin','Jangra'),('Brahmin','Jhadua'),('Brahmin','Jhijhotiya'),('Brahmin','Jogi'),('Brahmin','Kannada'),('Brahmin','Kanyakubj'),('Brahmin','Karhade'),('Brahmin','Kashmiri Pandit'),('Brahmin','Khadayat'),('Brahmin','Khandelwal'),('Brahmin','Khedaval'),('Brahmin','Koknastha'),('Brahmin','Kota'),('Brahmin','Kulin'),('Brahmin','Kumaoni'),('Brahmin','Madhwa'),('Brahmin','Maithil'),('Brahmin','Malviya'),('Brahmin','Marwari'),('Brahmin','Mevada'),('Brahmin','Modh'),('Brahmin','Mohyal'),('Brahmin','Nagar'),('Brahmin','Namboodiri'),('Brahmin','Niyogi'),('Brahmin','Paliwal'),('Brahmin','Panda'),('Brahmin','Pandit'),('Brahmin','Panicker'),('Brahmin','Pareek'),('Brahmin','Pushkarna'),('Brahmin','Rajasthani'),('Brahmin','Rajgor'),('Brahmin','Rigvedi'),('Brahmin','Rudraj'),('Brahmin','Sachora'),('Brahmin','Sakaldwipi'),('Brahmin','Sanadya'),('Brahmin','Sanchihar'),('Brahmin','Sanketi'),('Brahmin','Saraswat'),('Brahmin','Sarotri'),('Brahmin','Sarua'),('Brahmin','Saryuparin'),('Brahmin','Shivalli'),('Brahmin','Shrimali'),('Brahmin','Sikhwal'),('Brahmin','Smartha'),('Brahmin','Sri Vishnava'),('Brahmin','Stanika'),('Brahmin','Tapodhan'),('Brahmin','Tyagi'),('Brahmin','Utkal'),('Brahmin','Vaidiki'),('Brahmin','Vaikhanasa'),('Brahmin','Vaikhawas'),('Brahmin','Vaishnav'),('Brahmin','Valam'),('Brahmin','Velanadu'),('Brahmin','Viswa'),('Brahmin','Vyas'),('Brahmin','Yajurvedi'),('Brahmin','Zalora'),('Chettiar','Achirapakkam Chettiar'),('Chettiar','Agaram Vellan Chettiar'),('Chettiar','Ayira Vysya'),('Chettiar','Beri Chettiar'),('Chettiar','Elur Chetty'),('Chettiar','Kasukara'),('Chettiar','Kongu Chettiar'),('Gupta','Agrahari'),('Gupta','Asathi'),('Gupta','Ayodhyavasi'),('Gupta','Barnwals'),('Gupta','Choudharys'),('Gupta','Dosar Dusra'),('Gupta','Gahoi'),('Gupta','Gandha Vanika'),('Gupta','Gulahre'),('Gupta','Jaiswal'),('Gupta','Kalwar'),('Gupta','Kandu Kanu'),('Gupta','Kasaundhan'),('Gupta','Keshris Kesarwani'),('Gupta','Khandelwal'),('Gupta','Komti Arya Vaishya'),('Gupta','Lad'),('Gupta','Madhesiya Kawa Halwai'),('Gupta','Mahajan'),('Gupta','Modi'),('Gupta','Nema'),('Gupta','Oswal'),('Gupta','Padmavati Porwal'),('Gupta','Patwa'),('Gupta','Rastogi'),('Gupta','Rathi'),('Gupta','Rauniars'),('Gupta','Shaw Sahu Teli'),('Gupta','Ummar Umre Bagaria'),('Gupta','Vaishnav'),('Gupta','Varshneys'),('Gupta','Vijayvargia'),('Jat','Agharia'),('Jat','Agoh'),('Jat','Agra'),('Jat','Ahlawat'),('Jat','Alwal'),('Jat','Antil Antal'),('Jat','Arya'),('Jat','Badhwar'),('Jat','Bagaria'),('Jat','Bagri'),('Jat','Bains'),('Jat','Balhara'),('Jat','Balyan'),('Jat','Bana'),('Jat','Barach'),('Jat','Bargoti'),('Jat','Beniwal'),('Jat','Bhal'),('Jat','Bhambu'),('Jat','Bhodu'),('Jat','Bomal'),('Jat','Budania'),('Jat','Bugaliya'),('Jat','Burdak'),('Jat','Chahal'),('Jat','Chaudhry'),('Jat','Chauhan'),('Jat','Chhikara Chikara'),('Jat','Chillar'),('Jat','Dabas'),('Jat','Dagar'),('Jat','Dagua'),('Jat','Dahiya'),('Jat','Dalal'),('Jat','Dangi'),('Jat','Dara'),('Jat','Deshwal'),('Jat','Dhaka'),('Jat','Dhama'),('Jat','Dhanchak'),('Jat','Dhanda'),('Jat','Dhankhar'),('Jat','Dhillon'),('Jat','Dhomi'),('Jat','Dhoot'),('Jat','Dhoriwal'),('Jat','Dhull'),('Jat','Dollya'),('Jat','Dudi'),('Jat','Duhan'),('Jat','Gahlot'),('Jat','Garhwal'),('Jat','Gehlawat'),('Jat','Ghangas'),('Jat','Gill'),('Jat','Godara'),('Jat','Grewal'),('Jat','Gulia'),('Jat','Heer'),('Jat','Hooda'),('Jat','Jaglon'),('Jat','Jakhar'),('Jat','Jam'),('Jat','Jaswal'),('Jat','Jatasra'),('Jat','Jewlia'),('Jat','Jutrana'),('Jat','Kadian'),('Jat','Kahlon'),('Jat','Kajala'),('Jat','Kakran'),('Jat','Kalen'),('Jat','Kaliramna'),('Jat','Kalkhanse'),('Jat','Karwasra'),('Jat','Kaswan'),('Jat','Kataria'),('Jat','Khakar'),('Jat','Khallia'),('Jat','Kharb'),('Jat','Khatkar'),('Jat','Khatri'),('Jat','Kherwa'),('Jat','Khichad'),('Jat','Kothari'),('Jat','Kuhar'),('Jat','Kulhari'),('Jat','Kundu'),('Jat','Lakhlan'),('Jat','Lakra'),('Jat','lamba'),('Jat','Lamoria'),('Jat','Lather'),('Jat','Lathwal'),('Jat','Latiyan'),('Jat','Laur'),('Jat','Lehga'),('Jat','Maan'),('Jat','Mahan'),('Jat','Malhan'),('Jat','Malik'),('Jat','Mandhan'),('Jat','Mangat'),('Jat','Mann Rai'),('Jat','Meel'),('Jat','Mehria'),('Jat','Mhla'),('Jat','Mohar'),('Jat','Moond'),('Jat','Mor More'),('Jat','Nain'),('Jat','Nairwal'),('Jat','Nandal'),('Jat','Nara'),('Jat','Natt Nat'),('Jat','Nauhr'),('Jat','Nehra'),('Jat','Nitharwal'),('Jat','Ola'),('Jat','Pachehra'),('Jat','Palsania'),('Jat','Panghal'),('Jat','Panwar'),('Jat','Parihar'),('Jat','Pattor'),('Jat','Pawar'),('Jat','Phalaswal'),('Jat','Phogat'),('Jat','Pilania'),('Jat','Pooni'),('Jat','Punia'),('Jat','Rahan'),('Jat','Rajaura'),('Jat','Rana'),('Jat','Rangi'),('Jat','Ranwa'),('Jat','Rao'),('Jat','Rathi'),('Jat','Rawal'),('Jat','Redhu'),('Jat','Repswal'),('Jat','Saharan'),('Jat','Sandhi'),('Jat','Sangawan'),('Jat','Sansanwal'),('Jat','Saran'),('Jat','Saroha'),('Jat','Sarot'),('Jat','Sehrawat'),('Jat','Sheoran'),('Jat','Shokeen'),('Jat','Sidhu'),('Jat','Sikarwar'),('Jat','Sindhu'),('Jat','Singhal'),('Jat','Sinsinwar'),('Jat','Sirohi'),('Jat','Siwach'),('Jat','Solanki'),('Jat','Suhag'),('Jat','Sunda'),('Jat','Takhar'),('Jat','Tanar'),('Jat','Tanwar'),('Jat','Tevatia'),('Jat','Thakaran'),('Jat','Thenua'),('Jat','Thori'),('Jat','Tokas'),('Jat','Tomar'),('Kapu','Kapu All'),('Kapu','Kapu Munnuru'),('Kapu','Kapu Naidu'),('Kapu','Kurupu kapu'),('Kayastha','Ambastha'),('Kayastha','Ambastha Kayastha'),('Kayastha','Asthana'),('Kayastha','Barujibi'),('Kayastha','Basu'),('Kayastha','Bhatnagar'),('Kayastha','Chanda'),('Kayastha','Dass'),('Kayastha','Dey'),('Kayastha','Dhar'),('Kayastha','Dutta'),('Kayastha','Ghosh'),('Kayastha','Gour'),('Kayastha','Guha'),('Kayastha','Johri'),('Kayastha','Karna'),('Kayastha','Kars'),('Kayastha','Kulin'),('Kayastha','Kulshreshtha'),('Kayastha','Mathur'),('Kayastha','Mitra'),('Kayastha','Nag'),('Kayastha','Nandi'),('Kayastha','Nigam'),('Kayastha','Palit'),('Kayastha','Paul'),('Kayastha','Rakshit'),('Kayastha','Rarhi'),('Kayastha','Roy'),('Kayastha','Saxena'),('Kayastha','Sen'),('Kayastha','Sil'),('Kayastha','Sinha'),('Kayastha','Srivastava'),('Khatri','Anand'),('Khatri','Arora'),('Khatri','Bagga'),('Khatri','Bahl'),('Khatri','Batra'),('Khatri','Bedi'),('Khatri','Behal'),('Khatri','Behl'),('Khatri','Beri'),('Khatri','Bhalla'),('Khatri','Bhandari'),('Khatri','Bhasin'),('Khatri','Bhatti'),('Khatri','Chaddha'),('Khatri','Chadha'),('Khatri','Chandok'),('Khatri','Chaudhary'),('Khatri','Chhabra'),('Khatri','Chopra'),('Khatri','Choudhuri'),('Khatri','Dang'),('Khatri','Dhawan'),('Khatri','Dhir'),('Khatri','Duggal'),('Khatri','Ghai'),('Khatri','Handa'),('Khatri','Jaggi'),('Khatri','Jairath'),('Khatri','Jerath'),('Khatri','Jham'),('Khatri','Kakkar'),('Khatri','Kapur Kapoor'),('Khatri','Kehar'),('Khatri','Khanna'),('Khatri','Khosla'),('Khatri','Khukrain'),('Khatri','Khullar'),('Khatri','Kochar'),('Khatri','Kohli'),('Khatri','lamba'),('Khatri','Mahendru'),('Khatri','Malhotra'),('Khatri','Marwah'),('Khatri','Mehra'),('Khatri','Mehta'),('Khatri','Nagrath'),('Khatri','Nanda'),('Khatri','Nayyar'),('Khatri','Oberoi'),('Khatri','Ohri'),('Khatri','Passi'),('Khatri','Puri'),('Khatri','Sabharwal'),('Khatri','Sahni'),('Khatri','Sareen'),('Khatri','Sarin'),('Khatri','Sawhney'),('Khatri','Sehgal'),('Khatri','Sekhri'),('Khatri','Seth'),('Khatri','Sethi'),('Khatri','Sobto'),('Khatri','Sodhi'),('Khatri','Sondhi'),('Khatri','Soni'),('Khatri','Sood'),('Khatri','Suri'),('Khatri','Talwar'),('Khatri','Tandon'),('Khatri','Thapar'),('Khatri','Tuli'),('Khatri','Uppal'),('Khatri','Vadhera'),('Khatri','Verma'),('Khatri','Vij'),('Khatri','Vohra'),('Khatri','Wadhawan'),('Khatri','Wahi'),('Khatri','Walia'),('Koli','Koli Mahadev'),('Koli','Koli Patel'),('Koli','Mangela'),('Kshatriya','Agnikula Kshatriya'),('Kshatriya','Aguri Ugra Kshatriya'),('Kshatriya','Amethia'),('Kshatriya','Bachhil'),('Kshatriya','Bagel'),('Kshatriya','Baghela Veghela'),('Kshatriya','Bais'),('Kshatriya','Banafar'),('Kshatriya','Bendela'),('Kshatriya','Bhandari'),('Kshatriya','Bharswaj'),('Kshatriya','Bhatraju'),('Kshatriya','Bhatti'),('Kshatriya','Bhavasar Kshatriya'),('Kshatriya','Bisen'),('Kshatriya','Chandel'),('Kshatriya','Chandravanshi'),('Kshatriya','Chauhan'),('Kshatriya','Chopra'),('Kshatriya','Chudasa'),('Kshatriya','Dangi'),('Kshatriya','Dhawan'),('Kshatriya','Dixit'),('Kshatriya','Dogra'),('Kshatriya','Gaherwar'),('Kshatriya','Gargvansi'),('Kshatriya','Gaur'),('Kshatriya','Gautam'),('Kshatriya','Gohil'),('Kshatriya','Hada'),('Kshatriya','Haihaivanshi'),('Kshatriya','Jadon'),('Kshatriya','Jaiswar'),('Kshatriya','Janwar'),('Kshatriya','Kachwaha'),('Kshatriya','Kandera'),('Kshatriya','Kapur'),('Kshatriya','Katiyar'),('Kshatriya','Khandayat'),('Kshatriya','Khanna'),('Kshatriya','Khare'),('Kshatriya','Khati'),('Kshatriya','Kshatriya Rahu Suryavamsam'),('Kshatriya','Kshatriya Raju'),('Kshatriya','Kshatriya Raju Chandravamsam'),('Kshatriya','Kumawat'),('Kshatriya','Kurmi'),('Kshatriya','Kuruvanshi'),('Kshatriya','Mehra'),('Kshatriya','Nagvanshi'),('Kshatriya','Negi'),('Kshatriya','Nikhumbh'),('Kshatriya','Paliwal'),('Kshatriya','Parihar'),('Kshatriya','Parmar'),('Kshatriya','Pawar'),('Kshatriya','Perika Puragiri Kshatriya'),('Kshatriya','Pundir'),('Kshatriya','Raghuvanshi'),('Kshatriya','Raikwar'),('Kshatriya','Rajkumar'),('Kshatriya','Rajput'),('Kshatriya','Rajwar'),('Kshatriya','Rathor'),('Kshatriya','Rawal'),('Kshatriya','Sahni'),('Kshatriya','Saithwar- Mall'),('Kshatriya','Sami'),('Kshatriya','Sengar'),('Kshatriya','Seth'),('Kshatriya','Shakya'),('Kshatriya','Shrinet'),('Kshatriya','Sikarwar'),('Kshatriya','Singh'),('Kshatriya','Sisodiya'),('Kshatriya','Solanki'),('Kshatriya','Soma Vamsha Arya Kshatriya'),('Kshatriya','Sonvanshi'),('Kshatriya','Suryavanshi'),('Kshatriya','Tandon'),('Kshatriya','Tanwar'),('Kshatriya','Thakur'),('Kshatriya','Thogata Veera Kshatriya'),('Kshatriya','Tomar Tanwar'),('Kshatriya','Tong Kshatriya'),('Kshatriya','Ujjain'),('Kshatriya','Vahi'),('Kshatriya','Vohra'),('Kshatriya','Wadhwa'),('Kunbi','Ghatode'),('Kunbi','Dhanoje'),('Kunbi','Khaire'),('Kunbi','Khedule'),('Kunbi','Lonari'),('Kunbi','Maratha'),('Kunbi','Tirale'),('Kunbi','Zade'),('Kurmi','Chaudhary'),('Kurmi','Ghamaila'),('Kurmi','Kochyasa'),('Kurmi','Zade'),('Kurmi','Mahato'),('Kurmi kshatriya','Awadhya'),('Kurmi kshatriya','Baghel'),('Kurmi kshatriya','Chandel'),('Kurmi kshatriya','Chandra'),('Kurmi kshatriya','Chandrakar'),('Kurmi kshatriya','Chandrawanshi'),('Kurmi kshatriya','Chaudhury'),('Kurmi kshatriya','Deshmukh'),('Kurmi kshatriya','Gangwar'),('Kurmi kshatriya','Ghamaila'),('Kurmi kshatriya','Jaiswar'),('Kurmi kshatriya','Kashyap'),('Kurmi kshatriya','Katiyar'),('Kurmi kshatriya','Kochaisa'),('Kurmi kshatriya','Kumar'),('Kurmi kshatriya','Kushwaha Koiri'),('Kurmi kshatriya','Mahata'),('Kurmi kshatriya','Mahato'),('Kurmi kshatriya','Mahto'),('Kurmi kshatriya','Parganiha'),('Kurmi kshatriya','Patel'),('Kurmi kshatriya','Prasad'),('Kurmi kshatriya','Rai'),('Kurmi kshatriya','Sachan'),('Kurmi kshatriya','Singh'),('Kurmi kshatriya','Verma'),('Lingayat','Akkasali'),('Lingayat','Aradhya'),('Lingayat','Balegala'),('Lingayat','Banagar'),('Lingayat','Banajiga'),('Lingayat','Bhandari'),('Lingayat','Bilijedaru'),('Lingayat','Chaturtha'),('Lingayat','Dikshwant'),('Lingayat','Ganiga'),('Lingayat','Gowda'),('Lingayat','Gowli'),('Lingayat','Gurav'),('Lingayat','Hadapada'),('Lingayat','Hatgar'),('Lingayat','Hoogar Hugar Jeer'),('Lingayat','Jadaru'),('Lingayat','Jangam'),('Lingayat','Kudu Vokkaliga'),('Lingayat','Kumbar Kumbara'),('Lingayat','Kumbhar'),('Lingayat','Kuruhina Setty'),('Lingayat','lamba'),('Lingayat','Lolagonda'),('Lingayat','Madivala'),('Lingayat','Malgar'),('Lingayat','Mali'),('Lingayat','Neelagar'),('Lingayat','Neeli Neelagar'),('Lingayat','Neygi'),('Lingayat','Nolamba'),('Lingayat','Pancham'),('Lingayat','Panchamasali'),('Lingayat','Pattasali'),('Lingayat','Reddy Reddi'),('Lingayat','Sadar'),('Lingayat','Sajjan'),('Lingayat','Setty'),('Lingayat','Shilwant'),('Lingayat','Shiva Simpi'),('Lingayat','Vani'),('Maratha','96 Kuli Maratha'),('Maratha','Aramari Gabit'),('Maratha','Deshmukh'),('Maratha','Deshtha Maratha'),('Maratha','Gomantak Maratha'),('Maratha','Jhadav'),('Maratha','Kokanastha Maratha'),('Maratha','Kunbi Dhanoje'),('Maratha','Kunbi Khaire'),('Maratha','Kunbi Khedule'),('Maratha','Kunbi Lonari'),('Maratha','Kunbi Maratha'),('Maratha','Kunbi Tirale'),('Maratha','Malwani'),('Maratha','Maratha Kshatriya'),('Maratha','Parit'),('Maratha','Patil'),('Maratha','Sonar'),('Maratha','Suthar'),('Maratha','Vani'),('Mudaliar','Mudailiar Arcot'),('Mudaliar','Mudaliar All'),('Mudaliar','Mudaliar Saiva'),('Mudaliar','Mudaliar Sengupta'),('Naidu','Balija Naidu'),('Naidu','Gajula Kavarai'),('Naidu','Kapu Naidu'),('Nair','Chekkala Nair'),('Nair','Kartha'),('Nair','Mannadiar'),('Nair','Marar'),('Nair','Nair All'),('Nair','Nair-Vaniya'),('Nair','Veluthedathu'),('Nair','Vilakkithala'),('Patel','Patel Dodia'),('Patel','Patel Kadva'),('Patel','Patel Leva'),('Patel','Patel Lodhi'),('Pillai','Desikar'),('Pillai','Desikar Thanjavur'),('Pillai','Kodikal Pillai'),('Rajput','Rajput Garhwali'),('Rajput','Rajput Kumaoni'),('Rajput','Rajput Negi'),('Rajput','Ramdasia'),('Rajput','Ramgarhia'),('Rajput','Ramoshi Berad Bedar'),('Rajput','Ravidasia'),('Rajput','Rawat'),('Rajput','Reddy'),('Rajput','Rajput Rohella Tank'),('SC','Adi Dravida'),('SC','Ahirwar'),('SC','Arunthathiyar'),('SC','Bairwa'),('SC','Balai'),('SC','Dewar Dhibara'),('SC','Dhanak'),('SC','Dhobi'),('SC','Ganda'),('SC','Ghasi'),('SC','Holar'),('SC','Jatav'),('SC','Julaha'),('SC','Kanakaan Padonna'),('SC','Khatik'),('SC','Kondara'),('SC','Kori Koli'),('SC','Kumaoni'),('SC','Kurava'),('SC','Kuravan Kuravar'),('SC','Kuruva'),('SC','Madiga'),('SC','Mahar'),('SC','Mala'),('SC','Meghwal'),('SC','Mehra'),('SC','Mehtar'),('SC','Paravan Bhartar'),('SC','Pasi'),('SC','Paswan Dusadh'),('SC','Pollon Devandra Kula Vellalan'),('SC','Ponan'),('SC','Poundra'),('SC','Pulaya Chruman'),('SC','Raigar'),('SC','Ramdasia'),('SC','Ravidasia'),('SC','Relli'),('SC','Rohit Chamar'),('SC','Samagar'),('SC','Sambava'),('SC','Santhali'),('SC','Sargara'),('SC','Satnami'),('SC','Shilpkar'),('SC','Sonkar'),('SC','Thachar'),('SC','Thandan'),('SC','Vaduka'),('SC','Valmiki'),('SC','Valuvan'),('SC','Vettuvan'),('ST','Bhil'),('ST','Naika'),('Sindhi','Amil'),('Sindhi','Baibhand'),('Sindhi','Bhanusali'),('Sindhi','Bhatia'),('Sindhi','Chhapru'),('Sindhi','Hydrabadi'),('Sindhi','Larai'),('Sindhi','Larkan'),('Sindhi','Larkana'),('Sindhi','Lohana'),('Sindhi','Rohiri'),('Sindhi','Sahiti'),('Sindhi','Sakkhar'),('Sindhi','Sehwani'),('Sindhi','Shikarpuri'),('Sindhi','Thatai'),('Vaishnav','Bairagi Swami'),('Vaishnav','Vaishnav Bhatia'),('Vaishnava','Brahmin Sri Vaishnava'),('Vaishnava','Chhatada Sri Vaishnava'),('Vaishnava','Sri Vaishnava'),('Vellalar','Aaru Nattu Vellala'),('Vellalar','Cherakula Vellalar'),('Vellalar','Devendra Kula Vellalar'),('Vellalar','Isai Vellalar'),('Vellalar','Karkathar'),('Vellalar','Saiva Vellalar'),('Vellalar','Sozhiya Vellalar'),('Vellalar','Vellalar All'),('Yadav Yadava','Aheer Ahir'),('Yadav Yadava','Daddi'),('Yadav Yadava','Das'),('Yadav Yadava','Dhador'),('Yadav Yadava','Erragola'),('Yadav Yadava','Gadri Gadariya'),('Yadav Yadava','Gauda'),('Yadav Yadava','Gawli'),('Yadav Yadava','Goal Gola Golla'),('Yadav Yadava','Gop Gopal Gopala'),('Yadav Yadava','Goriya'),('Yadav Yadava','Gwala'),('Yadav Yadava','Gwalvanshi'),('Yadav Yadava','Jadav'),('Yadav Yadava','Kohar'),('Yadav Yadava','Korna'),('Yadav Yadava','Krishnauth'),('Yadav Yadava','Kurudas Gollas'),('Yadav Yadava','Kuruma'),('Yadav Yadava','Mandal'),('Yadav Yadava','Manjrauth'),('Yadav Yadava','Nandvanshi'),('Yadav Yadava','Pakanati'),('Yadav Yadava','Puja'),('Yadav Yadava','Raut'),('Yadav Yadava','Suryavanshi'),('Yadav Yadava','Thethwar'),('Yadav Yadava','Yadav Golla'),('Yadav Yadava','Yaduvanshi');
/*!40000 ALTER TABLE `subcaste` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-26 21:54:25

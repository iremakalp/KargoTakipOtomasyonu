-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kargo
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `adres`
--

DROP TABLE IF EXISTS `adres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adres` (
  `adres_İd` int NOT NULL AUTO_INCREMENT,
  `İl` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ilce` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Acik_adres` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`adres_İd`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adres`
--

LOCK TABLES `adres` WRITE;
/*!40000 ALTER TABLE `adres` DISABLE KEYS */;
INSERT INTO `adres` VALUES (1,'Kocaeli','İzmit','Yahyakaptan Mahallesi ArastaPark AVM yanı No:35'),(2,'Kocaeli','Başiskele','Barbaros Mahallesi Pınar Caddesi No:41'),(3,'İstanbul','Kadıköy','Rasimpaşa Mahallesi Nüshetefendi Sokak No:12'),(4,'Ankara','Keçiören','Mustafa Asım Köksal Cad. No:06');
/*!40000 ALTER TABLE `adres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alici`
--

DROP TABLE IF EXISTS `alici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alici` (
  `Alici_No` int NOT NULL AUTO_INCREMENT,
  `Adi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Soyadi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GSM` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `E_Posta` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Adres` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Alici_No`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alici`
--

LOCK TABLES `alici` WRITE;
/*!40000 ALTER TABLE `alici` DISABLE KEYS */;
INSERT INTO `alici` VALUES (20,'Sedef','Denis','05354562536','sedefdenıs@gmail.com','Yahyakaptan,Salkım Söğüt Cd.,41050 İzmit/Kocaeli'),(21,'Ali ','Asaf','05357852362','aliasaf@gmail.com','Kazlıçeşme, Kennedy Cd., 34020 Zeytinburnu/İstanbul'),(22,'emir','göle','05354122013','emir_gole@gmail.com','Fikirtepe, Yıldırım Sk. No:14, 34720 Kadıköy/İstanbul'),(23,'anna','angel','11111111','annangle@gmail.com','Via della Certosa, 1, 53100 Castelnuovo Berardenga SI, İtalya'),(24,'eren','gezgin','05321235610','eren_gezgin@gmail.com','Eğitim, Murat Paşa Cd. 17-19, 34722 Kadıköy/İstanbul');
/*!40000 ALTER TABLE `alici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alici_sube_olur`
--

DROP TABLE IF EXISTS `alici_sube_olur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alici_sube_olur` (
  `olur_İd` int NOT NULL AUTO_INCREMENT,
  `sube_İd` int NOT NULL,
  `Alici_No` int NOT NULL,
  PRIMARY KEY (`olur_İd`),
  KEY `sube_İd` (`sube_İd`),
  KEY `Alici_No` (`Alici_No`),
  CONSTRAINT `alici_sube_olur_ibfk_1` FOREIGN KEY (`sube_İd`) REFERENCES `sube` (`sube_İd`),
  CONSTRAINT `alici_sube_olur_ibfk_2` FOREIGN KEY (`Alici_No`) REFERENCES `alici` (`Alici_No`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alici_sube_olur`
--

LOCK TABLES `alici_sube_olur` WRITE;
/*!40000 ALTER TABLE `alici_sube_olur` DISABLE KEYS */;
INSERT INTO `alici_sube_olur` VALUES (1,1,20);
/*!40000 ALTER TABLE `alici_sube_olur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fatura`
--

DROP TABLE IF EXISTS `fatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fatura` (
  `Fatura_no` int NOT NULL AUTO_INCREMENT,
  `Fatura_Tipi` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Gonderi_no` int NOT NULL,
  `Gonderen_No` int NOT NULL,
  `Toplam_Ucret` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Fatura_no`),
  KEY `Gonderi_no` (`Gonderi_no`),
  KEY `Gonderen_No` (`Gonderen_No`),
  CONSTRAINT `fatura_ibfk_1` FOREIGN KEY (`Gonderi_no`) REFERENCES `kargo` (`Gonderi_no`),
  CONSTRAINT `fatura_ibfk_2` FOREIGN KEY (`Gonderen_No`) REFERENCES `gonderen` (`Gonderen_No`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fatura`
--

LOCK TABLES `fatura` WRITE;
/*!40000 ALTER TABLE `fatura` DISABLE KEYS */;
INSERT INTO `fatura` VALUES (1,'Satış',3,11,'2,13333333333333'),(2,'Satış',5,11,'200'),(3,'Satış',6,12,'80'),(4,'Satış',1,10,'1,6'),(5,'Satış',2,11,'16'),(6,'Satış',4,10,'8');
/*!40000 ALTER TABLE `fatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firma`
--

DROP TABLE IF EXISTS `firma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firma` (
  `firma_İd` int NOT NULL AUTO_INCREMENT,
  `firma_Adi` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`firma_İd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firma`
--

LOCK TABLES `firma` WRITE;
/*!40000 ALTER TABLE `firma` DISABLE KEYS */;
INSERT INTO `firma` VALUES (1,'SİBA');
/*!40000 ALTER TABLE `firma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fiyatlar`
--

DROP TABLE IF EXISTS `fiyatlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fiyatlar` (
  `fiyat_İd` int NOT NULL AUTO_INCREMENT,
  `kgds` int NOT NULL,
  `urun` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mesafe` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ucret` int NOT NULL,
  PRIMARY KEY (`fiyat_İd`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fiyatlar`
--

LOCK TABLES `fiyatlar` WRITE;
/*!40000 ALTER TABLE `fiyatlar` DISABLE KEYS */;
INSERT INTO `fiyatlar` VALUES (1,1,'Evrak','Yurt İçi',4),(2,1,'Evrak','Yurt Dışı',12),(3,1,'Koli','Yurt İçi',8),(4,1,'Koli','Yurt Dışı',30);
/*!40000 ALTER TABLE `fiyatlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonderen`
--

DROP TABLE IF EXISTS `gonderen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gonderen` (
  `Gonderen_No` int NOT NULL AUTO_INCREMENT,
  `Adi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Soyadi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `GSM` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `E_posta` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Adres` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sifre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Gonderen_No`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonderen`
--

LOCK TABLES `gonderen` WRITE;
/*!40000 ALTER TABLE `gonderen` DISABLE KEYS */;
INSERT INTO `gonderen` VALUES (10,'Mert',' ongun','05050238912','mertong@gmail.com','Alikahya Atatürk Mah. Kavanium Evleri 815.Ada İzmit/Kocaeli','123456'),(11,'Hazal',' bulut','05351456232','hzlblt@gmail.com','Güzelyurt,Kuzey Ankara 4.Etap Küme Evleri,06300 Keçiören/Ankara','hazal.1'),(12,'Hasan ali','kaldırım','05357235614','hak12@gmail.com','Eğitim, Abdi Bey Sk. No:12, 34722 Kadıköy/İstanbul','1907FB');
/*!40000 ALTER TABLE `gonderen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonderen_sube_vardır`
--

DROP TABLE IF EXISTS `gonderen_sube_vardır`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gonderen_sube_vardır` (
  `var_İd` int NOT NULL AUTO_INCREMENT,
  `gonderen_No` int NOT NULL,
  `sube_İd` int NOT NULL,
  PRIMARY KEY (`var_İd`),
  KEY `gonderen_No` (`gonderen_No`),
  KEY `sube_İd` (`sube_İd`),
  CONSTRAINT `gonderen_sube_vardır_ibfk_1` FOREIGN KEY (`gonderen_No`) REFERENCES `gonderen` (`Gonderen_No`),
  CONSTRAINT `gonderen_sube_vardır_ibfk_2` FOREIGN KEY (`sube_İd`) REFERENCES `sube` (`sube_İd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonderen_sube_vardır`
--

LOCK TABLES `gonderen_sube_vardır` WRITE;
/*!40000 ALTER TABLE `gonderen_sube_vardır` DISABLE KEYS */;
INSERT INTO `gonderen_sube_vardır` VALUES (1,11,1);
/*!40000 ALTER TABLE `gonderen_sube_vardır` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iadetalep`
--

DROP TABLE IF EXISTS `iadetalep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iadetalep` (
  `talep_İd` int NOT NULL AUTO_INCREMENT,
  `Alici_No` int NOT NULL,
  `sube_İd` int NOT NULL,
  `islem_tarihi` date NOT NULL,
  `Aciklama` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`talep_İd`),
  KEY `Alici_No` (`Alici_No`),
  KEY `sube_İd` (`sube_İd`),
  CONSTRAINT `iadetalep_ibfk_1` FOREIGN KEY (`Alici_No`) REFERENCES `alici` (`Alici_No`),
  CONSTRAINT `iadetalep_ibfk_2` FOREIGN KEY (`sube_İd`) REFERENCES `sube` (`sube_İd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iadetalep`
--

LOCK TABLES `iadetalep` WRITE;
/*!40000 ALTER TABLE `iadetalep` DISABLE KEYS */;
INSERT INTO `iadetalep` VALUES (1,20,3,'2027-05-20','Paket hasarlı geldi.');
/*!40000 ALTER TABLE `iadetalep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kargo`
--

DROP TABLE IF EXISTS `kargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kargo` (
  `Gonderi_no` int NOT NULL AUTO_INCREMENT,
  `Gonderen_No` int NOT NULL,
  `Alici_No` int NOT NULL,
  `fiyat_İd` int NOT NULL,
  `kurye_İd` int NOT NULL,
  `Teslimat_Turu` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Odeme_sekli` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Odeme_tipi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Islem_tarihi` date NOT NULL,
  `Durum` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Gonderi_no`),
  KEY `Gonderen_No` (`Gonderen_No`),
  KEY `Alici_No` (`Alici_No`),
  KEY `fiyat_İd` (`fiyat_İd`),
  KEY `kurye_İd` (`kurye_İd`),
  CONSTRAINT `kargo_ibfk_1` FOREIGN KEY (`Gonderen_No`) REFERENCES `gonderen` (`Gonderen_No`),
  CONSTRAINT `kargo_ibfk_2` FOREIGN KEY (`Alici_No`) REFERENCES `alici` (`Alici_No`),
  CONSTRAINT `kargo_ibfk_3` FOREIGN KEY (`fiyat_İd`) REFERENCES `fiyatlar` (`fiyat_İd`),
  CONSTRAINT `kargo_ibfk_4` FOREIGN KEY (`kurye_İd`) REFERENCES `kurye` (`kurye_İd`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kargo`
--

LOCK TABLES `kargo` WRITE;
/*!40000 ALTER TABLE `kargo` DISABLE KEYS */;
INSERT INTO `kargo` VALUES (1,10,20,1,4,'Adrese Teslim','Nakit','Gönderici Ödemeli','2020-05-20','Yola çıktı'),(2,11,20,3,3,'Adrese Teslim','Kredi Kartı','Gönderici Ödemeli','2020-05-20','Yola çıktı'),(3,11,21,1,1,'Adrese Teslim','Nakit','Gönderici Ödemeli','2020-05-27','Şubede'),(4,10,22,3,3,'Şubeye Teslim','Kredi Kartı','Gönderici Ödemeli','2020-05-24','Alıcıya teslim edildi'),(5,11,23,4,2,'Adrese Teslim','Kredi Kartı','Gönderici Ödemeli','2020-05-20','Gönderici Şubesinde'),(6,12,24,3,3,'Adrese Teslim','Kredi Kartı','Gönderici Ödemeli','2020-05-27','Şubede');
/*!40000 ALTER TABLE `kargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kurye`
--

DROP TABLE IF EXISTS `kurye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kurye` (
  `kurye_İd` int NOT NULL AUTO_INCREMENT,
  `kurye_Adi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Kurye_Soyadi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sube_İd` int NOT NULL,
  PRIMARY KEY (`kurye_İd`),
  KEY `sube_İd` (`sube_İd`),
  CONSTRAINT `kurye_ibfk_1` FOREIGN KEY (`sube_İd`) REFERENCES `sube` (`sube_İd`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kurye`
--

LOCK TABLES `kurye` WRITE;
/*!40000 ALTER TABLE `kurye` DISABLE KEYS */;
INSERT INTO `kurye` VALUES (1,'Fatih','Özkul',1),(2,'Metin','Koç',2),(3,'Emre','Can',3),(4,'Enes','Gürdal',1),(5,'Aziz','Kiraz',3),(6,'Tuğrul','Kaya',2),(7,'Efe','Demir',4),(8,'Hasan','Alkan',4);
/*!40000 ALTER TABLE `kurye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sube`
--

DROP TABLE IF EXISTS `sube`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sube` (
  `sube_İd` int NOT NULL AUTO_INCREMENT,
  `sube_Adi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `firma_İd` int NOT NULL,
  `adres_İd` int NOT NULL,
  PRIMARY KEY (`sube_İd`),
  KEY `firma_İd` (`firma_İd`),
  KEY `adres_İd` (`adres_İd`),
  CONSTRAINT `sube_ibfk_1` FOREIGN KEY (`firma_İd`) REFERENCES `firma` (`firma_İd`),
  CONSTRAINT `sube_ibfk_2` FOREIGN KEY (`adres_İd`) REFERENCES `adres` (`adres_İd`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sube`
--

LOCK TABLES `sube` WRITE;
/*!40000 ALTER TABLE `sube` DISABLE KEYS */;
INSERT INTO `sube` VALUES (1,'İzmit Şubesi',1,1),(2,'Başiskele Şubesi',1,2),(3,'Kadıköy Şubesi',1,3),(4,'Keçiören Şubesi',1,4);
/*!40000 ALTER TABLE `sube` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonetici`
--

DROP TABLE IF EXISTS `yonetici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yonetici` (
  `yonetici_İd` int NOT NULL AUTO_INCREMENT,
  `Adi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Soyadi` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `E_posta` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Sifre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`yonetici_İd`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonetici`
--

LOCK TABLES `yonetici` WRITE;
/*!40000 ALTER TABLE `yonetici` DISABLE KEYS */;
INSERT INTO `yonetici` VALUES (1,'i̇rem','akalp','irema@gmail.com','irem123');
/*!40000 ALTER TABLE `yonetici` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-29 22:56:06

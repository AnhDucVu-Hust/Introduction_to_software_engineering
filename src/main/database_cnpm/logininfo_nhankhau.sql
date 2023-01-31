-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: logininfo
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `nhankhau`
--

DROP TABLE IF EXISTS `nhankhau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhankhau` (
  `idNhanKhau` int(11) NOT NULL AUTO_INCREMENT,
  `hoTen` varchar(30) NOT NULL,
  `biDanh` varchar(30) DEFAULT NULL,
  `ngaySinh` date NOT NULL,
  `noiSinh` varchar(30) NOT NULL,
  `gioiTinh` varchar(30) NOT NULL,
  `nguyenQuan` varchar(30) NOT NULL,
  `danToc` varchar(30) NOT NULL,
  `tonGiao` varchar(30) NOT NULL,
  `quocTich` varchar(30) NOT NULL,
  `ngheNghiep` varchar(30) DEFAULT NULL,
  `noiLamViec` varchar(30) DEFAULT NULL,
  `cmnd_cccd` varchar(30) DEFAULT NULL,
  `chuyenDenNgay` date NOT NULL,
  `noiThuongTruTruoc` varchar(255) DEFAULT NULL,
  `trangThai` varchar(255) NOT NULL,
  PRIMARY KEY (`idNhanKhau`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhankhau`
--

LOCK TABLES `nhankhau` WRITE;
/*!40000 ALTER TABLE `nhankhau` DISABLE KEYS */;
INSERT INTO `nhankhau` VALUES (1,'Truong Dang Bien',NULL,'2002-01-01','Thái Bình','Nam','Thái Bình','Kinh','Không','Viet Nam','Sinh viên',NULL,'012345678901','2022-01-01','Thái Bình','Thuong tru'),(4,'Le Dang Minh',NULL,'2023-01-09','Phu Quoc','Nam','Phu Quoc','Kinh','Khong','Viet Nam',NULL,NULL,'02319299','2023-01-02','','Qua doi');
/*!40000 ALTER TABLE `nhankhau` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-31 18:55:52

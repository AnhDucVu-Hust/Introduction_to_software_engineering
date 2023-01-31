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
-- Table structure for table `hokhau`
--

DROP TABLE IF EXISTS `hokhau`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hokhau` (
  `idHoKhau` int(11) NOT NULL AUTO_INCREMENT,
  `idChuHo` int(11) NOT NULL,
  `tinhThanhPho` varchar(30) NOT NULL,
  `quanHuyen` varchar(30) NOT NULL,
  `phuongXa` varchar(30) NOT NULL,
  `diaChi` varchar(255) NOT NULL,
  `ngayCap` date NOT NULL,
  `trangThai` varchar(255) NOT NULL,
  PRIMARY KEY (`idHoKhau`),
  KEY `FK_chuHo` (`idChuHo`),
  CONSTRAINT `FK_chuHo` FOREIGN KEY (`idChuHo`) REFERENCES `nhankhau` (`idNhanKhau`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hokhau`
--

LOCK TABLES `hokhau` WRITE;
/*!40000 ALTER TABLE `hokhau` DISABLE KEYS */;
INSERT INTO `hokhau` VALUES (2,4,'Thanh Hoa','Hai Ba Trung','Dong Tam','402 Bach Mai-Dong Tam-Hai Ba Trung-Ha Noi','2023-01-02','Binh thuong'),(19,1,'Bac Ninh','Que Vo','Thi Tran Pho Moi','So nha 80-Thi Tran Pho Moi-Que Vo-Bac Ninh','2001-02-05','Binh thuong');
/*!40000 ALTER TABLE `hokhau` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-31 18:55:54

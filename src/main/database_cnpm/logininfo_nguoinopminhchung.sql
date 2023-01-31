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
-- Table structure for table `nguoinopminhchung`
--

DROP TABLE IF EXISTS `nguoinopminhchung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoinopminhchung` (
  `idNguoiNop` int(11) NOT NULL,
  `idDip` int(11) NOT NULL,
  `idNguoiNhan` int(11) NOT NULL,
  `linkMinhChung` varchar(255) NOT NULL,
  `ngayDangKy` date NOT NULL,
  `trangThai` varchar(30) NOT NULL,
  `idPhanThuong` int(11) DEFAULT NULL,
  `thanhTich` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idNguoiNop`,`idDip`),
  KEY `FK_idNguoiNhan` (`idNguoiNhan`),
  KEY `FK_idDip` (`idDip`),
  CONSTRAINT `FK_idDip` FOREIGN KEY (`idDip`) REFERENCES `diptraothuong` (`idDip`),
  CONSTRAINT `FK_idNguoiNhan` FOREIGN KEY (`idNguoiNhan`) REFERENCES `nhankhau` (`idNhanKhau`),
  CONSTRAINT `FK_idNguoiNop` FOREIGN KEY (`idNguoiNop`) REFERENCES `nhankhau` (`idNhanKhau`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoinopminhchung`
--

LOCK TABLES `nguoinopminhchung` WRITE;
/*!40000 ALTER TABLE `nguoinopminhchung` DISABLE KEYS */;
INSERT INTO `nguoinopminhchung` VALUES (1,1,1,'D:/anh.jpg','2023-01-29','Cho duyet',1,NULL);
/*!40000 ALTER TABLE `nguoinopminhchung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-31 18:55:51

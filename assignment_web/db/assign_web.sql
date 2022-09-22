-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: lunu_laptop_store
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `ADMIN_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (3);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_id` int unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(256) NOT NULL,
  `website_link` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'ASUS','https://www.asus.com/vn/','support@asus.com','123'),(2,'Dell','https://www.dell.com/','support@dell.com','456'),(3,'Lenovo','https://www.lenovo.com/','support@lenovo.com','789');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `qty` int NOT NULL,
  `PRODUCT_id` int unsigned NOT NULL,
  `CUSTOMER_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_ibfk_1` (`CUSTOMER_id`),
  KEY `PRODUCT_id` (`PRODUCT_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`CUSTOMER_id`) REFERENCES `customer` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`PRODUCT_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (27,8,5,2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `user_id` int unsigned NOT NULL,
  `customer_name` varchar(256) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `CUSTOMER_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2,'lưu Nguyễn','0919842020','goriummaximum@gmail.com','Abc'),(8,'Bình','0931565433','binhroninduc@gmail.com','96/4, 9 street, Linh Tay Ward, Thu Duc District, Ho Chi Minh City');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_info`
--

DROP TABLE IF EXISTS `email_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_info` (
  `email_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_info`
--

LOCK TABLES `email_info` WRITE;
/*!40000 ALTER TABLE `email_info` DISABLE KEYS */;
INSERT INTO `email_info` VALUES (1,'binhroninduc@gmail.com'),(2,'binh@gmail.com'),(3,'binhlee@gmail.com'),(4,'binhlee123@gmail.com');
/*!40000 ALTER TABLE `email_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(256) NOT NULL,
  `qty` int NOT NULL,
  `updated_date` datetime NOT NULL,
  `USER_id` int NOT NULL,
  `PRODUCT_id` int NOT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Purchase',46,'2021-11-17 00:00:00',0,0),(2,'Purchase',8,'2021-11-17 00:00:00',0,0),(3,'Purchase',9,'2021-11-17 00:00:00',0,0),(4,'Purchase',2,'2021-11-17 00:00:00',0,0),(5,'Purchase',4,'2021-11-17 00:00:00',0,0),(6,'Purchase',2,'2021-11-17 00:00:00',0,0),(7,'Purchase',2,'2021-11-21 00:00:00',0,0),(8,'Purchase',2,'2021-11-21 00:00:00',0,0),(9,'Purchase',2,'2021-11-22 00:00:00',0,0),(27,'Add Product',100,'2021-11-22 17:37:24',0,0),(28,'Add Product',100,'2021-11-22 17:41:31',0,0),(29,'Add Product',100,'2021-11-22 17:43:21',0,0),(30,'Add Product',100,'2021-11-22 17:44:38',0,0),(31,'Add Product',90,'2021-11-23 09:44:01',0,0),(32,'Update Quantity',100,'2021-11-23 10:48:32',0,0),(33,'Add Product',100,'2021-11-23 12:27:29',0,0),(34,'Add Product',90,'2021-11-23 14:03:39',0,0),(35,'Add Product',90,'2021-11-23 14:24:41',0,0),(36,'Add Product',50,'2021-11-23 14:27:36',0,0),(37,'Add Product',100,'2021-11-23 14:33:44',0,0),(38,'Add Product',100,'2021-11-23 14:38:27',0,0),(39,'Add Product',20,'2021-11-23 14:42:54',0,0),(42,'Add Product',90,'2021-11-23 20:12:51',0,0);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(256) NOT NULL,
  `color` varchar(256) DEFAULT NULL,
  `CPU` varchar(256) DEFAULT NULL,
  `RAM` varchar(256) DEFAULT NULL,
  `GPU` varchar(256) DEFAULT NULL,
  `storage` varchar(256) DEFAULT NULL,
  `monitor` varchar(256) DEFAULT NULL,
  `battery` varchar(256) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `size` varchar(256) DEFAULT NULL,
  `product_qty` int NOT NULL,
  `product_price` float NOT NULL,
  `product_photo_link` varchar(256) DEFAULT NULL,
  `status` varchar(256) NOT NULL,
  `USAGE_TYPE_id` int unsigned DEFAULT NULL,
  `BRAND_id` int unsigned NOT NULL,
  `ADMIN_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `BRAND_id` (`BRAND_id`),
  KEY `USAGE_TYPE_id` (`USAGE_TYPE_id`),
  KEY `PRODUCT_ibfk_3` (`ADMIN_id`),
  CONSTRAINT `PRODUCT_ibfk_1` FOREIGN KEY (`BRAND_id`) REFERENCES `brand` (`brand_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PRODUCT_ibfk_2` FOREIGN KEY (`USAGE_TYPE_id`) REFERENCES `usage_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PRODUCT_ibfk_3` FOREIGN KEY (`ADMIN_id`) REFERENCES `admin` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'ASUS ROG Zephyrus G14 GA401QH-HZ035T 90NR07B-M00400','black','AMD Ryzen 7 5800HS ','8GB Onboard DDR4','NVIDIA GeForce GTX 1650 4GB GDDR6 / AMD Radeon Graphics','512GB SSD M.2 NVMe','14 IPS (1920 x 1080), 144Hz','4 cell 76 Wh',2,'14',196,28990000,'upload/1.png','A',NULL,1,3),(3,'ASUS UX425EA-KI439T 90NB0SM1-M09310','black','Intel Core i7-1165G7','16GB Onboard LPDDR4X 2666MHz','Intel Iris Xe Graphics','512GB SSD M.2 NVMe / ','4 IPS','4 cell 67 Wh',1,'14',100,29990000,'upload/2.png','A',NULL,1,3),(4,'ASUS ROG Flow GV301QC-K6029T 90NR04G5-M00510','black','AMD Ryzen 9 5980HS ',' 32GB (16GB + 16GB Onboard) LPDDR4X 2666MHz ','NVIDIA GeForce RTX 3050 4GB GDDR6 / AMD Radeon Graphics','1TB SSD M.2 NVMe / ','13.4 IPS','4 cell 62Wh',1,'13.4',0,78990000,'upload/3.png','U',NULL,1,3),(5,'ASUS ROG Zephyrus GX703HS-K4016T 90NR06F1-M00290','black','Intel Core i9-11900H','1 x 16GB, 16GB Onboard DDR4 3200MHz ','NVIDIA GeForce RTX 3080 16GB GDDR6 / Intel UHD Graphics','2TB SSD M.2 NVMe / ','IPS (2560 x 1440), 165Hz','4 cell 90 Wh',3,'17.3',0,98990000,'upload/4.png','U',NULL,1,3),(6,'ASUS ROG Zephyrus G14 Alan Walker Edition GA401QEC-K2064T 90NR05R7-M02570','black','AMD Ryzen 9 5900HS','16GB (8GB + 8GB Onboard) DDR4 3200MHz','NVIDIA GeForce RTX 3050Ti 4GB GDDR6 / AMD Radeon Graphics','1TB SSD M.2 NVMe / ','IPS (2560 x 1440), 120Hz','4 cell 76 Wh Pin liền',2,'14',100,49990000,'upload/5.png','A',NULL,1,3),(7,'ASUS TUF Gaming FX506HCB-HN141W','black','Intel Core i7-11800H','8GB DDR4 3200MHz','NVIDIA GeForce RTX 3050 4GB GDDR6 / Intel UHD Graphics','512GB SSD M.2 NVMe /','IPS (1920 x 1080), 144Hz','3 cell 48Wh',2,'15.6',50,28490000,'upload/6.png','A',NULL,1,3),(8,'ASUS Vivobook X415MA-BV088T','white','Intel Pentium Silver N5030','1 x 4GB DDR4 3200MHz','Intel UHD Graphics 605','256GB SSD M.2 NVMe /','1366 x 768','2 cell 37 Wh',1,'14',200,9490000,'upload/7.png','A',NULL,1,3),(9,'Dell Vostro 14 3405 V4R53500U001W','grey','AMD Ryzen 5 3500U','1 x 4GB DDR4 2400MHz','AMD Radeon Vega 8 Graphics','256GB SSD M.2 NVMe /','WVA (1920 x 1080)','3 cell 42 Wh',2,'14',291,16190000,'upload/8.png','A',NULL,2,3),(10,'Dell Vostro 14 3405 V4R53500U003W','grey','AMD Ryzen 5 3500U','1 x 8GB DDR4 2400MHz','AMD Radeon Vega 8 Graphics','512GB SSD M.2 NVMe /','WVA (1920 x 1080)','3 cell 42Wh',2,'14',300,18090000,'upload/9.png','A',NULL,2,3),(11,'Dell Alienware M15 R6 (P109F001BBL) P109F001','black','Intel Core i7-11800H ','2 x 16GB DDR4 3200MHz','NVIDIA GeForce RTX 3060 6GB GDDR6 / Intel UHD Graphics','1TB SSD M.2 NVMe /','WVA (1920 x 1080), 165Hz','6 cel 86Wh',3,'15.6',20,59990000,'upload/10.png','A',NULL,2,3),(12,'Dell Inspiron 15 3505 3505-Y1N1T5','grey','AMD Ryzen 5 3500U','1 x 8GB DDR4 3200MHz','AMD Radeon Vega 8 Graphics','512GB SSD M.2 NVMe /','(1920 x 1080)','3 cell 42Wh',2,'15.6',80,19690000,'upload/11.png','A',NULL,2,3),(13,'Lenovo Yoga Slim 9 14ITL5 82D1004JVN','black','Intel Core i7-1165G7','16GB Onboard LPDDR4X 4266MHz','Intel Iris Xe Graphics','1TB SSD M.2 NVMe /','IPS (3840 x 2160)','4 cell 63 Wh',1,'14',46,49990000,'upload/12.png','A',NULL,3,3),(14,'Dell Inspiron 15 3511 Intel gen 11','white','Intel Core i3 1115G4','4GB DDR4 bus 2666 MHz','Intel UHD Graphics','256GB m.2 NVMe','WVA (1920 x 1080)','41Wh',2,'14',100,15290000,'upload/dellgen11.png','A',NULL,2,3),(15,' DELL GAMING G5 5500','black','Intel(R) Core( TM) i7-10750H ','8GB (2x4Gb) DDR4-2933MHz','NVIDIA(R) GeForce(R) GTX 1660 Ti 6GB GDDR6','512GB M.2 PCIe NVMe Solid Stat e Drive','WVA (1920 x 1080), 165Hz','4 cell 63 Wh',NULL,'15.6',100,31290000,'upload/dell500.jpg','A',NULL,2,3),(16,'Dell Gaming G15 5511','black','Intel Core i7-11800H','8GB (2x4GB) DDR4 3200MHz','NVIDIA(R) GeForce RTX 3050 4GB GDDR6','512GB M.2 PCIe NVMe SSD','WVA (1920 x 1080), 165Hz','6 cel 86Wh',2,'15.6',100,33990000,'upload/dellg15.jpg','A',NULL,2,3),(17,'Lenovo Gaming Legion 5 15ACH6','black','AMD Ryzen 7 5800H 3.2GHz up to 4.4GHz 16MB','8GB','NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1500 / 1740MHz, TGP 95W','512GB SSD M.2 2280 PCIe 3.0x4 NVMe','WVA (1920 x 1080), 165Hz','4 Cell 60 WHr',2,'15.6',100,29410000,'upload/lenovo15.jpg','A',NULL,3,3),(18,'Lenovo Ideapad Gaming 3','black','	Intel® Core™ i7-10750H','8GB','NVIDIA GEFORCE GTX 1650Ti 4GB','512GB SSD M.2 NVMe','IPS (3840 x 2160)','3Cell 45WH',2,'15.6',90,22290000,'upload/lenovogaming3.jpg','A',NULL,3,3),(19,'Lenovo Ideapad 3','white','Intel® Core™ i3-1115G4','8GB','Integrated Intel UHD Graphics','512GB SSD M.2 2242 PCIe 3.0x4 NVMe','IPS (3840 x 2160)','2Cell, 38WH',1,'14',75,14590000,'upload/lenovoideapad3.jpg','D',NULL,3,3),(20,'Lenovo Thinkbook 13s G2','white','Intel Core i7-1165G7','8GB','Intel Iris Xe Graphics','512GB SSD','IPS (3840 x 2160)','4 Cell, 56Wh',1,'	13.3',80,21990000,'upload/lenovo13s.jpg','A',NULL,3,3),(21,'Lenovo Yoga 6','black','AMD Ryzen 7 5700U','8GB','AMD Radeon Graphics','512GB SSD M.2 2242 PCIe 3.0x4 NVMe','WVA (1920 x 1080)','60Wh',1,'13.3',90,22890000,'upload/lenovoyoga6.jpg','A',NULL,3,3),(22,'Lenovo Legion Y520 Core 7th Gen','black','7th Intel® Core™ i7, 7700HQ, 2.8GHz, 4, 3.8GHz, 8 GT/s DMI','16GB, DDR4, 64GB','GDDR5 NVIDIA® GeForce® GTX 1050','1 TB, HDD','WVA (1920 x 1080), 165Hz','3-cell',2,'15.6 ',100,33690000,'upload/lenovoy520.png','A',NULL,3,3),(27,'Asus ROG Strix G15','white','Intel Core i5-10300H 2.5GHz up to 4.5GHz 8MB','8GB DDR4 2933MHz ','NVIDIA GeForce GTX 1650 4GB GDDR6','512GB SSD M.2 PCIE G3X2','15,6 \"FHD (1920 x 1080) IPS','3 Cell 48WHr',2,'14',50,23790000,'upload/asusrog5_1637639065.png','D',NULL,1,3),(29,'Laptop Lenovo IdeaPad 5 Pro 16ACH6','white','AMD Ryzen™ R5-5600H Processor','8GB DDR4 onboard','AMD Radeon Graphics + NVIDIA GeForce RTX 1650','512Gb SSD','IPS WQXGA','4 Cell 75WHr',2,'16',70,24990000,'upload/ideapad5_1637651019.jpg','D',NULL,3,3),(30,'Asus Vivobook X515EA-BQ1004T ','white','Intel Core i3-1115G4','4 GB, DDR4','Intel UHD Graphics','4 GB, DDR4','1920 x 1080 Pixel, IPS, 60 Hz, 250 nits, Anti-glare LED-backlit','3 Cell 48WHr',2,'15.6',80,14199000,'upload/asusvivoR7_1637652281.jpg','A',NULL,1,3),(31,'Asus Zenbook Flip UX363EA-HP532T','black','Intel Core i5-1135G7','8 GB, LPDDR4X, 4266 MHz','Intel Iris Xe Graphics','SSD 512 GB','1920 x 1080 Pixel, OLED, 60 Hz, 500 nits, OLED','3 Cell 48WHr',1,'15.6',50,27999000,'upload/zenbookflip_1637652456.png','D',NULL,1,3),(32,'Dell Vostro V5515 R3 5300U','white','AMD Ryzen 3-5300U','8 GB, DDR4, 3200 MHz','AMD Radeon Graphics','8 GB, DDR4, 3200 MHz','1920 x 1080 Pixel','4 cell',1,'15.6',100,18599000,'upload/dellvotro_1637652824.png','A',NULL,2,3),(33,'Dell Latitude 7300 I7 8665U','black','Intel Core i7-86650U','8GB, DDR4 Bus 2400MHz','Intel UHD Graphics 620',' 256Gb - SSD','FHD (1920 x 1080)','4 cell',1,'14',100,21190000,'upload/delllatitude_1637653107.png','D',NULL,2,3),(34,'ASUS GAMING ROG STRIX SCAR G733QS-HG021T','black','AMD Ryzen R9-5900HX Processor','2 x 16GB DDR4/ 3200MHz','NVIDIA® GeForce RTX™ 3080 16GB','1TB SSD PCIe (M.2 2280)','HD (1920 x 1080) IPS-level panel','4 cell',3,'17.3',20,73000500,'upload/asuspro_1637653374.png','D',NULL,1,3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_BEFORE_INSERT` BEFORE INSERT ON `product` FOR EACH ROW BEGIN
	if (new.product_qty <= 0 ) then
		set new.product_qty = 0;
		set new.status  = 'U';
    end if;
END */;;
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
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `product_BEFORE_UPDATE` BEFORE UPDATE ON `product` FOR EACH ROW BEGIN
    if (new.product_qty <= 0 ) then
		set new.product_qty = 0;
		set new.status  = 'U';
    end if;
    if (new.product_qty > 0 and old.status = 'D') then
		set  new.status = 'D';
    end if;
    if (new.product_qty > 0 and old.status = 'U') then
		set  new.status = 'A';
    end if;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int unsigned NOT NULL AUTO_INCREMENT,
  `sale_total_price` float NOT NULL,
  `sale_date` date NOT NULL,
  `CUSTOMER_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `SALES_ibfk_1` (`CUSTOMER_id`),
  CONSTRAINT `SALES_ibfk_1` FOREIGN KEY (`CUSTOMER_id`) REFERENCES `customer` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (2,197980000,'2021-11-17',2),(3,215960000,'2021-11-21',2),(4,157980000,'2021-11-22',NULL),(5,0,'2021-11-22',NULL),(6,0,'2021-11-22',NULL),(7,0,'2021-11-22',NULL),(8,0,'2021-11-22',NULL),(9,0,'2021-11-22',NULL);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_item`
--

DROP TABLE IF EXISTS `sales_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_item` (
  `sale_item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `sale_qty` int NOT NULL,
  `sale_price` float NOT NULL,
  `SALES_id` int unsigned NOT NULL,
  `PRODUCT_id` int unsigned DEFAULT NULL,
  `product_name` varchar(256) NOT NULL,
  PRIMARY KEY (`sale_item_id`),
  KEY `SALES_id` (`SALES_id`),
  KEY `SALES_ITEM_ibfk_2` (`PRODUCT_id`),
  CONSTRAINT `SALES_ITEM_ibfk_1` FOREIGN KEY (`SALES_id`) REFERENCES `sales` (`sale_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `SALES_ITEM_ibfk_2` FOREIGN KEY (`PRODUCT_id`) REFERENCES `product` (`product_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_item`
--

LOCK TABLES `sales_item` WRITE;
/*!40000 ALTER TABLE `sales_item` DISABLE KEYS */;
INSERT INTO `sales_item` VALUES (6,2,98990000,2,5,'ASUS ROG Zephyrus GX703HS-K4016T 90NR06F1-M00290'),(7,2,78990000,3,4,'ASUS ROG Flow GV301QC-K6029T 90NR04G5-M00510'),(8,2,28990000,3,2,'ASUS ROG Zephyrus G14 GA401QH-HZ035T 90NR07B-M00400'),(9,2,78990000,4,4,'ASUS ROG Flow GV301QC-K6029T 90NR04G5-M00510');
/*!40000 ALTER TABLE `sales_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `showroom`
--

DROP TABLE IF EXISTS `showroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `showroom` (
  `showroom_id` int unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(256) NOT NULL,
  `name` varchar(256) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `longtitude` double NOT NULL,
  `latitude` double NOT NULL,
  PRIMARY KEY (`showroom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `showroom`
--

LOCK TABLES `showroom` WRITE;
/*!40000 ALTER TABLE `showroom` DISABLE KEYS */;
INSERT INTO `showroom` VALUES (1,'sdfsdf','Lunu Shop','01239123',106.71117067337036,10.802408064324322);
/*!40000 ALTER TABLE `showroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usage_type`
--

DROP TABLE IF EXISTS `usage_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usage_type` (
  `type_id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(256) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usage_type`
--

LOCK TABLES `usage_type` WRITE;
/*!40000 ALTER TABLE `usage_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `usage_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `access` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'lunu','982a72def6aa24e36fd61ac36760f0f7','CUSTOMER'),(3,'admin','21232f297a57a5a743894a0e4a801fc3','ADMIN'),(8,'binhlee','f908aedaee2bb7384a5fead92115e622','CUSTOMER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'lunu_laptop_store'
--

--
-- Dumping routines for database 'lunu_laptop_store'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-24 14:49:01

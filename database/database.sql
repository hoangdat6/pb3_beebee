-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: shop_bee
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `detail` varchar(500) DEFAULT NULL,
  `ward` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,NULL,'Hòa Khánh Nam','Liên chiều','Đà Nẵng','2024-04-21 16:16:07','2024-04-21 16:16:13',NULL,NULL),(2,'asdadas','00043','002','01','2024-04-27 13:00:01','2024-04-27 13:00:01',NULL,NULL),(3,'asdadas','00043','002','01','2024-04-27 13:04:05','2024-04-27 13:04:05',NULL,NULL),(4,'asdasdas','00043','002','01','2024-04-27 13:07:12','2024-04-27 13:07:12',NULL,NULL),(5,'asdasdas','00043','002','01','2024-04-27 13:07:47','2024-04-27 13:07:47',NULL,NULL),(6,'asdadadsa','00043','002','01','2024-04-27 13:11:09','2024-04-27 13:11:09',NULL,NULL),(7,'asdasdasdadssadadaas','00043','002','01','2024-04-27 13:13:38','2024-04-27 13:13:38',NULL,NULL),(8,'asdasdadasda','00043','002','01','2024-04-27 13:16:02','2024-04-27 13:16:02',NULL,NULL),(9,'asdadsadasd','00043','002','01','2024-04-27 13:22:01','2024-04-27 13:22:01',NULL,NULL),(10,'adadadasda','00043','002','01','2024-04-27 14:13:31','2024-04-27 14:13:31',NULL,NULL),(11,'adsasdasdsa','00043','002','01','2024-04-27 14:16:09','2024-04-27 14:16:09',NULL,NULL),(12,'asdadsad','00043','002','01','2024-04-27 14:17:46','2024-04-27 14:17:46',NULL,NULL),(13,'asdasdasd','00043','002','01','2024-04-27 14:19:11','2024-04-27 14:19:11',NULL,NULL),(14,'Xom van phuc','17683','427','40','2024-04-27 14:25:19','2024-04-27 14:25:19',NULL,NULL),(15,'asdasdadadasdasdasd','00043','002','01','2024-04-27 14:35:57','2024-04-27 14:35:57',NULL,NULL),(16,'adsasdasda','00043','002','01','2024-04-27 14:46:08','2024-04-27 14:46:08',NULL,NULL),(17,'asdasdsa','00043','002','01','2024-04-27 22:37:00','2024-04-27 22:37:00',NULL,NULL),(18,'12 nguyen khoa chiem','05617','168','19','2024-04-27 22:45:57','2024-04-27 22:45:57',NULL,NULL),(19,'12141231213','00043','002','01','2024-05-02 20:52:21','2024-05-02 20:52:21',NULL,NULL),(20,'121321','00043','002','01','2024-05-02 20:54:07','2024-05-02 20:54:07',NULL,NULL),(21,' 121321 ','00043','002','01','2024-05-02 20:55:39','2024-05-02 20:55:39',NULL,NULL),(22,'121312','00043','002','01','2024-05-02 20:57:05','2024-05-02 20:57:05',NULL,NULL),(23,'123 Hoàng Hoa Thám','00815','027','02','2024-05-10 15:24:09','2024-05-10 15:24:09',NULL,NULL),(24,'asdasdasdasd','00043','002','01','2024-05-10 22:03:06','2024-05-10 22:03:06',NULL,NULL),(25,'asdasdasda','00763','026','02','2024-05-11 16:13:13','2024-05-11 16:13:13',NULL,NULL),(26,'asdasdasdsa','00043','002','01','2024-05-11 16:23:34','2024-05-11 16:23:34',NULL,NULL),(27,'123123123','00043','002','01','2024-05-12 14:52:10','2024-05-12 14:52:10',NULL,NULL),(28,'','','','','2024-05-15 13:07:21','2024-05-15 13:07:21','',''),(31,'9 Hà Văn Tính','20198','490','48','2024-05-22 09:02:02','2024-05-22 09:02:42','0396454720','Hoàng Văn Đạt'),(32,'123 Nguyễn Tri Phương','00001','001','01','2024-05-22 09:02:32','2024-05-22 09:33:24','0396454720','Hoàng Văn Đạt'),(35,'asdasdasda','01359','043','04','2024-05-24 15:14:21','2024-05-24 15:14:21',NULL,NULL),(36,'asdasdsa','00001','001','01','2024-05-27 16:06:20','2024-05-27 16:06:20','asdasdsad','asdasd'),(37,'Xóm Vạn Phúc','17683','427','40','2024-05-30 09:18:56','2024-05-30 09:18:56','0396454720','Hoàng Văn Đat'),(38,'123, Nguyễn Tri Phương','00001','001','01','2024-06-02 08:59:16','2024-06-02 08:59:16',NULL,NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Thời trang',NULL),(2,'Điện tử',NULL),(4,'Thể thao và du lịch',NULL),(5,'Nhà sách online',NULL),(6,'Mẹ và bé',NULL),(7,'Sức khỏe',NULL),(15,'Điện thoại & phụ kiện',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_type`
--

DROP TABLE IF EXISTS `discount_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount_type` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_type`
--

LOCK TABLES `discount_type` WRITE;
/*!40000 ALTER TABLE `discount_type` DISABLE KEYS */;
INSERT INTO `discount_type` VALUES (1,'Miễn phí vận chuyển'),(2,'Voucher của shop'),(3,'Voucher giảm giá');
/*!40000 ALTER TABLE `discount_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_item_id` bigint DEFAULT NULL,
  `order_id` varchar(20) NOT NULL,
  `quantity` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_item_id` (`product_item_id`),
  KEY `order_detail_orders_id_fk` (`order_id`),
  CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_item_id`) REFERENCES `product_item` (`id`),
  CONSTRAINT `order_detail_orders_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (138,36,'23117229830108',1,1875000),(139,229,'213117229830108',8,281),(140,36,'00000231229978152',1,1875000),(141,229,'00002131229978152',8,281),(142,36,'00000232230831859',1,1875000),(143,38,'00000232230831859',3,1875000),(144,229,'00002131230831860',8,281),(145,36,'00000232231029028',1,1875000),(146,38,'00000232231029028',3,1875000),(147,229,'00002131231029028',8,281),(148,36,'00000232231715429',1,1875000),(149,38,'00000232231715429',3,1875000),(150,229,'00002131231715429',8,281),(151,36,'00000232232068246',1,1875000),(152,38,'00000232232068246',3,1875000),(153,229,'00002131232068246',8,281),(154,36,'00000232232180795',1,1875000),(155,38,'00000232232180795',3,1875000),(156,229,'00002131232180795',8,281),(157,36,'00000232232191605',1,1875000),(158,38,'00000232232191605',3,1875000),(159,229,'00002131232191606',8,281),(160,36,'00000232233373026',1,1875000),(161,38,'00000232233373026',3,1875000),(162,229,'00002131233373026',8,281),(163,45,'00000291292475112',1,1875000),(164,36,'00000236406398754',1,1875000),(165,38,'00000236406398754',3,1875000),(166,46,'00000236406398754',1,1875000),(167,47,'00000236406398754',1,1875000),(168,50,'00000236406398754',1,1875000),(169,49,'00000236406398754',1,1875000),(170,36,'00000236406469162',1,1875000),(171,38,'00000236406469162',3,1875000),(172,46,'00000236406469162',1,1875000),(173,47,'00000236406469162',1,1875000),(174,50,'00000236406469162',1,1875000),(175,49,'00000236406469162',1,1875000),(176,36,'00000236406522151',1,1875000),(177,38,'00000236406522151',3,1875000),(178,46,'00000236406522151',1,1875000),(179,47,'00000236406522151',1,1875000),(180,50,'00000236406522151',1,1875000),(181,49,'00000236406522151',1,1875000),(182,36,'00000236406528311',1,1875000),(183,38,'00000236406528311',3,1875000),(184,46,'00000236406528311',1,1875000),(185,47,'00000236406528311',1,1875000),(186,50,'00000236406528311',1,1875000),(187,49,'00000236406528311',1,1875000),(188,36,'00000236406715880',1,1875000),(189,38,'00000236406715880',3,1875000),(190,46,'00000236406715880',1,1875000),(191,47,'00000236406715880',1,1875000),(192,50,'00000236406715880',1,1875000),(193,49,'00000236406715880',1,1875000),(194,36,'00000236406734799',1,1875000),(195,38,'00000236406734799',3,1875000),(196,46,'00000236406734799',1,1875000),(197,47,'00000236406734799',1,1875000),(198,50,'00000236406734799',1,1875000),(199,49,'00000236406734799',1,1875000),(200,46,'00000232406813603',1,1875000),(201,47,'00000232406813603',1,1875000),(202,235,'00002131406813603',1,281),(203,235,'00002131598218173',1,281);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_discount`
--

DROP TABLE IF EXISTS `order_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_discount` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) NOT NULL,
  `voucher_discount` int DEFAULT NULL,
  `discount_type_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_type_id` (`discount_type_id`),
  KEY `order_discount_orders_id_fk` (`order_id`),
  CONSTRAINT `order_discount_ibfk_1` FOREIGN KEY (`discount_type_id`) REFERENCES `discount_type` (`id`),
  CONSTRAINT `order_discount_orders_id_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_discount`
--

LOCK TABLES `order_discount` WRITE;
/*!40000 ALTER TABLE `order_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'Chờ thanh toán'),(2,'Chờ xác nhận'),(3,'Vận chuyển'),(4,'Chờ giao hàng'),(5,'Hoàn thành'),(6,'Đã hủy');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `payment_method_id` smallint DEFAULT NULL,
  `shipping_method_id` smallint DEFAULT NULL,
  `order_total` bigint DEFAULT NULL,
  `order_status_id` smallint DEFAULT NULL,
  `commune_address` varchar(50) DEFAULT NULL,
  `district_address` varchar(50) DEFAULT NULL,
  `province_address` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `detail_address` varchar(50) DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_method_id` (`payment_method_id`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status_id`),
  KEY `shipping_method` (`shipping_method_id`),
  KEY `orders_sellers_id_fk` (`seller_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`order_status_id`) REFERENCES `order_status` (`id`),
  CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`shipping_method_id`) REFERENCES `shipping_method` (`id`),
  CONSTRAINT `orders_sellers_id_fk` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('00000231229978152',3,2,2,1875000,1,'00001','001','01','2024-06-01 15:19:38','2024-06-01 15:19:38','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000232230831859',3,2,2,7500000,1,'00001','001','01','2024-06-01 15:33:52','2024-06-01 15:33:52','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000232231029028',3,2,2,7500000,1,'00001','001','01','2024-06-01 15:37:09','2024-06-01 15:37:09','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000232231715429',3,2,2,7500000,1,'00001','001','01','2024-06-01 15:48:35','2024-06-01 15:48:35','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000232232068246',3,2,2,7500000,1,'00001','001','01','2024-06-01 15:54:28','2024-06-01 15:54:28','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000232232180795',3,2,2,7500000,1,'00001','001','01','2024-06-01 15:56:21','2024-06-01 15:56:21','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000232232191605',3,2,2,7500000,1,'00001','001','01','2024-06-01 15:56:32','2024-06-01 15:56:32','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000232233373026',3,1,2,7500000,2,'00001','001','01','2024-06-01 16:16:13','2024-06-01 16:16:13','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000232406813603',3,1,2,3750000,2,'00001','001','01','2024-06-03 16:26:54','2024-06-03 16:26:54','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000236406398754',3,2,2,15000000,1,'00001','001','01','2024-06-03 16:19:59','2024-06-03 16:19:59','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000236406469162',3,1,2,15000000,2,'00001','001','01','2024-06-03 16:21:09','2024-06-03 16:21:09','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000236406522151',3,1,2,15000000,2,'00001','001','01','2024-06-03 16:22:02','2024-06-03 16:22:02','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000236406528311',3,2,2,15000000,1,'00001','001','01','2024-06-03 16:22:08','2024-06-03 16:22:08','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000236406715880',3,2,2,15000000,1,'00001','001','01','2024-06-03 16:25:16','2024-06-03 16:25:16','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000236406734799',3,2,2,15000000,1,'00001','001','01','2024-06-03 16:25:35','2024-06-03 16:25:35','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('00000291292475112',9,1,2,1875000,2,'17683','427','40','2024-06-02 08:41:15','2024-06-02 08:41:15','0396454720','Hoàng Văn Đat','Xóm Vạn Phúc',2),('00002131229978152',3,2,2,2248,1,'00001','001','01','2024-06-01 15:19:38','2024-06-01 15:19:38','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('00002131230831860',3,2,2,2248,1,'00001','001','01','2024-06-01 15:33:52','2024-06-01 15:33:52','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('00002131231029028',3,2,2,2248,1,'00001','001','01','2024-06-01 15:37:09','2024-06-01 15:37:09','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('00002131231715429',3,2,2,2248,1,'00001','001','01','2024-06-01 15:48:35','2024-06-01 15:48:35','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('00002131232068246',3,2,2,2248,1,'00001','001','01','2024-06-01 15:54:28','2024-06-01 15:54:28','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('00002131232180795',3,2,2,2248,1,'00001','001','01','2024-06-01 15:56:21','2024-06-01 15:56:21','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('00002131232191606',3,2,2,2248,1,'00001','001','01','2024-06-01 15:56:32','2024-06-01 15:56:32','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('00002131233373026',3,1,2,2248,2,'00001','001','01','2024-06-01 16:16:13','2024-06-01 16:16:13','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('00002131406813603',3,1,2,281,2,'00001','001','01','2024-06-03 16:26:54','2024-06-03 16:26:54','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('00002131598218173',3,2,2,281,1,'00001','001','01','2024-06-05 21:36:58','2024-06-05 21:36:58','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('213117229830108',3,2,2,2248,1,'00001','001','01','2024-06-01 15:17:10','2024-06-01 15:17:10','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('23117229830108',3,2,2,1875000,1,'00001','001','01','2024-06-01 15:17:10','2024-06-01 15:17:10','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_method` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'Thanh toán khi nhận hàng'),(2,'Thanh toán bằng mã QR');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_item`
--

DROP TABLE IF EXISTS `product_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `SKU` varchar(25) DEFAULT NULL,
  `img_path` varchar(1024) DEFAULT NULL,
  `variation1` bigint DEFAULT NULL,
  `variation2` bigint DEFAULT NULL,
  `qty_in_stock` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `variation1` (`variation1`),
  KEY `variation2` (`variation2`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_item_ibfk_1` FOREIGN KEY (`variation1`) REFERENCES `variation_option` (`id`),
  CONSTRAINT `product_item_ibfk_2` FOREIGN KEY (`variation2`) REFERENCES `variation_option` (`id`),
  CONSTRAINT `product_item_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_item`
--

LOCK TABLES `product_item` WRITE;
/*!40000 ALTER TABLE `product_item` DISABLE KEYS */;
INSERT INTO `product_item` VALUES (1,2,NULL,'img_product/quan_002.png',7,10,100,300000),(2,2,NULL,'img_product/quan_003.png',7,11,200,300000),(3,2,NULL,'img_product/quan_004.png',7,12,300,300000),(4,2,NULL,'img_product/quan_005.png',8,10,1,300000),(5,2,NULL,'img_product/quan_006.png',8,11,2,300000),(6,2,NULL,'img_product/quan_007.png',8,12,3,300000),(7,2,NULL,'img_product/quan_002.png',9,10,4,300000),(8,2,NULL,'img_product/quan_003.png',9,11,5,300000),(9,2,NULL,'img_product/quan_004.png',9,12,2,300000),(10,2,NULL,'img_product/quan_005.png',14,10,4,300000),(11,2,NULL,'img_product/quan_006.png',14,11,2,300000),(12,2,NULL,'img_product/quan_007.png',14,12,4,300000),(13,2,NULL,'img_product/quan_002.png',15,10,2,300000),(14,2,NULL,'img_product/quan_003.png',15,11,14,300000),(15,2,NULL,'img_product/quan_004.png',15,12,2,300000),(35,3,NULL,'img_product/day_002.png',NULL,NULL,300,1000000),(36,4,'123456','img_product/123456.png',16,NULL,77,2500000),(37,4,'123457','img_product/123457.png',17,NULL,100,2500000),(38,4,'123458','img_product/123458.png',18,NULL,43,2500000),(39,4,'123459','img_product/123459.png',19,NULL,103,2500000),(40,4,'123460','img_product/123460.png',20,NULL,10,2500000),(41,4,'123461','img_product/123461.png',21,NULL,100,2500000),(42,4,'123462','img_product/123462.png',22,NULL,104,2500000),(43,4,'123463','img_product/123463.png',23,NULL,0,2500000),(44,4,'123464','img_product/123456.png',24,NULL,0,2500000),(45,4,'123465','img_product/123457.png',25,NULL,99,2500000),(46,4,'123466','img_product/123458.png',26,NULL,93,2500000),(47,4,'123467','img_product/123459.png',27,NULL,93,2500000),(48,4,'123468','img_product/123460.png',28,NULL,100,2500000),(49,4,'123469','img_product/123461.png',29,NULL,94,2500000),(50,4,'123470','img_product/123462.png',30,NULL,94,2500000),(51,5,'GHE-001','img_product/img_1.png',31,33,10,3790000),(52,5,'GHE-002','img_product/img_2.png',31,34,0,3790000),(216,90,NULL,NULL,119,NULL,312,121),(217,90,NULL,'',120,NULL,312,121),(218,90,NULL,NULL,119,NULL,312,121),(219,90,NULL,'',120,NULL,312,121),(220,91,NULL,'ImageProduct/91/91_01.png',121,122,0,312),(221,91,NULL,'ImageProduct/91/91_01.png',123,122,312,312),(222,91,NULL,'ImageProduct/91/91_01.png',123,122,312,312),(223,91,NULL,'ImageProduct/91/91_04.png',121,122,312,312),(224,91,NULL,'ImageProduct/91/91_04.png',123,122,312,312),(225,91,NULL,'ImageProduct/91/91_04.png',123,122,312,312),(226,91,NULL,'ImageProduct/91/91_07.png',121,124,312,312),(227,91,NULL,'ImageProduct/91/91_07.png',123,124,312,312),(228,91,NULL,'ImageProduct/91/91_07.png',123,124,312,312),(229,92,NULL,'ImageProduct/92/92_01.png',125,126,224,312),(230,92,NULL,'ImageProduct/92/92_01.png',127,126,312,312),(231,92,NULL,'ImageProduct/92/92_01.png',127,126,312,312),(232,92,NULL,'ImageProduct/92/92_04.png',125,126,312,312),(233,92,NULL,'ImageProduct/92/92_04.png',127,126,312,312),(234,92,NULL,'ImageProduct/92/92_04.png',127,126,312,312),(235,92,NULL,'ImageProduct/92/92_07.png',125,128,310,312),(236,92,NULL,'ImageProduct/92/92_07.png',127,128,312,312),(237,92,NULL,'ImageProduct/92/92_07.png',127,128,312,312),(238,93,NULL,'ImageProduct/93/93_01.png',129,130,312,12),(239,93,NULL,'ImageProduct/93/93_01.png',131,130,312,12),(240,93,NULL,'ImageProduct/93/93_01.png',132,130,312,12),(241,93,NULL,'ImageProduct/93/93_04.png',129,133,123,12),(242,93,NULL,'ImageProduct/93/93_04.png',131,133,123,12),(243,93,NULL,'ImageProduct/93/93_04.png',132,133,123,12),(244,93,NULL,'ImageProduct/93/93_07.png',129,134,123,12),(245,93,NULL,'ImageProduct/93/93_07.png',131,134,123,12),(246,93,NULL,'ImageProduct/93/93_07.png',132,134,123,12),(247,94,NULL,'',135,NULL,1212,12),(248,94,NULL,'',136,NULL,1212,12),(249,95,NULL,'ImageProduct/95/95_01.png',137,138,123312,1211),(250,95,NULL,'ImageProduct/95/95_01.png',139,138,123312,1211),(251,95,NULL,'ImageProduct/95/95_03.png',137,140,123312,1211),(252,95,NULL,'ImageProduct/95/95_03.png',139,140,123312,1211),(253,96,NULL,'ImageProduct/96/96_01.png',141,142,200,529000),(254,96,NULL,'ImageProduct/96/96_01.png',143,142,200,500000),(255,96,NULL,'ImageProduct/96/96_03.png',141,144,200,529000),(256,96,NULL,'ImageProduct/96/96_03.png',143,144,200,500000),(283,104,NULL,'ImageProduct/104/104_01.png',170,NULL,108,68000),(284,104,NULL,'ImageProduct/104/104_02.png',171,NULL,91,68000),(285,104,NULL,'ImageProduct/104/104_03.png',172,NULL,85,68000),(286,105,NULL,'ImageProduct/105/105_01.png',173,174,114,91000),(287,105,NULL,'ImageProduct/105/105_01.png',175,174,86,68000),(288,105,NULL,'ImageProduct/105/105_03.png',173,176,123,91000),(289,105,NULL,'ImageProduct/105/105_03.png',175,176,102,70000),(290,105,NULL,'ImageProduct/105/105_05.png',173,177,117,91000),(291,105,NULL,'ImageProduct/105/105_05.png',175,177,90,68000),(292,106,NULL,'ImageProduct/106/106_01.png',178,179,102,210000),(293,106,NULL,'ImageProduct/106/106_01.png',180,179,121,230000),(294,106,NULL,'ImageProduct/106/106_03.png',178,181,123,210000),(295,106,NULL,'ImageProduct/106/106_03.png',180,181,131,230000),(296,106,NULL,'ImageProduct/106/106_05.png',178,182,123,210000),(297,106,NULL,'ImageProduct/106/106_05.png',180,182,131,230000),(298,107,NULL,'ImageProduct/107/107_01.png',183,184,102,210000),(299,107,NULL,'ImageProduct/107/107_01.png',185,184,121,230000),(300,107,NULL,'ImageProduct/107/107_03.png',183,186,123,210000),(301,107,NULL,'ImageProduct/107/107_03.png',185,186,131,230000),(302,107,NULL,'ImageProduct/107/107_05.png',183,187,123,210000),(303,107,NULL,'ImageProduct/107/107_05.png',185,187,131,230000),(304,108,NULL,'ImageProduct/108/108_01.png',188,189,12330,122123),(305,108,NULL,'ImageProduct/108/108_01.png',188,190,12330,122123),(306,108,NULL,'ImageProduct/108/108_03.png',191,189,12330,122123),(307,108,NULL,'ImageProduct/108/108_03.png',191,190,12330,122123),(308,108,NULL,'ImageProduct/108/108_05.png',192,189,12330,122123),(309,108,NULL,'ImageProduct/108/108_05.png',192,190,12330,122123),(310,109,NULL,'ImageProduct/109/109_01.png',193,194,12330,122123),(311,109,NULL,'ImageProduct/109/109_01.png',193,195,12330,122123),(312,109,NULL,'ImageProduct/109/109_03.png',196,194,12330,122123),(313,109,NULL,'ImageProduct/109/109_03.png',196,195,12330,122123),(314,109,NULL,'ImageProduct/109/109_05.png',197,194,12330,122123),(315,109,NULL,'ImageProduct/109/109_05.png',197,195,12330,122123),(316,110,NULL,'ImageProduct/110/110_01.png',198,NULL,0,0),(317,110,NULL,'ImageProduct/110/110_02.png',198,NULL,0,0),(318,110,NULL,'ImageProduct/110/110_03.png',198,NULL,0,0),(319,111,NULL,'ImageProduct/111/111_01.png',199,NULL,12330,122123),(320,111,NULL,'ImageProduct/111/111_02.png',199,NULL,12330,122123),(321,111,NULL,'ImageProduct/111/111_03.png',199,NULL,12330,122123),(322,112,NULL,'ImageProduct/112/112_01.png',200,NULL,12330,122123),(323,112,NULL,'ImageProduct/112/112_02.png',200,NULL,12330,122123),(324,112,NULL,'ImageProduct/112/112_03.png',200,NULL,12330,122123),(325,113,NULL,'ImageProduct/113/113_01.png',NULL,201,12321,1234),(326,113,NULL,'ImageProduct/113/113_02.png',NULL,202,12321,1234),(327,113,NULL,'ImageProduct/113/113_03.png',NULL,203,12321,1234);
/*!40000 ALTER TABLE `product_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_status`
--

DROP TABLE IF EXISTS `product_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_status` (
  `id` smallint NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_status`
--

LOCK TABLES `product_status` WRITE;
/*!40000 ALTER TABLE `product_status` DISABLE KEYS */;
INSERT INTO `product_status` VALUES (1,'Đang bán'),(2,'Đã xóa'),(3,'Đã khóa');
/*!40000 ALTER TABLE `product_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `description` varchar(4096) DEFAULT NULL,
  `img_path` varchar(1024) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `discount` int DEFAULT NULL,
  `views` bigint NOT NULL COMMENT 'views',
  `sales` bigint DEFAULT NULL,
  `product_status_id` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `seller_id` (`seller_id`),
  KEY `products_product_status_id_fk` (`product_status_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`),
  CONSTRAINT `products_product_status_id_fk` FOREIGN KEY (`product_status_id`) REFERENCES `product_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Quần Nỉ Dài Relax Pants ODIN CLUB, Quần nỉ dài ống suông ODIN, Local Brand ODIN CLUB','Quần nỉ dài Relax Pants ODIN CLUB\n\n- Màu sắc: Đen /  Be / Xám Nhạt / Xám Đậm\n\n- Size: M / L / XL.\n\n- Kiểu dáng: Oversized.\n\nHƯỚNG DẪN SỬ DỤNG:\n\n- Lần giặt đầu chỉ nên xả nước lạnh rồi phơi khô.\n\n- Khuyến cáo nên giặt tay, hạn chế giặt máy.\n\n- Chú ý lộn trái sản phẩm trước khi giặt để không ảnh hướng tới bề mặt vải.\n\n- Không sử dụng thuốc tẩy, không giặt chung với các sản phẩm dễ phai màu\n\n- Hạn chế phơi trực tiếp dưới ánh nắng mặt trời, nên phơi khô dưới ảnh sáng tự nhiên\n\n\n\nCAM KẾT TỪ ODIN CLUB\n\n- Sản phẩm 100% giống mô tả.\n\n- Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh.\n\n- Đảm bảo chất lượng sản phẩm luôn ở mức cao nhất. \n\n- Hàng có sẵn, giao hàng trên toàn quốc, nhận hàng sau 2-3 ngày đối với các khu vực thuộc nội thành Hà Nội và 3-4 ngày đối với các khu vực khác.\n\n\n\nCHÍNH SÁCH ĐỔI-TRẢ\n\n1. Điều kiện tiên quyết:\n\n- Có video quay lại quá trình mở gói hàng.\n\n- Hàng hoá vẫn còn nguyên hiện trạng kể từ khi KH mở gói hàng.\n\n- Khách hàng phản hồi trong vòng 6 ngày kể từ ngày nhận hàng.\n\n2. Trường hợp được hỗ trợ:\n\n- Hàng nhận được không đúng màu sắc, kích thước, số lượng như KH đặt hàng.\n\n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất.\n\n\n\n*Lưu ý:  Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.','img_product/quan_001.png',1,2,'2024-04-18 14:54:05',20,89,NULL,1),(3,'Giày Thể Thao Alphabounce Beyond Trắng Full Cực Êm Thoáng Khí Phù Hợp Với Cả Nam Và Nữ Clever Man Store','MÔ TẢ SẢN PHẨM\n🔸 Giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ đầy tính năng, được thiết kế để cung cấp sự thoải mái, độ bền và hỗ trợ cho người chơi khi tập luyện hoặc tham gia các hoạt động thể thao. Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là sự lựa chọn tuyệt vời cho những ai yêu thích sự đơn giản và trẻ trung.\n\n\n\n🔸 Đế giày của giày Alphabounce Beyond trắng được thiết kế với công nghệ Bounce độc quyền của AD, giúp cung cấp độ đàn hồi và đàn hồi tối đa, giúp người mang giày chạy bộ linh hoạt hơn và giảm sốc tốt hơn khi đáp xuống mặt đất. Thân giày được làm bằng vải Jacquard, là một loại vải nhẹ và thoáng khí, giúp người mang giày cảm thấy mát mẻ và thoải mái trong suốt quá trình tập luyện.\n\n\n\n🔸 Giày Alphabounce Beyond trắng còn được thiết kế với hệ thống hỗ trợ gót chân, giúp người mang giày cảm thấy thoải mái và ổn định hơn khi chạy. Đế giày của giày được làm bằng cao su chất lượng cao, giúp tăng độ bền và độ bám của giày.\n\n\n\n🔸 Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ tinh tế và phù hợp với nhiều phong cách. Với sự kết hợp giữa công nghệ và thẩm mỹ, giày Alphabounce Beyond trắng là sự lựa chọn hoàn hảo cho những người yêu thích sự đơn giản và trẻ trung.\n\n','img_product/day_001.png',1,2,'2024-02-22 14:54:11',44,199,NULL,1),(4,'Giày Converse Run Star Hike Twisted Classic Foundational Canvas - 166800C','Tên Đơn vị Nhập Khẩu: CÔNG TY TNHH MAGNA MANAGEMENT ASIA (MMA)\n\nĐịa chỉ: Phòng 14-02, Tầng 14, Tòa nhà Xổ Số Kiến Thiết Thành phố Hồ Chí Minh, 77 Trần Nhân Tôn, Phường 09, Quận 5, Thành phố Hồ Chí Minh, Việt Nam\n\nTel: 02838301111\n\nGIÀY SNEAKERS CONVERSE - HÀNG CHÍNH HÃNG PHÂN PHỐI BỞI WEAR VIETNAM Cuộc cách mạng siêu bứt phá mang tên Converse Run Star Hike \n\nBạn đã quá quen với phong cách quen thuộc của Converse là những đôi giày thể thao, chất lừ, khỏe khoắn với phần thân bằng vải và đế giày cau su màu đen thì có lẽ bạn sẽ phải thốt lên những từ cảm thán bất ngờ khi được chứng kiến sự bứt phá đầy khác biệt với dòng sản phẩm mới mang tên: Converse Run Star Hike.\n\nRun Star Hike - cú bứt phá ngoạn mục của Converse\n\nRa mắt đầu 2020, BST cực chất của Converse mang tên Converse Twisted Classic có lẽ đã tạo được tiếng vang cực lớn đối với những tín đồ yêu sneaker trên toàn thế giới. Thoát khỏi bóng dáng của những đôi Converse thân thuộc, lần này nhà thiết kế của Converse chịu chơi hơn rất nhiều khi đã biến tấu những sản phẩm của mình trở nên “không đụng hàng” với bất cứ dòng sản phẩm nào trước đó từng ra mắt.\n\nĐể mang lại cái nhìn rõ ràng và cận cảnh hơn, trong phần dưới đây, hãy cùng chiêm ngưỡng từng đường nét của đôi giày Converse Run Star Hike hot nhất 2020 này nhé!\n\nCận cảnh sự khác biệt chất chơi của mẫu giày Converse Run Star Hike\n\nRun Star Hike - mẫu giày đi trước thời đại của Converse\n\nGiày Converse Run Star Hike là dòng sản phẩm được kết hợp giữa Converse cùng JW Anderson. Trước đó, sự kết hợp này đã trình làng những sản phẩm giày mang nhiều cải tiến để thích hợp hơn với bộ môn leo núi. Chính từ nguồn cảm hứng đó, Run Star Hike đã ra đời và như một nét chấm phá trong phong cách quen thuộc thường thấy của Converse. Với những ưu điểm nổi bật về khả năng bám bề mặt vừa mang tính thời trang với phần đế độc đáo, những nhà nhận định thời trang nổi tiếng cũng phải thừa nhận rằng đây là những sản phẩm đi trước thời đại. Phải chăng, vì thế mà những đôi giày Converse Run Star Hike đã thừa thắng xông lên trên toàn thế giới với những ưu ái của idol Hàn Quốc hay những stylist, fashionista nổi tiếng nhất.\n\nCận cảnh sự phá cách không đụng hàng của Run Star Hike\n\nMở rộng thị trường, Converse đã cực kỳ đúng đắn khi quyết định mang tới nhiều sản phẩm mang tính định hướng hơn so với những đôi giày Converse truyền thống. Không chỉ phục vụ đối tượng là thế hệ Gen Z, hiện nay, Converse còn muốn cung cấp những sản phẩm chất lượng dành cho các bạn trẻ yêu thích sự mạo hiểm, thể hiện sức mạnh của bản thân với các bộ môn như leo núi, trekking…\n\nSản phẩm được \"remix\" từ Chuck và Runner khi 2 yếu tố thời trang được thể hiện xen kẽ: Upper canvas và đế Run Star zig-zag. Đổi mới từ những đôi giày Converse truyền thống với đế giày casual, đế cau su kép và bằng phẳng,Giày Converse Run Star Hike được thiết kế với phần đế giày dành riêng cho dân leo núi với độ dốc lớn. Đế giày được thiết kế với dạng răng cưa to bản, giúp tăng độ bám một cách hiệu quả vừa tạo được điểm nhấn về phong cách và ấn tượng về thời trang. \n\nGót giày thay vì có logo Converse quen thuộc thì với đôi Run Star Hike thay bằng ngôi sao màu đen ở chính giữa. Đế giày dày tới 6cm, và là một trong những đôi sneakers có phần đế dày nhất tính đến hiện tại. \n\nGiày Converse Run Star Hike hiện được ra mắt với hai tông màu chính là trắng basic và đen cá tính. Chắc chắn trong tương lai, Run Star Hike có thể tạo cho mình được một đế chế riêng không chỉ dành cho dân leo núi mà còn có chỗ đứng trong lòng các bạn trẻ Việt Nam\n\n- Size US : 3.5-11, Size EU: 34.5-44.5 \n\n-Chinh sách đối với các sản phẩm được bán bởi Wear Vietnam\n\n+ Giảm từ 0 -> 10%: hỗ trợ đổi size và bảo hành\n\n+ Giảm trên 10%: không đổi size, không bảo hành\n\n*Thời gian bảo hành 1 tháng\n\n*Không đổi trả, bảo hành với balo, quần áo & phụ kiện\n\n- Loại hình bảo hành: Cửa hàng\n\n- Quy cách đóng gói: Double Box ( Giày, Hóa đơn, Túi Converse)\n\n#converse\n\n#Converse\n\n#CONVERSE\n\n#giayconverse\n\n#conversegiay\n\n#Giayconverse\n\n#GIAYCONVERSE\n\n#giaythethaoconverse\n\n#166800V','img_product/img.png',1,2,'2024-09-22 14:54:16',25,2395,NULL,1),(5,'Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm','Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm\n\n\n\nTHÔNG TIN CHI TIẾT GHẾ CÔNG THÁI HỌC HYPERWORK AIRY\n\n- Thương hiệu: HyperWork\n\n- Màu sắc: Đen / Trắng\n\n- Bộ cơ khí: FluidMotion System\n\n- Ngả lưng: Tối đa 120 độ\n\n- Piston: Class 4\n\n- Điều chỉnh kháng lực: Có\n\n- Tựa đầu, Kê tay: 3D\n\n- Lưới: AeroMesh\n\n- Chân ghế: Kim loại\n\n- Chiều cao: 150 - 190cm\n\n- Cân nặng: 40 - 100Kg\n\n- Bảo hành: 3 năm\n\n\n\nĐẶC ĐIỂM NỔI BẬT\n\n- Toàn bộ lưng và mâm ghế của Airy được sử dụng lưới đem lại cảm giác ngồi êm ái, thoáng mát, đặc biệt phù hợp với khí hậu Việt Nam.\n\n- Tay ghế 3D có thể chỉnh được độ cao, và xoay được phần đầu tay ghế qua trái phải, đẩy tới và lui phần đệm tay sao cho vừa vặn nhất.\n\n- Được thiết kế độc đáo, mềm mại cùng khả năng điều chỉnh trượt 5 cm, giúp bạn tìm được vị trí ngồi lý tưởng.\n\n- Tựa đầu của Airy có thể linh hoạt điều chỉnh độ cao, sâu và góc nghiêng để phù hợp với phần cổ và gáy, giúp bạn làm việc hoặc nghỉ ngơi một cách thật thoải mái.\n\n- Không chỉ dừng lại ở việc điều chỉnh mâm ghế và tựa đầu, Airy còn cho phép bạn điều chỉnh đệm eo và góc nghiêng của lưng ghế. Điều này đảm bảo rằng bạn có thể tạo ra sự thoải mái tối ưu cho cơ thể.\n\n- Bộ chuyển động FluidMotion với tính năng phong phú: Kháng lực, ngả 120 độ, trượt mâm ghế,…\n\n- Hai vị trí điều chỉnh tựa lưng thông minh, đảm bảo lưng ghế luôn ôm sát cơ thể.\n\n- Piston Class 4 chuẩn BIFMA: An toàn và bền bỉ.\n\n\n\nCAM KẾT VỚI KHÁCH HÀNG\n\nMang đến khách hàng những sản phẩm chất lượng tốt nhất, đảm bảo chính hãng.\n\nSản phẩm đúng với mô tả, hình ảnh và video mà shop cung cấp.\n\nDịch vụ khách hàng luôn tận tâm và nhiệt tình, giúp quý khách có được trải nghiệm tốt nhất khi mua hàng.\n\nThời gian chuẩn bị hàng luôn được đảm bảo.\n\nHỗ trợ áp dụng chính sách đổi trả sản phẩm theo quy định của Shopee (Trong vòng 3 ngày kể từ ngày nhận hàng).\n\n*ĐỂ ĐƯỢC HỖ TRỢ NHANH NHẤT, BẠN VUI LÒNG QUAY LẠI VIDEO MỞ THÙNG HÀNG ĐỂ SHOP TIỆN XÁC MINH.\n\n\n\nHOÀNG KHUÊ - LINH KIỆN, PHỤ KIỆN MÁY TÍNH CHÍNH HÃNG\n\n*Địa chỉ: 46A Đường 85, Phường Tân Quy, Quận 7, TP.HCM\n\nRất hân hạnh được phục vụ quý khách!\n\nQuý khách hàng vui lòng liên hệ trực tiếp với shop để được giải quyết thắc mắc và vấn đề về sản phẩm (nếu có).\n\nMong rằng bạn sẽ hài lòng với sự phục vụ của shop và đừng quên giới thiệu bạn bè của bạn nhé!\n\n\n\n#ghe #congthaihoc #hyperwork #airy #tuadau #tualung #xoay #120do #dieuchinh #luoi #em #thoangmat #thoaimai #noithat #vanphong #chinhhang #caocap #hoangkhue\n\n','img_product/ghe12345.png',1,2,'2024-01-22 14:54:22',45,55,NULL,1),(90,'asdasdasdsad','asdsadadasdasd','ImageProduct/90/90_0.png',1,2,'2024-05-11 16:16:58',12,6,NULL,2),(91,'asdasdasd','asdasdasdasd','ImageProduct/91/91_0.png,ImageProduct/91/91_1.png',1,21,'2024-05-11 23:03:37',10,14,NULL,2),(92,'asdasdasd','asdasdasdasd','ImageProduct/92/92_0.png,ImageProduct/92/92_1.png',1,21,'2024-05-11 23:04:23',10,32,NULL,2),(93,'asdasdasd','asdasdasdasd','ImageProduct/93/93_0.png,ImageProduct/93/93_1.png',1,2,'2024-05-11 23:05:00',10,6,NULL,2),(94,'Sản phẩm này là demo tiếng viêt','ádsađááđá','ImageProduct/94/94_0.png',1,2,'2024-05-12 22:49:07',12,2,NULL,2),(95,'sađá','eqưeqưeqưeqưe','',1,2,'2024-05-27 15:51:25',12,1,NULL,2),(96,'1 Vợt cầu lông KUMPOO K520 PRO chính hãng, căng sẵn 11kg tặng kèm bao đựng và quấn cán','Sau những thành công ngoài mong đợi của phiên bản K520, nhà Kumpoo quyết định cho ra mắt tiếp siêu phẩm Vợt cầu lông Kumpoo Power Control K520 Pro Trắng chính hãng vào cuối tháng 4 năm 2022 hướng đến đối tượng là người chơi phong trào tầm thấp, đặc biệt là những bạn mới bắt đầu làm quen với cầu lông.\n\n- Vợt Kumpoo K520 Pro Trắng thuộc dòng vợt cầu lông giá rẻ với thông số khá dễ chịu như trọng lượng 4U, điểm cân bằng 290mm và so với bản thường, Kumpoo K520 Pro sẽ có đũa cứng hơn giúp các pha phản tạt và phòng thủ của người chơi được hỗ trợ nhiều hơn.\n\n- Đặc biệt, vợt được áp dụng công nghệ High Modulus Graphite + Nano Carbon Control Power tăng độ bền lên 20%, giúp người chơi có những cú đánh uy lực, chuẩn xác.\n\n- Ngoài ra, phần khung của vợt cầu lông Kumpoo K520 Pro Trắng chính hãng 2022 được thiết kế theo dạng hộp cho khả năng tăng cường sức mạnh tối đa trong mỗi cú vung đảm bảo sẽ hỗ trợ lực cực tốt cho các lông thủ trong các quả đập cầu hoặc phông cầu cao sâu đi đến cuối sân\nThông số vợt :\n\nĐộ cứng: 8.5 - Trung bình\n\n- Khung vợt: Carbon Fiber \n\n- Thân vợt: Carbon Fiber\n\n- Trọng lượng: 82 + 2 g (4U)\n\n- Chiều dài vợt: 675 mm\n\n- Chu vi cán vợt: G5\n\n- Chiều dài cán vợt: 200 mm\n\n- Sức căng dây: 24 - 28 lbs (Tối đa 12,7kg)\n\n- Điểm cân bằng: 290 +- 5 mm (Cân bằng)\n\n- Vợt cầu lông Kumpoo Power Control K520 Pro Trắng 2022 được sản xuất tại Trung Quốc.\n\n- Mua tại HOANGDUCSPORT được check mã chính hãng, bảo hành 7 ngày đầu tiên\ntặng căng dây, bao đựng vợt và 1 quấn cán vs chính hãng','ImageProduct/96/96_0.png,ImageProduct/96/96_1.png,ImageProduct/96/96_2.png,ImageProduct/96/96_3.png,ImageProduct/96/96_4.png,ImageProduct/96/96_5.png,ImageProduct/96/96_6.png,ImageProduct/96/96_7.png',4,2,'2024-06-06 11:29:56',29,3,NULL,1),(104,'Dù gấp gọn AIODIY Che nắng mưa, Chống tia cực tím, Tự động Đóng mở','Thông số kỹ thuật sản phẩm\n\nVải ô: Vải chống nắng phủ lớp cao su đen\n\nLớp bên trong ô: Caosu đen\n\nLoại: Ô ba gấp\n\nKiểu dáng: Thủ công/Tự động\n\nChất liệu cần ô: Thép\n\nChất liệu ức ô: Sắt\n\nSố ức ô: 8 cánh\n\nPhù hợp với thời tiết: Sử dụng trong ngày nắng và ngày mưa\n\nChỉ số chống nắng: UPF50+, UVA <5%, Tỷ lệ chắn tia tử ngoại> 99.9%\n\nHiệu quả chống mưa: Mạnh\n\nKhả năng chống gió: Mạnh\n\n\n\n#ôgấp #ôgấp2chiều #ôdù #ôchemưa #ôchenắng #ôdùchenắng #ôchemưa #ôtưđộng #ôôtô #ochenang #ochemua #ô #ô2chiều #ôtưđộng #dùtựđộng #aiodiyoffical #ôgấpmở #ogapmo #ôchemưagấpgọn #ô8nan #ôgấpgọn #ô2chiều #o12nan #ômởtựđộng #aiodiyoffical','ImageProduct/104/104_0.png,ImageProduct/104/104_1.png,ImageProduct/104/104_2.png,ImageProduct/104/104_3.png,ImageProduct/104/104_4.png,ImageProduct/104/104_5.png,ImageProduct/104/104_6.png,ImageProduct/104/104_7.png,ImageProduct/104/104_8.png',4,2,'2024-06-07 13:54:40',42,1,NULL,1),(105,'Dù gấp gọn AIODIY Che nắng mưa, Chống tia cực tím, Tự động Đóng mở','Thông số kỹ thuật sản phẩm\n\nVải ô: Vải chống nắng phủ lớp cao su đen\n\nLớp bên trong ô: Caosu đen\n\nLoại: Ô ba gấp\n\nKiểu dáng: Thủ công/Tự động\n\nChất liệu cần ô: Thép\n\nChất liệu ức ô: Sắt\n\nSố ức ô: 8 cánh\n\nPhù hợp với thời tiết: Sử dụng trong ngày nắng và ngày mưa\n\nChỉ số chống nắng: UPF50+, UVA <5%, Tỷ lệ chắn tia tử ngoại> 99.9%\n\nHiệu quả chống mưa: Mạnh\n\nKhả năng chống gió: Mạnh\n\n\n\n#ôgấp #ôgấp2chiều #ôdù #ôchemưa #ôchenắng #ôdùchenắng #ôchemưa #ôtưđộng #ôôtô #ochenang #ochemua #ô #ô2chiều #ôtưđộng #dùtựđộng #aiodiyoffical #ôgấpmở #ogapmo #ôchemưagấpgọn #ô8nan #ôgấpgọn #ô2chiều #o12nan #ômởtựđộng #aiodiyoffical','ImageProduct/105/105_0.png,ImageProduct/105/105_1.png,ImageProduct/105/105_2.png,ImageProduct/105/105_3.png,ImageProduct/105/105_4.png,ImageProduct/105/105_5.png,ImageProduct/105/105_6.png,ImageProduct/105/105_7.png,ImageProduct/105/105_8.png',4,2,'2024-06-07 13:56:34',42,4,NULL,1),(106,'Ghế du lịch, Dã ngoại, Ban công, Câu cá , Cafe gấp gọn (Có lôgô)','Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn - Shop Hải Phụ Kiện \n  - Cam Kết hỗ trợ Đổi Trả nếu sản phẩm không giống với mô tả.\n  - Cam kết hình ảnh shop tự chụp ,video shop tự quay. HÌNH THẬT 100% \n  - Cam Kết giá rẻ nhất thị trường đi kèm chất lượng tốt nhất \n  - Giao hàng tận nơi trên toàn quốc, Nhận hàng nhanh chóng tại nhà.\n  - Chúc quý khách mua sắm vui vẻ!\n\nMô tả sản phẩm : Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn - Shop Hải Phụ Kiện\n➡️Quy cách:\n- Màu sắc: kaki và đen\n- Kích thước mở rộng: 55*44*62cm\n- Kích thước gấp gọn: 55*56 cm\n- Cân nặng:  2,7 kg\n- Tải trọng: 230kg\n- Chất liệu khung: Sắt\n- Chất liệu vải ghế: vải sợi Polyester Oxford 600D siêu bền \n\n➡️Mô tả sản phẩm:\n🌟 được làm bằng hợp kim nhôm nhẹ bền. Vải ghế xếp dã ngoại thoáng khí, không bám bẩn, siêu bền\n🌟 Phần để tay 2 bên được làm bằng gỗ tạo cảm giác thoải mái\n🌟 Ghế xếp dã ngoại có thể gấp gọn, dễ dàng mang đi. Thiết kế của ghế sang trọng, đẹp mắt \n🌟 Dáng ghế cao vừa phải kết hợp được với nhiều loại bàn\n🌟 Tính năng: Đi camping, du lịch, dã ngoại, trang trí sân vườn, cắm trại ngoài trời, dùng tại quán cafe, bộ bàn ghế ăn uống tại nhà, câu cá\n\nCHÍNH SÁCH ĐỔI TRẢ : Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn - Shop Hải Phu Kiện\n- Đổi trả trong vòng 3 ngày sau khi nhận hàng \n- Sản phẩm lỗi kỹ thuật được đổi mới\n- Không hài lòng về sản phẩm hoàn tiền hàng 100%.\n- Phí đổi trả Khách Hàng là người chịu hoàn toàn.\n LƯU Ý :\n- Quý khách nhận được hàng nếu có thắc mắc vui lòng inbox lại shop trước khi đánh giá sản phẩm.\n- Khách nhận hàng ĐÁNH GIÁ SHOP 5 SAO KÈM HÌNH ẢNH SHOP SẺ GIẢM 5K CHO ĐƠN HÀNG TIẾP THEO.\n- Khách yêu đặt hàng vui lòng ghi chú hoặc ib để shop giao hàng chuẩn size nhé','ImageProduct/106/106_0.png,ImageProduct/106/106_1.png,ImageProduct/106/106_2.png,ImageProduct/106/106_3.png,ImageProduct/106/106_4.png,ImageProduct/106/106_5.png,ImageProduct/106/106_6.png,ImageProduct/106/106_7.png,ImageProduct/106/106_8.png',1,2,'2024-06-07 14:04:05',13,1,NULL,1),(107,'Ghế du lịch, Dã ngoại, Ban công, Câu cá , Cafe gấp gọn (Có lôgô)','Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn - Shop Hải Phụ Kiện \n  - Cam Kết hỗ trợ Đổi Trả nếu sản phẩm không giống với mô tả.\n  - Cam kết hình ảnh shop tự chụp ,video shop tự quay. HÌNH THẬT 100% \n  - Cam Kết giá rẻ nhất thị trường đi kèm chất lượng tốt nhất \n  - Giao hàng tận nơi trên toàn quốc, Nhận hàng nhanh chóng tại nhà.\n  - Chúc quý khách mua sắm vui vẻ!\n\nMô tả sản phẩm : Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn - Shop Hải Phụ Kiện\n➡️Quy cách:\n- Màu sắc: kaki và đen\n- Kích thước mở rộng: 55*44*62cm\n- Kích thước gấp gọn: 55*56 cm\n- Cân nặng:  2,7 kg\n- Tải trọng: 230kg\n- Chất liệu khung: Sắt\n- Chất liệu vải ghế: vải sợi Polyester Oxford 600D siêu bền \n\n➡️Mô tả sản phẩm:\n🌟 được làm bằng hợp kim nhôm nhẹ bền. Vải ghế xếp dã ngoại thoáng khí, không bám bẩn, siêu bền\n🌟 Phần để tay 2 bên được làm bằng gỗ tạo cảm giác thoải mái\n🌟 Ghế xếp dã ngoại có thể gấp gọn, dễ dàng mang đi. Thiết kế của ghế sang trọng, đẹp mắt \n🌟 Dáng ghế cao vừa phải kết hợp được với nhiều loại bàn\n🌟 Tính năng: Đi camping, du lịch, dã ngoại, trang trí sân vườn, cắm trại ngoài trời, dùng tại quán cafe, bộ bàn ghế ăn uống tại nhà, câu cá\n\nCHÍNH SÁCH ĐỔI TRẢ : Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn - Shop Hải Phu Kiện\n- Đổi trả trong vòng 3 ngày sau khi nhận hàng \n- Sản phẩm lỗi kỹ thuật được đổi mới\n- Không hài lòng về sản phẩm hoàn tiền hàng 100%.\n- Phí đổi trả Khách Hàng là người chịu hoàn toàn.\n LƯU Ý :\n- Quý khách nhận được hàng nếu có thắc mắc vui lòng inbox lại shop trước khi đánh giá sản phẩm.\n- Khách nhận hàng ĐÁNH GIÁ SHOP 5 SAO KÈM HÌNH ẢNH SHOP SẺ GIẢM 5K CHO ĐƠN HÀNG TIẾP THEO.\n- Khách yêu đặt hàng vui lòng ghi chú hoặc ib để shop giao hàng chuẩn size nhé','ImageProduct/107/107_0.png,ImageProduct/107/107_1.png,ImageProduct/107/107_2.png,ImageProduct/107/107_3.png,ImageProduct/107/107_4.png,ImageProduct/107/107_5.png,ImageProduct/107/107_6.png,ImageProduct/107/107_7.png,ImageProduct/107/107_8.png',1,2,'2024-06-07 14:09:40',13,2,NULL,1),(108,'Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)','Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)\n\n','ImageProduct/108/108_0.png,ImageProduct/108/108_1.png,ImageProduct/108/108_2.png,ImageProduct/108/108_3.png,ImageProduct/108/108_4.png',4,2,'2024-06-07 14:11:49',12,1,NULL,1),(109,'Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)','Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)\n\n','ImageProduct/109/109_0.png,ImageProduct/109/109_1.png,ImageProduct/109/109_2.png,ImageProduct/109/109_3.png,ImageProduct/109/109_4.png',4,2,'2024-06-07 14:12:44',12,3,NULL,1),(110,'Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)','Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)\n\n','ImageProduct/110/110_0.png,ImageProduct/110/110_1.png,ImageProduct/110/110_2.png,ImageProduct/110/110_3.png,ImageProduct/110/110_4.png',4,2,'2024-06-07 14:16:00',12,1,NULL,1),(111,'Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)','Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)\n\n','ImageProduct/111/111_0.png,ImageProduct/111/111_1.png,ImageProduct/111/111_2.png,ImageProduct/111/111_3.png,ImageProduct/111/111_4.png',4,2,'2024-06-07 14:19:18',12,3,NULL,1),(112,'Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)','Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)\n\n','ImageProduct/112/112_0.png,ImageProduct/112/112_1.png,ImageProduct/112/112_2.png,ImageProduct/112/112_3.png,ImageProduct/112/112_4.png',4,2,'2024-06-07 14:22:54',12,0,NULL,1),(113,'Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)','Ghế du lịch , Dã ngoại , Ban công , Câu cá , Cafe gấp gọn (Có lôgô)\n\n','ImageProduct/113/113_0.png,ImageProduct/113/113_1.png',4,2,'2024-06-07 14:27:09',121,4,NULL,1);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_followers`
--

DROP TABLE IF EXISTS `seller_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_followers` (
  `user_id` bigint NOT NULL,
  `seller_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`,`seller_id`),
  KEY `seller_id` (`seller_id`),
  CONSTRAINT `seller_followers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `seller_followers_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_followers`
--

LOCK TABLES `seller_followers` WRITE;
/*!40000 ALTER TABLE `seller_followers` DISABLE KEYS */;
INSERT INTO `seller_followers` VALUES (3,2),(5,2);
/*!40000 ALTER TABLE `seller_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `avatar` varchar(1024) DEFAULT NULL,
  `shop_name` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `address_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `views` int NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address` (`address_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `sellers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `sellers_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (2,'SellerImages/7/avatar.png,SellerImages/7/cover.png','shop the thao','asadsad',1,3,0,'2024-04-21 20:49:52',0),(21,'SellerImages/9/avatar.png,SellerImages/9/cover.png','dat12123',NULL,27,9,0,'2024-05-12 14:52:10',NULL),(22,'SellerImages/9/avatar.png,SellerImages/9/cover.png','dat hoangf 124',NULL,35,9,0,'2024-05-24 15:14:21',NULL),(23,'SellerImages/10/avatar.png,SellerImages/10/cover.png','Cool Mate Offical store',NULL,38,10,0,'2024-06-02 08:59:16',NULL);
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_method`
--

DROP TABLE IF EXISTS `shipping_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_method` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `fee` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_method`
--

LOCK TABLES `shipping_method` WRITE;
/*!40000 ALTER TABLE `shipping_method` DISABLE KEYS */;
INSERT INTO `shipping_method` VALUES (1,'Giao hàng nhanh','Giao Hàng Nhanh',19000),(2,'Giao hàng hỏa tốc','Giao hàng hỏa tốc',30000),(3,'Tự lấy hàng','Tự lấy hàng',0);
/*!40000 ALTER TABLE `shipping_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (1,3,NULL),(3,6,'2024-04-05 21:37:47'),(4,9,'2024-05-12 17:24:27'),(5,10,'2024-06-05 21:41:11');
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart_item`
--

DROP TABLE IF EXISTS `shopping_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cart_id` bigint DEFAULT NULL,
  `product_item_id` bigint DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_item_id` (`product_item_id`),
  CONSTRAINT `shopping_cart_item_ibfk_1` FOREIGN KEY (`product_item_id`) REFERENCES `product_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_item`
--

LOCK TABLES `shopping_cart_item` WRITE;
/*!40000 ALTER TABLE `shopping_cart_item` DISABLE KEYS */;
INSERT INTO `shopping_cart_item` VALUES (90,4,5,1,'2024-05-16 12:02:02'),(101,4,2,1,'2024-05-30 10:09:02'),(102,4,3,1,'2024-05-30 10:09:05'),(103,4,35,3,'2024-05-30 10:12:46'),(105,4,38,1,'2024-05-30 10:23:08'),(108,4,39,1,'2024-05-30 10:34:43'),(109,4,40,1,'2024-05-30 10:34:59'),(133,4,235,1,'2024-06-02 08:34:59'),(134,4,45,1,'2024-06-02 08:41:04'),(139,1,235,1,'2024-06-05 21:36:35'),(140,5,35,2,'2024-06-05 21:41:11');
/*!40000 ALTER TABLE `shopping_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `user_id` bigint NOT NULL,
  `address_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_default` bit(1) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`address_id`),
  KEY `address_id` (`address_id`),
  CONSTRAINT `user_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_address_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES (3,31,'2024-05-22 09:02:02','2024-05-22 09:02:02',_binary '\0'),(3,32,'2024-05-22 09:02:32','2024-05-22 09:02:32',_binary ''),(3,36,'2024-05-27 16:06:20','2024-05-27 16:06:20',_binary '\0'),(4,2,NULL,NULL,NULL),(9,37,'2024-05-30 09:18:56','2024-05-30 09:18:56',_binary '');
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `dob` date DEFAULT '1990-01-01',
  `is_locked` bit(1) DEFAULT b'0',
  `avatar` varchar(1024) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'dat1234','JSm5oAGusjmIxnepT8TmaCahBxU=','dathv2004@gmail.com','12312312312','2024-03-15 16:28:14','male','2024-03-20',_binary '','USER_AVATAR/3/3.png','dasdasasdasd','SELLER'),(4,'dat','PLQ4laHKUA3DY7RcRDjFyxl0rDM=','dathv123@gmail.com',NULL,'2024-03-23 21:17:39','male','2024-03-06',_binary '\0',NULL,NULL,'CUSTOMER'),(5,'dat123122','XMnJIT/dD1rQAAJv71cSrW3feWE=','102220056@sv1.dut.udn.vn',NULL,'2024-03-24 23:26:20','male','2024-03-01',_binary '',NULL,NULL,'CUSTOMER'),(6,'dat12345','UGd8MZh6DWh5c9fwLtlCybcrsmE=','dat10108@gmail.com',NULL,'2024-04-05 15:10:01','male','2004-12-31',_binary '\0',NULL,NULL,'CUSTOMER'),(9,'dat123','MHiL+CJ3N3411r6p6v1KAKMC+7I=','102220055@sv1.dut.udn.vn','','2024-05-11 16:06:16','male','2024-05-23',_binary '','USER_AVATAR/9/9.png','sdasdasdasdas','SELLER'),(10,'Coolmate123','1dLwkC8QDljJyk8B2LVzbH3EI4k=','dat10106868@gmail.com',NULL,'2024-06-02 08:55:03','male','2023-10-18',_binary '\0','USER_AVATAR/10/10.png',NULL,'SELLER');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation`
--

DROP TABLE IF EXISTS `variation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `variation_products_id_fk` (`product_id`),
  CONSTRAINT `variation_products_id_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation`
--

LOCK TABLES `variation` WRITE;
/*!40000 ALTER TABLE `variation` DISABLE KEYS */;
INSERT INTO `variation` VALUES (3,2,'Màu sắc'),(4,2,'Size'),(5,4,'Size'),(6,5,'Tùy Chọn'),(7,5,'Màu Sắc'),(53,90,'asdasda'),(54,91,'asdasd'),(55,91,'asdasdasd'),(56,92,'asdasd'),(57,92,'asdasdasd'),(58,93,'asdasd'),(59,93,'asdasdasdsdd'),(60,94,'áđá'),(61,95,'qưeqew'),(62,95,'qewqưeqưe'),(63,96,'Màu sắc'),(64,96,'Căng'),(72,104,'Màu sắc'),(73,105,'Màu sắc'),(74,105,'Chức Năng'),(75,106,'Màu Sắc'),(76,106,'Kích cỡ'),(77,107,'Màu Sắc'),(78,107,'Kích cỡ'),(79,108,'Màu Sắc'),(80,108,'Kích cỡ'),(81,109,'Màu Sắc'),(82,109,'Kích cỡ'),(83,110,'Màu Sắc'),(84,111,'Màu Sắc'),(85,112,'Màu Sắc'),(86,113,'asdasd');
/*!40000 ALTER TABLE `variation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variation_option`
--

DROP TABLE IF EXISTS `variation_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variation_option` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `variation_id` bigint DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `variation_id` (`variation_id`),
  CONSTRAINT `variation_option_ibfk_1` FOREIGN KEY (`variation_id`) REFERENCES `variation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_option`
--

LOCK TABLES `variation_option` WRITE;
/*!40000 ALTER TABLE `variation_option` DISABLE KEYS */;
INSERT INTO `variation_option` VALUES (7,3,'Đen'),(8,3,'Be'),(9,3,'Xám đậm'),(10,4,'XL'),(11,4,'M'),(12,4,'L'),(14,3,'Xám tiêu đậm'),(15,3,'Xám trắng'),(16,5,'35'),(17,5,'35.5'),(18,5,'35.5'),(19,5,'36'),(20,5,'37'),(21,5,'38'),(22,5,'38.5'),(23,5,'39'),(24,5,'40'),(25,5,'40.5'),(26,5,'41'),(27,5,'42'),(28,5,'42.5'),(29,5,'43'),(30,5,'44'),(31,6,'Ghế có tựa đầu'),(33,7,'Đen'),(34,7,'Trắng'),(119,53,'asdasdasda'),(120,53,'asdasdsadasda'),(121,54,'asdasdas'),(122,55,'asdasdasd'),(123,54,'asdasdasd'),(124,55,''),(125,56,'asdasdas'),(126,57,'asdasdasd'),(127,56,'asdasdasd'),(128,57,'azsdasdas'),(129,58,'asdasdassssd'),(130,59,'asdasdasd'),(131,58,'asdasdasdssss'),(132,58,'asdasdasd'),(133,59,'asdasdasdss'),(134,59,'azsdasdas'),(135,60,'áđâsdá'),(136,60,'áđâsd'),(137,61,'qưeqưeqưeq'),(138,62,'qưeqưewq'),(139,61,'qeqưeqưeqưeqư'),(140,62,'eqưeqưeqưe'),(141,63,'CĂNG DÂY SẴN 10-11KG'),(142,64,'K52 PRO ĐEN'),(143,63,'KHÔNG CĂNG DÂY SẴN'),(144,64,'K52 PRO TRẮNG'),(170,72,'Đen'),(171,72,'Xanh'),(172,72,'Hồng'),(173,74,'Tự động'),(174,73,'Đen'),(175,74,'Thủ công'),(176,73,'Xanh'),(177,73,'Hồng'),(178,76,'M'),(179,75,'Khung đen vải đen'),(180,76,'L'),(181,75,'Khung vàng vải đen'),(182,75,'Khung vàng vải baki'),(183,77,'M'),(184,78,'Khung đen vải đen'),(185,77,'L'),(186,78,'Khung vàng vải đen'),(187,78,'Khung vàng vải baki'),(188,79,'Khung đen vải đen'),(189,80,'M'),(190,80,'L'),(191,79,'Khung đen vải baki'),(192,79,'Khung vàng vải đen'),(193,81,'Khung đen vải đen'),(194,82,'M'),(195,82,'L'),(196,81,'Khung đen vải baki'),(197,81,'Khung vàng vải đen'),(198,83,''),(199,84,''),(200,85,''),(201,86,'asdasdas'),(202,86,'dasdasdsaddd'),(203,86,'asdasdasdddd');
/*!40000 ALTER TABLE `variation_option` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-07 14:31:56

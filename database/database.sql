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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,NULL,'Hòa Khánh Nam','Liên chiều','Đà Nẵng','2024-04-21 16:16:07','2024-04-21 16:16:13',NULL,NULL),(2,'asdadas','00043','002','01','2024-04-27 13:00:01','2024-04-27 13:00:01',NULL,NULL),(3,'asdadas','00043','002','01','2024-04-27 13:04:05','2024-04-27 13:04:05',NULL,NULL),(4,'asdasdas','00043','002','01','2024-04-27 13:07:12','2024-04-27 13:07:12',NULL,NULL),(5,'asdasdas','00043','002','01','2024-04-27 13:07:47','2024-04-27 13:07:47',NULL,NULL),(6,'asdadadsa','00043','002','01','2024-04-27 13:11:09','2024-04-27 13:11:09',NULL,NULL),(7,'asdasdasdadssadadaas','00043','002','01','2024-04-27 13:13:38','2024-04-27 13:13:38',NULL,NULL),(8,'asdasdadasda','00043','002','01','2024-04-27 13:16:02','2024-04-27 13:16:02',NULL,NULL),(9,'asdadsadasd','00043','002','01','2024-04-27 13:22:01','2024-04-27 13:22:01',NULL,NULL),(10,'adadadasda','00043','002','01','2024-04-27 14:13:31','2024-04-27 14:13:31',NULL,NULL),(11,'adsasdasdsa','00043','002','01','2024-04-27 14:16:09','2024-04-27 14:16:09',NULL,NULL),(12,'asdadsad','00043','002','01','2024-04-27 14:17:46','2024-04-27 14:17:46',NULL,NULL),(13,'asdasdasd','00043','002','01','2024-04-27 14:19:11','2024-04-27 14:19:11',NULL,NULL),(14,'Xom van phuc','17683','427','40','2024-04-27 14:25:19','2024-04-27 14:25:19',NULL,NULL),(15,'asdasdadadasdasdasd','00043','002','01','2024-04-27 14:35:57','2024-04-27 14:35:57',NULL,NULL),(16,'adsasdasda','00043','002','01','2024-04-27 14:46:08','2024-04-27 14:46:08',NULL,NULL),(17,'asdasdsa','00043','002','01','2024-04-27 22:37:00','2024-04-27 22:37:00',NULL,NULL),(18,'12 nguyen khoa chiem','05617','168','19','2024-04-27 22:45:57','2024-04-27 22:45:57',NULL,NULL),(19,'12141231213','00043','002','01','2024-05-02 20:52:21','2024-05-02 20:52:21',NULL,NULL),(20,'121321','00043','002','01','2024-05-02 20:54:07','2024-05-02 20:54:07',NULL,NULL),(21,' 121321 ','00043','002','01','2024-05-02 20:55:39','2024-05-02 20:55:39',NULL,NULL),(22,'121312','00043','002','01','2024-05-02 20:57:05','2024-05-02 20:57:05',NULL,NULL),(23,'123 Hoàng Hoa Thám','00815','027','02','2024-05-10 15:24:09','2024-05-10 15:24:09',NULL,NULL),(24,'asdasdasdasd','00043','002','01','2024-05-10 22:03:06','2024-05-10 22:03:06',NULL,NULL),(25,'asdasdasda','00763','026','02','2024-05-11 16:13:13','2024-05-11 16:13:13',NULL,NULL),(26,'asdasdasdsa','00043','002','01','2024-05-11 16:23:34','2024-05-11 16:23:34',NULL,NULL),(27,'123123123','00043','002','01','2024-05-12 14:52:10','2024-05-12 14:52:10',NULL,NULL),(28,'','','','','2024-05-15 13:07:21','2024-05-15 13:07:21','',''),(31,'9 Hà Văn Tính','20198','490','48','2024-05-22 09:02:02','2024-05-22 09:02:42','0396454720','Hoàng Văn Đạt'),(32,'123 Nguyễn Tri Phương','00001','001','01','2024-05-22 09:02:32','2024-05-22 09:33:24','0396454720','Hoàng Văn Đạt'),(35,'asdasdasda','01359','043','04','2024-05-24 15:14:21','2024-05-24 15:14:21',NULL,NULL),(36,'asdasdsa','00001','001','01','2024-05-27 16:06:20','2024-05-27 16:06:20','asdasdsad','asdasd'),(37,'Xóm Vạn Phúc','17683','427','40','2024-05-30 09:18:56','2024-05-30 09:18:56','0396454720','Hoàng Văn Đat');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Thời trang',NULL),(2,'Beverages',NULL),(4,'Confections',NULL),(5,'Dairy Products',NULL),(6,'Grains/Cereals',NULL),(7,'Meat/Poultry',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (4,52,'30',3,2084500),(5,2,'30',1,240000),(6,229,'31',8,281),(7,52,'32',3,2084500),(8,2,'32',1,240000),(9,229,'33',8,281),(10,52,'34',3,2084500),(11,2,'34',1,240000),(12,229,'35',8,281),(13,52,'36',3,2084500),(14,2,'36',1,240000),(15,229,'37',8,281),(16,52,'38',3,2084500),(17,2,'38',1,240000),(18,229,'39',8,281),(19,52,'40',3,2084500),(20,2,'40',1,240000),(21,229,'41',8,281),(22,52,'42',2,2084500),(23,2,'42',1,240000),(24,8,'42',5,240000),(25,229,'43',8,281),(26,52,'44',2,2084500),(27,2,'44',1,240000),(28,8,'44',5,240000),(29,229,'45',8,281),(30,52,'46',2,2084500),(31,2,'46',1,240000),(32,8,'46',5,240000),(33,229,'47',8,281),(34,52,'48',2,2084500),(35,2,'48',1,240000),(36,8,'48',5,240000),(37,229,'49',8,281),(38,52,'50',2,2084500),(39,2,'50',1,240000),(40,8,'50',5,240000),(41,229,'51',8,281),(42,52,'52',2,2084500),(43,2,'52',1,240000),(44,8,'52',5,240000),(45,229,'53',8,281),(46,52,'54',2,2084500),(47,2,'54',1,240000),(48,8,'54',5,240000),(49,229,'55',8,281),(50,52,'56',2,2084500),(51,2,'56',1,240000),(52,8,'56',5,240000),(53,229,'57',8,281),(54,52,'58',2,2084500),(55,2,'58',1,240000),(56,8,'58',5,240000),(57,229,'59',8,281),(58,52,'60',2,2084500),(59,2,'60',1,240000),(60,8,'60',5,240000),(61,229,'61',8,281),(62,52,'62',2,2084500),(63,2,'62',1,240000),(64,8,'62',5,240000),(65,229,'63',8,281),(66,52,'64',2,2084500),(67,2,'64',1,240000),(68,8,'64',5,240000),(69,229,'65',8,281),(70,52,'66',2,2084500),(71,2,'66',1,240000),(72,8,'66',5,240000),(73,229,'67',8,281),(74,52,'68',2,2084500),(75,2,'68',1,240000),(76,8,'68',5,240000),(77,229,'69',8,281),(78,52,'70',2,2084500),(79,2,'70',1,240000),(80,8,'70',5,240000),(81,229,'71',8,281),(82,52,'72',2,2084500),(83,2,'72',1,240000),(84,8,'72',5,240000),(85,229,'73',8,281),(86,52,'74',2,2084500),(87,2,'74',1,240000),(88,8,'74',5,240000),(89,229,'75',8,281),(90,52,'76',2,2084500),(91,2,'76',1,240000),(92,8,'76',5,240000),(93,229,'77',8,281),(94,52,'78',2,2084500),(95,2,'78',1,240000),(96,8,'78',5,240000),(97,229,'79',8,281),(98,52,'80',2,2084500),(99,2,'80',1,240000),(100,8,'80',5,240000),(101,229,'81',8,281),(102,52,'82',2,2084500),(103,2,'82',1,240000),(104,8,'82',5,240000),(105,229,'83',8,281),(106,2,'84',1,240000),(107,8,'84',5,240000),(108,229,'85',8,281),(109,5,'86',1,240000),(110,38,'87',12,1875000),(111,38,'88',3,1875000),(112,44,'89',3,1875000),(113,52,'90',1,2084500),(114,38,'32117079976675',3,1875000),(115,38,'32117082887496',3,1875000),(116,36,'32217082925180',1,1875000),(117,38,'32217082925180',3,1875000),(118,38,'23117085777932',3,1875000),(119,36,'23117085878957',1,1875000),(120,36,'23117086077958',1,1875000),(121,36,'23117086168363',1,1875000),(122,36,'23117086240052',1,1875000);
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
INSERT INTO `orders` VALUES ('23117085777932',3,2,2,5625000,1,'00001','001','01','2024-05-30 23:16:18','2024-05-30 23:16:18','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('23117085878957',3,2,2,1875000,1,'00001','001','01','2024-05-30 23:17:59','2024-05-30 23:17:59','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('23117086077958',3,2,2,1875000,1,'00001','001','01','2024-05-30 23:21:18','2024-05-30 23:21:18','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('23117086168363',3,2,2,1875000,1,'00001','001','01','2024-05-30 23:22:49','2024-05-30 23:22:49','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('23117086240052',3,2,2,1875000,1,'00001','001','01','2024-05-30 23:24:00','2024-05-30 23:24:00','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('28',3,2,2,6493500,1,'20198','490','48','2024-05-26 18:37:55','2024-05-26 18:37:55','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',2),('29',3,2,2,2246,1,'20198','490','48','2024-05-26 18:38:09','2024-05-26 18:38:09','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',21),('30',3,2,2,6493500,1,'20198','490','48','2024-05-26 18:44:07','2024-05-26 18:44:07','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',2),('31',3,2,2,2248,1,'20198','490','48','2024-05-26 18:44:11','2024-05-26 18:44:11','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',21),('32',3,2,2,6493500,1,'00001','001','01','2024-05-27 09:49:27','2024-05-27 09:49:27','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('32117079976675',3,2,2,5625000,1,'00001','001','01','2024-05-30 21:39:37','2024-05-30 21:39:37','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('32117082887496',3,2,2,5625000,1,'00001','001','01','2024-05-30 22:28:08','2024-05-30 22:28:08','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('32217082925180',3,1,2,7500000,2,'00001','001','01','2024-05-30 22:28:45','2024-05-30 22:28:45','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('33',3,2,2,2248,1,'00001','001','01','2024-05-27 09:49:27','2024-05-27 09:49:27','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('34',3,2,2,6493500,1,'00001','001','01','2024-05-27 09:49:50','2024-05-27 09:49:50','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('35',3,2,2,2248,1,'00001','001','01','2024-05-27 09:49:50','2024-05-27 09:49:50','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('36',3,2,2,6493500,1,'20198','490','48','2024-05-27 15:31:04','2024-05-27 15:31:04','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',2),('37',3,2,2,2248,1,'20198','490','48','2024-05-27 15:31:04','2024-05-27 15:31:04','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',21),('38',3,1,2,6493500,1,'20198','490','48','2024-05-27 15:31:20','2024-05-27 15:31:20','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',2),('39',3,1,2,2248,1,'20198','490','48','2024-05-27 15:31:20','2024-05-27 15:31:20','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',21),('40',3,2,2,6493500,1,'00001','001','01','2024-05-27 15:42:03','2024-05-27 15:42:03','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('41',3,2,2,2248,1,'00001','001','01','2024-05-27 15:42:03','2024-05-27 15:42:03','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('42',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:21:01','2024-05-28 15:21:01','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('43',3,2,2,2248,1,'00001','001','01','2024-05-28 15:21:01','2024-05-28 15:21:01','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('44',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:46:01','2024-05-28 15:46:01','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('45',3,2,2,2248,1,'00001','001','01','2024-05-28 15:46:01','2024-05-28 15:46:01','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('46',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:46:47','2024-05-28 15:46:47','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('47',3,2,2,2248,1,'00001','001','01','2024-05-28 15:46:47','2024-05-28 15:46:47','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('48',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:47:05','2024-05-28 15:47:05','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('49',3,2,2,2248,1,'00001','001','01','2024-05-28 15:47:05','2024-05-28 15:47:05','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('50',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:47:48','2024-05-28 15:47:48','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('51',3,2,2,2248,1,'00001','001','01','2024-05-28 15:47:48','2024-05-28 15:47:48','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('52',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:48:14','2024-05-28 15:48:14','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('53',3,2,2,2248,1,'00001','001','01','2024-05-28 15:48:14','2024-05-28 15:48:14','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('54',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:49:12','2024-05-28 15:49:12','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('55',3,2,2,2248,1,'00001','001','01','2024-05-28 15:49:12','2024-05-28 15:49:12','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('56',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:49:15','2024-05-28 15:49:15','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('57',3,2,2,2248,1,'00001','001','01','2024-05-28 15:49:15','2024-05-28 15:49:15','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('58',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:50:38','2024-05-28 15:50:38','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('59',3,2,2,2248,1,'00001','001','01','2024-05-28 15:50:38','2024-05-28 15:50:38','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('60',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:50:59','2024-05-28 15:50:59','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('61',3,2,2,2248,1,'00001','001','01','2024-05-28 15:50:59','2024-05-28 15:50:59','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('62',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:51:23','2024-05-28 15:51:23','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('63',3,2,2,2248,1,'00001','001','01','2024-05-28 15:51:23','2024-05-28 15:51:23','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('64',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:52:07','2024-05-28 15:52:07','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('65',3,2,2,2248,1,'00001','001','01','2024-05-28 15:52:07','2024-05-28 15:52:07','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('66',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:52:28','2024-05-28 15:52:28','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('67',3,2,2,2248,1,'00001','001','01','2024-05-28 15:52:28','2024-05-28 15:52:28','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('68',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:52:53','2024-05-28 15:52:53','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('69',3,2,2,2248,1,'00001','001','01','2024-05-28 15:52:53','2024-05-28 15:52:53','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('70',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:53:25','2024-05-28 15:53:25','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('71',3,2,2,2248,1,'00001','001','01','2024-05-28 15:53:25','2024-05-28 15:53:25','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('72',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:26','2024-05-28 15:54:26','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('73',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:26','2024-05-28 15:54:26','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('74',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:30','2024-05-28 15:54:30','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('75',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:30','2024-05-28 15:54:30','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('76',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:34','2024-05-28 15:54:34','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('77',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:34','2024-05-28 15:54:34','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('78',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:37','2024-05-28 15:54:37','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('79',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:37','2024-05-28 15:54:37','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('80',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:57','2024-05-28 15:54:57','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('81',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:57','2024-05-28 15:54:57','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('82',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:55:23','2024-05-28 15:55:23','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('83',3,2,2,2248,1,'00001','001','01','2024-05-28 15:55:23','2024-05-28 15:55:23','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('84',3,2,2,1440000,1,'00001','001','01','2024-05-28 16:30:11','2024-05-28 16:30:11','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('85',3,2,2,2248,1,'00001','001','01','2024-05-28 16:30:11','2024-05-28 16:30:11','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('86',9,2,2,240000,1,'17683','427','40','2024-05-30 09:19:26','2024-05-30 09:19:26','0396454720','Hoàng Văn Đat','Xóm Vạn Phúc',2),('87',3,2,2,22500000,1,'00001','001','01','2024-05-30 10:54:15','2024-05-30 10:54:15','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('88',3,2,2,5625000,1,'00001','001','01','2024-05-30 20:11:03','2024-05-30 20:11:03','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('89',3,2,2,5625000,1,'00001','001','01','2024-05-30 20:26:11','2024-05-30 20:26:11','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('90',3,2,2,2084500,1,'00001','001','01','2024-05-30 20:26:37','2024-05-30 20:26:37','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_item`
--

LOCK TABLES `product_item` WRITE;
/*!40000 ALTER TABLE `product_item` DISABLE KEYS */;
INSERT INTO `product_item` VALUES (1,2,NULL,'img_product/quan_002.png',7,10,100,300000),(2,2,NULL,'img_product/quan_003.png',7,11,200,300000),(3,2,NULL,'img_product/quan_004.png',7,12,300,300000),(4,2,NULL,'img_product/quan_005.png',8,10,1,300000),(5,2,NULL,'img_product/quan_006.png',8,11,2,300000),(6,2,NULL,'img_product/quan_007.png',8,12,3,300000),(7,2,NULL,'img_product/quan_002.png',9,10,4,300000),(8,2,NULL,'img_product/quan_003.png',9,11,5,300000),(9,2,NULL,'img_product/quan_004.png',9,12,2,300000),(10,2,NULL,'img_product/quan_005.png',14,10,4,300000),(11,2,NULL,'img_product/quan_006.png',14,11,2,300000),(12,2,NULL,'img_product/quan_007.png',14,12,4,300000),(13,2,NULL,'img_product/quan_002.png',15,10,2,300000),(14,2,NULL,'img_product/quan_003.png',15,11,14,300000),(15,2,NULL,'img_product/quan_004.png',15,12,2,300000),(35,3,NULL,'img_product/day_002.png',NULL,NULL,300,1000000),(36,4,'123456','img_product/123456.png',16,NULL,95,2500000),(37,4,'123457','img_product/123457.png',17,NULL,100,2500000),(38,4,'123458','img_product/123458.png',18,NULL,88,2500000),(39,4,'123459','img_product/123459.png',19,NULL,103,2500000),(40,4,'123460','img_product/123460.png',20,NULL,10,2500000),(41,4,'123461','img_product/123461.png',21,NULL,100,2500000),(42,4,'123462','img_product/123462.png',22,NULL,104,2500000),(43,4,'123463','img_product/123463.png',23,NULL,14,2500000),(44,4,'123464','img_product/123456.png',24,NULL,0,2500000),(45,4,'123465','img_product/123457.png',25,NULL,100,2500000),(46,4,'123466','img_product/123458.png',26,NULL,100,2500000),(47,4,'123467','img_product/123459.png',27,NULL,100,2500000),(48,4,'123468','img_product/123460.png',28,NULL,100,2500000),(49,4,'123469','img_product/123461.png',29,NULL,100,2500000),(50,4,'123470','img_product/123462.png',30,NULL,100,2500000),(51,5,'GHE-001','img_product/img_1.png',31,33,10,3790000),(52,5,'GHE-002','img_product/img_2.png',31,34,0,3790000),(216,90,NULL,NULL,119,NULL,312,121),(217,90,NULL,'',120,NULL,312,121),(218,90,NULL,NULL,119,NULL,312,121),(219,90,NULL,'',120,NULL,312,121),(220,91,NULL,'ImageProduct/91/91_01.png',121,122,0,312),(221,91,NULL,'ImageProduct/91/91_01.png',123,122,312,312),(222,91,NULL,'ImageProduct/91/91_01.png',123,122,312,312),(223,91,NULL,'ImageProduct/91/91_04.png',121,122,312,312),(224,91,NULL,'ImageProduct/91/91_04.png',123,122,312,312),(225,91,NULL,'ImageProduct/91/91_04.png',123,122,312,312),(226,91,NULL,'ImageProduct/91/91_07.png',121,124,312,312),(227,91,NULL,'ImageProduct/91/91_07.png',123,124,312,312),(228,91,NULL,'ImageProduct/91/91_07.png',123,124,312,312),(229,92,NULL,'ImageProduct/92/92_01.png',125,126,312,312),(230,92,NULL,'ImageProduct/92/92_01.png',127,126,312,312),(231,92,NULL,'ImageProduct/92/92_01.png',127,126,312,312),(232,92,NULL,'ImageProduct/92/92_04.png',125,126,312,312),(233,92,NULL,'ImageProduct/92/92_04.png',127,126,312,312),(234,92,NULL,'ImageProduct/92/92_04.png',127,126,312,312),(235,92,NULL,'ImageProduct/92/92_07.png',125,128,312,312),(236,92,NULL,'ImageProduct/92/92_07.png',127,128,312,312),(237,92,NULL,'ImageProduct/92/92_07.png',127,128,312,312),(238,93,NULL,'ImageProduct/93/93_01.png',129,130,312,12),(239,93,NULL,'ImageProduct/93/93_01.png',131,130,312,12),(240,93,NULL,'ImageProduct/93/93_01.png',132,130,312,12),(241,93,NULL,'ImageProduct/93/93_04.png',129,133,123,12),(242,93,NULL,'ImageProduct/93/93_04.png',131,133,123,12),(243,93,NULL,'ImageProduct/93/93_04.png',132,133,123,12),(244,93,NULL,'ImageProduct/93/93_07.png',129,134,123,12),(245,93,NULL,'ImageProduct/93/93_07.png',131,134,123,12),(246,93,NULL,'ImageProduct/93/93_07.png',132,134,123,12),(247,94,NULL,'',135,NULL,1212,12),(248,94,NULL,'',136,NULL,1212,12),(249,95,NULL,'ImageProduct/95/95_01.png',137,138,123312,1211),(250,95,NULL,'ImageProduct/95/95_01.png',139,138,123312,1211),(251,95,NULL,'ImageProduct/95/95_03.png',137,140,123312,1211),(252,95,NULL,'ImageProduct/95/95_03.png',139,140,123312,1211);
/*!40000 ALTER TABLE `product_item` ENABLE KEYS */;
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
                            `is_deleted` bit(1) DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            KEY `category_id` (`category_id`),
                            KEY `seller_id` (`seller_id`),
                            CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
                            CONSTRAINT `products_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Quần Nỉ Dài Relax Pants ODIN CLUB, Quần nỉ dài ống suông ODIN, Local Brand ODIN CLUB','Quần nỉ dài Relax Pants ODIN CLUB\n\n- Màu sắc: Đen /  Be / Xám Nhạt / Xám Đậm\n\n- Size: M / L / XL.\n\n- Kiểu dáng: Oversized.\n\nHƯỚNG DẪN SỬ DỤNG:\n\n- Lần giặt đầu chỉ nên xả nước lạnh rồi phơi khô.\n\n- Khuyến cáo nên giặt tay, hạn chế giặt máy.\n\n- Chú ý lộn trái sản phẩm trước khi giặt để không ảnh hướng tới bề mặt vải.\n\n- Không sử dụng thuốc tẩy, không giặt chung với các sản phẩm dễ phai màu\n\n- Hạn chế phơi trực tiếp dưới ánh nắng mặt trời, nên phơi khô dưới ảnh sáng tự nhiên\n\n\n\nCAM KẾT TỪ ODIN CLUB\n\n- Sản phẩm 100% giống mô tả.\n\n- Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh.\n\n- Đảm bảo chất lượng sản phẩm luôn ở mức cao nhất. \n\n- Hàng có sẵn, giao hàng trên toàn quốc, nhận hàng sau 2-3 ngày đối với các khu vực thuộc nội thành Hà Nội và 3-4 ngày đối với các khu vực khác.\n\n\n\nCHÍNH SÁCH ĐỔI-TRẢ\n\n1. Điều kiện tiên quyết:\n\n- Có video quay lại quá trình mở gói hàng.\n\n- Hàng hoá vẫn còn nguyên hiện trạng kể từ khi KH mở gói hàng.\n\n- Khách hàng phản hồi trong vòng 6 ngày kể từ ngày nhận hàng.\n\n2. Trường hợp được hỗ trợ:\n\n- Hàng nhận được không đúng màu sắc, kích thước, số lượng như KH đặt hàng.\n\n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất.\n\n\n\n*Lưu ý:  Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.','img_product/quan_001.png',1,2,'2024-04-18 14:54:05',20,47,NULL,NULL),(3,'Giày Thể Thao Alphabounce Beyond Trắng Full Cực Êm Thoáng Khí Phù Hợp Với Cả Nam Và Nữ Clever Man Store','MÔ TẢ SẢN PHẨM\n🔸 Giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ đầy tính năng, được thiết kế để cung cấp sự thoải mái, độ bền và hỗ trợ cho người chơi khi tập luyện hoặc tham gia các hoạt động thể thao. Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là sự lựa chọn tuyệt vời cho những ai yêu thích sự đơn giản và trẻ trung.\n\n\n\n🔸 Đế giày của giày Alphabounce Beyond trắng được thiết kế với công nghệ Bounce độc quyền của AD, giúp cung cấp độ đàn hồi và đàn hồi tối đa, giúp người mang giày chạy bộ linh hoạt hơn và giảm sốc tốt hơn khi đáp xuống mặt đất. Thân giày được làm bằng vải Jacquard, là một loại vải nhẹ và thoáng khí, giúp người mang giày cảm thấy mát mẻ và thoải mái trong suốt quá trình tập luyện.\n\n\n\n🔸 Giày Alphabounce Beyond trắng còn được thiết kế với hệ thống hỗ trợ gót chân, giúp người mang giày cảm thấy thoải mái và ổn định hơn khi chạy. Đế giày của giày được làm bằng cao su chất lượng cao, giúp tăng độ bền và độ bám của giày.\n\n\n\n🔸 Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ tinh tế và phù hợp với nhiều phong cách. Với sự kết hợp giữa công nghệ và thẩm mỹ, giày Alphabounce Beyond trắng là sự lựa chọn hoàn hảo cho những người yêu thích sự đơn giản và trẻ trung.\n\n','img_product/day_001.png',1,2,'2024-02-22 14:54:11',44,142,NULL,NULL),(4,'Giày Converse Run Star Hike Twisted Classic Foundational Canvas - 166800C','Tên Đơn vị Nhập Khẩu: CÔNG TY TNHH MAGNA MANAGEMENT ASIA (MMA)\n\nĐịa chỉ: Phòng 14-02, Tầng 14, Tòa nhà Xổ Số Kiến Thiết Thành phố Hồ Chí Minh, 77 Trần Nhân Tôn, Phường 09, Quận 5, Thành phố Hồ Chí Minh, Việt Nam\n\nTel: 02838301111\n\nGIÀY SNEAKERS CONVERSE - HÀNG CHÍNH HÃNG PHÂN PHỐI BỞI WEAR VIETNAM Cuộc cách mạng siêu bứt phá mang tên Converse Run Star Hike \n\nBạn đã quá quen với phong cách quen thuộc của Converse là những đôi giày thể thao, chất lừ, khỏe khoắn với phần thân bằng vải và đế giày cau su màu đen thì có lẽ bạn sẽ phải thốt lên những từ cảm thán bất ngờ khi được chứng kiến sự bứt phá đầy khác biệt với dòng sản phẩm mới mang tên: Converse Run Star Hike.\n\nRun Star Hike - cú bứt phá ngoạn mục của Converse\n\nRa mắt đầu 2020, BST cực chất của Converse mang tên Converse Twisted Classic có lẽ đã tạo được tiếng vang cực lớn đối với những tín đồ yêu sneaker trên toàn thế giới. Thoát khỏi bóng dáng của những đôi Converse thân thuộc, lần này nhà thiết kế của Converse chịu chơi hơn rất nhiều khi đã biến tấu những sản phẩm của mình trở nên “không đụng hàng” với bất cứ dòng sản phẩm nào trước đó từng ra mắt.\n\nĐể mang lại cái nhìn rõ ràng và cận cảnh hơn, trong phần dưới đây, hãy cùng chiêm ngưỡng từng đường nét của đôi giày Converse Run Star Hike hot nhất 2020 này nhé!\n\nCận cảnh sự khác biệt chất chơi của mẫu giày Converse Run Star Hike\n\nRun Star Hike - mẫu giày đi trước thời đại của Converse\n\nGiày Converse Run Star Hike là dòng sản phẩm được kết hợp giữa Converse cùng JW Anderson. Trước đó, sự kết hợp này đã trình làng những sản phẩm giày mang nhiều cải tiến để thích hợp hơn với bộ môn leo núi. Chính từ nguồn cảm hứng đó, Run Star Hike đã ra đời và như một nét chấm phá trong phong cách quen thuộc thường thấy của Converse. Với những ưu điểm nổi bật về khả năng bám bề mặt vừa mang tính thời trang với phần đế độc đáo, những nhà nhận định thời trang nổi tiếng cũng phải thừa nhận rằng đây là những sản phẩm đi trước thời đại. Phải chăng, vì thế mà những đôi giày Converse Run Star Hike đã thừa thắng xông lên trên toàn thế giới với những ưu ái của idol Hàn Quốc hay những stylist, fashionista nổi tiếng nhất.\n\nCận cảnh sự phá cách không đụng hàng của Run Star Hike\n\nMở rộng thị trường, Converse đã cực kỳ đúng đắn khi quyết định mang tới nhiều sản phẩm mang tính định hướng hơn so với những đôi giày Converse truyền thống. Không chỉ phục vụ đối tượng là thế hệ Gen Z, hiện nay, Converse còn muốn cung cấp những sản phẩm chất lượng dành cho các bạn trẻ yêu thích sự mạo hiểm, thể hiện sức mạnh của bản thân với các bộ môn như leo núi, trekking…\n\nSản phẩm được \"remix\" từ Chuck và Runner khi 2 yếu tố thời trang được thể hiện xen kẽ: Upper canvas và đế Run Star zig-zag. Đổi mới từ những đôi giày Converse truyền thống với đế giày casual, đế cau su kép và bằng phẳng,Giày Converse Run Star Hike được thiết kế với phần đế giày dành riêng cho dân leo núi với độ dốc lớn. Đế giày được thiết kế với dạng răng cưa to bản, giúp tăng độ bám một cách hiệu quả vừa tạo được điểm nhấn về phong cách và ấn tượng về thời trang. \n\nGót giày thay vì có logo Converse quen thuộc thì với đôi Run Star Hike thay bằng ngôi sao màu đen ở chính giữa. Đế giày dày tới 6cm, và là một trong những đôi sneakers có phần đế dày nhất tính đến hiện tại. \n\nGiày Converse Run Star Hike hiện được ra mắt với hai tông màu chính là trắng basic và đen cá tính. Chắc chắn trong tương lai, Run Star Hike có thể tạo cho mình được một đế chế riêng không chỉ dành cho dân leo núi mà còn có chỗ đứng trong lòng các bạn trẻ Việt Nam\n\n- Size US : 3.5-11, Size EU: 34.5-44.5 \n\n-Chinh sách đối với các sản phẩm được bán bởi Wear Vietnam\n\n+ Giảm từ 0 -> 10%: hỗ trợ đổi size và bảo hành\n\n+ Giảm trên 10%: không đổi size, không bảo hành\n\n*Thời gian bảo hành 1 tháng\n\n*Không đổi trả, bảo hành với balo, quần áo & phụ kiện\n\n- Loại hình bảo hành: Cửa hàng\n\n- Quy cách đóng gói: Double Box ( Giày, Hóa đơn, Túi Converse)\n\n#converse\n\n#Converse\n\n#CONVERSE\n\n#giayconverse\n\n#conversegiay\n\n#Giayconverse\n\n#GIAYCONVERSE\n\n#giaythethaoconverse\n\n#166800V','img_product/img.png',1,2,'2024-09-22 14:54:16',25,2340,NULL,NULL),(5,'Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm','Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm\n\n\n\nTHÔNG TIN CHI TIẾT GHẾ CÔNG THÁI HỌC HYPERWORK AIRY\n\n- Thương hiệu: HyperWork\n\n- Màu sắc: Đen / Trắng\n\n- Bộ cơ khí: FluidMotion System\n\n- Ngả lưng: Tối đa 120 độ\n\n- Piston: Class 4\n\n- Điều chỉnh kháng lực: Có\n\n- Tựa đầu, Kê tay: 3D\n\n- Lưới: AeroMesh\n\n- Chân ghế: Kim loại\n\n- Chiều cao: 150 - 190cm\n\n- Cân nặng: 40 - 100Kg\n\n- Bảo hành: 3 năm\n\n\n\nĐẶC ĐIỂM NỔI BẬT\n\n- Toàn bộ lưng và mâm ghế của Airy được sử dụng lưới đem lại cảm giác ngồi êm ái, thoáng mát, đặc biệt phù hợp với khí hậu Việt Nam.\n\n- Tay ghế 3D có thể chỉnh được độ cao, và xoay được phần đầu tay ghế qua trái phải, đẩy tới và lui phần đệm tay sao cho vừa vặn nhất.\n\n- Được thiết kế độc đáo, mềm mại cùng khả năng điều chỉnh trượt 5 cm, giúp bạn tìm được vị trí ngồi lý tưởng.\n\n- Tựa đầu của Airy có thể linh hoạt điều chỉnh độ cao, sâu và góc nghiêng để phù hợp với phần cổ và gáy, giúp bạn làm việc hoặc nghỉ ngơi một cách thật thoải mái.\n\n- Không chỉ dừng lại ở việc điều chỉnh mâm ghế và tựa đầu, Airy còn cho phép bạn điều chỉnh đệm eo và góc nghiêng của lưng ghế. Điều này đảm bảo rằng bạn có thể tạo ra sự thoải mái tối ưu cho cơ thể.\n\n- Bộ chuyển động FluidMotion với tính năng phong phú: Kháng lực, ngả 120 độ, trượt mâm ghế,…\n\n- Hai vị trí điều chỉnh tựa lưng thông minh, đảm bảo lưng ghế luôn ôm sát cơ thể.\n\n- Piston Class 4 chuẩn BIFMA: An toàn và bền bỉ.\n\n\n\nCAM KẾT VỚI KHÁCH HÀNG\n\nMang đến khách hàng những sản phẩm chất lượng tốt nhất, đảm bảo chính hãng.\n\nSản phẩm đúng với mô tả, hình ảnh và video mà shop cung cấp.\n\nDịch vụ khách hàng luôn tận tâm và nhiệt tình, giúp quý khách có được trải nghiệm tốt nhất khi mua hàng.\n\nThời gian chuẩn bị hàng luôn được đảm bảo.\n\nHỗ trợ áp dụng chính sách đổi trả sản phẩm theo quy định của Shopee (Trong vòng 3 ngày kể từ ngày nhận hàng).\n\n*ĐỂ ĐƯỢC HỖ TRỢ NHANH NHẤT, BẠN VUI LÒNG QUAY LẠI VIDEO MỞ THÙNG HÀNG ĐỂ SHOP TIỆN XÁC MINH.\n\n\n\nHOÀNG KHUÊ - LINH KIỆN, PHỤ KIỆN MÁY TÍNH CHÍNH HÃNG\n\n*Địa chỉ: 46A Đường 85, Phường Tân Quy, Quận 7, TP.HCM\n\nRất hân hạnh được phục vụ quý khách!\n\nQuý khách hàng vui lòng liên hệ trực tiếp với shop để được giải quyết thắc mắc và vấn đề về sản phẩm (nếu có).\n\nMong rằng bạn sẽ hài lòng với sự phục vụ của shop và đừng quên giới thiệu bạn bè của bạn nhé!\n\n\n\n#ghe #congthaihoc #hyperwork #airy #tuadau #tualung #xoay #120do #dieuchinh #luoi #em #thoangmat #thoaimai #noithat #vanphong #chinhhang #caocap #hoangkhue\n\n','img_product/ghe12345.png',1,2,'2024-01-22 14:54:22',45,38,NULL,NULL),(90,'asdasdasdsad','asdsadadasdasd','ImageProduct/90/90_0.png',1,2,'2024-05-11 16:16:58',12,6,NULL,NULL),(91,'asdasdasd','asdasdasdasd','ImageProduct/91/91_0.png,ImageProduct/91/91_1.png',1,21,'2024-05-11 23:03:37',10,4,NULL,NULL),(92,'asdasdasd','asdasdasdasd','ImageProduct/92/92_0.png,ImageProduct/92/92_1.png',1,21,'2024-05-11 23:04:23',10,5,NULL,NULL),(93,'asdasdasd','asdasdasdasd','ImageProduct/93/93_0.png,ImageProduct/93/93_1.png',1,2,'2024-05-11 23:05:00',10,5,NULL,NULL),(94,'Sản phẩm này là demo tiếng viêt','ádsađááđá','ImageProduct/94/94_0.png',1,2,'2024-05-12 22:49:07',12,1,NULL,NULL),(95,'sađá','eqưeqưeqưeqưe','',1,2,'2024-05-27 15:51:25',12,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (2,'SellerImages/7/avatar.png,SellerImages/7/cover.png','Dat','asadsad',1,3,0,'2024-04-21 20:49:52',0),(18,'8/avatar.png','dat hoang',NULL,24,8,0,'2024-05-10 22:03:06',NULL),(21,'SellerImages/9/avatar.png,SellerImages/9/cover.png','dat12123',NULL,27,9,0,'2024-05-12 14:52:10',NULL),(22,'SellerImages/9/avatar.png,SellerImages/9/cover.png','dat hoangf 124',NULL,35,9,0,'2024-05-24 15:14:21',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (1,3,NULL),(2,5,'2024-03-24 23:27:14'),(3,6,'2024-04-05 21:37:47'),(4,9,'2024-05-12 17:24:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_item`
--

LOCK TABLES `shopping_cart_item` WRITE;
/*!40000 ALTER TABLE `shopping_cart_item` DISABLE KEYS */;
INSERT INTO `shopping_cart_item` VALUES (87,1,220,1,'2024-05-14 16:33:26'),(90,4,5,1,'2024-05-16 12:02:02'),(97,1,229,8,'2024-05-23 17:25:28'),(101,4,2,1,'2024-05-30 10:09:02'),(102,4,3,1,'2024-05-30 10:09:05'),(103,4,35,3,'2024-05-30 10:12:46'),(105,4,38,1,'2024-05-30 10:23:08'),(108,4,39,1,'2024-05-30 10:34:43'),(109,4,40,1,'2024-05-30 10:34:59'),(113,1,NULL,1,'2024-05-30 10:55:44'),(116,1,36,1,'2024-05-30 10:56:12'),(117,1,38,3,'2024-05-30 20:10:55'),(118,1,43,7,'2024-05-30 20:12:11'),(119,1,44,3,'2024-05-30 21:30:18'),(120,1,52,1,'2024-05-30 20:26:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'dat1234','JSm5oAGusjmIxnepT8TmaCahBxU=','dathv2004@gmail.com','12312312312','2024-03-15 16:28:14','male','2024-03-20',_binary '',NULL,'dasdasasdasd','SELLER'),(4,'dat','PLQ4laHKUA3DY7RcRDjFyxl0rDM=','dathv123@gmail.com',NULL,'2024-03-23 21:17:39','male','2024-03-06',_binary '\0',NULL,NULL,'CUSTOMER'),(5,'dat123122','XMnJIT/dD1rQAAJv71cSrW3feWE=','102220056@sv1.dut.udn.vn',NULL,'2024-03-24 23:26:20','male','2024-03-01',_binary '',NULL,NULL,'CUSTOMER'),(6,'dat12345','UGd8MZh6DWh5c9fwLtlCybcrsmE=','dat10108@gmail.com',NULL,'2024-04-05 15:10:01','male','2004-12-31',_binary '\0',NULL,NULL,'CUSTOMER'),(8,'dat1612','gpPuimjuHn1VCbSWQB9ve17CaSc=','dat10106868@gmail.com',NULL,'2024-05-10 21:52:08','male','2024-05-21',_binary '\0',NULL,NULL,'CUSTOMER'),(9,'dat123','MHiL+CJ3N3411r6p6v1KAKMC+7I=','102220055@sv1.dut.udn.vn','','2024-05-11 16:06:16','male','2024-05-23',_binary '',NULL,'sdasdasdasdas','SELLER');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation`
--

LOCK TABLES `variation` WRITE;
/*!40000 ALTER TABLE `variation` DISABLE KEYS */;
INSERT INTO `variation` VALUES (3,2,'Màu sắc'),(4,2,'Size'),(5,4,'Size'),(6,5,'Tùy Chọn'),(7,5,'Màu Sắc'),(53,90,'asdasda'),(54,91,'asdasd'),(55,91,'asdasdasd'),(56,92,'asdasd'),(57,92,'asdasdasd'),(58,93,'asdasd'),(59,93,'asdasdasdsdd'),(60,94,'áđá'),(61,95,'qưeqew'),(62,95,'qewqưeqưe');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_option`
--

LOCK TABLES `variation_option` WRITE;
/*!40000 ALTER TABLE `variation_option` DISABLE KEYS */;
INSERT INTO `variation_option` VALUES (7,3,'Đen'),(8,3,'Be'),(9,3,'Xám đậm'),(10,4,'XL'),(11,4,'M'),(12,4,'L'),(14,3,'Xám tiêu đậm'),(15,3,'Xám trắng'),(16,5,'35'),(17,5,'35.5'),(18,5,'35.5'),(19,5,'36'),(20,5,'37'),(21,5,'38'),(22,5,'38.5'),(23,5,'39'),(24,5,'40'),(25,5,'40.5'),(26,5,'41'),(27,5,'42'),(28,5,'42.5'),(29,5,'43'),(30,5,'44'),(31,6,'Ghế có tựa đầu'),(33,7,'Đen'),(34,7,'Trắng'),(119,53,'asdasdasda'),(120,53,'asdasdsadasda'),(121,54,'asdasdas'),(122,55,'asdasdasd'),(123,54,'asdasdasd'),(124,55,''),(125,56,'asdasdas'),(126,57,'asdasdasd'),(127,56,'asdasdasd'),(128,57,'azsdasdas'),(129,58,'asdasdassssd'),(130,59,'asdasdasd'),(131,58,'asdasdasdssss'),(132,58,'asdasdasd'),(133,59,'asdasdasdss'),(134,59,'azsdasdas'),(135,60,'áđâsdá'),(136,60,'áđâsd'),(137,61,'qưeqưeqưeq'),(138,62,'qưeqưewq'),(139,61,'qeqưeqưeqưeqư'),(140,62,'eqưeqưeqưe');
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

-- Dump completed on 2024-06-01 11:32:08
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,NULL,'Hòa Khánh Nam','Liên chiều','Đà Nẵng','2024-04-21 16:16:07','2024-04-21 16:16:13',NULL,NULL),(2,'asdadas','00043','002','01','2024-04-27 13:00:01','2024-04-27 13:00:01',NULL,NULL),(3,'asdadas','00043','002','01','2024-04-27 13:04:05','2024-04-27 13:04:05',NULL,NULL),(4,'asdasdas','00043','002','01','2024-04-27 13:07:12','2024-04-27 13:07:12',NULL,NULL),(5,'asdasdas','00043','002','01','2024-04-27 13:07:47','2024-04-27 13:07:47',NULL,NULL),(6,'asdadadsa','00043','002','01','2024-04-27 13:11:09','2024-04-27 13:11:09',NULL,NULL),(7,'asdasdasdadssadadaas','00043','002','01','2024-04-27 13:13:38','2024-04-27 13:13:38',NULL,NULL),(8,'asdasdadasda','00043','002','01','2024-04-27 13:16:02','2024-04-27 13:16:02',NULL,NULL),(9,'asdadsadasd','00043','002','01','2024-04-27 13:22:01','2024-04-27 13:22:01',NULL,NULL),(10,'adadadasda','00043','002','01','2024-04-27 14:13:31','2024-04-27 14:13:31',NULL,NULL),(11,'adsasdasdsa','00043','002','01','2024-04-27 14:16:09','2024-04-27 14:16:09',NULL,NULL),(12,'asdadsad','00043','002','01','2024-04-27 14:17:46','2024-04-27 14:17:46',NULL,NULL),(13,'asdasdasd','00043','002','01','2024-04-27 14:19:11','2024-04-27 14:19:11',NULL,NULL),(14,'Xom van phuc','17683','427','40','2024-04-27 14:25:19','2024-04-27 14:25:19',NULL,NULL),(15,'asdasdadadasdasdasd','00043','002','01','2024-04-27 14:35:57','2024-04-27 14:35:57',NULL,NULL),(16,'adsasdasda','00043','002','01','2024-04-27 14:46:08','2024-04-27 14:46:08',NULL,NULL),(17,'asdasdsa','00043','002','01','2024-04-27 22:37:00','2024-04-27 22:37:00',NULL,NULL),(18,'12 nguyen khoa chiem','05617','168','19','2024-04-27 22:45:57','2024-04-27 22:45:57',NULL,NULL),(19,'12141231213','00043','002','01','2024-05-02 20:52:21','2024-05-02 20:52:21',NULL,NULL),(20,'121321','00043','002','01','2024-05-02 20:54:07','2024-05-02 20:54:07',NULL,NULL),(21,' 121321 ','00043','002','01','2024-05-02 20:55:39','2024-05-02 20:55:39',NULL,NULL),(22,'121312','00043','002','01','2024-05-02 20:57:05','2024-05-02 20:57:05',NULL,NULL),(23,'123 Hoàng Hoa Thám','00815','027','02','2024-05-10 15:24:09','2024-05-10 15:24:09',NULL,NULL),(24,'asdasdasdasd','00043','002','01','2024-05-10 22:03:06','2024-05-10 22:03:06',NULL,NULL),(25,'asdasdasda','00763','026','02','2024-05-11 16:13:13','2024-05-11 16:13:13',NULL,NULL),(26,'asdasdasdsa','00043','002','01','2024-05-11 16:23:34','2024-05-11 16:23:34',NULL,NULL),(27,'123123123','00043','002','01','2024-05-12 14:52:10','2024-05-12 14:52:10',NULL,NULL),(28,'','','','','2024-05-15 13:07:21','2024-05-15 13:07:21','',''),(31,'9 Hà Văn Tính','20198','490','48','2024-05-22 09:02:02','2024-05-22 09:02:42','0396454720','Hoàng Văn Đạt'),(32,'123 Nguyễn Tri Phương','00001','001','01','2024-05-22 09:02:32','2024-05-22 09:33:24','0396454720','Hoàng Văn Đạt'),(35,'asdasdasda','01359','043','04','2024-05-24 15:14:21','2024-05-24 15:14:21',NULL,NULL),(36,'asdasdsa','00001','001','01','2024-05-27 16:06:20','2024-05-27 16:06:20','asdasdsad','asdasd'),(37,'Xóm Vạn Phúc','17683','427','40','2024-05-30 09:18:56','2024-05-30 09:18:56','0396454720','Hoàng Văn Đat');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Thời trang',NULL),(2,'Beverages',NULL),(4,'Confections',NULL),(5,'Dairy Products',NULL),(6,'Grains/Cereals',NULL),(7,'Meat/Poultry',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (4,52,'30',3,2084500),(5,2,'30',1,240000),(6,229,'31',8,281),(7,52,'32',3,2084500),(8,2,'32',1,240000),(9,229,'33',8,281),(10,52,'34',3,2084500),(11,2,'34',1,240000),(12,229,'35',8,281),(13,52,'36',3,2084500),(14,2,'36',1,240000),(15,229,'37',8,281),(16,52,'38',3,2084500),(17,2,'38',1,240000),(18,229,'39',8,281),(19,52,'40',3,2084500),(20,2,'40',1,240000),(21,229,'41',8,281),(22,52,'42',2,2084500),(23,2,'42',1,240000),(24,8,'42',5,240000),(25,229,'43',8,281),(26,52,'44',2,2084500),(27,2,'44',1,240000),(28,8,'44',5,240000),(29,229,'45',8,281),(30,52,'46',2,2084500),(31,2,'46',1,240000),(32,8,'46',5,240000),(33,229,'47',8,281),(34,52,'48',2,2084500),(35,2,'48',1,240000),(36,8,'48',5,240000),(37,229,'49',8,281),(38,52,'50',2,2084500),(39,2,'50',1,240000),(40,8,'50',5,240000),(41,229,'51',8,281),(42,52,'52',2,2084500),(43,2,'52',1,240000),(44,8,'52',5,240000),(45,229,'53',8,281),(46,52,'54',2,2084500),(47,2,'54',1,240000),(48,8,'54',5,240000),(49,229,'55',8,281),(50,52,'56',2,2084500),(51,2,'56',1,240000),(52,8,'56',5,240000),(53,229,'57',8,281),(54,52,'58',2,2084500),(55,2,'58',1,240000),(56,8,'58',5,240000),(57,229,'59',8,281),(58,52,'60',2,2084500),(59,2,'60',1,240000),(60,8,'60',5,240000),(61,229,'61',8,281),(62,52,'62',2,2084500),(63,2,'62',1,240000),(64,8,'62',5,240000),(65,229,'63',8,281),(66,52,'64',2,2084500),(67,2,'64',1,240000),(68,8,'64',5,240000),(69,229,'65',8,281),(70,52,'66',2,2084500),(71,2,'66',1,240000),(72,8,'66',5,240000),(73,229,'67',8,281),(74,52,'68',2,2084500),(75,2,'68',1,240000),(76,8,'68',5,240000),(77,229,'69',8,281),(78,52,'70',2,2084500),(79,2,'70',1,240000),(80,8,'70',5,240000),(81,229,'71',8,281),(82,52,'72',2,2084500),(83,2,'72',1,240000),(84,8,'72',5,240000),(85,229,'73',8,281),(86,52,'74',2,2084500),(87,2,'74',1,240000),(88,8,'74',5,240000),(89,229,'75',8,281),(90,52,'76',2,2084500),(91,2,'76',1,240000),(92,8,'76',5,240000),(93,229,'77',8,281),(94,52,'78',2,2084500),(95,2,'78',1,240000),(96,8,'78',5,240000),(97,229,'79',8,281),(98,52,'80',2,2084500),(99,2,'80',1,240000),(100,8,'80',5,240000),(101,229,'81',8,281),(102,52,'82',2,2084500),(103,2,'82',1,240000),(104,8,'82',5,240000),(105,229,'83',8,281),(106,2,'84',1,240000),(107,8,'84',5,240000),(108,229,'85',8,281),(109,5,'86',1,240000),(110,38,'87',12,1875000),(111,38,'88',3,1875000),(112,44,'89',3,1875000),(113,52,'90',1,2084500),(114,38,'32117079976675',3,1875000),(115,38,'32117082887496',3,1875000),(116,36,'32217082925180',1,1875000),(117,38,'32217082925180',3,1875000),(118,38,'23117085777932',3,1875000),(119,36,'23117085878957',1,1875000),(120,36,'23117086077958',1,1875000),(121,36,'23117086168363',1,1875000),(122,36,'23117086240052',1,1875000);
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
INSERT INTO `orders` VALUES ('23117085777932',3,2,2,5625000,1,'00001','001','01','2024-05-30 23:16:18','2024-05-30 23:16:18','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('23117085878957',3,2,2,1875000,1,'00001','001','01','2024-05-30 23:17:59','2024-05-30 23:17:59','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('23117086077958',3,2,2,1875000,1,'00001','001','01','2024-05-30 23:21:18','2024-05-30 23:21:18','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('23117086168363',3,2,2,1875000,1,'00001','001','01','2024-05-30 23:22:49','2024-05-30 23:22:49','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('23117086240052',3,2,2,1875000,1,'00001','001','01','2024-05-30 23:24:00','2024-05-30 23:24:00','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('28',3,2,2,6493500,1,'20198','490','48','2024-05-26 18:37:55','2024-05-26 18:37:55','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',2),('29',3,2,2,2246,1,'20198','490','48','2024-05-26 18:38:09','2024-05-26 18:38:09','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',21),('30',3,2,2,6493500,1,'20198','490','48','2024-05-26 18:44:07','2024-05-26 18:44:07','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',2),('31',3,2,2,2248,1,'20198','490','48','2024-05-26 18:44:11','2024-05-26 18:44:11','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',21),('32',3,2,2,6493500,1,'00001','001','01','2024-05-27 09:49:27','2024-05-27 09:49:27','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('32117079976675',3,2,2,5625000,1,'00001','001','01','2024-05-30 21:39:37','2024-05-30 21:39:37','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('32117082887496',3,2,2,5625000,1,'00001','001','01','2024-05-30 22:28:08','2024-05-30 22:28:08','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('32217082925180',3,1,2,7500000,2,'00001','001','01','2024-05-30 22:28:45','2024-05-30 22:28:45','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('33',3,2,2,2248,1,'00001','001','01','2024-05-27 09:49:27','2024-05-27 09:49:27','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('34',3,2,2,6493500,1,'00001','001','01','2024-05-27 09:49:50','2024-05-27 09:49:50','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('35',3,2,2,2248,1,'00001','001','01','2024-05-27 09:49:50','2024-05-27 09:49:50','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('36',3,2,2,6493500,1,'20198','490','48','2024-05-27 15:31:04','2024-05-27 15:31:04','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',2),('37',3,2,2,2248,1,'20198','490','48','2024-05-27 15:31:04','2024-05-27 15:31:04','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',21),('38',3,1,2,6493500,1,'20198','490','48','2024-05-27 15:31:20','2024-05-27 15:31:20','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',2),('39',3,1,2,2248,1,'20198','490','48','2024-05-27 15:31:20','2024-05-27 15:31:20','0396454720','Hoàng Văn Đạt','9 Hà Văn Tính',21),('40',3,2,2,6493500,1,'00001','001','01','2024-05-27 15:42:03','2024-05-27 15:42:03','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('41',3,2,2,2248,1,'00001','001','01','2024-05-27 15:42:03','2024-05-27 15:42:03','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('42',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:21:01','2024-05-28 15:21:01','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('43',3,2,2,2248,1,'00001','001','01','2024-05-28 15:21:01','2024-05-28 15:21:01','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('44',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:46:01','2024-05-28 15:46:01','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('45',3,2,2,2248,1,'00001','001','01','2024-05-28 15:46:01','2024-05-28 15:46:01','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('46',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:46:47','2024-05-28 15:46:47','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('47',3,2,2,2248,1,'00001','001','01','2024-05-28 15:46:47','2024-05-28 15:46:47','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('48',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:47:05','2024-05-28 15:47:05','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('49',3,2,2,2248,1,'00001','001','01','2024-05-28 15:47:05','2024-05-28 15:47:05','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('50',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:47:48','2024-05-28 15:47:48','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('51',3,2,2,2248,1,'00001','001','01','2024-05-28 15:47:48','2024-05-28 15:47:48','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('52',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:48:14','2024-05-28 15:48:14','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('53',3,2,2,2248,1,'00001','001','01','2024-05-28 15:48:14','2024-05-28 15:48:14','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('54',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:49:12','2024-05-28 15:49:12','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('55',3,2,2,2248,1,'00001','001','01','2024-05-28 15:49:12','2024-05-28 15:49:12','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('56',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:49:15','2024-05-28 15:49:15','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('57',3,2,2,2248,1,'00001','001','01','2024-05-28 15:49:15','2024-05-28 15:49:15','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('58',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:50:38','2024-05-28 15:50:38','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('59',3,2,2,2248,1,'00001','001','01','2024-05-28 15:50:38','2024-05-28 15:50:38','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('60',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:50:59','2024-05-28 15:50:59','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('61',3,2,2,2248,1,'00001','001','01','2024-05-28 15:50:59','2024-05-28 15:50:59','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('62',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:51:23','2024-05-28 15:51:23','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('63',3,2,2,2248,1,'00001','001','01','2024-05-28 15:51:23','2024-05-28 15:51:23','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('64',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:52:07','2024-05-28 15:52:07','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('65',3,2,2,2248,1,'00001','001','01','2024-05-28 15:52:07','2024-05-28 15:52:07','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('66',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:52:28','2024-05-28 15:52:28','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('67',3,2,2,2248,1,'00001','001','01','2024-05-28 15:52:28','2024-05-28 15:52:28','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('68',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:52:53','2024-05-28 15:52:53','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('69',3,2,2,2248,1,'00001','001','01','2024-05-28 15:52:53','2024-05-28 15:52:53','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('70',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:53:25','2024-05-28 15:53:25','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('71',3,2,2,2248,1,'00001','001','01','2024-05-28 15:53:25','2024-05-28 15:53:25','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('72',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:26','2024-05-28 15:54:26','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('73',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:26','2024-05-28 15:54:26','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('74',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:30','2024-05-28 15:54:30','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('75',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:30','2024-05-28 15:54:30','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('76',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:34','2024-05-28 15:54:34','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('77',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:34','2024-05-28 15:54:34','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('78',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:37','2024-05-28 15:54:37','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('79',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:37','2024-05-28 15:54:37','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('80',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:54:57','2024-05-28 15:54:57','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('81',3,2,2,2248,1,'00001','001','01','2024-05-28 15:54:57','2024-05-28 15:54:57','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('82',3,2,2,5609000,1,'00001','001','01','2024-05-28 15:55:23','2024-05-28 15:55:23','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('83',3,2,2,2248,1,'00001','001','01','2024-05-28 15:55:23','2024-05-28 15:55:23','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('84',3,2,2,1440000,1,'00001','001','01','2024-05-28 16:30:11','2024-05-28 16:30:11','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('85',3,2,2,2248,1,'00001','001','01','2024-05-28 16:30:11','2024-05-28 16:30:11','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',21),('86',9,2,2,240000,1,'17683','427','40','2024-05-30 09:19:26','2024-05-30 09:19:26','0396454720','Hoàng Văn Đat','Xóm Vạn Phúc',2),('87',3,2,2,22500000,1,'00001','001','01','2024-05-30 10:54:15','2024-05-30 10:54:15','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('88',3,2,2,5625000,1,'00001','001','01','2024-05-30 20:11:03','2024-05-30 20:11:03','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('89',3,2,2,5625000,1,'00001','001','01','2024-05-30 20:26:11','2024-05-30 20:26:11','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2),('90',3,2,2,2084500,1,'00001','001','01','2024-05-30 20:26:37','2024-05-30 20:26:37','0396454720','Hoàng Văn Đạt','123 Nguyễn Tri Phương',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_item`
--

LOCK TABLES `product_item` WRITE;
/*!40000 ALTER TABLE `product_item` DISABLE KEYS */;
INSERT INTO `product_item` VALUES (1,2,NULL,'img_product/quan_002.png',7,10,100,300000),(2,2,NULL,'img_product/quan_003.png',7,11,200,300000),(3,2,NULL,'img_product/quan_004.png',7,12,300,300000),(4,2,NULL,'img_product/quan_005.png',8,10,1,300000),(5,2,NULL,'img_product/quan_006.png',8,11,2,300000),(6,2,NULL,'img_product/quan_007.png',8,12,3,300000),(7,2,NULL,'img_product/quan_002.png',9,10,4,300000),(8,2,NULL,'img_product/quan_003.png',9,11,5,300000),(9,2,NULL,'img_product/quan_004.png',9,12,2,300000),(10,2,NULL,'img_product/quan_005.png',14,10,4,300000),(11,2,NULL,'img_product/quan_006.png',14,11,2,300000),(12,2,NULL,'img_product/quan_007.png',14,12,4,300000),(13,2,NULL,'img_product/quan_002.png',15,10,2,300000),(14,2,NULL,'img_product/quan_003.png',15,11,14,300000),(15,2,NULL,'img_product/quan_004.png',15,12,2,300000),(35,3,NULL,'img_product/day_002.png',NULL,NULL,300,1000000),(36,4,'123456','img_product/123456.png',16,NULL,95,2500000),(37,4,'123457','img_product/123457.png',17,NULL,100,2500000),(38,4,'123458','img_product/123458.png',18,NULL,88,2500000),(39,4,'123459','img_product/123459.png',19,NULL,103,2500000),(40,4,'123460','img_product/123460.png',20,NULL,10,2500000),(41,4,'123461','img_product/123461.png',21,NULL,100,2500000),(42,4,'123462','img_product/123462.png',22,NULL,104,2500000),(43,4,'123463','img_product/123463.png',23,NULL,14,2500000),(44,4,'123464','img_product/123456.png',24,NULL,0,2500000),(45,4,'123465','img_product/123457.png',25,NULL,100,2500000),(46,4,'123466','img_product/123458.png',26,NULL,100,2500000),(47,4,'123467','img_product/123459.png',27,NULL,100,2500000),(48,4,'123468','img_product/123460.png',28,NULL,100,2500000),(49,4,'123469','img_product/123461.png',29,NULL,100,2500000),(50,4,'123470','img_product/123462.png',30,NULL,100,2500000),(51,5,'GHE-001','img_product/img_1.png',31,33,10,3790000),(52,5,'GHE-002','img_product/img_2.png',31,34,0,3790000),(216,90,NULL,NULL,119,NULL,312,121),(217,90,NULL,'',120,NULL,312,121),(218,90,NULL,NULL,119,NULL,312,121),(219,90,NULL,'',120,NULL,312,121),(220,91,NULL,'ImageProduct/91/91_01.png',121,122,0,312),(221,91,NULL,'ImageProduct/91/91_01.png',123,122,312,312),(222,91,NULL,'ImageProduct/91/91_01.png',123,122,312,312),(223,91,NULL,'ImageProduct/91/91_04.png',121,122,312,312),(224,91,NULL,'ImageProduct/91/91_04.png',123,122,312,312),(225,91,NULL,'ImageProduct/91/91_04.png',123,122,312,312),(226,91,NULL,'ImageProduct/91/91_07.png',121,124,312,312),(227,91,NULL,'ImageProduct/91/91_07.png',123,124,312,312),(228,91,NULL,'ImageProduct/91/91_07.png',123,124,312,312),(229,92,NULL,'ImageProduct/92/92_01.png',125,126,312,312),(230,92,NULL,'ImageProduct/92/92_01.png',127,126,312,312),(231,92,NULL,'ImageProduct/92/92_01.png',127,126,312,312),(232,92,NULL,'ImageProduct/92/92_04.png',125,126,312,312),(233,92,NULL,'ImageProduct/92/92_04.png',127,126,312,312),(234,92,NULL,'ImageProduct/92/92_04.png',127,126,312,312),(235,92,NULL,'ImageProduct/92/92_07.png',125,128,312,312),(236,92,NULL,'ImageProduct/92/92_07.png',127,128,312,312),(237,92,NULL,'ImageProduct/92/92_07.png',127,128,312,312),(238,93,NULL,'ImageProduct/93/93_01.png',129,130,312,12),(239,93,NULL,'ImageProduct/93/93_01.png',131,130,312,12),(240,93,NULL,'ImageProduct/93/93_01.png',132,130,312,12),(241,93,NULL,'ImageProduct/93/93_04.png',129,133,123,12),(242,93,NULL,'ImageProduct/93/93_04.png',131,133,123,12),(243,93,NULL,'ImageProduct/93/93_04.png',132,133,123,12),(244,93,NULL,'ImageProduct/93/93_07.png',129,134,123,12),(245,93,NULL,'ImageProduct/93/93_07.png',131,134,123,12),(246,93,NULL,'ImageProduct/93/93_07.png',132,134,123,12),(247,94,NULL,'',135,NULL,1212,12),(248,94,NULL,'',136,NULL,1212,12),(249,95,NULL,'ImageProduct/95/95_01.png',137,138,123312,1211),(250,95,NULL,'ImageProduct/95/95_01.png',139,138,123312,1211),(251,95,NULL,'ImageProduct/95/95_03.png',137,140,123312,1211),(252,95,NULL,'ImageProduct/95/95_03.png',139,140,123312,1211);
/*!40000 ALTER TABLE `product_item` ENABLE KEYS */;
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
                            `is_deleted` bit(1) DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            KEY `category_id` (`category_id`),
                            KEY `seller_id` (`seller_id`),
                            CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
                            CONSTRAINT `products_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Quần Nỉ Dài Relax Pants ODIN CLUB, Quần nỉ dài ống suông ODIN, Local Brand ODIN CLUB','Quần nỉ dài Relax Pants ODIN CLUB\n\n- Màu sắc: Đen /  Be / Xám Nhạt / Xám Đậm\n\n- Size: M / L / XL.\n\n- Kiểu dáng: Oversized.\n\nHƯỚNG DẪN SỬ DỤNG:\n\n- Lần giặt đầu chỉ nên xả nước lạnh rồi phơi khô.\n\n- Khuyến cáo nên giặt tay, hạn chế giặt máy.\n\n- Chú ý lộn trái sản phẩm trước khi giặt để không ảnh hướng tới bề mặt vải.\n\n- Không sử dụng thuốc tẩy, không giặt chung với các sản phẩm dễ phai màu\n\n- Hạn chế phơi trực tiếp dưới ánh nắng mặt trời, nên phơi khô dưới ảnh sáng tự nhiên\n\n\n\nCAM KẾT TỪ ODIN CLUB\n\n- Sản phẩm 100% giống mô tả.\n\n- Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh.\n\n- Đảm bảo chất lượng sản phẩm luôn ở mức cao nhất. \n\n- Hàng có sẵn, giao hàng trên toàn quốc, nhận hàng sau 2-3 ngày đối với các khu vực thuộc nội thành Hà Nội và 3-4 ngày đối với các khu vực khác.\n\n\n\nCHÍNH SÁCH ĐỔI-TRẢ\n\n1. Điều kiện tiên quyết:\n\n- Có video quay lại quá trình mở gói hàng.\n\n- Hàng hoá vẫn còn nguyên hiện trạng kể từ khi KH mở gói hàng.\n\n- Khách hàng phản hồi trong vòng 6 ngày kể từ ngày nhận hàng.\n\n2. Trường hợp được hỗ trợ:\n\n- Hàng nhận được không đúng màu sắc, kích thước, số lượng như KH đặt hàng.\n\n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất.\n\n\n\n*Lưu ý:  Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.','img_product/quan_001.png',1,2,'2024-04-18 14:54:05',20,47,NULL,NULL),(3,'Giày Thể Thao Alphabounce Beyond Trắng Full Cực Êm Thoáng Khí Phù Hợp Với Cả Nam Và Nữ Clever Man Store','MÔ TẢ SẢN PHẨM\n🔸 Giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ đầy tính năng, được thiết kế để cung cấp sự thoải mái, độ bền và hỗ trợ cho người chơi khi tập luyện hoặc tham gia các hoạt động thể thao. Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là sự lựa chọn tuyệt vời cho những ai yêu thích sự đơn giản và trẻ trung.\n\n\n\n🔸 Đế giày của giày Alphabounce Beyond trắng được thiết kế với công nghệ Bounce độc quyền của AD, giúp cung cấp độ đàn hồi và đàn hồi tối đa, giúp người mang giày chạy bộ linh hoạt hơn và giảm sốc tốt hơn khi đáp xuống mặt đất. Thân giày được làm bằng vải Jacquard, là một loại vải nhẹ và thoáng khí, giúp người mang giày cảm thấy mát mẻ và thoải mái trong suốt quá trình tập luyện.\n\n\n\n🔸 Giày Alphabounce Beyond trắng còn được thiết kế với hệ thống hỗ trợ gót chân, giúp người mang giày cảm thấy thoải mái và ổn định hơn khi chạy. Đế giày của giày được làm bằng cao su chất lượng cao, giúp tăng độ bền và độ bám của giày.\n\n\n\n🔸 Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ tinh tế và phù hợp với nhiều phong cách. Với sự kết hợp giữa công nghệ và thẩm mỹ, giày Alphabounce Beyond trắng là sự lựa chọn hoàn hảo cho những người yêu thích sự đơn giản và trẻ trung.\n\n','img_product/day_001.png',1,2,'2024-02-22 14:54:11',44,142,NULL,NULL),(4,'Giày Converse Run Star Hike Twisted Classic Foundational Canvas - 166800C','Tên Đơn vị Nhập Khẩu: CÔNG TY TNHH MAGNA MANAGEMENT ASIA (MMA)\n\nĐịa chỉ: Phòng 14-02, Tầng 14, Tòa nhà Xổ Số Kiến Thiết Thành phố Hồ Chí Minh, 77 Trần Nhân Tôn, Phường 09, Quận 5, Thành phố Hồ Chí Minh, Việt Nam\n\nTel: 02838301111\n\nGIÀY SNEAKERS CONVERSE - HÀNG CHÍNH HÃNG PHÂN PHỐI BỞI WEAR VIETNAM Cuộc cách mạng siêu bứt phá mang tên Converse Run Star Hike \n\nBạn đã quá quen với phong cách quen thuộc của Converse là những đôi giày thể thao, chất lừ, khỏe khoắn với phần thân bằng vải và đế giày cau su màu đen thì có lẽ bạn sẽ phải thốt lên những từ cảm thán bất ngờ khi được chứng kiến sự bứt phá đầy khác biệt với dòng sản phẩm mới mang tên: Converse Run Star Hike.\n\nRun Star Hike - cú bứt phá ngoạn mục của Converse\n\nRa mắt đầu 2020, BST cực chất của Converse mang tên Converse Twisted Classic có lẽ đã tạo được tiếng vang cực lớn đối với những tín đồ yêu sneaker trên toàn thế giới. Thoát khỏi bóng dáng của những đôi Converse thân thuộc, lần này nhà thiết kế của Converse chịu chơi hơn rất nhiều khi đã biến tấu những sản phẩm của mình trở nên “không đụng hàng” với bất cứ dòng sản phẩm nào trước đó từng ra mắt.\n\nĐể mang lại cái nhìn rõ ràng và cận cảnh hơn, trong phần dưới đây, hãy cùng chiêm ngưỡng từng đường nét của đôi giày Converse Run Star Hike hot nhất 2020 này nhé!\n\nCận cảnh sự khác biệt chất chơi của mẫu giày Converse Run Star Hike\n\nRun Star Hike - mẫu giày đi trước thời đại của Converse\n\nGiày Converse Run Star Hike là dòng sản phẩm được kết hợp giữa Converse cùng JW Anderson. Trước đó, sự kết hợp này đã trình làng những sản phẩm giày mang nhiều cải tiến để thích hợp hơn với bộ môn leo núi. Chính từ nguồn cảm hứng đó, Run Star Hike đã ra đời và như một nét chấm phá trong phong cách quen thuộc thường thấy của Converse. Với những ưu điểm nổi bật về khả năng bám bề mặt vừa mang tính thời trang với phần đế độc đáo, những nhà nhận định thời trang nổi tiếng cũng phải thừa nhận rằng đây là những sản phẩm đi trước thời đại. Phải chăng, vì thế mà những đôi giày Converse Run Star Hike đã thừa thắng xông lên trên toàn thế giới với những ưu ái của idol Hàn Quốc hay những stylist, fashionista nổi tiếng nhất.\n\nCận cảnh sự phá cách không đụng hàng của Run Star Hike\n\nMở rộng thị trường, Converse đã cực kỳ đúng đắn khi quyết định mang tới nhiều sản phẩm mang tính định hướng hơn so với những đôi giày Converse truyền thống. Không chỉ phục vụ đối tượng là thế hệ Gen Z, hiện nay, Converse còn muốn cung cấp những sản phẩm chất lượng dành cho các bạn trẻ yêu thích sự mạo hiểm, thể hiện sức mạnh của bản thân với các bộ môn như leo núi, trekking…\n\nSản phẩm được \"remix\" từ Chuck và Runner khi 2 yếu tố thời trang được thể hiện xen kẽ: Upper canvas và đế Run Star zig-zag. Đổi mới từ những đôi giày Converse truyền thống với đế giày casual, đế cau su kép và bằng phẳng,Giày Converse Run Star Hike được thiết kế với phần đế giày dành riêng cho dân leo núi với độ dốc lớn. Đế giày được thiết kế với dạng răng cưa to bản, giúp tăng độ bám một cách hiệu quả vừa tạo được điểm nhấn về phong cách và ấn tượng về thời trang. \n\nGót giày thay vì có logo Converse quen thuộc thì với đôi Run Star Hike thay bằng ngôi sao màu đen ở chính giữa. Đế giày dày tới 6cm, và là một trong những đôi sneakers có phần đế dày nhất tính đến hiện tại. \n\nGiày Converse Run Star Hike hiện được ra mắt với hai tông màu chính là trắng basic và đen cá tính. Chắc chắn trong tương lai, Run Star Hike có thể tạo cho mình được một đế chế riêng không chỉ dành cho dân leo núi mà còn có chỗ đứng trong lòng các bạn trẻ Việt Nam\n\n- Size US : 3.5-11, Size EU: 34.5-44.5 \n\n-Chinh sách đối với các sản phẩm được bán bởi Wear Vietnam\n\n+ Giảm từ 0 -> 10%: hỗ trợ đổi size và bảo hành\n\n+ Giảm trên 10%: không đổi size, không bảo hành\n\n*Thời gian bảo hành 1 tháng\n\n*Không đổi trả, bảo hành với balo, quần áo & phụ kiện\n\n- Loại hình bảo hành: Cửa hàng\n\n- Quy cách đóng gói: Double Box ( Giày, Hóa đơn, Túi Converse)\n\n#converse\n\n#Converse\n\n#CONVERSE\n\n#giayconverse\n\n#conversegiay\n\n#Giayconverse\n\n#GIAYCONVERSE\n\n#giaythethaoconverse\n\n#166800V','img_product/img.png',1,2,'2024-09-22 14:54:16',25,2340,NULL,NULL),(5,'Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm','Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm\n\n\n\nTHÔNG TIN CHI TIẾT GHẾ CÔNG THÁI HỌC HYPERWORK AIRY\n\n- Thương hiệu: HyperWork\n\n- Màu sắc: Đen / Trắng\n\n- Bộ cơ khí: FluidMotion System\n\n- Ngả lưng: Tối đa 120 độ\n\n- Piston: Class 4\n\n- Điều chỉnh kháng lực: Có\n\n- Tựa đầu, Kê tay: 3D\n\n- Lưới: AeroMesh\n\n- Chân ghế: Kim loại\n\n- Chiều cao: 150 - 190cm\n\n- Cân nặng: 40 - 100Kg\n\n- Bảo hành: 3 năm\n\n\n\nĐẶC ĐIỂM NỔI BẬT\n\n- Toàn bộ lưng và mâm ghế của Airy được sử dụng lưới đem lại cảm giác ngồi êm ái, thoáng mát, đặc biệt phù hợp với khí hậu Việt Nam.\n\n- Tay ghế 3D có thể chỉnh được độ cao, và xoay được phần đầu tay ghế qua trái phải, đẩy tới và lui phần đệm tay sao cho vừa vặn nhất.\n\n- Được thiết kế độc đáo, mềm mại cùng khả năng điều chỉnh trượt 5 cm, giúp bạn tìm được vị trí ngồi lý tưởng.\n\n- Tựa đầu của Airy có thể linh hoạt điều chỉnh độ cao, sâu và góc nghiêng để phù hợp với phần cổ và gáy, giúp bạn làm việc hoặc nghỉ ngơi một cách thật thoải mái.\n\n- Không chỉ dừng lại ở việc điều chỉnh mâm ghế và tựa đầu, Airy còn cho phép bạn điều chỉnh đệm eo và góc nghiêng của lưng ghế. Điều này đảm bảo rằng bạn có thể tạo ra sự thoải mái tối ưu cho cơ thể.\n\n- Bộ chuyển động FluidMotion với tính năng phong phú: Kháng lực, ngả 120 độ, trượt mâm ghế,…\n\n- Hai vị trí điều chỉnh tựa lưng thông minh, đảm bảo lưng ghế luôn ôm sát cơ thể.\n\n- Piston Class 4 chuẩn BIFMA: An toàn và bền bỉ.\n\n\n\nCAM KẾT VỚI KHÁCH HÀNG\n\nMang đến khách hàng những sản phẩm chất lượng tốt nhất, đảm bảo chính hãng.\n\nSản phẩm đúng với mô tả, hình ảnh và video mà shop cung cấp.\n\nDịch vụ khách hàng luôn tận tâm và nhiệt tình, giúp quý khách có được trải nghiệm tốt nhất khi mua hàng.\n\nThời gian chuẩn bị hàng luôn được đảm bảo.\n\nHỗ trợ áp dụng chính sách đổi trả sản phẩm theo quy định của Shopee (Trong vòng 3 ngày kể từ ngày nhận hàng).\n\n*ĐỂ ĐƯỢC HỖ TRỢ NHANH NHẤT, BẠN VUI LÒNG QUAY LẠI VIDEO MỞ THÙNG HÀNG ĐỂ SHOP TIỆN XÁC MINH.\n\n\n\nHOÀNG KHUÊ - LINH KIỆN, PHỤ KIỆN MÁY TÍNH CHÍNH HÃNG\n\n*Địa chỉ: 46A Đường 85, Phường Tân Quy, Quận 7, TP.HCM\n\nRất hân hạnh được phục vụ quý khách!\n\nQuý khách hàng vui lòng liên hệ trực tiếp với shop để được giải quyết thắc mắc và vấn đề về sản phẩm (nếu có).\n\nMong rằng bạn sẽ hài lòng với sự phục vụ của shop và đừng quên giới thiệu bạn bè của bạn nhé!\n\n\n\n#ghe #congthaihoc #hyperwork #airy #tuadau #tualung #xoay #120do #dieuchinh #luoi #em #thoangmat #thoaimai #noithat #vanphong #chinhhang #caocap #hoangkhue\n\n','img_product/ghe12345.png',1,2,'2024-01-22 14:54:22',45,38,NULL,NULL),(90,'asdasdasdsad','asdsadadasdasd','ImageProduct/90/90_0.png',1,2,'2024-05-11 16:16:58',12,6,NULL,NULL),(91,'asdasdasd','asdasdasdasd','ImageProduct/91/91_0.png,ImageProduct/91/91_1.png',1,21,'2024-05-11 23:03:37',10,4,NULL,NULL),(92,'asdasdasd','asdasdasdasd','ImageProduct/92/92_0.png,ImageProduct/92/92_1.png',1,21,'2024-05-11 23:04:23',10,5,NULL,NULL),(93,'asdasdasd','asdasdasdasd','ImageProduct/93/93_0.png,ImageProduct/93/93_1.png',1,2,'2024-05-11 23:05:00',10,5,NULL,NULL),(94,'Sản phẩm này là demo tiếng viêt','ádsađááđá','ImageProduct/94/94_0.png',1,2,'2024-05-12 22:49:07',12,1,NULL,NULL),(95,'sađá','eqưeqưeqưeqưe','',1,2,'2024-05-27 15:51:25',12,1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (2,'SellerImages/7/avatar.png,SellerImages/7/cover.png','Dat','asadsad',1,3,0,'2024-04-21 20:49:52',0),(18,'8/avatar.png','dat hoang',NULL,24,8,0,'2024-05-10 22:03:06',NULL),(21,'SellerImages/9/avatar.png,SellerImages/9/cover.png','dat12123',NULL,27,9,0,'2024-05-12 14:52:10',NULL),(22,'SellerImages/9/avatar.png,SellerImages/9/cover.png','dat hoangf 124',NULL,35,9,0,'2024-05-24 15:14:21',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (1,3,NULL),(2,5,'2024-03-24 23:27:14'),(3,6,'2024-04-05 21:37:47'),(4,9,'2024-05-12 17:24:27');
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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_item`
--

LOCK TABLES `shopping_cart_item` WRITE;
/*!40000 ALTER TABLE `shopping_cart_item` DISABLE KEYS */;
INSERT INTO `shopping_cart_item` VALUES (87,1,220,1,'2024-05-14 16:33:26'),(90,4,5,1,'2024-05-16 12:02:02'),(97,1,229,8,'2024-05-23 17:25:28'),(101,4,2,1,'2024-05-30 10:09:02'),(102,4,3,1,'2024-05-30 10:09:05'),(103,4,35,3,'2024-05-30 10:12:46'),(105,4,38,1,'2024-05-30 10:23:08'),(108,4,39,1,'2024-05-30 10:34:43'),(109,4,40,1,'2024-05-30 10:34:59'),(113,1,NULL,1,'2024-05-30 10:55:44'),(116,1,36,1,'2024-05-30 10:56:12'),(117,1,38,3,'2024-05-30 20:10:55'),(118,1,43,7,'2024-05-30 20:12:11'),(119,1,44,3,'2024-05-30 21:30:18'),(120,1,52,1,'2024-05-30 20:26:28');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'dat1234','JSm5oAGusjmIxnepT8TmaCahBxU=','dathv2004@gmail.com','12312312312','2024-03-15 16:28:14','male','2024-03-20',_binary '',NULL,'dasdasasdasd','SELLER'),(4,'dat','PLQ4laHKUA3DY7RcRDjFyxl0rDM=','dathv123@gmail.com',NULL,'2024-03-23 21:17:39','male','2024-03-06',_binary '\0',NULL,NULL,'CUSTOMER'),(5,'dat123122','XMnJIT/dD1rQAAJv71cSrW3feWE=','102220056@sv1.dut.udn.vn',NULL,'2024-03-24 23:26:20','male','2024-03-01',_binary '',NULL,NULL,'CUSTOMER'),(6,'dat12345','UGd8MZh6DWh5c9fwLtlCybcrsmE=','dat10108@gmail.com',NULL,'2024-04-05 15:10:01','male','2004-12-31',_binary '\0',NULL,NULL,'CUSTOMER'),(8,'dat1612','gpPuimjuHn1VCbSWQB9ve17CaSc=','dat10106868@gmail.com',NULL,'2024-05-10 21:52:08','male','2024-05-21',_binary '\0',NULL,NULL,'CUSTOMER'),(9,'dat123','MHiL+CJ3N3411r6p6v1KAKMC+7I=','102220055@sv1.dut.udn.vn','','2024-05-11 16:06:16','male','2024-05-23',_binary '',NULL,'sdasdasdasdas','SELLER');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation`
--

LOCK TABLES `variation` WRITE;
/*!40000 ALTER TABLE `variation` DISABLE KEYS */;
INSERT INTO `variation` VALUES (3,2,'Màu sắc'),(4,2,'Size'),(5,4,'Size'),(6,5,'Tùy Chọn'),(7,5,'Màu Sắc'),(53,90,'asdasda'),(54,91,'asdasd'),(55,91,'asdasdasd'),(56,92,'asdasd'),(57,92,'asdasdasd'),(58,93,'asdasd'),(59,93,'asdasdasdsdd'),(60,94,'áđá'),(61,95,'qưeqew'),(62,95,'qewqưeqưe');
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_option`
--

LOCK TABLES `variation_option` WRITE;
/*!40000 ALTER TABLE `variation_option` DISABLE KEYS */;
INSERT INTO `variation_option` VALUES (7,3,'Đen'),(8,3,'Be'),(9,3,'Xám đậm'),(10,4,'XL'),(11,4,'M'),(12,4,'L'),(14,3,'Xám tiêu đậm'),(15,3,'Xám trắng'),(16,5,'35'),(17,5,'35.5'),(18,5,'35.5'),(19,5,'36'),(20,5,'37'),(21,5,'38'),(22,5,'38.5'),(23,5,'39'),(24,5,'40'),(25,5,'40.5'),(26,5,'41'),(27,5,'42'),(28,5,'42.5'),(29,5,'43'),(30,5,'44'),(31,6,'Ghế có tựa đầu'),(33,7,'Đen'),(34,7,'Trắng'),(119,53,'asdasdasda'),(120,53,'asdasdsadasda'),(121,54,'asdasdas'),(122,55,'asdasdasd'),(123,54,'asdasdasd'),(124,55,''),(125,56,'asdasdas'),(126,57,'asdasdasd'),(127,56,'asdasdasd'),(128,57,'azsdasdas'),(129,58,'asdasdassssd'),(130,59,'asdasdasd'),(131,58,'asdasdasdssss'),(132,58,'asdasdasd'),(133,59,'asdasdasdss'),(134,59,'azsdasdas'),(135,60,'áđâsdá'),(136,60,'áđâsd'),(137,61,'qưeqưeqưeq'),(138,62,'qưeqưewq'),(139,61,'qeqưeqưeqưeqư'),(140,62,'eqưeqưeqưe');
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

-- Dump completed on 2024-06-01 11:32:08

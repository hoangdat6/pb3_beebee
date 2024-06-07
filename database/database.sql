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
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_item`
--

LOCK TABLES `product_item` WRITE;
/*!40000 ALTER TABLE `product_item` DISABLE KEYS */;
INSERT INTO `product_item` VALUES (334,115,'ImageProduct/115/115_01.png',NULL,209,107,600000),(335,115,'ImageProduct/115/115_02.png',NULL,210,93,600000),(336,115,'ImageProduct/115/115_03.png',NULL,211,111,600000),(337,115,'ImageProduct/115/115_04.png',NULL,212,85,600000),(338,115,'ImageProduct/115/115_05.png',NULL,213,114,600000),(339,116,'ImageProduct/116/116_01.png',214,215,107,850000),(340,116,'ImageProduct/116/116_01.png',214,216,94,850000),(341,116,'ImageProduct/116/116_01.png',214,217,106,850000),(342,116,'ImageProduct/116/116_01.png',214,218,93,850000),(343,116,'ImageProduct/116/116_05.png',219,215,106,850000),(344,116,'ImageProduct/116/116_05.png',219,216,80,850000),(345,116,'ImageProduct/116/116_05.png',219,217,85,850000),(346,116,'ImageProduct/116/116_05.png',219,218,81,850000),(347,116,'ImageProduct/116/116_09.png',220,215,80,850000),(348,116,'ImageProduct/116/116_09.png',220,216,80,850000),(349,116,'ImageProduct/116/116_09.png',220,217,66,850000),(350,116,'ImageProduct/116/116_09.png',220,218,83,850000),(351,116,'ImageProduct/116/116_013.png',221,215,79,850000),(352,116,'ImageProduct/116/116_013.png',221,216,100,850000),(353,116,'ImageProduct/116/116_013.png',221,217,81,850000),(354,116,'ImageProduct/116/116_013.png',221,218,100,850000),(355,116,'ImageProduct/116/116_017.png',222,215,100,850000),(356,116,'ImageProduct/116/116_017.png',222,216,89,850000),(357,116,'ImageProduct/116/116_017.png',222,217,84,850000),(358,116,'ImageProduct/116/116_017.png',222,218,83,850000),(359,116,'ImageProduct/116/116_021.png',223,215,100,850000),(360,116,'ImageProduct/116/116_021.png',223,216,88,850000),(361,116,'ImageProduct/116/116_021.png',223,217,71,850000),(362,116,'ImageProduct/116/116_021.png',223,218,61,850000);
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
                            `sales` bigint DEFAULT '0',
                            `product_status_id` smallint DEFAULT NULL,
                            PRIMARY KEY (`id`),
                            KEY `category_id` (`category_id`),
                            KEY `seller_id` (`seller_id`),
                            KEY `products_product_status_id_fk` (`product_status_id`),
                            CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
                            CONSTRAINT `products_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`),
                            CONSTRAINT `products_product_status_id_fk` FOREIGN KEY (`product_status_id`) REFERENCES `product_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (115,'Vợt cầu lông Kumpoo K520 pro chính hãng sợi carbon 4U căng sẵn công thủ toàn diện cho mọi người chơi','Siêu phẩm Kumpoo Power Control K520 Pro là sự lựa chọn hàng đầu khi bạn đang tìm kiếm cho mình vợt cầu lông giá rẻ nổi trội với thiết kế đẹp, hiện đại\n\n\n\nQUÀ TẶNG:\n\n- 1 cước chính hãng KUMPOO hoặc VENSON (VS) (CĂNG SẴN 10.5KG)\n\n- 1 quấn cán chính hãng Kumpoo (Màu ngẫu nhiên)\n\n- 1 bao nỉ đựng vợt\n\n\n\nLƯU Ý\n\n- Vợt cầu lông căng sẵn 10.5kg, khách nhận chỉ việc sử dụng. Nếu bạn không muốn căng vợt sẵn, vui lòng note chú ý cho shop nhé \n\n- Shop gửi nguyên set, cuốn cán không quấn sẵn\n\n- Shop không nhận căng quá 12kg. Nếu bạn muốn căng ≥12kg, vui lòng căng máy điện tử tại cửa hàng thể thao cầu lông gần bạn, note chú ý \"Không căng vợt\" và shop sẽ gửi khung vợt, cước cho bạn ạ\n\n- 1 ĐỔI 1 TRONG 30 NGÀY: Đối với vợt sập khung, lỗi do nhà sản xuất. KHÔNG áp dụng với cước vợt và khung vợt hỏng, gãy do ngoại lực tác động, va chạm khi chơi cầu\n\n\n\nTHÔNG SỐ KỸ THUẬT\n\n- Thương hiệu: Kumpoo\n\n- Mã sản phẩm: Power Control K520 Pro\n\n- Màu sắc: Đen, Trắng\n\n- Cước vợt: Căng sẵn (Chọn màu)\n\n- Độ cứng: 8.5 - Trung bình\n\n- Chất liệu: Carbon Fiber\n\n- Trọng lượng: 82 +- 2 g (4U)\n\n- Chiều dài vợt: 675 mm\n\n- Sức căng dây: 24 - 28 lbs (Tối đa 12,7kg)\n\n- Điểm cân bằng: 290 +- 5 mm\n\n\n\nCÔNG NGHỆ VỢT KUMPOO K520 PRO\n\n- Áp dụng công nghệ High Modulus Graphite + Nano Carbon Control Power tăng độ bền lên 20%, giúp người chơi có những cú đánh uy lực, chuẩn xác.\n\n- Vợt Kumpoo K520 Pro thuộc dòng vợt cầu lông giá rẻ với thông số khá dễ chịu như trọng lượng 4U, điểm cân bằng 290mm và so với bản thường, Kumpoo K520 Pro sẽ có đũa cứng hơn giúp các pha phản tạt và phòng thủ của người chơi được hỗ trợ nhiều hơn.\n\n- Chuyển đổi chế độ tấn công và phòng thủ theo ý muốn rất tốt cho những người mới bắt đầu luyện tập buộc và bảo vệ cổ tay.\n\n- Phần khung của vợt cầu lông Kumpoo K520 Pro chính hãng được thiết kế theo dạng hộp cho khả năng tăng cường sức mạnh tối đa trong mỗi cú vung đảm bảo sẽ hỗ trợ lực cực tốt cho các lông thủ trong các quả đập cầu hoặc phông cầu cao sâu đi đến cuối sân.\n\n\n\nĐỐI TƯỢNG PHÙ HỢP:\n\n- Lối chơi toàn diện, thiên về điều cầu nổi trội với những quả phông cầu cao sâu đi đến cuối sân và luôn cán vạch đích\n\n- Dùng trong cả đánh đơn và đánh đôi\n\n- Dành cho người chơi có trình độ trung bình, trung bình - yếu và cả những bạn mới tập\n\n\n\nKUMPOO CAM KẾT:\n\n- Sản phẩm chính hãng, nhập khẩu trực tiếp từ thương hiệu Kumpoo\n\n- Sản phẩm 100% giống mô tả\n\n- Đảm bảo chất lượng, dịch vụ tốt nhất, hàng được giao từ 1-5 ngày kể từ ngày đặt hàng\n\n- Giao hàng trên toàn quốc theo hình thức COD hoặc qua ví ShopeePay\n\n- Đổi trả theo đúng quy định của Shopee\n\n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm):\n\n- Hàng hoá vẫn còn mới, chưa qua sử dụng\n\n- Hàng hóa hư hỏng do vận chuyển hoặc do nhà sản xuất.\n\n2. Trường hợp được chấp nhận:\n\n- Hàng không đúng chủng loại, mẫu mã như quý khách đặt hàng\n\n- Không đủ số lượng, không đủ bộ như trong đơn hàng\n\n- Tình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể vỡ…\n\n3. Trường hợp không đủ điều kiện áp dụng chính sách:\n\n- Quá 03 ngày kể từ khi Quý khách nhận hàng\n\n- Gửi lại hàng không đúng mẫu mã, không phải hàng của KUMPOO\n\n- Đặt nhầm sản phẩm, chủng loại, không thích, không hợp,...\n\n-  Không có video quay lại quá trình nhận và mở sản phẩm\n\n\n\n#votcaulong #vot #cau #long #vot #chinhhang #giare #carbon #lining #kumpoo #the #thao #K520 #K520pro #lanting #ak7 #e55ls #power #control #yonex #sakura #pc99 #nam #nu #dung #cu #badminton #tan #cong #phong #thu #toan #dien','ImageProduct/115/115_0.png,ImageProduct/115/115_1.png,ImageProduct/115/115_2.png,ImageProduct/115/115_3.png,ImageProduct/115/115_4.png,ImageProduct/115/115_5.png,ImageProduct/115/115_6.png,ImageProduct/115/115_7.png,ImageProduct/115/115_8.png',4,2,'2024-06-07 15:11:26',18,33,0,1),(116,'Vợt cầu lông Kumpoo Light Pink 4U 100% carbon căng sẵn 10.5kg tặng kèm cước, quấn cán, túi đựng vợt','Siêu phẩm PHÂN PHỐI ĐỘC QUYỀN Kumpoo Power Control Light Pink là sự lựa chọn hàng đầu khi bạn đang tìm kiếm cho mình vợt cầu lông độc đáo, đặc biệt nổi trội với thiết kế đẹp, hiện đạI\n\n\n\nSet quà tặng đơn hàng:\n\n- 1 cước chính hãng KUMPOO hoặc VENSON (VS) (CĂNG SẴN 10.5KG)\n\n- 1 quấn cán vợt chính hãng Kumpoo\n\n- 1 bao nỉ đựng vợt\n\n- 1 đôi tất thể thao trắng unisex chính hãng (Số lượng quà tặng có hạn - THÊM DEAL SỐC 0Đ VÀO GIỎ HÀNG NGAY. Trong trường hợp khách hàng KHÔNG thêm deal sốc 0đ sẽ KHÔNG nhận được quà tặng giới hạn ạ)\n\n\n\nLƯU Ý\n\n- Vợt cầu lông căng sẵn 10.5kg, khách nhận chỉ việc sử dụng. Nếu bạn không muốn căng vợt sẵn, vui lòng note chú ý cho shop nhé \n\n- Shop gửi nguyên set, cuốn cán không quấn sẵn\n\n- Shop không nhận căng quá 12kg. Nếu bạn muốn căng ≥12kg, vui lòng căng máy điện tử tại cửa hàng thể thao cầu lông gần bạn, note chú ý \"Không căng vợt\" và shop sẽ gửi khung vợt, cước cho bạn ạ\n\n- 1 ĐỔI 1 TRONG 30 NGÀY: Đối với vợt sập khung, lỗi do nhà sản xuất. KHÔNG áp dụng với cước vợt và khung vợt hỏng, gãy do ngoại lực tác động, va chạm khi chơi cầu\n\n\n\nTHÔNG SỐ KỸ THUẬT\n\n- Thương hiệu: Kumpoo\n\n- Mã sản phẩm: Power Control Light Pink\n\n- Màu sắc: Đen Hồng\n\n- Cước vợt: K65 Kumpoo\n\n- Độ cứng: 8.5 - Trung bình\n\n- Chất liệu: Carbon Fiber\n\n- Trọng lượng: 82 +- 2 g (4U)\n\n- Chiều dài vợt: 675 mm\n\n- Sức căng dây: 24 - 28 lbs (Tối đa 12,7kg)\n\n- Điểm cân bằng: 290 +- 5 mm\n\n\n\nCÔNG NGHỆ VỢT KUMPOO LIGHTPINK PHÂN PHỐI ĐỘC QUYỀN:\n\n- Áp dụng công nghệ High Modulus Graphite + Nano Carbon Control Power tăng độ bền lên 20%, giúp người chơi có những cú đánh uy lực, chuẩn xác.\n\n- Vợt cầu lông Kumpoo Light Pink với thông số khá dễ chịu như trọng lượng 4U, điểm cân bằng 290mm và so với bản thường, Kumpoo Power Control LightPink sẽ có đũa cứng hơn giúp các pha phản tạt và phòng thủ của người chơi được hỗ trợ nhiều hơn.\n\n- Chuyển đổi chế độ tấn công và phòng thủ theo ý muốn rất tốt cho những người mới bắt đầu luyện tập buộc và bảo vệ cổ tay.\n\n- Phần khung của vợt cầu lông Kumpoo Light Pink chính hãng được thiết kế theo dạng hộp cho khả năng tăng cường sức mạnh tối đa trong mỗi cú vung đảm bảo sẽ hỗ trợ lực cực tốt cho các lông thủ trong các quả đập cầu hoặc phông cầu cao sâu đi đến cuối sân.\n\n\n\nĐỐI TƯỢNG PHÙ HỢP:\n\n- Lối chơi toàn diện, thiên về điều cầu nổi trội với những quả phông cầu cao sâu đi đến cuối sân và luôn cán vạch đích\n\n- Dùng trong cả đánh đơn và đánh đôi\n\n- Dành cho người chơi có trình độ trung bình, trung bình - yếu và cả những bạn mới tập\n\n\n\nKUMPOO CAM KẾT:\n\n- Sản phẩm chính hãng, nhập khẩu trực tiếp từ thương hiệu Kumpoo\n\n- Sản phẩm 100% giống mô tả\n\n- Đảm bảo chất lượng, dịch vụ tốt nhất, hàng được giao từ 1-5 ngày kể từ ngày đặt hàng\n\n- Giao hàng trên toàn quốc theo hình thức COD hoặc qua ví ShopeePay\n\n- Đổi trả theo đúng quy định của Shopee\n\n1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm):\n\n- Hàng hoá vẫn còn mới, chưa qua sử dụng\n\n- Hàng hóa hư hỏng do vận chuyển hoặc do nhà sản xuất.\n\n2. Trường hợp được chấp nhận:\n\n- Hàng không đúng chủng loại, mẫu mã như quý khách đặt hàng\n\n- Không đủ số lượng, không đủ bộ như trong đơn hàng\n\n- Tình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể vỡ…\n\n3. Trường hợp không đủ điều kiện áp dụng chính sách:\n\n- Quá 03 ngày kể từ khi Quý khách nhận hàng\n\n- Gửi lại hàng không đúng mẫu mã, không phải hàng của KUMPOO\n\n- Đặt nhầm sản phẩm, chủng loại, không thích, không hợp,...\n\n-  Không có video quay lại quá trình nhận và mở sản phẩm\n\n\n\n#votcaulong #vot #cau #long #lightpink #blackpink #quatang #noel #tet #giangsinh #hong #docquyen #light #black #pink #moi #ramat #chinhhang #giare #carbon #lining #kumpoo #the #thao #K520 #K520pro #lanting #ak7 #e55ls #power #control #yonex #sakura #pc99 #nam #nu #dung #cu #badminton #tan #cong #phong #thu #toan #dien #den #trang #xanh','ImageProduct/116/116_0.png,ImageProduct/116/116_1.png,ImageProduct/116/116_2.png,ImageProduct/116/116_3.png,ImageProduct/116/116_4.png,ImageProduct/116/116_5.png,ImageProduct/116/116_6.png,ImageProduct/116/116_7.png,ImageProduct/116/116_8.png',4,2,'2024-06-07 15:42:27',12,16,0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_item`
--

LOCK TABLES `shopping_cart_item` WRITE;
/*!40000 ALTER TABLE `shopping_cart_item` DISABLE KEYS */;
INSERT INTO `shopping_cart_item` VALUES (146,5,335,1,'2024-06-07 15:33:43');
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
INSERT INTO `users` VALUES (3,'dat1234','JSm5oAGusjmIxnepT8TmaCahBxU=','dathv2004@gmail.com','12312312312','2024-03-15 16:28:14','male','2024-03-20',_binary '','USER_AVATAR/3/3.png','Hoàng Văn Đạt','SELLER'),(4,'dat','PLQ4laHKUA3DY7RcRDjFyxl0rDM=','dathv123@gmail.com',NULL,'2024-03-23 21:17:39','male','2024-03-06',_binary '\0',NULL,NULL,'CUSTOMER'),(5,'dat123122','XMnJIT/dD1rQAAJv71cSrW3feWE=','102220056@sv1.dut.udn.vn',NULL,'2024-03-24 23:26:20','male','2024-03-01',_binary '',NULL,NULL,'CUSTOMER'),(6,'dat12345','UGd8MZh6DWh5c9fwLtlCybcrsmE=','dat10108@gmail.com',NULL,'2024-04-05 15:10:01','male','2004-12-31',_binary '\0',NULL,NULL,'CUSTOMER'),(9,'dat123','MHiL+CJ3N3411r6p6v1KAKMC+7I=','102220055@sv1.dut.udn.vn','','2024-05-11 16:06:16','male','2024-05-23',_binary '','USER_AVATAR/9/9.png','sdasdasdasdas','SELLER'),(10,'Coolmate123','1dLwkC8QDljJyk8B2LVzbH3EI4k=','dat10106868@gmail.com',NULL,'2024-06-02 08:55:03','male','2023-10-18',_binary '\0','USER_AVATAR/10/10.png',NULL,'SELLER');
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation`
--

LOCK TABLES `variation` WRITE;
/*!40000 ALTER TABLE `variation` DISABLE KEYS */;
INSERT INTO `variation` VALUES (89,115,'Loại'),(90,116,'Mã sản phẩm'),(91,116,'Màu cước');
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
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_option`
--

LOCK TABLES `variation_option` WRITE;
/*!40000 ALTER TABLE `variation_option` DISABLE KEYS */;
INSERT INTO `variation_option` VALUES (209,89,'K52 Pro Trắng'),(210,89,'K52 Pro Trắng-Đen'),(211,89,'K520 Pro Trắng-Xanh'),(212,89,'K520 Pro T - Xanh Lá'),(213,89,'K52 Pro Đen'),(214,90,'LightPink'),(215,91,'Hồng'),(216,91,'Trắng'),(217,91,'Đen'),(218,91,'Xanh'),(219,90,'BlackPink'),(220,90,'Veluriyam 5U Tím'),(221,90,'Veluriyam 5U Xanh'),(222,90,'Lush Mountain Trắng'),(223,90,'Lush Mountain Xanh');
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

-- Dump completed on 2024-06-07 16:01:22

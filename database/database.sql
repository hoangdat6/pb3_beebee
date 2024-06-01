-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!50606 SET @OLD_INNODB_STATS_AUTO_RECALC=@@INNODB_STATS_AUTO_RECALC */;
/*!50606 SET GLOBAL INNODB_STATS_AUTO_RECALC=OFF */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `columns_priv` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`User`,`Db`,`Table_name`,`Column_name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `component` (
  `component_id` int unsigned NOT NULL AUTO_INCREMENT,
  `component_group_id` int unsigned NOT NULL,
  `component_urn` text NOT NULL,
  PRIMARY KEY (`component_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='Components';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `db` (
  `Host` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `User` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`User`,`Db`),
  KEY `User` (`User`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('localhost','performance_schema','mysql.session','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N'),('localhost','sys','mysql.sys','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `default_roles`
--

DROP TABLE IF EXISTS `default_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `default_roles` (
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `DEFAULT_ROLE_HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '%',
  `DEFAULT_ROLE_USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`HOST`,`USER`,`DEFAULT_ROLE_HOST`,`DEFAULT_ROLE_USER`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Default roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `default_roles`
--

LOCK TABLES `default_roles` WRITE;
/*!40000 ALTER TABLE `default_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `default_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `engine_cost`
--

DROP TABLE IF EXISTS `engine_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `engine_cost` (
  `engine_name` varchar(64) NOT NULL,
  `device_type` int NOT NULL,
  `cost_name` varchar(64) NOT NULL,
  `cost_value` float DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(1024) DEFAULT NULL,
  `default_value` float GENERATED ALWAYS AS ((case `cost_name` when _utf8mb3'io_block_read_cost' then 1.0 when _utf8mb3'memory_block_read_cost' then 0.25 else NULL end)) VIRTUAL,
  PRIMARY KEY (`cost_name`,`engine_name`,`device_type`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `engine_cost`
--

LOCK TABLES `engine_cost` WRITE;
/*!40000 ALTER TABLE `engine_cost` DISABLE KEYS */;
INSERT INTO `engine_cost` (`engine_name`, `device_type`, `cost_name`, `cost_value`, `last_update`, `comment`) VALUES ('default',0,'io_block_read_cost',NULL,'2023-09-27 17:04:31',NULL),('default',0,'memory_block_read_cost',NULL,'2023-09-27 17:04:31',NULL);
/*!40000 ALTER TABLE `engine_cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `ret` tinyint NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_grants`
--

DROP TABLE IF EXISTS `global_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_grants` (
  `USER` char(32) COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `HOST` char(255) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '',
  `PRIV` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `WITH_GRANT_OPTION` enum('N','Y') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`USER`,`HOST`,`PRIV`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='Extended global grants';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_grants`
--


LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Quần Nỉ Dài Relax Pants ODIN CLUB, Quần nỉ dài ống suông ODIN, Local Brand ODIN CLUB','Quần nỉ dài Relax Pants ODIN CLUB\n\n- Màu sắc: Đen /  Be / Xám Nhạt / Xám Đậm\n\n- Size: M / L / XL.\n\n- Kiểu dáng: Oversized.\n\nHƯỚNG DẪN SỬ DỤNG:\n\n- Lần giặt đầu chỉ nên xả nước lạnh rồi phơi khô.\n\n- Khuyến cáo nên giặt tay, hạn chế giặt máy.\n\n- Chú ý lộn trái sản phẩm trước khi giặt để không ảnh hướng tới bề mặt vải.\n\n- Không sử dụng thuốc tẩy, không giặt chung với các sản phẩm dễ phai màu\n\n- Hạn chế phơi trực tiếp dưới ánh nắng mặt trời, nên phơi khô dưới ảnh sáng tự nhiên\n\n\n\nCAM KẾT TỪ ODIN CLUB\n\n- Sản phẩm 100% giống mô tả.\n\n- Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh.\n\n- Đảm bảo chất lượng sản phẩm luôn ở mức cao nhất. \n\n- Hàng có sẵn, giao hàng trên toàn quốc, nhận hàng sau 2-3 ngày đối với các khu vực thuộc nội thành Hà Nội và 3-4 ngày đối với các khu vực khác.\n\n\n\nCHÍNH SÁCH ĐỔI-TRẢ\n\n1. Điều kiện tiên quyết:\n\n- Có video quay lại quá trình mở gói hàng.\n\n- Hàng hoá vẫn còn nguyên hiện trạng kể từ khi KH mở gói hàng.\n\n- Khách hàng phản hồi trong vòng 6 ngày kể từ ngày nhận hàng.\n\n2. Trường hợp được hỗ trợ:\n\n- Hàng nhận được không đúng màu sắc, kích thước, số lượng như KH đặt hàng.\n\n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất.\n\n\n\n*Lưu ý:  Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.','img_product/quan_001.png',1,2,'2024-04-18 14:54:05',20,47,NULL,NULL),(3,'Giày Thể Thao Alphabounce Beyond Trắng Full Cực Êm Thoáng Khí Phù Hợp Với Cả Nam Và Nữ Clever Man Store','MÔ TẢ SẢN PHẨM\n🔸 Giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ đầy tính năng, được thiết kế để cung cấp sự thoải mái, độ bền và hỗ trợ cho người chơi khi tập luyện hoặc tham gia các hoạt động thể thao. Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là sự lựa chọn tuyệt vời cho những ai yêu thích sự đơn giản và trẻ trung.\n\n\n\n🔸 Đế giày của giày Alphabounce Beyond trắng được thiết kế với công nghệ Bounce độc quyền của AD, giúp cung cấp độ đàn hồi và đàn hồi tối đa, giúp người mang giày chạy bộ linh hoạt hơn và giảm sốc tốt hơn khi đáp xuống mặt đất. Thân giày được làm bằng vải Jacquard, là một loại vải nhẹ và thoáng khí, giúp người mang giày cảm thấy mát mẻ và thoải mái trong suốt quá trình tập luyện.\n\n\n\n🔸 Giày Alphabounce Beyond trắng còn được thiết kế với hệ thống hỗ trợ gót chân, giúp người mang giày cảm thấy thoải mái và ổn định hơn khi chạy. Đế giày của giày được làm bằng cao su chất lượng cao, giúp tăng độ bền và độ bám của giày.\n\n\n\n🔸 Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ tinh tế và phù hợp với nhiều phong cách. Với sự kết hợp giữa công nghệ và thẩm mỹ, giày Alphabounce Beyond trắng là sự lựa chọn hoàn hảo cho những người yêu thích sự đơn giản và trẻ trung.\n\n','img_product/day_001.png',1,2,'2024-02-22 14:54:11',44,142,NULL,NULL),(4,'Giày Converse Run Star Hike Twisted Classic Foundational Canvas - 166800C','Tên Đơn vị Nhập Khẩu: CÔNG TY TNHH MAGNA MANAGEMENT ASIA (MMA)\n\nĐịa chỉ: Phòng 14-02, Tầng 14, Tòa nhà Xổ Số Kiến Thiết Thành phố Hồ Chí Minh, 77 Trần Nhân Tôn, Phường 09, Quận 5, Thành phố Hồ Chí Minh, Việt Nam\n\nTel: 02838301111\n\nGIÀY SNEAKERS CONVERSE - HÀNG CHÍNH HÃNG PHÂN PHỐI BỞI WEAR VIETNAM Cuộc cách mạng siêu bứt phá mang tên Converse Run Star Hike \n\nBạn đã quá quen với phong cách quen thuộc của Converse là những đôi giày thể thao, chất lừ, khỏe khoắn với phần thân bằng vải và đế giày cau su màu đen thì có lẽ bạn sẽ phải thốt lên những từ cảm thán bất ngờ khi được chứng kiến sự bứt phá đầy khác biệt với dòng sản phẩm mới mang tên: Converse Run Star Hike.\n\nRun Star Hike - cú bứt phá ngoạn mục của Converse\n\nRa mắt đầu 2020, BST cực chất của Converse mang tên Converse Twisted Classic có lẽ đã tạo được tiếng vang cực lớn đối với những tín đồ yêu sneaker trên toàn thế giới. Thoát khỏi bóng dáng của những đôi Converse thân thuộc, lần này nhà thiết kế của Converse chịu chơi hơn rất nhiều khi đã biến tấu những sản phẩm của mình trở nên “không đụng hàng” với bất cứ dòng sản phẩm nào trước đó từng ra mắt.\n\nĐể mang lại cái nhìn rõ ràng và cận cảnh hơn, trong phần dưới đây, hãy cùng chiêm ngưỡng từng đường nét của đôi giày Converse Run Star Hike hot nhất 2020 này nhé!\n\nCận cảnh sự khác biệt chất chơi của mẫu giày Converse Run Star Hike\n\nRun Star Hike - mẫu giày đi trước thời đại của Converse\n\nGiày Converse Run Star Hike là dòng sản phẩm được kết hợp giữa Converse cùng JW Anderson. Trước đó, sự kết hợp này đã trình làng những sản phẩm giày mang nhiều cải tiến để thích hợp hơn với bộ môn leo núi. Chính từ nguồn cảm hứng đó, Run Star Hike đã ra đời và như một nét chấm phá trong phong cách quen thuộc thường thấy của Converse. Với những ưu điểm nổi bật về khả năng bám bề mặt vừa mang tính thời trang với phần đế độc đáo, những nhà nhận định thời trang nổi tiếng cũng phải thừa nhận rằng đây là những sản phẩm đi trước thời đại. Phải chăng, vì thế mà những đôi giày Converse Run Star Hike đã thừa thắng xông lên trên toàn thế giới với những ưu ái của idol Hàn Quốc hay những stylist, fashionista nổi tiếng nhất.\n\nCận cảnh sự phá cách không đụng hàng của Run Star Hike\n\nMở rộng thị trường, Converse đã cực kỳ đúng đắn khi quyết định mang tới nhiều sản phẩm mang tính định hướng hơn so với những đôi giày Converse truyền thống. Không chỉ phục vụ đối tượng là thế hệ Gen Z, hiện nay, Converse còn muốn cung cấp những sản phẩm chất lượng dành cho các bạn trẻ yêu thích sự mạo hiểm, thể hiện sức mạnh của bản thân với các bộ môn như leo núi, trekking…\n\nSản phẩm được \"remix\" từ Chuck và Runner khi 2 yếu tố thời trang được thể hiện xen kẽ: Upper canvas và đế Run Star zig-zag. Đổi mới từ những đôi giày Converse truyền thống với đế giày casual, đế cau su kép và bằng phẳng,Giày Converse Run Star Hike được thiết kế với phần đế giày dành riêng cho dân leo núi với độ dốc lớn. Đế giày được thiết kế với dạng răng cưa to bản, giúp tăng độ bám một cách hiệu quả vừa tạo được điểm nhấn về phong cách và ấn tượng về thời trang. \n\nGót giày thay vì có logo Converse quen thuộc thì với đôi Run Star Hike thay bằng ngôi sao màu đen ở chính giữa. Đế giày dày tới 6cm, và là một trong những đôi sneakers có phần đế dày nhất tính đến hiện tại. \n\nGiày Converse Run Star Hike hiện được ra mắt với hai tông màu chính là trắng basic và đen cá tính. Chắc chắn trong tương lai, Run Star Hike có thể tạo cho mình được một đế chế riêng không chỉ dành cho dân leo núi mà còn có chỗ đứng trong lòng các bạn trẻ Việt Nam\n\n- Size US : 3.5-11, Size EU: 34.5-44.5 \n\n-Chinh sách đối với các sản phẩm được bán bởi Wear Vietnam\n\n+ Giảm từ 0 -> 10%: hỗ trợ đổi size và bảo hành\n\n+ Giảm trên 10%: không đổi size, không bảo hành\n\n*Thời gian bảo hành 1 tháng\n\n*Không đổi trả, bảo hành với balo, quần áo & phụ kiện\n\n- Loại hình bảo hành: Cửa hàng\n\n- Quy cách đóng gói: Double Box ( Giày, Hóa đơn, Túi Converse)\n\n#converse\n\n#Converse\n\n#CONVERSE\n\n#giayconverse\n\n#conversegiay\n\n#Giayconverse\n\n#GIAYCONVERSE\n\n#giaythethaoconverse\n\n#166800V','img_product/img.png',1,2,'2024-09-22 14:54:16',25,2340,NULL,NULL),(5,'Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm','Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm\n\n\n\nTHÔNG TIN CHI TIẾT GHẾ CÔNG THÁI HỌC HYPERWORK AIRY\n\n- Thương hiệu: HyperWork\n\n- Màu sắc: Đen / Trắng\n\n- Bộ cơ khí: FluidMotion System\n\n- Ngả lưng: Tối đa 120 độ\n\n- Piston: Class 4\n\n- Điều chỉnh kháng lực: Có\n\n- Tựa đầu, Kê tay: 3D\n\n- Lưới: AeroMesh\n\n- Chân ghế: Kim loại\n\n- Chiều cao: 150 - 190cm\n\n- Cân nặng: 40 - 100Kg\n\n- Bảo hành: 3 năm\n\n\n\nĐẶC ĐIỂM NỔI BẬT\n\n- Toàn bộ lưng và mâm ghế của Airy được sử dụng lưới đem lại cảm giác ngồi êm ái, thoáng mát, đặc biệt phù hợp với khí hậu Việt Nam.\n\n- Tay ghế 3D có thể chỉnh được độ cao, và xoay được phần đầu tay ghế qua trái phải, đẩy tới và lui phần đệm tay sao cho vừa vặn nhất.\n\n- Được thiết kế độc đáo, mềm mại cùng khả năng điều chỉnh trượt 5 cm, giúp bạn tìm được vị trí ngồi lý tưởng.\n\n- Tựa đầu của Airy có thể linh hoạt điều chỉnh độ cao, sâu và góc nghiêng để phù hợp với phần cổ và gáy, giúp bạn làm việc hoặc nghỉ ngơi một cách thật thoải mái.\n\n- Không chỉ dừng lại ở việc điều chỉnh mâm ghế và tựa đầu, Airy còn cho phép bạn điều chỉnh đệm eo và góc nghiêng của lưng ghế. Điều này đảm bảo rằng bạn có thể tạo ra sự thoải mái tối ưu cho cơ thể.\n\n- Bộ chuyển động FluidMotion với tính năng phong phú: Kháng lực, ngả 120 độ, trượt mâm ghế,…\n\n- Hai vị trí điều chỉnh tựa lưng thông minh, đảm bảo lưng ghế luôn ôm sát cơ thể.\n\n- Piston Class 4 chuẩn BIFMA: An toàn và bền bỉ.\n\n\n\nCAM KẾT VỚI KHÁCH HÀNG\n\nMang đến khách hàng những sản phẩm chất lượng tốt nhất, đảm bảo chính hãng.\n\nSản phẩm đúng với mô tả, hình ảnh và video mà shop cung cấp.\n\nDịch vụ khách hàng luôn tận tâm và nhiệt tình, giúp quý khách có được trải nghiệm tốt nhất khi mua hàng.\n\nThời gian chuẩn bị hàng luôn được đảm bảo.\n\nHỗ trợ áp dụng chính sách đổi trả sản phẩm theo quy định của Shopee (Trong vòng 3 ngày kể từ ngày nhận hàng).\n\n*ĐỂ ĐƯỢC HỖ TRỢ NHANH NHẤT, BẠN VUI LÒNG QUAY LẠI VIDEO MỞ THÙNG HÀNG ĐỂ SHOP TIỆN XÁC MINH.\n\n\n\nHOÀNG KHUÊ - LINH KIỆN, PHỤ KIỆN MÁY TÍNH CHÍNH HÃNG\n\n*Địa chỉ: 46A Đường 85, Phường Tân Quy, Quận 7, TP.HCM\n\nRất hân hạnh được phục vụ quý khách!\n\nQuý khách hàng vui lòng liên hệ trực tiếp với shop để được giải quyết thắc mắc và vấn đề về sản phẩm (nếu có).\n\nMong rằng bạn sẽ hài lòng với sự phục vụ của shop và đừng quên giới thiệu bạn bè của bạn nhé!\n\n\n\n#ghe #congthaihoc #hyperwork #airy #tuadau #tualung #xoay #120do #dieuchinh #luoi #em #thoangmat #thoaimai #noithat #vanphong #chinhhang #caocap #hoangkhue\n\n','img_product/ghe12345.png',1,2,'2024-01-22 14:54:22',45,38,NULL,NULL),(90,'asdasdasdsad','asdsadadasdasd','ImageProduct/90/90_0.png',1,2,'2024-05-11 16:16:58',12,6,NULL,NULL),(91,'asdasdasd','asdasdasdasd','ImageProduct/91/91_0.png,ImageProduct/91/91_1.png',1,21,'2024-05-11 23:03:37',10,4,NULL,NULL),(92,'asdasdasd','asdasdasdasd','ImageProduct/92/92_0.png,ImageProduct/92/92_1.png',1,21,'2024-05-11 23:04:23',10,5,NULL,NULL),(93,'asdasdasd','asdasdasdasd','ImageProduct/93/93_0.png,ImageProduct/93/93_1.png',1,2,'2024-05-11 23:05:00',10,5,NULL,NULL),(94,'Sản phẩm này là demo tiếng viêt','ádsađááđá','ImageProduct/94/94_0.png',1,2,'2024-05-12 22:49:07',12,1,NULL,NULL),(95,'sađá','eqưeqưeqưeqưe','',1,2,'2024-05-27 15:51:25',12,1,NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;


--
-- Table structure for table `gtid_executed`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE IF NOT EXISTS `gtid_executed` (
  `source_uuid` char(36) NOT NULL COMMENT 'uuid of the source where the transaction was originally executed.',
  `interval_start` bigint NOT NULL COMMENT 'First number of interval.',
  `interval_end` bigint NOT NULL COMMENT 'Last number of interval.',
  PRIMARY KEY (`source_uuid`,`interval_start`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
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
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (0,'Contents',0,''),(1,'Help Metadata',0,''),(2,'Data Types',0,''),(3,'Administration',0,''),(4,'Functions',0,''),(5,'Enterprise Encryption Functions',4,''),(6,'Language Structure',0,''),(7,'Geographic Features',0,''),(8,'MBR',7,''),(9,'WKT',7,''),(10,'Comparison Operators',4,''),(11,'Logical Operators',4,''),(12,'Flow Control Functions',4,''),(13,'Numeric Functions',4,''),(14,'Date and Time Functions',4,''),(15,'String Functions',4,''),(16,'Cast Functions and Operators',4,''),(17,'XML',4,''),(18,'Bit Functions',4,''),(19,'Encryption Functions',4,''),(20,'Locking Functions',4,''),(21,'Information Functions',4,''),(22,'Spatial Functions',4,''),(23,'WKT Functions',22,''),(24,'WKB Functions',22,''),(25,'Geometry Constructors',22,''),(26,'Geometry Property Functions',22,''),(27,'Point Property Functions',22,''),(28,'LineString Property Functions',22,''),(29,'Polygon Property Functions',22,''),(30,'GeometryCollection Property Functions',22,''),(31,'Geometry Relation Functions',22,''),(32,'MBR Functions',22,''),(33,'GTID',4,''),(34,'Aggregate Functions and Modifiers',4,''),(35,'GROUP BY Functions and Modifiers',4,''),(36,'Window Functions',4,''),(37,'Performance Schema Functions',4,''),(38,'Internal Functions',4,''),(39,'Miscellaneous Functions',4,''),(40,'Data Definition',0,''),(41,'Data Manipulation',0,''),(42,'Transactions',0,''),(43,'Replication Statements',0,''),(44,'Prepared Statements',0,''),(45,'Compound Statements',0,''),(46,'Account Management',0,''),(47,'Table Maintenance',0,''),(48,'Loadable Functions',0,''),(49,'Components',0,''),(50,'Plugins',0,''),(51,'Utility',0,''),(52,'Storage Engines',0,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (108,'%'),(415,'(JSON'),(86,'*'),(84,'+'),(85,'-'),(416,'->'),(418,'->>'),(87,'/'),(75,':='),(59,'<'),(58,'<='),(56,'<=>'),(57,'<>'),(55,'='),(61,'>'),(60,'>='),(90,'ABS'),(874,'ACCOUNT'),(91,'ACOS'),(652,'ACTION'),(49,'ADD'),(120,'ADDDATE'),(121,'ADDTIME'),(908,'ADMIN'),(263,'AES_DECRYPT'),(264,'AES_ENCRYPT'),(574,'AFTER'),(247,'AGAINST'),(929,'AGGREGATE'),(575,'ALGORITHM'),(688,'ALL'),(50,'ALTER'),(576,'ANALYZE'),(62,'AND'),(521,'ANY_VALUE'),(653,'ARCHIVE'),(254,'ARRAY'),(717,'AS'),(459,'ASC'),(185,'ASCII'),(92,'ASIN'),(769,'ASSIGN_GTIDS_TO_ANONYMOUS_TRANSACTIONS'),(6,'ASYMMETRIC_DECRYPT'),(13,'ASYMMETRIC_DERIVE'),(7,'ASYMMETRIC_ENCRYPT'),(8,'ASYMMETRIC_SIGN'),(9,'ASYMMETRIC_VERIFY'),(636,'AT'),(93,'ATAN'),(94,'ATAN2'),(875,'ATTRIBUTE'),(906,'AUTHENTICATION'),(738,'AUTOCOMMIT'),(577,'AUTOEXTEND_SIZE'),(578,'AUTO_INCREMENT'),(453,'AVG'),(579,'AVG_ROW_LENGTH'),(750,'BACKUP'),(764,'BEFORE'),(739,'BEGIN'),(281,'BENCHMARK'),(63,'BETWEEN'),(186,'BIN'),(253,'BINARY'),(556,'BINLOG'),(522,'BIN_TO_UUID'),(455,'BIT_AND'),(187,'BIT_LENGTH'),(456,'BIT_OR'),(457,'BIT_XOR'),(17,'BOOL'),(18,'BOOLEAN'),(230,'BOTH'),(640,'BTREE'),(460,'BY'),(42,'BYTE'),(965,'CACHE'),(682,'CALL'),(492,'CAN_ACCESS_COLUMN'),(493,'CAN_ACCESS_DATABASE'),(494,'CAN_ACCESS_TABLE'),(495,'CAN_ACCESS_USER'),(496,'CAN_ACCESS_VIEW'),(654,'CASCADE'),(76,'CASE'),(255,'CAST'),(855,'CATALOG_NAME'),(95,'CEIL'),(96,'CEILING'),(740,'CHAIN'),(876,'CHALLENGE_RESPONSE'),(580,'CHANGE'),(557,'CHANNEL'),(43,'CHAR'),(39,'CHARACTER'),(189,'CHARACTER_LENGTH'),(282,'CHARSET'),(188,'CHAR_LENGTH'),(581,'CHECK'),(582,'CHECKSUM'),(877,'CIPHER'),(856,'CLASS_ORIGIN'),(909,'CLIENT'),(937,'CLONE'),(690,'CLOSE'),(65,'COALESCE'),(958,'CODE'),(283,'COERCIBILITY'),(539,'COLLATE'),(284,'COLLATION'),(583,'COLUMN'),(584,'COLUMNS'),(857,'COLUMN_NAME'),(544,'COMMENT'),(741,'COMMIT'),(753,'COMMITTED'),(655,'COMPACT'),(545,'COMPLETION'),(933,'COMPONENT'),(265,'COMPRESS'),(656,'COMPRESSED'),(585,'COMPRESSION'),(190,'CONCAT'),(191,'CONCAT_WS'),(704,'CONCURRENT'),(852,'CONDITION'),(586,'CONNECTION'),(285,'CONNECTION_ID'),(742,'CONSISTENT'),(587,'CONSTRAINT'),(858,'CONSTRAINT_CATALOG'),(859,'CONSTRAINT_NAME'),(860,'CONSTRAINT_SCHEMA'),(853,'CONTINUE'),(97,'CONV'),(260,'CONVERT'),(122,'CONVERT_TZ'),(98,'COS'),(99,'COT'),(458,'COUNT'),(100,'CRC32'),(51,'CREATE'),(10,'CREATE_ASYMMETRIC_PRIV_KEY'),(11,'CREATE_ASYMMETRIC_PUB_KEY'),(14,'CREATE_DH_PARAMETERS'),(12,'CREATE_DIGEST'),(733,'CROSS'),(657,'CSV'),(477,'CUME_DIST'),(123,'CURDATE'),(878,'CURRENT'),(124,'CURRENT_DATE'),(286,'CURRENT_ROLE'),(125,'CURRENT_TIME'),(126,'CURRENT_TIMESTAMP'),(287,'CURRENT_USER'),(850,'CURSOR'),(861,'CURSOR_NAME'),(127,'CURTIME'),(588,'DATA'),(288,'DATABASE'),(942,'DATABASES'),(629,'DATAFILE'),(36,'DATE'),(128,'DATEDIFF'),(256,'DATETIME'),(129,'DATE_ADD'),(144,'DATE_FORMAT'),(130,'DATE_SUB'),(131,'DAY'),(145,'DAYNAME'),(146,'DAYOFMONTH'),(147,'DAYOFWEEK'),(148,'DAYOFYEAR'),(132,'DAY_HOUR'),(133,'DAY_MINUTE'),(134,'DAY_SECOND'),(841,'DEALLOCATE'),(28,'DEC'),(31,'DECIMAL'),(842,'DECLARE'),(2,'DEFAULT'),(832,'DEFAULT_AUTH'),(546,'DEFINER'),(646,'DEFINITION'),(101,'DEGREES'),(696,'DELAYED'),(589,'DELAY_KEY_WRITE'),(658,'DELETE'),(478,'DENSE_RANK'),(461,'DESC'),(976,'DESCRIBE'),(647,'DESCRIPTION'),(862,'DIAGNOSTICS'),(590,'DIRECTORY'),(547,'DISABLE'),(591,'DISCARD'),(454,'DISTINCT'),(718,'DISTINCTROW'),(88,'DIV'),(548,'DO'),(592,'DROP'),(732,'DUAL'),(719,'DUMPFILE'),(697,'DUPLICATE'),(659,'DYNAMIC'),(77,'ELSE'),(843,'ELSEIF'),(192,'ELT'),(549,'ENABLE'),(705,'ENCLOSED'),(540,'ENCRYPTION'),(78,'END'),(637,'ENDS'),(593,'ENGINE'),(943,'ENGINES'),(558,'ERROR'),(944,'ERRORS'),(239,'ESCAPE'),(706,'ESCAPED'),(550,'EVENT'),(956,'EVENTS'),(638,'EVERY'),(689,'EXCEPT'),(594,'EXCHANGE'),(840,'EXECUTE'),(635,'EXISTS'),(854,'EXIT'),(102,'EXP'),(248,'EXPANSION'),(879,'EXPIRE'),(977,'EXPLAIN'),(966,'EXPORT'),(193,'EXPORT_SET'),(927,'EXTENDED'),(675,'EXTENT_SIZE'),(149,'EXTRACT'),(417,'EXTRACTION)'),(261,'EXTRACTVALUE'),(880,'FACTOR'),(881,'FAILED_LOGIN_ATTEMPTS'),(15,'FALSE'),(925,'FAST'),(660,'FEDERATED'),(851,'FETCH'),(194,'FIELD'),(707,'FIELDS'),(910,'FILE'),(676,'FILE_BLOCK_SIZE'),(798,'FILTER'),(195,'FIND_IN_SET'),(882,'FINISH'),(595,'FIRST'),(479,'FIRST_VALUE'),(29,'FIXED'),(32,'FLOAT4'),(33,'FLOAT8'),(103,'FLOOR'),(967,'FLUSH'),(559,'FOR'),(734,'FORCE'),(596,'FOREIGN'),(196,'FORMAT'),(488,'FORMAT_BYTES'),(489,'FORMAT_PICO_TIME'),(289,'FOUND_ROWS'),(231,'FROM'),(197,'FROM_BASE64'),(150,'FROM_DAYS'),(151,'FROM_UNIXTIME'),(661,'FULL'),(597,'FULLTEXT'),(169,'FUNCTION'),(968,'GENERAL'),(329,'GEOMCOLLECTION'),(330,'GEOMETRYCOLLECTION'),(863,'GET'),(497,'GET_DD_COLUMN_PRIVILEGES'),(498,'GET_DD_CREATE_OPTIONS'),(499,'GET_DD_INDEX_SUB_PART_LENGTH'),(152,'GET_FORMAT'),(276,'GET_LOCK'),(754,'GLOBAL'),(911,'GRANT'),(945,'GRANTS'),(66,'GREATEST'),(569,'GROUP'),(523,'GROUPING'),(462,'GROUP_CONCAT'),(447,'GTID_SUBSET'),(448,'GTID_SUBTRACT'),(691,'HANDLER'),(720,'HAVING'),(662,'HEAP'),(5,'HELP'),(0,'HELP_DATE'),(1,'HELP_VERSION'),(198,'HEX'),(698,'HIGH_PRIORITY'),(883,'HISTORY'),(641,'HOST'),(946,'HOSTS'),(135,'HOUR'),(136,'HOUR_MINUTE'),(137,'HOUR_SECOND'),(290,'ICU_VERSION'),(715,'IDENTIFIED'),(81,'IF'),(82,'IFNULL'),(699,'IGNORE'),(770,'IGNORE_SERVER_IDS'),(598,'IMPORT'),(67,'IN'),(52,'INDEX'),(947,'INDEXES'),(526,'INET6_ATON'),(527,'INET6_NTOA'),(524,'INET_ATON'),(525,'INET_NTOA'),(708,'INFILE'),(907,'INITIAL'),(630,'INITIAL_SIZE'),(884,'INITIATE'),(419,'INLINE'),(735,'INNER'),(560,'INNODB'),(199,'INSERT'),(599,'INSERT_METHOD'),(934,'INSTALL'),(561,'INSTANCE'),(200,'INSTR'),(19,'INT1'),(22,'INT2'),(23,'INT3'),(25,'INT4'),(27,'INT8'),(26,'INTEGER'),(500,'INTERNAL_AUTO_INCREMENT'),(501,'INTERNAL_AVG_ROW_LENGTH'),(503,'INTERNAL_CHECKSUM'),(502,'INTERNAL_CHECK_TIME'),(504,'INTERNAL_DATA_FREE'),(505,'INTERNAL_DATA_LENGTH'),(506,'INTERNAL_DD_CHAR_LENGTH'),(507,'INTERNAL_GET_COMMENT_OR_ERROR'),(508,'INTERNAL_GET_ENABLED_ROLE_JSON'),(509,'INTERNAL_GET_HOSTNAME'),(510,'INTERNAL_GET_USERNAME'),(511,'INTERNAL_GET_VIEW_WARNING_OR_ERROR'),(512,'INTERNAL_INDEX_COLUMN_CARDINALITY'),(513,'INTERNAL_INDEX_LENGTH'),(514,'INTERNAL_IS_ENABLED_ROLE'),(515,'INTERNAL_IS_MANDATORY_ROLE'),(516,'INTERNAL_KEYS_DISABLED'),(517,'INTERNAL_MAX_DATA_LENGTH'),(518,'INTERNAL_TABLE_ROWS'),(519,'INTERNAL_UPDATE_TIME'),(703,'INTERSECT'),(68,'INTERVAL'),(700,'INTO'),(600,'INVISIBLE'),(833,'IO_THREAD'),(69,'IS'),(71,'ISNULL'),(755,'ISOLATION'),(885,'ISSUER'),(277,'IS_FREE_LOCK'),(528,'IS_IPV4'),(529,'IS_IPV4_COMPAT'),(530,'IS_IPV4_MAPPED'),(531,'IS_IPV6'),(278,'IS_USED_LOCK'),(532,'IS_UUID'),(520,'IS_VISIBLE_DD_OBJECT'),(844,'ITERATE'),(721,'JOIN'),(257,'JSON'),(409,'JSON_ARRAY'),(465,'JSON_ARRAYAGG'),(427,'JSON_ARRAY_APPEND'),(428,'JSON_ARRAY_INSERT'),(412,'JSON_CONTAINS'),(413,'JSON_CONTAINS_PATH'),(437,'JSON_DEPTH'),(414,'JSON_EXTRACT'),(429,'JSON_INSERT'),(421,'JSON_KEYS'),(438,'JSON_LENGTH'),(430,'JSON_MERGE'),(431,'JSON_MERGE_PATCH'),(432,'JSON_MERGE_PRESERVE'),(410,'JSON_OBJECT'),(466,'JSON_OBJECTAGG'),(422,'JSON_OVERLAPS'),(444,'JSON_PRETTY'),(411,'JSON_QUOTE'),(433,'JSON_REMOVE'),(434,'JSON_REPLACE'),(442,'JSON_SCHEMA_VALID'),(443,'JSON_SCHEMA_VALIDATION_REPORT'),(423,'JSON_SEARCH'),(435,'JSON_SET'),(445,'JSON_STORAGE_FREE'),(446,'JSON_STORAGE_SIZE'),(441,'JSON_TABLE'),(439,'JSON_TYPE'),(436,'JSON_UNQUOTE'),(440,'JSON_VALID'),(424,'JSON_VALUE'),(53,'KEY'),(562,'KEYRING'),(601,'KEYS'),(602,'KEY_BLOCK_SIZE'),(973,'KILL'),(480,'LAG'),(692,'LAST'),(153,'LAST_DAY'),(291,'LAST_INSERT_ID'),(481,'LAST_VALUE'),(201,'LCASE'),(482,'LEAD'),(232,'LEADING'),(72,'LEAST'),(845,'LEAVE'),(974,'LEAVES'),(202,'LEFT'),(203,'LENGTH'),(756,'LEVEL'),(223,'LIKE'),(683,'LIMIT'),(709,'LINES'),(331,'LINESTRING'),(104,'LN'),(710,'LOAD'),(204,'LOAD_FILE'),(711,'LOCAL'),(154,'LOCALTIME'),(155,'LOCALTIMESTAMP'),(205,'LOCATE'),(603,'LOCK'),(105,'LOG'),(107,'LOG10'),(106,'LOG2'),(570,'LOGFILE'),(765,'LOGS'),(47,'LONG'),(48,'LONGBINARY'),(846,'LOOP'),(206,'LOWER'),(684,'LOW_PRIORITY'),(207,'LPAD'),(208,'LTRIM'),(156,'MAKEDATE'),(157,'MAKETIME'),(209,'MAKE_SET'),(563,'MASTER'),(771,'MASTER_AUTO_POSITION'),(772,'MASTER_BIND'),(773,'MASTER_COMPRESSION_ALGORITHMS'),(774,'MASTER_CONNECT_RETRY'),(775,'MASTER_HEARTBEAT_PERIOD'),(776,'MASTER_HOST'),(777,'MASTER_LOG_FILE'),(778,'MASTER_LOG_POS'),(779,'MASTER_PASSWORD'),(780,'MASTER_PORT'),(451,'MASTER_POS_WAIT'),(781,'MASTER_RETRY_COUNT'),(782,'MASTER_SSL'),(783,'MASTER_SSL_CA'),(784,'MASTER_SSL_CERT'),(785,'MASTER_SSL_CIPHER'),(786,'MASTER_SSL_CRL'),(787,'MASTER_SSL_CRLPATH'),(788,'MASTER_SSL_KEY'),(789,'MASTER_SSL_VERIFY_SERVER_CERT'),(790,'MASTER_TLS_CIPHERSUITES'),(791,'MASTER_TLS_VERSION'),(792,'MASTER_USER'),(793,'MASTER_ZSTD_COMPRESSION_LEVEL'),(249,'MATCH'),(467,'MAX'),(886,'MAX_CONNECTIONS_PER_HOUR'),(887,'MAX_QUERIES_PER_HOUR'),(604,'MAX_ROWS'),(677,'MAX_SIZE'),(888,'MAX_UPDATES_PER_HOUR'),(889,'MAX_USER_CONNECTIONS'),(388,'MBRCONTAINS'),(389,'MBRCOVEREDBY'),(390,'MBRCOVERS'),(391,'MBRDISJOINT'),(392,'MBREQUALS'),(393,'MBRINTERSECTS'),(394,'MBROVERLAPS'),(395,'MBRTOUCHES'),(396,'MBRWITHIN'),(266,'MD5'),(926,'MEDIUM'),(425,'MEMBER'),(722,'MEMORY'),(663,'MERGE'),(864,'MESSAGE_TEXT'),(158,'MICROSECOND'),(210,'MID'),(24,'MIDDLEINT'),(468,'MIN'),(138,'MINUTE'),(139,'MINUTE_SECOND'),(605,'MIN_ROWS'),(89,'MOD'),(250,'MODE'),(606,'MODIFY'),(140,'MONTH'),(159,'MONTHNAME'),(664,'MRG_MYISAM'),(332,'MULTILINESTRING'),(333,'MULTIPOINT'),(334,'MULTIPOLYGON'),(948,'MUTEX'),(665,'MYISAM'),(865,'MYSQL_ERRNO'),(648,'NAME'),(941,'NAMES'),(533,'NAME_CONST'),(40,'NATIONAL'),(736,'NATURAL'),(41,'NCHAR'),(666,'NDB'),(667,'NDBCLUSTER'),(794,'NETWORK_NAMESPACE'),(890,'NEVER'),(693,'NEXT'),(564,'NO'),(678,'NODEGROUP'),(891,'NONE'),(64,'NOT'),(160,'NOW'),(924,'NO_WRITE_TO_BINLOG'),(483,'NTH_VALUE'),(484,'NTILE'),(70,'NULL'),(83,'NULLIF'),(866,'NUMBER'),(30,'NUMERIC'),(44,'NVARCHAR'),(211,'OCT'),(212,'OCTET_LENGTH'),(426,'OF'),(723,'OFFSET'),(892,'OLD'),(551,'ON'),(541,'ONLY'),(694,'OPEN'),(607,'OPTIMIZE'),(969,'OPTIMIZER_COSTS'),(912,'OPTION'),(893,'OPTIONAL'),(712,'OPTIONALLY'),(572,'OPTIONS'),(73,'OR'),(213,'ORD'),(463,'ORDER'),(649,'ORGANIZATION'),(737,'OUTER'),(724,'OUTFILE'),(642,'OWNER'),(608,'PACK_KEYS'),(609,'PARSER'),(959,'PARSE_TREE'),(668,'PARTIAL'),(610,'PARTITION'),(611,'PARTITIONING'),(612,'PASSWORD'),(894,'PASSWORD_LOCK_TIME'),(420,'PATH)'),(485,'PERCENT_RANK'),(161,'PERIOD_ADD'),(162,'PERIOD_DIFF'),(938,'PERSIST'),(939,'PERSIST_ONLY'),(109,'PI'),(935,'PLUGIN'),(960,'PLUGINS'),(834,'PLUGIN_DIR'),(335,'POINT'),(336,'POLYGON'),(643,'PORT'),(214,'POSITION'),(110,'POW'),(111,'POWER'),(34,'PRECISION'),(761,'PREPARE'),(552,'PRESERVE'),(695,'PREV'),(613,'PRIMARY'),(913,'PRIVILEGES'),(795,'PRIVILEGE_CHECKS_USER'),(571,'PROCEDURE'),(914,'PROCESS'),(949,'PROCESSLIST'),(961,'PROFILE'),(962,'PROFILES'),(918,'PROXY'),(490,'PS_CURRENT_THREAD_ID'),(491,'PS_THREAD_ID'),(766,'PURGE'),(163,'QUARTER'),(251,'QUERY'),(685,'QUICK'),(215,'QUOTE'),(112,'RADIANS'),(113,'RAND'),(895,'RANDOM'),(267,'RANDOM_BYTES'),(486,'RANK'),(542,'READ'),(35,'REAL'),(614,'REBUILD'),(762,'RECOVER'),(565,'REDO_LOG'),(669,'REDUNDANT'),(650,'REFERENCE'),(670,'REFERENCES'),(241,'REGEXP'),(243,'REGEXP_INSTR'),(244,'REGEXP_LIKE'),(245,'REGEXP_REPLACE'),(246,'REGEXP_SUBSTR'),(896,'REGISTRATION'),(970,'RELAY'),(963,'RELAYLOG'),(796,'RELAY_LOG_FILE'),(797,'RELAY_LOG_POS'),(743,'RELEASE'),(279,'RELEASE_ALL_LOCKS'),(280,'RELEASE_LOCK'),(566,'RELOAD'),(615,'REMOVE'),(553,'RENAME'),(616,'REORGANIZE'),(617,'REPAIR'),(216,'REPEAT'),(757,'REPEATABLE'),(217,'REPLACE'),(831,'REPLICA'),(964,'REPLICAS'),(799,'REPLICATE_DO_DB'),(800,'REPLICATE_DO_TABLE'),(801,'REPLICATE_IGNORE_DB'),(802,'REPLICATE_IGNORE_TABLE'),(803,'REPLICATE_REWRITE_DB'),(804,'REPLICATE_WILD_DO_TABLE'),(805,'REPLICATE_WILD_IGNORE_TABLE'),(806,'REPLICATION'),(897,'REQUIRE'),(767,'RESET'),(871,'RESIGNAL'),(921,'RESOURCE'),(975,'RESTART'),(673,'RESTRICT'),(898,'RETAIN'),(848,'RETURN'),(867,'RETURNED_SQLSTATE'),(930,'RETURNS'),(899,'REUSE'),(218,'REVERSE'),(919,'REVOKE'),(219,'RIGHT'),(242,'RLIKE'),(900,'ROLE'),(292,'ROLES_GRAPHML'),(567,'ROLLBACK'),(114,'ROUND'),(701,'ROW'),(716,'ROWS'),(293,'ROW_COUNT'),(618,'ROW_FORMAT'),(487,'ROW_NUMBER'),(220,'RPAD'),(221,'RTRIM'),(749,'SAVEPOINT'),(554,'SCHEDULE'),(294,'SCHEMA'),(950,'SCHEMAS'),(868,'SCHEMA_NAME'),(141,'SECOND'),(164,'SEC_TO_TIME'),(702,'SELECT'),(464,'SEPARATOR'),(3,'SERIAL'),(758,'SERIALIZABLE'),(573,'SERVER'),(759,'SESSION'),(295,'SESSION_USER'),(543,'SET'),(268,'SHA'),(269,'SHA1'),(270,'SHA2'),(725,'SHARE'),(951,'SHOW'),(915,'SHUTDOWN'),(115,'SIGN'),(873,'SIGNAL'),(258,'SIGNED'),(116,'SIN'),(555,'SLAVE'),(534,'SLEEP'),(971,'SLOW'),(744,'SNAPSHOT'),(644,'SOCKET'),(931,'SONAME'),(222,'SOUNDEX'),(224,'SOUNDS'),(807,'SOURCE'),(808,'SOURCE_AUTO_POSITION'),(809,'SOURCE_BIND'),(810,'SOURCE_COMPRESSION_ALGORITHMS'),(811,'SOURCE_CONNECT_RETRY'),(812,'SOURCE_HEARTBEAT_PERIOD'),(813,'SOURCE_HOST'),(814,'SOURCE_LOG_FILE'),(815,'SOURCE_LOG_POS'),(816,'SOURCE_PASSWORD'),(817,'SOURCE_PORT'),(452,'SOURCE_POS_WAIT'),(818,'SOURCE_RETRY_COUNT'),(819,'SOURCE_SSL'),(820,'SOURCE_SSL_CA'),(821,'SOURCE_SSL_CERT'),(822,'SOURCE_SSL_CIPHER'),(823,'SOURCE_SSL_CRL'),(824,'SOURCE_SSL_CRLPATH'),(825,'SOURCE_SSL_KEY'),(826,'SOURCE_SSL_VERIFY_SERVER_CERT'),(827,'SOURCE_TLS_CIPHERSUITES'),(828,'SOURCE_TLS_VERSION'),(829,'SOURCE_USER'),(830,'SOURCE_ZSTD_COMPRESSION_LEVEL'),(225,'SPACE'),(619,'SPATIAL'),(872,'SQLSTATE'),(835,'SQL_AFTER_GTIDS'),(836,'SQL_AFTER_MTS_GAPS'),(837,'SQL_BEFORE_GTIDS'),(726,'SQL_BIG_RESULT'),(727,'SQL_BUFFER_RESULT'),(728,'SQL_CALC_FOUND_ROWS'),(768,'SQL_LOG_BIN'),(729,'SQL_NO_CACHE'),(730,'SQL_SMALL_RESULT'),(838,'SQL_THREAD'),(117,'SQRT'),(901,'SSL'),(745,'START'),(713,'STARTING'),(639,'STARTS'),(271,'STATEMENT_DIGEST'),(272,'STATEMENT_DIGEST_TEXT'),(620,'STATS_AUTO_RECALC'),(621,'STATS_PERSISTENT'),(622,'STATS_SAMPLE_PAGES'),(952,'STATUS'),(469,'STD'),(470,'STDDEV'),(471,'STDDEV_POP'),(472,'STDDEV_SAMP'),(839,'STOP'),(957,'STORAGE'),(671,'STORED'),(731,'STRAIGHT_JOIN'),(240,'STRCMP'),(932,'STRING'),(165,'STR_TO_DATE'),(358,'ST_AREA'),(337,'ST_ASBINARY'),(401,'ST_ASGEOJSON'),(339,'ST_ASTEXT'),(338,'ST_ASWKB'),(340,'ST_ASWKT'),(366,'ST_BUFFER'),(367,'ST_BUFFER_STRATEGY'),(359,'ST_CENTROID'),(403,'ST_COLLECT'),(377,'ST_CONTAINS'),(368,'ST_CONVEXHULL'),(378,'ST_CROSSES'),(369,'ST_DIFFERENCE'),(342,'ST_DIMENSION'),(379,'ST_DISJOINT'),(380,'ST_DISTANCE'),(404,'ST_DISTANCE_SPHERE'),(352,'ST_ENDPOINT'),(343,'ST_ENVELOPE'),(381,'ST_EQUALS'),(360,'ST_EXTERIORRING'),(382,'ST_FRECHETDISTANCE'),(397,'ST_GEOHASH'),(299,'ST_GEOMCOLLFROMTEXT'),(314,'ST_GEOMCOLLFROMWKB'),(300,'ST_GEOMETRYCOLLECTIONFROMTEXT'),(315,'ST_GEOMETRYCOLLECTIONFROMWKB'),(301,'ST_GEOMETRYFROMTEXT'),(316,'ST_GEOMETRYFROMWKB'),(364,'ST_GEOMETRYN'),(344,'ST_GEOMETRYTYPE'),(402,'ST_GEOMFROMGEOJSON'),(302,'ST_GEOMFROMTEXT'),(317,'ST_GEOMFROMWKB'),(383,'ST_HAUSDORFFDISTANCE'),(361,'ST_INTERIORRINGN'),(370,'ST_INTERSECTION'),(384,'ST_INTERSECTS'),(353,'ST_ISCLOSED'),(345,'ST_ISEMPTY'),(346,'ST_ISSIMPLE'),(405,'ST_ISVALID'),(398,'ST_LATFROMGEOHASH'),(348,'ST_LATITUDE'),(354,'ST_LENGTH'),(303,'ST_LINEFROMTEXT'),(318,'ST_LINEFROMWKB'),(371,'ST_LINEINTERPOLATEPOINT'),(372,'ST_LINEINTERPOLATEPOINTS'),(304,'ST_LINESTRINGFROMTEXT'),(319,'ST_LINESTRINGFROMWKB'),(399,'ST_LONGFROMGEOHASH'),(349,'ST_LONGITUDE'),(406,'ST_MAKEENVELOPE'),(305,'ST_MLINEFROMTEXT'),(320,'ST_MLINEFROMWKB'),(307,'ST_MPOINTFROMTEXT'),(322,'ST_MPOINTFROMWKB'),(309,'ST_MPOLYFROMTEXT'),(324,'ST_MPOLYFROMWKB'),(306,'ST_MULTILINESTRINGFROMTEXT'),(321,'ST_MULTILINESTRINGFROMWKB'),(308,'ST_MULTIPOINTFROMTEXT'),(323,'ST_MULTIPOINTFROMWKB'),(310,'ST_MULTIPOLYGONFROMTEXT'),(325,'ST_MULTIPOLYGONFROMWKB'),(365,'ST_NUMGEOMETRIES'),(362,'ST_NUMINTERIORRING'),(363,'ST_NUMINTERIORRINGS'),(355,'ST_NUMPOINTS'),(385,'ST_OVERLAPS'),(373,'ST_POINTATDISTANCE'),(400,'ST_POINTFROMGEOHASH'),(311,'ST_POINTFROMTEXT'),(326,'ST_POINTFROMWKB'),(356,'ST_POINTN'),(312,'ST_POLYFROMTEXT'),(327,'ST_POLYFROMWKB'),(313,'ST_POLYGONFROMTEXT'),(328,'ST_POLYGONFROMWKB'),(407,'ST_SIMPLIFY'),(347,'ST_SRID'),(357,'ST_STARTPOINT'),(341,'ST_SWAPXY'),(374,'ST_SYMDIFFERENCE'),(386,'ST_TOUCHES'),(375,'ST_TRANSFORM'),(376,'ST_UNION'),(408,'ST_VALIDATE'),(387,'ST_WITHIN'),(350,'ST_X'),(351,'ST_Y'),(869,'SUBCLASS_ORIGIN'),(166,'SUBDATE'),(902,'SUBJECT'),(226,'SUBSTR'),(227,'SUBSTRING'),(228,'SUBSTRING_INDEX'),(167,'SUBTIME'),(473,'SUM'),(916,'SUPER'),(168,'SYSDATE'),(651,'SYSTEM'),(296,'SYSTEM_USER'),(54,'TABLE'),(752,'TABLES'),(623,'TABLESPACE'),(870,'TABLE_NAME'),(118,'TAN'),(681,'TEMPORARY'),(714,'TERMINATED'),(79,'THEN'),(922,'THREAD_PRIORITY'),(38,'TIME'),(170,'TIMEDIFF'),(37,'TIMESTAMP'),(171,'TIMESTAMPADD'),(172,'TIMESTAMPDIFF'),(259,'TIMEZONE'),(173,'TIME_FORMAT'),(174,'TIME_TO_SEC'),(568,'TLS'),(631,'TO'),(229,'TO_BASE64'),(175,'TO_DAYS'),(176,'TO_SECONDS'),(978,'TRADITIONAL'),(233,'TRAILING'),(746,'TRANSACTION'),(979,'TREE'),(680,'TRIGGER'),(953,'TRIGGERS'),(234,'TRIM'),(16,'TRUE'),(119,'TRUNCATE'),(624,'TYPE'),(235,'UCASE'),(903,'UNBOUNDED'),(760,'UNCOMMITTED'),(273,'UNCOMPRESS'),(274,'UNCOMPRESSED_LENGTH'),(632,'UNDO'),(236,'UNHEX'),(936,'UNINSTALL'),(625,'UNION'),(626,'UNIQUE'),(177,'UNIX_TIMESTAMP'),(920,'UNKNOWN'),(751,'UNLOCK'),(904,'UNREGISTER'),(20,'UNSIGNED'),(847,'UNTIL'),(674,'UPDATE'),(262,'UPDATEXML'),(627,'UPGRADE'),(237,'UPPER'),(917,'USAGE'),(679,'USE'),(297,'USER'),(972,'USER_RESOURCES'),(928,'USE_FRM'),(686,'USING'),(178,'UTC_DATE'),(179,'UTC_TIME'),(180,'UTC_TIMESTAMP'),(535,'UUID'),(536,'UUID_SHORT'),(537,'UUID_TO_BIN'),(275,'VALIDATE_PASSWORD_STRENGTH'),(4,'VALUE'),(538,'VALUES'),(45,'VARCHARACTER'),(940,'VARIABLE'),(954,'VARIABLES'),(476,'VARIANCE'),(46,'VARYING'),(474,'VAR_POP'),(475,'VAR_SAMP'),(923,'VCPU'),(298,'VERSION'),(634,'VIEW'),(672,'VIRTUAL'),(628,'VISIBLE'),(633,'WAIT'),(449,'WAIT_FOR_EXECUTED_GTID_SET'),(450,'WAIT_UNTIL_SQL_THREAD_AFTER_GTIDS'),(955,'WARNINGS'),(181,'WEEK'),(182,'WEEKDAY'),(183,'WEEKOFYEAR'),(238,'WEIGHT_STRING'),(80,'WHEN'),(687,'WHERE'),(849,'WHILE'),(252,'WITH'),(747,'WORK'),(645,'WRAPPER'),(748,'WRITE'),(905,'X509'),(763,'XA'),(74,'XOR'),(142,'YEAR'),(184,'YEARWEEK'),(143,'YEAR_MONTH'),(21,'ZEROFILL');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int unsigned NOT NULL,
  `help_keyword_id` int unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (0,0),(1,1),(2,2),(478,2),(495,2),(496,2),(503,2),(506,2),(507,2),(515,2),(516,2),(540,2),(547,2),(585,2),(603,2),(605,2),(611,2),(613,2),(2,3),(515,3),(2,4),(540,4),(547,4),(601,4),(602,4),(3,5),(694,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,14),(13,15),(14,15),(13,16),(14,16),(16,17),(17,17),(16,18),(240,18),(16,19),(16,20),(20,20),(22,20),(23,20),(25,20),(26,20),(242,20),(16,21),(20,21),(22,21),(23,21),(25,21),(26,21),(18,22),(19,23),(19,24),(20,25),(20,26),(242,26),(623,26),(22,27),(23,28),(23,29),(515,29),(23,30),(24,31),(242,31),(623,31),(25,32),(26,33),(26,34),(26,35),(623,35),(28,36),(129,36),(131,36),(242,36),(30,37),(165,37),(31,38),(163,38),(242,38),(33,39),(35,39),(495,39),(496,39),(503,39),(506,39),(507,39),(515,39),(544,39),(545,39),(548,39),(631,39),(632,39),(634,39),(638,39),(33,40),(35,40),(33,41),(34,42),(34,43),(184,43),(242,43),(35,44),(35,45),(35,46),(44,47),(44,48),(53,49),(503,49),(504,49),(517,49),(603,49),(53,50),(495,50),(496,50),(497,50),(498,50),(499,50),(500,50),(501,50),(502,50),(503,50),(504,50),(505,50),(603,50),(608,50),(614,50),(53,51),(506,51),(507,51),(508,51),(509,51),(510,51),(511,51),(512,51),(513,51),(514,51),(515,51),(517,51),(518,51),(519,51),(604,51),(605,51),(615,51),(623,51),(634,51),(642,51),(643,51),(644,51),(645,51),(646,51),(647,51),(649,51),(53,52),(503,52),(509,52),(515,52),(523,52),(550,52),(634,52),(660,52),(683,52),(686,52),(53,53),(503,53),(515,53),(516,53),(540,53),(53,54),(503,54),(515,54),(528,54),(532,54),(533,54),(539,54),(541,54),(551,54),(618,54),(619,54),(620,54),(621,54),(622,54),(634,54),(647,54),(677,54),(54,55),(79,55),(55,56),(56,57),(57,58),(58,59),(59,60),(60,61),(61,62),(75,62),(61,63),(62,63),(62,64),(66,64),(69,64),(71,64),(74,64),(232,64),(234,64),(506,64),(507,64),(508,64),(514,64),(604,64),(605,64),(63,65),(503,65),(64,66),(65,67),(66,67),(240,67),(548,67),(637,67),(640,67),(641,67),(660,67),(671,67),(67,68),(131,68),(508,68),(603,68),(605,68),(68,69),(69,69),(70,69),(71,69),(70,70),(71,70),(516,70),(72,71),(73,72),(76,73),(514,73),(77,74),(78,75),(80,76),(586,76),(80,77),(586,77),(80,78),(565,78),(583,78),(586,78),(587,78),(590,78),(591,78),(593,78),(80,79),(586,79),(587,79),(80,80),(586,80),(81,81),(506,81),(507,81),(508,81),(514,81),(520,81),(521,81),(522,81),(526,81),(527,81),(528,81),(531,81),(587,81),(603,81),(604,81),(605,81),(606,81),(607,81),(610,81),(624,81),(688,81),(82,82),(83,83),(84,84),(85,85),(86,85),(87,86),(88,87),(89,88),(90,89),(109,89),(91,90),(92,91),(93,92),(94,93),(95,94),(96,95),(97,96),(98,97),(99,98),(100,99),(101,100),(102,101),(103,102),(104,103),(105,104),(106,105),(107,106),(108,107),(109,108),(110,109),(111,110),(112,111),(113,112),(114,113),(115,114),(116,115),(117,116),(118,117),(119,118),(120,119),(503,119),(533,119),(121,120),(122,121),(123,122),(124,123),(125,124),(126,125),(127,126),(128,127),(130,128),(131,129),(131,130),(133,130),(131,131),(134,131),(603,131),(605,131),(131,132),(131,133),(131,134),(131,135),(143,135),(131,136),(131,137),(131,138),(150,138),(131,139),(131,140),(151,140),(131,141),(157,141),(131,142),(179,142),(242,142),(131,143),(132,144),(135,145),(136,146),(137,147),(138,148),(139,149),(140,150),(141,151),(142,152),(144,153),(145,154),(146,155),(147,156),(148,157),(149,158),(152,159),(153,160),(154,161),(155,162),(156,163),(158,164),(159,165),(160,166),(161,167),(162,168),(163,169),(165,169),(214,169),(498,169),(511,169),(512,169),(524,169),(525,169),(623,169),(624,169),(634,169),(645,169),(657,169),(658,169),(164,170),(166,171),(167,172),(168,173),(169,174),(170,175),(171,176),(172,177),(173,178),(174,179),(175,180),(176,181),(177,182),(178,183),(180,184),(181,185),(182,186),(183,187),(185,188),(186,189),(187,190),(188,191),(189,192),(190,193),(191,194),(192,195),(193,196),(691,196),(692,196),(693,196),(194,197),(195,198),(196,199),(540,199),(541,199),(542,199),(197,200),(198,201),(199,202),(550,202),(200,203),(201,204),(202,205),(203,206),(204,207),(205,208),(206,209),(207,210),(208,211),(209,212),(210,213),(211,214),(212,215),(213,216),(591,216),(214,217),(514,217),(544,217),(545,217),(547,217),(603,217),(612,217),(215,218),(216,219),(550,219),(217,220),(218,221),(219,222),(220,223),(232,223),(634,223),(640,223),(641,223),(220,224),(221,225),(222,226),(223,227),(224,228),(225,229),(226,230),(226,231),(535,231),(539,231),(548,231),(634,231),(637,231),(640,231),(641,231),(660,231),(671,231),(226,232),(226,233),(226,234),(227,235),(228,236),(229,237),(230,238),(231,239),(233,240),(234,241),(235,242),(236,243),(237,244),(238,245),(239,246),(240,247),(240,248),(240,249),(240,250),(548,250),(240,251),(685,251),(240,252),(503,252),(509,252),(515,252),(603,252),(605,252),(608,252),(684,252),(241,253),(242,253),(566,253),(567,253),(635,253),(636,253),(684,253),(242,254),(242,255),(242,256),(242,257),(691,257),(692,257),(693,257),(242,258),(242,259),(243,260),(244,261),(245,262),(246,263),(247,264),(248,265),(249,266),(250,267),(251,268),(251,269),(252,270),(253,271),(254,272),(255,273),(256,274),(257,275),(258,276),(259,277),(260,278),(261,279),(262,280),(263,281),(264,282),(631,282),(632,282),(265,283),(266,284),(634,284),(639,284),(267,285),(268,286),(269,287),(497,287),(508,287),(270,288),(495,288),(496,288),(506,288),(507,288),(513,288),(520,288),(521,288),(634,288),(642,288),(643,288),(271,289),(272,290),(273,291),(274,292),(275,293),(600,293),(276,294),(495,294),(496,294),(506,294),(507,294),(520,294),(521,294),(634,294),(642,294),(643,294),(277,295),(278,296),(279,297),(513,297),(575,297),(576,297),(603,297),(605,297),(607,297),(609,297),(610,297),(615,297),(649,297),(280,298),(281,299),(281,300),(282,301),(282,302),(283,303),(283,304),(284,305),(284,306),(285,307),(285,308),(286,309),(286,310),(287,311),(288,312),(288,313),(289,314),(289,315),(290,316),(290,317),(291,318),(291,319),(292,320),(292,321),(293,322),(293,323),(294,324),(294,325),(295,326),(296,327),(296,328),(297,329),(298,330),(299,331),(300,332),(301,333),(302,334),(303,335),(304,336),(305,337),(305,338),(306,339),(306,340),(307,341),(308,342),(309,343),(310,344),(311,345),(312,346),(313,347),(314,348),(315,349),(316,350),(317,351),(318,352),(319,353),(320,354),(321,355),(322,356),(323,357),(324,358),(325,359),(326,360),(327,361),(328,362),(328,363),(329,364),(330,365),(331,366),(332,367),(333,368),(334,369),(335,370),(336,371),(337,372),(338,373),(339,374),(340,375),(341,376),(342,377),(343,378),(344,379),(345,380),(346,381),(347,382),(348,383),(349,384),(350,385),(351,386),(352,387),(353,388),(354,389),(355,390),(356,391),(357,392),(358,393),(359,394),(360,395),(361,396),(362,397),(363,398),(364,399),(365,400),(366,401),(367,402),(368,403),(369,404),(370,405),(371,406),(372,407),(373,408),(374,409),(375,410),(376,411),(377,412),(378,413),(379,414),(380,415),(381,415),(380,416),(380,417),(381,418),(381,419),(381,420),(382,421),(383,422),(384,423),(385,424),(386,425),(386,426),(387,427),(388,428),(389,429),(390,430),(391,431),(392,432),(393,433),(394,434),(395,435),(396,436),(397,437),(398,438),(399,439),(400,440),(401,441),(402,442),(403,443),(404,444),(405,445),(406,446),(407,447),(408,448),(409,449),(410,450),(411,451),(412,452),(413,453),(413,454),(418,454),(419,454),(422,454),(423,454),(428,454),(537,454),(543,454),(548,454),(553,454),(414,455),(415,456),(416,457),(417,458),(418,458),(655,458),(681,458),(419,459),(548,459),(419,460),(503,460),(515,460),(535,460),(544,460),(545,460),(546,460),(548,460),(552,460),(603,460),(605,460),(419,461),(548,461),(691,461),(692,461),(693,461),(419,462),(419,463),(503,463),(535,463),(546,463),(548,463),(551,463),(552,463),(554,463),(419,464),(420,465),(421,466),(422,467),(423,468),(424,469),(425,470),(426,471),(427,472),(428,473),(429,474),(430,475),(431,476),(432,477),(433,478),(434,479),(435,480),(436,481),(437,482),(438,483),(439,484),(440,485),(441,486),(442,487),(443,488),(444,489),(445,490),(446,491),(447,492),(448,493),(449,494),(450,495),(451,496),(452,497),(453,498),(454,499),(455,500),(456,501),(457,502),(458,503),(459,504),(460,505),(461,506),(462,507),(463,508),(464,509),(465,510),(466,511),(467,512),(468,513),(469,514),(470,515),(471,516),(472,517),(473,518),(474,519),(475,520),(476,521),(477,522),(479,523),(480,524),(481,525),(482,526),(483,527),(484,528),(485,529),(486,530),(487,531),(488,532),(489,533),(490,534),(491,535),(492,536),(493,537),(494,538),(540,538),(547,538),(554,538),(495,539),(496,539),(503,539),(506,539),(507,539),(515,539),(495,540),(496,540),(503,540),(506,540),(507,540),(515,540),(495,541),(496,541),(555,541),(556,541),(557,541),(558,541),(564,541),(565,541),(495,542),(496,542),(538,542),(555,542),(556,542),(557,542),(558,542),(563,542),(564,542),(565,542),(684,542),(495,543),(496,543),(503,543),(506,543),(507,543),(515,543),(516,543),(540,543),(544,543),(545,543),(547,543),(548,543),(552,543),(555,543),(556,543),(557,543),(558,543),(569,543),(601,543),(602,543),(603,543),(611,543),(612,543),(613,543),(617,543),(630,543),(631,543),(632,543),(633,543),(634,543),(638,543),(497,544),(503,544),(508,544),(509,544),(515,544),(517,544),(603,544),(605,544),(497,545),(508,545),(497,546),(508,546),(497,547),(503,547),(508,547),(614,547),(615,547),(497,548),(508,548),(536,548),(593,548),(497,549),(503,549),(508,549),(614,549),(615,549),(497,550),(508,550),(522,550),(644,550),(497,551),(499,551),(508,551),(516,551),(550,551),(497,552),(508,552),(497,553),(503,553),(504,553),(532,553),(609,553),(497,554),(508,554),(497,555),(508,555),(574,555),(576,555),(578,555),(673,555),(675,555),(687,555),(499,556),(637,556),(682,556),(499,557),(570,557),(572,557),(573,557),(574,557),(575,557),(576,557),(577,557),(578,557),(671,557),(674,557),(675,557),(684,557),(499,558),(684,558),(499,559),(548,559),(570,559),(572,559),(573,559),(574,559),(575,559),(576,559),(577,559),(578,559),(595,559),(598,559),(599,559),(612,559),(617,559),(634,559),(671,559),(674,559),(675,559),(684,559),(691,559),(692,559),(693,559),(499,560),(515,560),(634,560),(499,561),(562,561),(499,562),(499,563),(566,563),(567,563),(568,563),(570,563),(635,563),(636,563),(661,563),(687,563),(499,564),(515,564),(516,564),(499,565),(499,566),(608,566),(499,567),(555,567),(556,567),(557,567),(558,567),(559,567),(560,567),(561,567),(565,567),(499,568),(500,569),(510,569),(517,569),(548,569),(614,569),(615,569),(616,569),(617,569),(500,570),(510,570),(517,570),(501,571),(511,571),(512,571),(524,571),(525,571),(634,571),(646,571),(666,571),(667,571),(502,572),(513,572),(502,573),(513,573),(526,573),(503,574),(503,575),(503,576),(618,576),(691,576),(692,576),(693,576),(503,577),(504,577),(515,577),(517,577),(503,578),(503,579),(515,579),(503,580),(570,580),(571,580),(572,580),(503,581),(515,581),(619,581),(503,582),(515,582),(620,582),(503,583),(503,584),(515,584),(544,584),(634,584),(640,584),(641,584),(503,585),(515,585),(503,586),(515,586),(685,586),(691,586),(692,586),(693,586),(503,587),(515,587),(503,588),(513,588),(515,588),(544,588),(503,589),(515,589),(503,590),(515,590),(503,591),(603,591),(503,592),(504,592),(520,592),(521,592),(522,592),(523,592),(524,592),(525,592),(526,592),(527,592),(528,592),(529,592),(530,592),(531,592),(581,592),(582,592),(603,592),(606,592),(607,592),(616,592),(624,592),(503,593),(504,593),(515,593),(517,593),(529,593),(634,593),(653,593),(684,593),(503,594),(503,595),(515,595),(538,595),(503,596),(513,596),(515,596),(516,596),(503,597),(509,597),(515,597),(503,598),(539,598),(544,598),(503,599),(515,599),(503,600),(509,600),(515,600),(503,601),(634,601),(660,601),(503,602),(515,602),(503,603),(548,603),(562,603),(563,603),(603,603),(605,603),(684,603),(503,604),(515,604),(503,605),(515,605),(503,606),(603,606),(503,607),(621,607),(503,608),(515,608),(503,609),(509,609),(515,609),(503,610),(515,610),(535,610),(540,610),(544,610),(547,610),(548,610),(550,610),(683,610),(686,610),(503,611),(503,612),(513,612),(575,612),(576,612),(603,612),(605,612),(612,612),(503,613),(503,614),(503,615),(503,616),(503,617),(622,617),(503,618),(515,618),(503,619),(509,619),(514,619),(527,619),(503,620),(515,620),(503,621),(515,621),(503,622),(515,622),(503,623),(504,623),(517,623),(529,623),(503,624),(615,624),(503,625),(546,625),(553,625),(503,626),(503,627),(619,627),(503,628),(509,628),(515,628),(504,629),(517,629),(504,630),(517,630),(504,631),(559,631),(560,631),(561,631),(566,631),(567,631),(570,631),(572,631),(612,631),(504,632),(517,632),(529,632),(599,632),(504,633),(517,633),(505,634),(519,634),(531,634),(506,635),(507,635),(508,635),(514,635),(520,635),(521,635),(522,635),(526,635),(527,635),(528,635),(531,635),(603,635),(604,635),(605,635),(606,635),(607,635),(610,635),(624,635),(688,635),(508,636),(508,637),(508,638),(508,639),(509,640),(513,641),(513,642),(513,643),(513,644),(513,645),(514,646),(514,647),(514,648),(514,649),(514,650),(527,650),(514,651),(527,651),(615,651),(515,652),(516,652),(515,653),(515,654),(516,654),(528,654),(531,654),(515,655),(515,656),(515,657),(544,657),(515,658),(516,658),(535,658),(515,659),(515,660),(515,661),(634,661),(640,661),(641,661),(668,661),(678,661),(515,662),(515,663),(515,664),(515,665),(515,666),(515,667),(515,668),(515,669),(515,670),(516,670),(608,670),(515,671),(515,672),(516,673),(528,673),(531,673),(516,674),(540,674),(548,674),(552,674),(517,675),(517,676),(517,677),(517,678),(517,679),(550,679),(695,679),(518,680),(530,680),(634,680),(528,681),(534,682),(535,683),(538,683),(546,683),(548,683),(551,683),(552,683),(554,683),(637,683),(671,683),(535,684),(540,684),(544,684),(545,684),(547,684),(552,684),(563,684),(535,685),(619,685),(622,685),(535,686),(550,686),(580,686),(659,686),(535,687),(538,687),(552,687),(640,687),(641,687),(660,687),(537,688),(543,688),(548,688),(553,688),(573,688),(574,688),(603,688),(608,688),(610,688),(611,688),(613,688),(683,688),(686,688),(537,689),(546,689),(613,689),(538,690),(594,690),(538,691),(599,691),(538,692),(538,693),(538,694),(597,694),(634,694),(662,694),(538,695),(540,696),(542,696),(547,696),(540,697),(540,698),(548,698),(540,699),(544,699),(545,699),(548,699),(550,699),(552,699),(610,699),(686,699),(540,700),(546,700),(547,700),(548,700),(686,700),(540,701),(554,701),(540,702),(541,702),(546,702),(547,702),(548,702),(691,702),(692,702),(693,702),(543,703),(546,703),(544,704),(545,704),(544,705),(544,706),(544,707),(634,707),(640,707),(641,707),(544,708),(545,708),(544,709),(545,709),(544,710),(686,710),(544,711),(545,711),(563,711),(618,711),(621,711),(622,711),(684,711),(544,712),(544,713),(544,714),(545,715),(603,715),(605,715),(545,716),(548,717),(550,717),(563,717),(603,717),(605,717),(608,717),(548,718),(548,719),(548,720),(548,721),(550,721),(548,722),(548,723),(548,724),(548,725),(548,726),(548,727),(548,728),(548,729),(548,730),(548,731),(550,731),(549,732),(550,733),(550,734),(614,734),(616,734),(550,735),(550,736),(550,737),(555,738),(556,738),(557,738),(558,738),(555,739),(556,739),(557,739),(558,739),(565,739),(583,739),(555,740),(556,740),(557,740),(558,740),(555,741),(556,741),(557,741),(558,741),(565,741),(555,742),(556,742),(557,742),(558,742),(565,742),(555,743),(556,743),(557,743),(558,743),(559,743),(560,743),(561,743),(565,743),(555,744),(556,744),(557,744),(558,744),(565,744),(555,745),(556,745),(557,745),(558,745),(565,745),(575,745),(576,745),(555,746),(556,746),(557,746),(558,746),(564,746),(555,747),(556,747),(557,747),(558,747),(555,748),(556,748),(557,748),(558,748),(563,748),(564,748),(565,748),(559,749),(560,749),(561,749),(562,750),(562,751),(563,751),(603,751),(605,751),(563,752),(634,752),(662,752),(678,752),(684,752),(564,753),(564,754),(630,754),(676,754),(680,754),(564,755),(564,756),(564,757),(564,758),(564,759),(630,759),(676,759),(680,759),(564,760),(565,761),(579,761),(581,761),(582,761),(565,762),(565,763),(566,764),(567,764),(566,765),(567,765),(634,765),(635,765),(636,765),(684,765),(566,766),(567,766),(568,767),(573,767),(574,767),(687,767),(688,767),(569,768),(570,769),(572,769),(570,770),(572,770),(570,771),(570,772),(570,773),(570,774),(570,775),(570,776),(570,777),(570,778),(570,779),(570,780),(570,781),(570,782),(570,783),(570,784),(570,785),(570,786),(570,787),(570,788),(570,789),(570,790),(570,791),(570,792),(570,793),(570,794),(572,794),(570,795),(572,795),(570,796),(572,796),(570,797),(572,797),(571,798),(571,799),(571,800),(571,801),(571,802),(571,803),(571,804),(571,805),(571,806),(572,806),(608,806),(572,807),(572,808),(572,809),(572,810),(572,811),(572,812),(572,813),(572,814),(572,815),(572,816),(572,817),(572,818),(572,819),(572,820),(572,821),(572,822),(572,823),(572,824),(572,825),(572,826),(572,827),(572,828),(572,829),(572,830),(573,831),(575,831),(577,831),(674,831),(687,831),(575,832),(576,832),(575,833),(576,833),(577,833),(578,833),(575,834),(576,834),(575,835),(576,835),(575,836),(576,836),(575,837),(576,837),(575,838),(576,838),(577,838),(578,838),(577,839),(578,839),(580,840),(608,840),(581,841),(582,841),(585,842),(595,842),(598,842),(599,842),(587,843),(588,844),(589,845),(590,846),(591,847),(592,848),(593,849),(595,850),(596,851),(598,852),(599,853),(599,854),(600,855),(601,855),(602,855),(600,856),(601,856),(602,856),(600,857),(601,857),(602,857),(600,858),(601,858),(602,858),(600,859),(601,859),(602,859),(600,860),(601,860),(602,860),(600,861),(601,861),(602,861),(600,862),(600,863),(600,864),(601,864),(602,864),(600,865),(601,865),(602,865),(600,866),(600,867),(600,868),(601,868),(602,868),(600,869),(601,869),(602,869),(600,870),(601,870),(602,870),(601,871),(601,872),(602,872),(602,873),(603,874),(605,874),(603,875),(605,875),(603,876),(603,877),(605,877),(603,878),(605,878),(612,878),(603,879),(605,879),(603,880),(603,881),(605,881),(603,882),(603,883),(605,883),(603,884),(603,885),(605,885),(603,886),(605,886),(603,887),(605,887),(603,888),(605,888),(603,889),(605,889),(603,890),(605,890),(603,891),(608,891),(611,891),(613,891),(603,892),(603,893),(605,893),(603,894),(605,894),(603,895),(605,895),(612,895),(603,896),(603,897),(605,897),(603,898),(612,898),(603,899),(605,899),(603,900),(604,900),(605,900),(606,900),(608,900),(611,900),(613,900),(603,901),(605,901),(603,902),(605,902),(603,903),(605,903),(603,904),(603,905),(605,905),(605,906),(605,907),(608,908),(608,909),(608,910),(608,911),(610,911),(608,912),(610,912),(608,913),(610,913),(665,913),(684,913),(608,914),(608,915),(690,915),(608,916),(608,917),(610,918),(610,919),(610,920),(614,921),(615,921),(616,921),(617,921),(614,922),(615,922),(614,923),(615,923),(618,924),(621,924),(622,924),(684,924),(619,925),(619,926),(622,927),(640,927),(641,927),(660,927),(678,927),(622,928),(623,929),(623,930),(623,931),(623,932),(625,933),(627,933),(625,934),(626,934),(626,935),(628,935),(634,935),(627,936),(628,936),(629,937),(630,938),(688,938),(630,939),(630,940),(633,941),(634,942),(651,942),(652,942),(634,943),(654,943),(634,944),(655,944),(634,945),(659,945),(634,946),(673,946),(684,946),(634,947),(634,948),(653,948),(634,949),(668,949),(634,950),(651,950),(652,950),(634,951),(635,951),(636,951),(637,951),(638,951),(639,951),(640,951),(641,951),(642,951),(643,951),(644,951),(645,951),(646,951),(647,951),(649,951),(651,951),(652,951),(653,951),(654,951),(655,951),(656,951),(657,951),(658,951),(659,951),(660,951),(661,951),(662,951),(663,951),(664,951),(665,951),(666,951),(667,951),(668,951),(669,951),(670,951),(671,951),(672,951),(673,951),(674,951),(675,951),(676,951),(677,951),(678,951),(679,951),(680,951),(681,951),(634,952),(653,952),(658,952),(661,952),(667,952),(674,952),(675,952),(676,952),(677,952),(684,952),(634,953),(679,953),(634,954),(680,954),(634,955),(681,955),(637,956),(656,956),(671,956),(654,957),(657,958),(666,958),(663,959),(664,960),(669,961),(670,962),(671,963),(672,964),(683,965),(686,965),(684,966),(684,967),(684,968),(684,969),(684,970),(684,971),(684,972),(685,973),(686,974),(689,975),(691,976),(692,976),(693,976),(691,977),(692,977),(693,977),(691,978),(692,978),(693,978),(691,979),(692,979),(693,979);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topic`
--

DROP TABLE IF EXISTS `help_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topic` (
  `help_topic_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help topics';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topic`
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


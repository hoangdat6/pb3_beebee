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
                           `street` varchar(50) DEFAULT NULL,
                           `commune` varchar(50) DEFAULT NULL,
                           `district` varchar(50) DEFAULT NULL,
                           `province` varchar(50) DEFAULT NULL,
                           `detail` varchar(500) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
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
-- Table structure for table `product_item`
--

DROP TABLE IF EXISTS `product_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_item` (
                                `id` bigint NOT NULL AUTO_INCREMENT,
                                `product_id` bigint DEFAULT NULL,
                                `SKU` varchar(25) DEFAULT NULL,
                                `product_img_path` varchar(1024) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_item`
--

LOCK TABLES `product_item` WRITE;
/*!40000 ALTER TABLE `product_item` DISABLE KEYS */;
INSERT INTO `product_item` VALUES (1,2,NULL,'img_product/quan_002.png',7,10,100,300000),(2,2,NULL,'img_product/quan_003.png',7,11,200,300000),(3,2,NULL,'img_product/quan_004.png',7,12,300,300000),(4,2,NULL,'img_product/quan_005.png',8,10,1,300000),(5,2,NULL,'img_product/quan_006.png',8,11,2,300000),(6,2,NULL,'img_product/quan_007.png',8,12,3,300000),(7,2,NULL,'img_product/quan_002.png',9,10,4,300000),(8,2,NULL,'img_product/quan_003.png',9,11,5,300000),(9,2,NULL,'img_product/quan_004.png',9,12,2,300000),(10,2,NULL,'img_product/quan_005.png',14,10,4,300000),(11,2,NULL,'img_product/quan_006.png',14,11,2,300000),(12,2,NULL,'img_product/quan_007.png',14,12,4,300000),(13,2,NULL,'img_product/quan_002.png',15,10,2,300000),(14,2,NULL,'img_product/quan_003.png',15,11,14,300000),(15,2,NULL,'img_product/quan_004.png',15,12,2,300000),(32,1,NULL,'img_product/dep_001.png',1,NULL,0,10000),(33,1,NULL,'img_product/dep_002.png',2,NULL,103,12121),(34,1,NULL,'img_product/dep_003.png',3,NULL,104,12121),(35,3,NULL,'img_product/day_002.png',NULL,NULL,300,1000000),(36,4,'123456','img_product/123456.png',16,NULL,100,2500000),(37,4,'123457','img_product/123457.png',17,NULL,100,2500000),(38,4,'123458','img_product/123458.png',18,NULL,100,2500000),(39,4,'123459','img_product/123459.png',19,NULL,103,2500000),(40,4,'123460','img_product/123460.png',20,NULL,10,2500000),(41,4,'123461','img_product/123461.png',21,NULL,100,2500000),(42,4,'123462','img_product/123462.png',22,NULL,104,2500000),(43,4,'123463','img_product/123463.png',23,NULL,14,2500000),(44,4,'123464','img_product/123456.png',24,NULL,10,2500000),(45,4,'123465','img_product/123457.png',25,NULL,100,2500000),(46,4,'123466','img_product/123458.png',26,NULL,100,2500000),(47,4,'123467','img_product/123459.png',27,NULL,100,2500000),(48,4,'123468','img_product/123460.png',28,NULL,100,2500000),(49,4,'123469','img_product/123461.png',29,NULL,100,2500000),(50,4,'123470','img_product/123462.png',30,NULL,100,2500000),(51,5,'GHE-001','img_product/img_1.png',31,33,10,3790000),(52,5,'GHE-002','img_product/img_2.png',31,34,10,3790000),(143,65,NULL,NULL,NULL,NULL,123123,12312),(144,66,NULL,NULL,NULL,NULL,1234,123);
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
                            `product_img_path` varchar(1024) DEFAULT NULL,
                            `category_id` int DEFAULT NULL,
                            `seller_id` bigint DEFAULT NULL,
                            `created_at` date DEFAULT NULL,
                            `discount` float DEFAULT NULL,
                            `views` bigint NOT NULL COMMENT 'views',
                            PRIMARY KEY (`id`),
                            KEY `category_id` (`category_id`),
                            KEY `seller_id` (`seller_id`),
                            CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
                            CONSTRAINT `products_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Chính hãng dép đúc bánh mì Calm Slide quai ngang nam nữ nguyên khối đế cao su EVA BẢN CAO CẤP siêu nhẹ siêu êm','Chính hãng dép đúc full size nam nữ, đế cao su EVA 2 màu siêu nhẹ, mẫu mới hot trend 2023\n? Thông tin sản phẩm:\n- Quai giả da bền bỉ.\n- Lót quai vải đàn hồi êm chân.\n- Đế chất liệu Eva siêu nhẹ đúc nguyên khối cực êm chân, bền bỉ, form ôm chân và thoải mái vu vi khi di chuyển đi chơi lâu, độ mài mòn rất bền.\n- Phù hợp để đi chơi, dạo phố...\n- Dép quai ngang là lựa chọn không thể thiếu, thoải mái phối đồ dễ dàng, mang đi chơi đi học đi làm đều được với mọi phong cách thời trang.\n---------------------\n• dép quai ngang\n• dép đế xuồng\n• dép bánh mì\n\n? CAM KẾT:  Mẫu dép quai ngang  chuẩn ảnh, cam kết giống hình 100%\n• Thanh toán khi nhận hàng.\n• Nhận dép không đúng hình shop sẽ hoàn tiền.\n• Đổi 1 đổi 1 nếu hỏng từ phía nhà sản xuất.\n• Mang không vừa sẽ hỗ trợ đổi size cho khách.\n\n? Hướng dẫn dụng dép quai ngang\n- Tránh để ngoài vị trí có ánh nắng trực tiếp từ 2 tiếng trở lên.\n- Khi rửa nước, đi mưa xong nên phơi khô bằng cách để nơi khô ráo, dựng đứng dép để mau khô, tránh ẩm thấp quá lâu sẽ làm giảm độ bền.\n- Không để nơi ẩm thấp hay nơi có nhiệt đô cao.\n\n? Điều kiện áp dụng đổi trả dép quai ngang trong vòng 07 ngày từ khi nhận hàng).\n- Sản phầm vẫn còn mới, chưa qua sử dụng.\n- Sản phầm bị lỗi, hư hỏng do nhà sản xuất.\n- Sản phầm không đúng size, mẫu mã như quý khách đặt.\n- Số lượng không đủ như trong đơn hàng.\n\n?Trường hợp không đủ điều kiện áp dụng đổi trả dép quai ngang\n- Vượt quá 07 ngày kể từ khi nhận sản phẩm.\n- Đổi trả không đúng mẫu mã, không mặt hàng quý khách đã nhận.\n- Không đổi trả với lý do thích, không hợp, đặt nhầm sản phẩm, nhầm màu sắc.\nHỗ trợ bảo hành miễn phí đối với trường hợp bung keo, bung chỉ.\nThời gian bảo hành 1 tháng kể từ thời điểm mua hàng.\nSản phẩm phải được vệ sinh sạch sẽ trước khi gửi bảo hành!','img_product/dep_001.png',1,2,NULL,20,7),(2,'Quần Nỉ Dài Relax Pants ODIN CLUB, Quần nỉ dài ống suông ODIN, Local Brand ODIN CLUB','Quần nỉ dài Relax Pants ODIN CLUB\n\n- Màu sắc: Đen /  Be / Xám Nhạt / Xám Đậm\n\n- Size: M / L / XL.\n\n- Kiểu dáng: Oversized.\n\nHƯỚNG DẪN SỬ DỤNG:\n\n- Lần giặt đầu chỉ nên xả nước lạnh rồi phơi khô.\n\n- Khuyến cáo nên giặt tay, hạn chế giặt máy.\n\n- Chú ý lộn trái sản phẩm trước khi giặt để không ảnh hướng tới bề mặt vải.\n\n- Không sử dụng thuốc tẩy, không giặt chung với các sản phẩm dễ phai màu\n\n- Hạn chế phơi trực tiếp dưới ánh nắng mặt trời, nên phơi khô dưới ảnh sáng tự nhiên\n\n\n\nCAM KẾT TỪ ODIN CLUB\n\n- Sản phẩm 100% giống mô tả.\n\n- Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh.\n\n- Đảm bảo chất lượng sản phẩm luôn ở mức cao nhất. \n\n- Hàng có sẵn, giao hàng trên toàn quốc, nhận hàng sau 2-3 ngày đối với các khu vực thuộc nội thành Hà Nội và 3-4 ngày đối với các khu vực khác.\n\n\n\nCHÍNH SÁCH ĐỔI-TRẢ\n\n1. Điều kiện tiên quyết:\n\n- Có video quay lại quá trình mở gói hàng.\n\n- Hàng hoá vẫn còn nguyên hiện trạng kể từ khi KH mở gói hàng.\n\n- Khách hàng phản hồi trong vòng 6 ngày kể từ ngày nhận hàng.\n\n2. Trường hợp được hỗ trợ:\n\n- Hàng nhận được không đúng màu sắc, kích thước, số lượng như KH đặt hàng.\n\n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất.\n\n\n\n*Lưu ý:  Do màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%.','img_product/quan_001.png',1,2,NULL,20,1),(3,'Giày Thể Thao Alphabounce Beyond Trắng Full Cực Êm Thoáng Khí Phù Hợp Với Cả Nam Và Nữ Clever Man Store','MÔ TẢ SẢN PHẨM\n🔸 Giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ đầy tính năng, được thiết kế để cung cấp sự thoải mái, độ bền và hỗ trợ cho người chơi khi tập luyện hoặc tham gia các hoạt động thể thao. Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là sự lựa chọn tuyệt vời cho những ai yêu thích sự đơn giản và trẻ trung.\n\n\n\n🔸 Đế giày của giày Alphabounce Beyond trắng được thiết kế với công nghệ Bounce độc quyền của AD, giúp cung cấp độ đàn hồi và đàn hồi tối đa, giúp người mang giày chạy bộ linh hoạt hơn và giảm sốc tốt hơn khi đáp xuống mặt đất. Thân giày được làm bằng vải Jacquard, là một loại vải nhẹ và thoáng khí, giúp người mang giày cảm thấy mát mẻ và thoải mái trong suốt quá trình tập luyện.\n\n\n\n🔸 Giày Alphabounce Beyond trắng còn được thiết kế với hệ thống hỗ trợ gót chân, giúp người mang giày cảm thấy thoải mái và ổn định hơn khi chạy. Đế giày của giày được làm bằng cao su chất lượng cao, giúp tăng độ bền và độ bám của giày.\n\n\n\n🔸 Với thiết kế trắng trang nhã, giày Alphabounce Beyond trắng là một sản phẩm giày chạy bộ tinh tế và phù hợp với nhiều phong cách. Với sự kết hợp giữa công nghệ và thẩm mỹ, giày Alphabounce Beyond trắng là sự lựa chọn hoàn hảo cho những người yêu thích sự đơn giản và trẻ trung.\n\n','img_product/day_001.png',1,2,NULL,44,2),(4,'Giày Converse Run Star Hike Twisted Classic Foundational Canvas - 166800C','Tên Đơn vị Nhập Khẩu: CÔNG TY TNHH MAGNA MANAGEMENT ASIA (MMA)\n\nĐịa chỉ: Phòng 14-02, Tầng 14, Tòa nhà Xổ Số Kiến Thiết Thành phố Hồ Chí Minh, 77 Trần Nhân Tôn, Phường 09, Quận 5, Thành phố Hồ Chí Minh, Việt Nam\n\nTel: 02838301111\n\nGIÀY SNEAKERS CONVERSE - HÀNG CHÍNH HÃNG PHÂN PHỐI BỞI WEAR VIETNAM Cuộc cách mạng siêu bứt phá mang tên Converse Run Star Hike \n\nBạn đã quá quen với phong cách quen thuộc của Converse là những đôi giày thể thao, chất lừ, khỏe khoắn với phần thân bằng vải và đế giày cau su màu đen thì có lẽ bạn sẽ phải thốt lên những từ cảm thán bất ngờ khi được chứng kiến sự bứt phá đầy khác biệt với dòng sản phẩm mới mang tên: Converse Run Star Hike.\n\nRun Star Hike - cú bứt phá ngoạn mục của Converse\n\nRa mắt đầu 2020, BST cực chất của Converse mang tên Converse Twisted Classic có lẽ đã tạo được tiếng vang cực lớn đối với những tín đồ yêu sneaker trên toàn thế giới. Thoát khỏi bóng dáng của những đôi Converse thân thuộc, lần này nhà thiết kế của Converse chịu chơi hơn rất nhiều khi đã biến tấu những sản phẩm của mình trở nên “không đụng hàng” với bất cứ dòng sản phẩm nào trước đó từng ra mắt.\n\nĐể mang lại cái nhìn rõ ràng và cận cảnh hơn, trong phần dưới đây, hãy cùng chiêm ngưỡng từng đường nét của đôi giày Converse Run Star Hike hot nhất 2020 này nhé!\n\nCận cảnh sự khác biệt chất chơi của mẫu giày Converse Run Star Hike\n\nRun Star Hike - mẫu giày đi trước thời đại của Converse\n\nGiày Converse Run Star Hike là dòng sản phẩm được kết hợp giữa Converse cùng JW Anderson. Trước đó, sự kết hợp này đã trình làng những sản phẩm giày mang nhiều cải tiến để thích hợp hơn với bộ môn leo núi. Chính từ nguồn cảm hứng đó, Run Star Hike đã ra đời và như một nét chấm phá trong phong cách quen thuộc thường thấy của Converse. Với những ưu điểm nổi bật về khả năng bám bề mặt vừa mang tính thời trang với phần đế độc đáo, những nhà nhận định thời trang nổi tiếng cũng phải thừa nhận rằng đây là những sản phẩm đi trước thời đại. Phải chăng, vì thế mà những đôi giày Converse Run Star Hike đã thừa thắng xông lên trên toàn thế giới với những ưu ái của idol Hàn Quốc hay những stylist, fashionista nổi tiếng nhất.\n\nCận cảnh sự phá cách không đụng hàng của Run Star Hike\n\nMở rộng thị trường, Converse đã cực kỳ đúng đắn khi quyết định mang tới nhiều sản phẩm mang tính định hướng hơn so với những đôi giày Converse truyền thống. Không chỉ phục vụ đối tượng là thế hệ Gen Z, hiện nay, Converse còn muốn cung cấp những sản phẩm chất lượng dành cho các bạn trẻ yêu thích sự mạo hiểm, thể hiện sức mạnh của bản thân với các bộ môn như leo núi, trekking…\n\nSản phẩm được \"remix\" từ Chuck và Runner khi 2 yếu tố thời trang được thể hiện xen kẽ: Upper canvas và đế Run Star zig-zag. Đổi mới từ những đôi giày Converse truyền thống với đế giày casual, đế cau su kép và bằng phẳng,Giày Converse Run Star Hike được thiết kế với phần đế giày dành riêng cho dân leo núi với độ dốc lớn. Đế giày được thiết kế với dạng răng cưa to bản, giúp tăng độ bám một cách hiệu quả vừa tạo được điểm nhấn về phong cách và ấn tượng về thời trang. \n\nGót giày thay vì có logo Converse quen thuộc thì với đôi Run Star Hike thay bằng ngôi sao màu đen ở chính giữa. Đế giày dày tới 6cm, và là một trong những đôi sneakers có phần đế dày nhất tính đến hiện tại. \n\nGiày Converse Run Star Hike hiện được ra mắt với hai tông màu chính là trắng basic và đen cá tính. Chắc chắn trong tương lai, Run Star Hike có thể tạo cho mình được một đế chế riêng không chỉ dành cho dân leo núi mà còn có chỗ đứng trong lòng các bạn trẻ Việt Nam\n\n- Size US : 3.5-11, Size EU: 34.5-44.5 \n\n-Chinh sách đối với các sản phẩm được bán bởi Wear Vietnam\n\n+ Giảm từ 0 -> 10%: hỗ trợ đổi size và bảo hành\n\n+ Giảm trên 10%: không đổi size, không bảo hành\n\n*Thời gian bảo hành 1 tháng\n\n*Không đổi trả, bảo hành với balo, quần áo & phụ kiện\n\n- Loại hình bảo hành: Cửa hàng\n\n- Quy cách đóng gói: Double Box ( Giày, Hóa đơn, Túi Converse)\n\n#converse\n\n#Converse\n\n#CONVERSE\n\n#giayconverse\n\n#conversegiay\n\n#Giayconverse\n\n#GIAYCONVERSE\n\n#giaythethaoconverse\n\n#166800V','img_product/img.png',1,2,NULL,25,2),(5,'Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm','Ghế công thái học HyperWork Airy có tựa đầu, chống đau lưng, kết cấu lưới ngồi êm ái, thoáng mát - Bảo hành 3 năm\n\n\n\nTHÔNG TIN CHI TIẾT GHẾ CÔNG THÁI HỌC HYPERWORK AIRY\n\n- Thương hiệu: HyperWork\n\n- Màu sắc: Đen / Trắng\n\n- Bộ cơ khí: FluidMotion System\n\n- Ngả lưng: Tối đa 120 độ\n\n- Piston: Class 4\n\n- Điều chỉnh kháng lực: Có\n\n- Tựa đầu, Kê tay: 3D\n\n- Lưới: AeroMesh\n\n- Chân ghế: Kim loại\n\n- Chiều cao: 150 - 190cm\n\n- Cân nặng: 40 - 100Kg\n\n- Bảo hành: 3 năm\n\n\n\nĐẶC ĐIỂM NỔI BẬT\n\n- Toàn bộ lưng và mâm ghế của Airy được sử dụng lưới đem lại cảm giác ngồi êm ái, thoáng mát, đặc biệt phù hợp với khí hậu Việt Nam.\n\n- Tay ghế 3D có thể chỉnh được độ cao, và xoay được phần đầu tay ghế qua trái phải, đẩy tới và lui phần đệm tay sao cho vừa vặn nhất.\n\n- Được thiết kế độc đáo, mềm mại cùng khả năng điều chỉnh trượt 5 cm, giúp bạn tìm được vị trí ngồi lý tưởng.\n\n- Tựa đầu của Airy có thể linh hoạt điều chỉnh độ cao, sâu và góc nghiêng để phù hợp với phần cổ và gáy, giúp bạn làm việc hoặc nghỉ ngơi một cách thật thoải mái.\n\n- Không chỉ dừng lại ở việc điều chỉnh mâm ghế và tựa đầu, Airy còn cho phép bạn điều chỉnh đệm eo và góc nghiêng của lưng ghế. Điều này đảm bảo rằng bạn có thể tạo ra sự thoải mái tối ưu cho cơ thể.\n\n- Bộ chuyển động FluidMotion với tính năng phong phú: Kháng lực, ngả 120 độ, trượt mâm ghế,…\n\n- Hai vị trí điều chỉnh tựa lưng thông minh, đảm bảo lưng ghế luôn ôm sát cơ thể.\n\n- Piston Class 4 chuẩn BIFMA: An toàn và bền bỉ.\n\n\n\nCAM KẾT VỚI KHÁCH HÀNG\n\nMang đến khách hàng những sản phẩm chất lượng tốt nhất, đảm bảo chính hãng.\n\nSản phẩm đúng với mô tả, hình ảnh và video mà shop cung cấp.\n\nDịch vụ khách hàng luôn tận tâm và nhiệt tình, giúp quý khách có được trải nghiệm tốt nhất khi mua hàng.\n\nThời gian chuẩn bị hàng luôn được đảm bảo.\n\nHỗ trợ áp dụng chính sách đổi trả sản phẩm theo quy định của Shopee (Trong vòng 3 ngày kể từ ngày nhận hàng).\n\n*ĐỂ ĐƯỢC HỖ TRỢ NHANH NHẤT, BẠN VUI LÒNG QUAY LẠI VIDEO MỞ THÙNG HÀNG ĐỂ SHOP TIỆN XÁC MINH.\n\n\n\nHOÀNG KHUÊ - LINH KIỆN, PHỤ KIỆN MÁY TÍNH CHÍNH HÃNG\n\n*Địa chỉ: 46A Đường 85, Phường Tân Quy, Quận 7, TP.HCM\n\nRất hân hạnh được phục vụ quý khách!\n\nQuý khách hàng vui lòng liên hệ trực tiếp với shop để được giải quyết thắc mắc và vấn đề về sản phẩm (nếu có).\n\nMong rằng bạn sẽ hài lòng với sự phục vụ của shop và đừng quên giới thiệu bạn bè của bạn nhé!\n\n\n\n#ghe #congthaihoc #hyperwork #airy #tuadau #tualung #xoay #120do #dieuchinh #luoi #em #thoangmat #thoaimai #noithat #vanphong #chinhhang #caocap #hoangkhue\n\n','img_product/ghe12345.png',1,2,NULL,18,1),(65,'asdasd','asdasdasdasasda',NULL,1,NULL,'2024-04-15',12,0),(66,'asdasd','asdasd','ImageProduct/66/66_0.jpg,ImageProduct/66/66_1.jpg,ImageProduct/66/66_2.jpg,',1,NULL,'2024-04-15',12,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
                         `id` bigint NOT NULL AUTO_INCREMENT,
                         `role` varchar(25) DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
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
                           `address` bigint DEFAULT NULL,
                           `user_id` bigint DEFAULT NULL,
                           `views` int NOT NULL,
                           `followers` int DEFAULT NULL,
                           `created_at` datetime DEFAULT NULL,
                           PRIMARY KEY (`id`),
                           KEY `user_id` (`user_id`),
                           KEY `address` (`address`),
                           CONSTRAINT `sellers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
                           CONSTRAINT `sellers_ibfk_2` FOREIGN KEY (`address`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (2,NULL,'Dat','asadsad',NULL,3,0,NULL,NULL);
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (1,3,NULL),(2,5,'2024-03-24 23:27:14'),(3,6,'2024-04-05 21:37:47');
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
                                      `qty` int DEFAULT NULL,
                                      `created_at` datetime DEFAULT NULL,
                                      PRIMARY KEY (`id`),
                                      KEY `product_item_id` (`product_item_id`),
                                      CONSTRAINT `shopping_cart_item_ibfk_1` FOREIGN KEY (`product_item_id`) REFERENCES `product_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart_item`
--

LOCK TABLES `shopping_cart_item` WRITE;
/*!40000 ALTER TABLE `shopping_cart_item` DISABLE KEYS */;
INSERT INTO `shopping_cart_item` VALUES (1,1,33,15,'2024-04-04 21:13:42'),(2,1,6,1,'2024-03-23 23:37:45'),(3,1,6,1,'2024-03-23 23:40:18'),(4,1,6,6,'2024-03-23 23:40:47'),(5,1,1,1,'2024-03-23 23:42:33'),(33,1,5,3,'2024-04-01 15:43:03'),(34,1,35,4,'2024-04-01 16:02:43'),(35,1,46,1,'2024-04-05 11:24:58'),(36,2,34,1,'2024-04-05 21:31:43'),(37,3,3,1,'2024-04-05 21:37:47'),(38,1,8,1,'2024-04-06 19:43:24');
/*!40000 ALTER TABLE `shopping_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
                                `user_id` bigint DEFAULT NULL,
                                `address_id` bigint DEFAULT NULL,
                                KEY `user_id` (`user_id`),
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
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
                             `user_id` bigint DEFAULT NULL,
                             `role_id` bigint DEFAULT NULL,
                             KEY `role_id` (`role_id`),
                             KEY `user_id` (`user_id`),
                             CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
                             CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
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
                         `deleted` bit(1) DEFAULT b'0',
                         `avatar` varchar(1024) DEFAULT NULL,
                         `fullname` varchar(255) DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'dat1234','hPlEipJSNpKlxgYLVXLlmC6/ic0=','dat123@gmail.com','12312312312','2024-03-15 16:28:14','male','2024-03-20',_binary '\0',NULL,'dasdas'),(4,'dat','PLQ4laHKUA3DY7RcRDjFyxl0rDM=','dathv2004@gmail.com',NULL,'2024-03-23 21:17:39','male','2024-03-06',_binary '\0',NULL,NULL),(5,'dat123','XMnJIT/dD1rQAAJv71cSrW3feWE=','102220055@sv1.dut.udn.vn',NULL,'2024-03-24 23:26:20','male','2024-03-01',_binary '\0',NULL,NULL),(6,'dat12345','UGd8MZh6DWh5c9fwLtlCybcrsmE=','dat10106868@gmail.com',NULL,'2024-04-05 15:10:01','male','2004-12-31',_binary '\0',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation`
--

LOCK TABLES `variation` WRITE;
/*!40000 ALTER TABLE `variation` DISABLE KEYS */;
INSERT INTO `variation` VALUES (1,1,'Màu sắc'),(3,2,'Màu sắc'),(4,2,'Size'),(5,4,'Size'),(6,5,'Tùy Chọn'),(7,5,'Màu Sắc');
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
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variation_option`
--

LOCK TABLES `variation_option` WRITE;
/*!40000 ALTER TABLE `variation_option` DISABLE KEYS */;
INSERT INTO `variation_option` VALUES (1,1,'Red'),(2,1,'Blue'),(3,1,'Green'),(7,3,'Đen'),(8,3,'Be'),(9,3,'Xám đậm'),(10,4,'XL'),(11,4,'M'),(12,4,'L'),(14,3,'Xám tiêu đậm'),(15,3,'Xám trắng'),(16,5,'35'),(17,5,'35.5'),(18,5,'35.5'),(19,5,'36'),(20,5,'37'),(21,5,'38'),(22,5,'38.5'),(23,5,'39'),(24,5,'40'),(25,5,'40.5'),(26,5,'41'),(27,5,'42'),(28,5,'42.5'),(29,5,'43'),(30,5,'44'),(31,6,'Ghế có tựa đầu'),(33,7,'Đen'),(34,7,'Trắng');
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

-- Dump completed on 2024-04-15 16:03:03

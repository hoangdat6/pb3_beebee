insert into shop_bee.users (id, username, password, email, phone, created_at, gender, dob, is_locked, avatar, fullname, role)
values  (100, 'hanhpro', 'xQI9dArilfTVHDd1YeydSmRjZKQ=', 'ngoconghanh2k4@gmail.com', null, '2024-06-11 22:37:47', 'male', '2004-05-15', false, null, null, 'SELLER'),
        (102, 'hanhsieucapvippro', 'gs5+exjNAndiJhaJ2eGHu99FpvE=', 'hanhsieucapvippro@gmail.com', null, '2024-06-12 16:53:30', 'male', '2004-05-15', false, null, null, 'SELLER'),
        (103, 'hanhhaygay', '9+1i4lmef8tjn38U8GN9fx+t0oE=', 'lezancuong@gmail.com', null, '2024-06-12 20:49:07', 'male', '2004-05-15', false, null, null, 'SELLER');

insert into shop_bee.sellers (id, avatar, shop_name, description, address_id, user_id, views, created_at, is_locked)
values  (100, 'SellerImages/11/avatar.png,SellerImages/11/cover.png', 'iPhone Store', null, 40, 100, 0, '2024-06-11 22:46:43', null),
        (101, 'SellerImages/102/avatar.png,SellerImages/102/cover.png', 'Thế Giới Đồng Hồ', null, 41, 102, 0, '2024-06-12 16:59:31', null),
        (102, 'SellerImages/103/avatar.png,SellerImages/103/cover.png', 'Torriden Official Store', null, 42, 103, 0, '2024-06-12 20:57:14', null);

insert into shop_bee.products (id, name, description, img_path, category_id, seller_id, created_at, discount, views, sales, product_status_id)
values  (400, 'Điện thoại Apple iPhone 15 Pro Max ', 'Thông số kỹ thuật:

- 6.7″

- Màn hình Super Retina XDR

- Màn hình Luôn Bật

- Công nghệ ProMotion

- Titan với mặt sau bằng kính nhám

- Nút Tác Vụ

- Dynamic Island

- Chip A17 Pro với GPU 6 lõi

- SOS Khẩn Cấp

- Phát Hiện Va Chạm

- Pin: Thời gian xem video lên đến 29 giờ

- USB‑C: Hỗ trợ USB 3 cho tốc độ truyền tải nhanh hơn đến 20x



Camera sau

- Chính 48MP | Ultra Wide | Telephoto

- Ảnh có độ phân giải siêu cao (24MP và 48MP)

- Ảnh chân dung thế hệ mới với Focus và Depth Control

- Phạm vi thu phóng quang học lên đến 10x



Bộ sản phẩm bao gồm:

•        Điện thoại

•        Dây sạc

•        HDSD Bảo hành điện tử 12 tháng.



Thông tin bảo hành:

Bảo hành: 12 tháng kể từ ngày kích hoạt sản phẩm.

Kích hoạt bảo hành tại: https://checkcoverage.apple.com/vn/en/

', 'ImageProduct/400/400_0.png,ImageProduct/400/400_1.png,ImageProduct/400/400_2.png,ImageProduct/400/400_3.png,ImageProduct/400/400_4.png', 15, 100, '2024-06-12 09:29:10', 4, 1, 0, 1),
        (401, 'Điện thoại Apple iPhone 15 ', 'Thông số kỹ thuật:

- 6.1″

- Màn hình Super Retina XDR

- Nhôm với mặt sau bằng kính pha màu

- Nút chuyển đổi Chuông/Im Lặng

- Dynamic Island

- Chip A16 Bionic với GPU 5 lõi

- SOS Khẩn Cấp

- Phát Hiện Va Chạm

- Pin: Thời gian xem video lên đến 26 giờ

- USB‑C: Hỗ trợ USB 2



Camera sau

- Chính 48MP | Ultra Wide

- Ảnh có độ phân giải siêu cao (24MP và 48MP)

- Ảnh chân dung thế hệ mới với Focus và Depth Control

- Phạm vi thu phóng quang học 4x



Bộ sản phẩm bao gồm:

•        Điện thoại

•        Dây sạc

•        HDSD Bảo hành điện tử 12 tháng.



Thông tin bảo hành:

Bảo hành: 12 tháng kể từ ngày kích hoạt sản phẩm.

Kích hoạt bảo hành tại: https://checkcoverage.apple.com/vn/en/', 'ImageProduct/401/401_0.png,ImageProduct/401/401_1.png,ImageProduct/401/401_2.png,ImageProduct/401/401_3.png', 15, 100, '2024-06-12 09:41:40', 3, 3, 0, 1),
        (402, 'Điện thoại Apple iPhone 13 ', 'iPhone 13

Hệ thống camera kép tiên tiến nhất từng có trên iPhone. Chip A15 Bionic thần tốc. Bước nhảy vọt về

thời lượng pin. Thiết kế bền bỉ. Mạng 5G siêu nhanh.1 Cùng với màn hình Super Retina XDR sáng hơn.



Tính năng nổi bật

• Màn hình Super Retina XDR 6.1 inch2

• Chế độ Điện Ảnh làm tăng thêm độ sâu trường ảnh nông và tự động thay đổi tiêu cự trong video

• Hệ thống camera kép tiên tiến với camera Wide và Ultra Wide 12MP; Phong Cách Nhiếp Ảnh, HDR thông

minh thế hệ 4, chế độ Ban Đêm, khả năng quay video HDR Dolby Vision 4K

• Camera trước TrueDepth 12MP với chế độ Ban Đêm và khả năng quay video HDR Dolby Vision 4K

• Chip A15 Bionic cho hiệu năng thần tốc

• Thời gian xem video lên đến 19 giờ3

• Thiết kế bền bỉ với Ceramic Shield

• Khả năng chống nước đạt chuẩn IP68 đứng đầu thị trường4

• Mạng 5G cho tốc độ tải xuống siêu nhanh, xem video và nghe nhạc trực tuyến chất lượng cao1

• iOS 15 tích hợp nhiều tính năng mới cho phép bạn làm được nhiều việc hơn bao giờ hết với iPhone 5



Bộ sản phẩm bao gồm

1. Điện thoại

2. Dây sạc', 'ImageProduct/402/402_0.png,ImageProduct/402/402_1.png,ImageProduct/402/402_2.png,ImageProduct/402/402_3.png', 15, 100, '2024-06-12 09:51:45', 18, 0, 0, 1),
        (403, 'Tai nghe AirPods Pro (thế hệ thứ 2) với Hộp Sạc MagSafe (USB-C)', 'Tổng Quan

Âm thanh. Được thiết kế lại hoàn toàn

AirPods Pro (thế hệ thứ 2) với Hộp Sạc MagSafe (USB-C) có khả năng Chủ Động Khử Tiếng Ồn cao hơn đến 2 lần so với thế hệ trước, cùng chế độ Xuyên Âm giúp bạn nghe thấy thế giới xung quanh mình và Âm Thanh Thích Ứng hoàn toàn mới điều chỉnh việc kiểm soát tiếng ồn theo môi trường của bạn một cách linh động. Nhận Biết Cuộc Hội Thoại giúp giảm âm lượng của nội dung đang nghe và tăng cường giọng nói phía trước bạn khi bạn đang tương tác với người khác. Một lần sạc duy nhất mang lại thời lượng pin lên đến 6 giờ. Và tính năng Điều khiển bằng thao tác chạm giúp bạn dễ dàng điều chỉnh âm lượng bằng một lần vuốt. Hộp Sạc MagSafe là một thiết bị độc lập tuyệt vời với loa tích hợp và dây đeo.', 'ImageProduct/403/403_0.png,ImageProduct/403/403_1.png,ImageProduct/403/403_2.png,ImageProduct/403/403_3.png', 15, 100, '2024-06-12 09:58:04', 11, 0, 0, 1),
        (404, 'Sạc Apple 20W USB-C Power Adapter(2024)', 'Bộ Sạc Apple USB-C 20W giúp sạc nhanh và hiệu quả tại nhà, trong văn phòng hoặc khi đang di chuyển. Tuy bộ sạc này tương thích với mọi thiết bị có cổng USB-C, nhưng Apple khuyên bạn nên sử dụng phụ kiện này với iPad Pro 11 inch và iPad Pro 12.9 inch (thế hệ thứ 3) để đạt hiệu quả sạc tối ưu. Bạn cũng có thể sử dụng với iPhone 8 hoặc các phiên bản cao hơn để tận dụng tính năng sạc nhanh.



Không bán kèm cáp sạc. ', 'ImageProduct/404/404_0.png,ImageProduct/404/404_1.png,ImageProduct/404/404_2.png,ImageProduct/404/404_3.png', 15, 100, '2024-06-12 10:02:46', 47, 3, 0, 1),
        (405, 'Máy tính bảng Apple iPad Gen 9th 10.2-inch Wi-Fi 64GB', 'Mạnh mẽ. Dễ sử dụng. Đa năng. iPad mới có màn hình Retina tuyệt đẹp, chip A13 Bionic mạnh mẽ, camera trước Ultra Wide có tính năng Trung Tâm Màn Hình, tương thích với Apple Pencil và Smart Keyboard (1). iPad giúp bạn dễ dàng làm được nhiều việc hơn nữa. Tất cả tính năng với mức giá ấn tượng.



Tính năng nổi bật

•	Màn hình Retina 10.2 inch sống động với True Tone

•	Chip A13 Bionic với Neural Engine

•	Camera sau Wide 8MP, camera trước Ultra Wide 12MP với tính năng Trung Tâm Màn Hình

•	Ổ lưu trữ lên tới 64GB

•	Loa stereo

•	Xác thực bảo mật với Touch ID

•	Wi-Fi 802.11ac

•	Thời lượng pin lên tới 10 giờ (3)

•	Cổng kết nối Lightning để sạc và kết nối phụ kiện

•	Tương thích với Apple Pencil (thế hệ thứ 1) và Smart Keyboard (1)

•	iPadOS 15 sở hữu sức mạnh độc đáo, dễ sử dụng và được thiết kế cho tính đa năng của iPad', 'ImageProduct/405/405_0.png,ImageProduct/405/405_1.png,ImageProduct/405/405_2.png,ImageProduct/405/405_3.png', 15, 100, '2024-06-12 10:17:00', 39, 0, 0, 1),
        (406, 'Máy tính xách tay Apple MacBook Air 15 inch (2023) M2 Chip 8GB, 512GB', 'CPU 8 Lõi

GPU 10 Lõi

Bộ Nhớ Thống Nhất 8GB

Ổ Lưu Trữ SSD 512GBchú thích¹

Neural Engine 16 lõi

Màn hình Liquid Retina 15,3 inch với True Tone³

Camera FaceTime HD 1080p

Cổng sạc MagSafe 3

Hai cổng Thunderbolt / USB 4

Magic Keyboard với Touch ID

Bàn di chuột Force Touch

Bộ Tiếp Hợp Nguồn Cổng USB-C Kép 35W



Trong hộp có gì

MacBook Air 15 inch với chip M2

Cáp USB-C sang MagSafe 3 (2m)

Bộ Tiếp Hợp Nguồn USB-C', 'ImageProduct/406/406_0.png,ImageProduct/406/406_1.png,ImageProduct/406/406_2.png,ImageProduct/406/406_3.png', 15, 100, '2024-06-12 10:28:02', 18, 0, 0, 1),
        (407, 'Máy tính xách tay MacBook Pro- M3 Pro Chip, 16-inch, 18GB, 512GB', 'Thông số kỹ thuật

- Chip Apple M3 Pro với CPU 12 lõi, GPU 18 lõi và Neural Engine 16 lõi

- Bộ nhớ thống nhất 18GB

- Ổ lưu trữ SSD 512GB

- Màn hình Liquid Retina XDR 16 inch²

- Bộ Tiếp Hợp Nguồn USB-C 140W

-Ba cổng Thunderbolt 4, cổng HDMI, khe thẻ nhớ SDXC, giắc cắm tai nghe, cổng MagSafe 3

- Bàn phím Magic Keyboard có đèn nền với Touch ID - Tiếng Anh (Mỹ)



Thông tin bảo hành:

Bảo hành: 12 tháng kể từ ngày kích hoạt sản phẩm.

Kích hoạt bảo hành tại: https://checkcoverage.apple.com/vn/en/', 'ImageProduct/407/407_0.png,ImageProduct/407/407_1.png,ImageProduct/407/407_2.png,ImageProduct/407/407_3.png', 15, 100, '2024-06-12 10:34:09', 2, 0, 0, 1),
        (408, 'Bút cảm ứng Apple Pencil (2nd Generation)', 'Apple Pencil. Dùng dễ chưa từng thấy. Gắn kết bằng nam châm. Sạc không cần dây.

Với độ chính xác hoàn hảo đến từng điểm ảnh cùng tính năng nhạy với độ nghiêng và lực ấn, Apple Pencil (thế hệ thứ 2) dễ dàng biến hóa thành công cụ sáng tạo, thành cọ vẽ, thành chì than hoặc thành cây bút chì yêu thích của bạn. Bút này giúp bạn vẽ, phác họa, viết các nét nguệch ngoạc và ghi chú hiệu quả hơn bao giờ hết.

Apple Pencil (thế hệ thứ 2), sức sống tươi mới cho công việc, trên từng đường nét. Gần như không có độ trễ, lại chính xác hoàn hảo đến từng điểm ảnh, tính năng nhạy với độ nghiêng và lực ấn, Apple Pencil dễ dàng biến hóa thành công cụ sáng tạo, thành cọ vẽ, thành chì than hoặc thành cây bút chì yêu thích của bạn. Bút này giúp bạn vẽ, phác họa, viết các nét nguệch ngoạc và ghi chú hiệu quả hơn bao giờ hết.
Bút gắn kết vào iPad Pro bằng nam châm, sạc không cần dây và cho phép bạn thay đổi công cụ chỉ với một cú chạm đúp đơn giản.

*Tương thích với iPad Pro 12.9 inch (thế hệ thứ 3, 4 và 5), iPad Pro 11 inch (thế hệ thứ 1, 2 và 3) và iPad Air (thế hệ thứ 4).', 'ImageProduct/408/408_0.png,ImageProduct/408/408_1.png,ImageProduct/408/408_2.png,ImageProduct/408/408_3.png', 15, 100, '2024-06-12 10:39:49', 28, 0, 0, 1),
        (409, 'Đồng hồ Apple Watch SE (2023) 44mm (GPS) Viền nhôm - Dây cao su', 'Tại Việt Nam, về chính sách bảo hành và đổi trả của Apple, "sẽ được áp dụng chung" theo các điều khoản được liệt kê dưới đây:



1) Chính sách chung: https://www.apple.com/legal/warranty/products/warranty-rest-of-apac-vietnamese.html



2) Chính sách cho phụ kiện: https://www.apple.com/legal/warranty/products/accessory-warranty-vietnam.html



3) Các trung tâm bảo hành Apple ủy quyền tại Việt Nam: https://getsupport.apple.com/repair-locations?locale=vi_VN



Qúy khách vui lòng đọc kỹ hướng dẫn và quy định trên các trang được Apple công bố công khai, Shop chỉ có thể hỗ trợ theo đúng chính sách được đăng công khai của thương hiệu Apple tại Việt Nam,', 'ImageProduct/409/409_0.png,ImageProduct/409/409_1.png,ImageProduct/409/409_2.png,ImageProduct/409/409_3.png', 15, 100, '2024-06-12 10:47:16', 5, 0, 0, 1),
        (410, 'Tai nghe EarPods (USB-C)', 'Thông Tin Sản Phẩm

Tổng Quan

Không giống như tai nghe nhét tai tròn truyền thống, EarPods được thiết kế theo hình dạng của tai. Nhờ đó tai nghe này giúp nhiều người thấy dễ chịu hơn các loại tai nghe nhét tai khác.



Loa bên trong EarPods được thiết kế để tối đa hóa đầu ra âm thanh, mang đến cho bạn âm thanh chất lượng cao.



EarPods (USB-C) cũng có điều khiển cài sẵn cho phép bạn điều chỉnh âm lượng, điều khiển việc phát nhạc và video, cũng như trả lời hoặc kết thúc cuộc gọi bằng thao tác nhấn vào điều khiển.



Điểm nổi bật

Do Apple thiết kế



Tông trầm sâu, phong phú



Chống mồ hôi và chống nước



Điều khiển phát nhạc và video



Trả lời và kết thúc cuộc gọi', 'ImageProduct/410/410_0.png,ImageProduct/410/410_1.png,ImageProduct/410/410_2.png,ImageProduct/410/410_3.png', 15, 100, '2024-06-12 14:31:14', 11, 0, 0, 1),
        (411, 'Điện thoại Apple iPhone 14 Plus 128GB - Chính hãng VN/A', 'THÔNG SỐ SẢN PHẨM

Kích thước màn hình:

+ 6.7 inches

+ 2778 x 1284 pixels

Công nghệ màn hình: OLED LPTS

Tốc độ làm mới: 60Hz

Chipset: Apple A15 Bionic

GPU: Apple GPU (5 lõi)

Bộ nhớ trong: 128 GB

Hệ điều hành: iOS

Camera sau:

+ camera chính 12 MP, f/1.5

+ Camera góc rộng 12 MP, f/2.4, 120 độ

Quay video Camera sau:

+ 4K@24fps/25fps/30fps/60fps

+ 1080p HD@24fps/25fps/30fps/60fps

+ 720p HD@30fps

Chức năng Camera sau: Zoom quang học 2x; zoom kỹ thuật số lên đến 5x, Deep Fusion Smart, HDR 4. Night mode

Camera trước: 12 MP, ƒ/1.9

Các loại cảm biến: Cảm biến gia tốc, Cảm biến tiệm cận, Cảm biến ánh sáng, Con quay hồi chuyển, Cảm biến áp kế

Tính năng đặc biệt: Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, kháng bụi

Bluetooth: Bluetooth 5.0

Wi-Fi: 802.11 a, b, g, n, ac, ax (Wi-Fi 6), dual-band; MIMO, Wi-Fi Direct, Hotspot

Cổng sạc: Lightning

Định vị: GPS, A-GPS, Glonass, Galileo, BeiDou, QZSS, Cell ID, Wi-Fi positioning

Kiểu màn hình: Notch tai thỏ

Dung lượng pin: Thời gian dùng lên đến 26 giờ

Loại pin: Li - Ion, Không thể thay thế

Chức năng sạc: Sạc nhanh có dây 20W, sạc MagSafe 15W, sạc không dây chuẩn Qi 7.5W

SIM kép: Có

Loại SIM: Nano SIM, eSIM

Chất liệu khung: Kim loại

Chất liệu mặt lưng: Kính cường lực

HD Voice: Có

VoLTE: Có', 'ImageProduct/411/411_0.png,ImageProduct/411/411_1.png,ImageProduct/411/411_2.png,ImageProduct/411/411_3.png', 15, 100, '2024-06-12 14:38:44', 36, 0, 0, 1),
        (412, 'Điện thoại Apple iPhone 11 128GB', 'iPhone 11



MÔ TẢ SẢN PHẨM

Hệ thống camera kép với Ultra Wide. Chế độ Ban Đêm và chất lượng video tuyệt vời.

Chống nước và chống bụi.

Thời lượng pin lâu.

Với 6 màu tuyệt đẹp. Trải nghiệm iPhone 11.



Tính năng nổi bật

• Màn hình Liquid Retina HD LCD 6.1 inch3

• Chống nước và chống bụi (chống nước ở độ sâu 2 mét trong vòng tối đa 30 phút, đạt mức IP68)1

• Hệ thống camera kép 12MP với camera Ultra Wide và Wide; chế độ Ban Đêm, chế độ Chân Dung, và khả năng quay video 4K tốc độ tối đa 60 fps

• Camera trước TrueDepth 12MP với chế độ Chân Dung, có khả năng quay video 4K, và quay video chậm

• Xác thực bảo mật với Face ID

• Chip A13 Bionic với Neural Engine thế hệ thứ ba

• Khả năng sạc nhanh

• Sạc không dây4

• iOS 14 với các tiện ích được thiết kế lại trên Màn Hình Chính, Thư Viện Ứng Dụng hoàn toàn mới, App Clips cùng nhiều tính năng khác.



Bộ sản phẩm bao gồm

1. Điện thoại

2. Dây sạc

3. HDSD bảo hành điện tử 12 tháng', 'ImageProduct/412/412_0.png,ImageProduct/412/412_1.png,ImageProduct/412/412_2.png,ImageProduct/412/412_3.png', 15, 100, '2024-06-12 14:44:59', 36, 0, 0, 1),
        (413, 'Apple iPhone 15 Pro 256GB Chính hãng VN/A', 'Thương hiệu: Apple
Dung lượng lưu trữ: 256GB
Loại bảo hành: Bảo hành nhà sản xuất
Hạn bảo hành: 12 tháng
Số camera chính: 1
Tính năng điện thoại: GPS, NFC, Màn hình cảm ứng, chống nước, Wifi
Loại điện thoại: Điện thoại thông minh
Model điện thoại: Apple iPhone 15 Pro 256GB
Loại cáp điện thoại: USB-C
Bộ xử lý: Apple A17 Pro 6 nhân
Độ phân giải camera chính: 48MP
Hỗ trợ hệ điều hành: iOS 17
Điện thoại di động: 5G', 'ImageProduct/413/413_0.png,ImageProduct/413/413_1.png,ImageProduct/413/413_2.png,ImageProduct/413/413_3.png', 15, 100, '2024-06-12 14:54:12', 14, 0, 0, 1),
        (414, 'Apple iPhone 15 Plus 128GB', 'Bảo hành 12 tháng

Sản phẩm gồm: máy + cáp sạc

iPhone 15 Plus chính thức ra mắt tại sự kiện “Wonderlust” tổ chức vào 0h ngày 13/9 với loạt thay đổi từ thiết kế cho đến cấu hình, hiệu năng. Màn “lột xác" lần này là minh chứng cho việc “chơi lớn" của Apple khi đưa dòng sản phẩm Plus “sánh ngang" với các phiên bản cao cấp Pro.

Cùng kích thước nhưng iPhone 15 Plus mỏng và nhẹ hơn 15 Pro Max

Dù cùng có kích thước màn hình là 6,7 inch nhưng iPhone 15 Plus to hơn đôi chút so với iPhone 15 Pro Max, chênh lệch chỉ nằm ở milimet, đồng thời iPhone 15 Plus cũng mỏng và nhẹ hơn, với 7,8mm độ dày và 201 gram trọng lượng, iPhone 15 Pro Max dày 8,3mm và nặng 221 gram.

Năm nay iPhone 15 Plus cũng đã có Dynamic Island tương tự như iPhone 15 Pro, nhưng điểm khác biệt về thiết kế cụm camera thì không thay đổi, iPhone 15 Plus chỉ sở hữu hệ thống 2 camera. Nếu nhìn từ mặt trước sẽ khó phân biệt được hai phiên bản này, nhưng nếu nhìn từ mặt lưng chắc chắn sẽ thấy sự khác biệt.', 'ImageProduct/414/414_0.png,ImageProduct/414/414_1.png,ImageProduct/414/414_2.png,ImageProduct/414/414_3.png', 15, 100, '2024-06-12 15:00:57', 24, 0, 0, 1),
        (415, 'Apple AirTag (Phụ kiện định vị) - Chính hãng VN/A', 'AirTag là món phụ kiện được mong chờ nhất của các tín đồ Apple vào tháng 4/2021. Thiết bị này cho phép người dùng tìm kiếm và định vị nhanh chóng đồ vật của mình thông qua phần mềm Find My trên các thiết bị điện tử như iPhone, iPad, Macbook và Apple Watch.
Thiết kế nhỏ gọn, tinh xảo
AirTag có kích thước chỉ to hơn nắp chai nước ngọt một chút, được làm bằng chất liệu thép không gỉ sáng bóng và có khả năng chống nước - bụi theo chuẩn IP67.
Một mặt AirTag thể hiện logo Apple, còn một mặt có thể được tùy chỉnh theo sở thích của người dùng bằng ký tự hoặc 31 biểu tượng cảm xúc khi bạn mua hàng từ Apple Store.

Hai mặt của AirTag: một mặt chứa logo Apple và một mặt chứa biểu tượng cảm xúc hoặc ký tự

Vì sở hữu kích thước nhỏ gọn, bạn có thể đặt AirTag trong balo, túi xách và ví, thậm chí có thể sử dụng thêm phụ kiện cho cả AirTag mà hãng Apple thiết kế như Leather Key Ring, Polyurethane Loop hay Leather Loop.

Trang bị con chip Apple U1, tương thích nhiều thiết bị Apple
AirTag sử dụng con chip Apple U1 nên kết nối nhanh chóng với nhiều thiết bị khác cũng sử dụng con chip này như iPhone 11 và iPhone 12. Bên cạnh đó, tính năng thiết lập của AirTag gần giống với AirPods, chỉ cần đưa AirTag đến gần thiết bị điện tử như iPhone thì chúng sẽ tự động nhận diện và kết nối với nhau.

Định vị chính xác nhờ sử dụng băng thông rộng
Nhờ sử dụng băng thông siêu rộng Ultra-Wideband (UWB), AirTag hỗ trợ định vị chính xác món đồ của bạn với chỉ số sai rất thấp. Cụ thể, bạn có thể theo dõi trên màn hình thiết bị của mình thông qua phần mềm Find My, để di chuyển đến vị trí chính xác của AirTag.

Không những thế, AirTag còn được trang bị thêm loa phát ra âm thanh, giúp bạn xác định nhanh chóng vị trí món đồ cần tìm.

Thời lượng pin đến 1 năm nhờ công nghệ Bluetooth LE
AirTag sử dụng một viên pin CR2032, có thời lượng dùng đến tận 1 năm nhờ tích hợp công nghệ Bluetooth Low-Energy (Bluetooth LE) tiết kiệm điện. Hơn nữa, bạn có thể tháo và thay thế pin dễ dàng mà không gặp phải khó khăn gì.

Đảm bảo tính bảo mật và quyền riêng tư
Tuy là một phụ kiện định vị nhưng theo lời chia sẻ của Apple thì AirTag sẽ không lưu lại vị trí và lịch sử vị trí trong chính AirTag nhờ sử dụng thuật toán mã hóa đầu cuối để truyền dữ liệu. Nghĩa là chỉ có chủ sở hữu thiết bị mới có quyền truy cập vào dữ liệu vị trí của AirTag trên ứng dụng Find My.

Có thể nói, AirTag là một phụ kiện giúp người dùng định vị nhanh chóng các món đồ thường hay bị vứt lung tung như ví tiền hoặc xác định vị trí chính xác của đồ dùng mà không cần phải tốn nhiều thời gian để tìm kiếm như balo và túi xách. Đây chắc chắn là chiếc phụ kiện mà bạn không nên bỏ qua nếu như bạn đang sử dụng các sản phẩm của hãng Apple.', 'ImageProduct/415/415_0.png,ImageProduct/415/415_1.png,ImageProduct/415/415_2.png,ImageProduct/415/415_3.png', 15, 100, '2024-06-12 15:09:52', 2, 0, 0, 1),
        (416, 'Điện thoại Apple iPhone 12 Chính hãng VN/A', 'iPhone 12 giống với bộ sưu tập iPhone 12 Series, đều được trang bị chip A14 Bionic, màn hình Super Retina XDR 6,1 inch, hỗ trợ 5G. Đây cũng là sản phẩm được Apple chú trọng khi có nhiều đặc điểm giống với dòng Pro nhưng giá dễ chịu hơn, trong khi kích cỡ được đánh giá là phù hợp với số đông người dùng.

Về màn hình, iPhone 12 mỏng hơn đáng kể so với iPhone 11. Dễ hiểu bởi Apple đã chuyển sang sử dụng tấm nền OLED cho màu đen sâu hơn, tiết kiệm năng lượng hơn LCD. Độ phân giải màn hình được tăng lên 2.532 x 1.170 pixel, hỗ trợ True Tone và HDR.



Về màn hình, iPhone 12 mỏng hơn đáng kể so với iPhone 11. Dễ hiểu bởi Apple đã chuyển sang sử dụng tấm nền OLED cho màu đen sâu hơn, tiết kiệm năng lượng hơn LCD. Độ phân giải màn hình được tăng lên 2.532 x 1.170 pixel, hỗ trợ True Tone và HDR.



iPhone 12 được trang bị chip xử lý A14 Bionic, mạng 5G. Ở những quốc gia chưa có 5G, bạn hoàn toàn có thể dễ dàng chuyển sang dùng LTE. iPhone 12 đã đánh dấu một khởi đầu mới, khai sinh ra thế hệ sản phẩm mỏng, vuông vắn và được đánh giá cao.

Magsafe là một công nghệ sạc từ tính của riêng Apple, đã từng rất được yêu thích trên MacBook nhưng bị Apple loại bỏ vào năm 2016. iPhone 12 mang MagSafe trở lại theo cách rất khác. Được biết, MagSafe là cách duy nhất để bạn có thể sạc không dây iPhone 12 ở tốc độ 15W.



iPhone 12 trang bị cụm 3 camera sau 12MP góc siêu rộng

Thông số camera trên iPhone 12 cũng vô cùng ấn tượng. Cụm 3 camera sau 12MP (góc siêu rộng f/2.4, góc rộng f/1.6 và ống kính tele f/2.0), đèn flash, zoom quang học 4x, OIS, chế độ chân dung, chế độ ban đêm, Smart HDR 3, Apple ProRAW, quay video 4K ở tốc độ 24/30/6fps. Camera trước 12MP (f/2.2), Retina Flash và chế độ chân dung, Smart HDR 3.



iPhone 12 đã áp dụng chế độ chụp đêm (night mode) cho tất cả camera bao gồm cả camera trước và sau. Thuật toán ghép nhiều ảnh thành một cũng đã được Apple nâng cấp lên thế hệ 3, trong khi phần cài đặt camera có thêm tùy chọn gọi là nhận diện khung cảnh. Với thông số này, bạn hoàn toàn có thể sử dụng để quay video 4K, chụp ảnh góc rộng ở chế độ chụp đêm, quay vlog…', 'ImageProduct/416/416_0.png,ImageProduct/416/416_1.png,ImageProduct/416/416_2.png,ImageProduct/416/416_3.png', 15, 100, '2024-06-12 15:29:31', 31, 0, 0, 1),
        (417, 'Máy tính bảng Apple iPad Gen 10th 10.9-inch Wi-Fi 256GB', 'Cấu hình Máy tính bảng iPad Gen 10th Wi-Fi 256GB



Màn hình: 10.9"Retina IPS LCD

Hệ điều hành: iPadOS 16

Chip: Apple A14 Bionic

RAM: 4 GB

Dung lượng lưu trữ: 256 GB

Kết nối: Nghe gọi qua FaceTime

Camera sau: 12 MP

Camera trước:12 MP

Pin, Sạc: 28.6 Wh (~ 7587 mAh)



Bộ sản phẩm bao gồm:

• iPad

• Cáp sạc USB-C (1 mét)

• 20W USB Power Adaper

', 'ImageProduct/417/417_0.png,ImageProduct/417/417_1.png,ImageProduct/417/417_2.png,ImageProduct/417/417_3.png', 15, 100, '2024-06-12 15:38:22', 14, 0, 0, 1),
        (418, 'Apple iPad Air 5 10.9-inch Wi‑Fi 64GB- Hàng Chính Hãng', 'Nội dung tính năng

iPad Air. Với màn hình Liquid Retina 10.9 inch sống động.1 Chip Apple M1 đột phá cho hiệu năng nhanh hơn, giúp iPad trở nên siêu mạnh mẽ để sáng tạo và chơi game di động. Sở hữu Touch ID, camera tiên tiến, 5G2 và Wi-Fi 6 nhanh như chớp, cổng USB-C, cùng khả năng hỗ trợ Magic Keyboard và Apple Pencil (thế hệ thứ 2).3

Tính năng nổi bật

• Màn hình Liquid Retina 10.9 inch1 với True Tone, dải màu rộng P3 và lớp phủ chống phản chiếu.

• Chip Apple M1 với Neural Engine.

• Camera Wide 12MP.

• Camera trước Ultra Wide 12MP với tính năng Trung Tâm Màn Hình.

• Ổ lưu trữ lên đến 256GB.

• Hiện có màu Xanh Dương, Tím, Hồng, Ánh Sao và Xám Bạc.

• Loa stereo ở cạnh trên và cạnh dưới.

• Xác thực bảo mật với Touch ID.

• Pin dùng cả ngày4.

• Wi-Fi 6 và mạng 5G2.

• Cổng kết nối USB-C để sạc và kết nối phụ kiện.

• Tương thích với Magic Keyboard, Smart Keyboard Folio và Apple Pencil (thế hệ thứ 2)3.

• iPadOS 15 sở hữu sức mạnh độc đáo, dễ sử dụng và được thiết kế cho tính đa năng của iPad.

Pháp lý

Ứng dụng có sẵn trên App Store. Nội dung được cung cấp có thể thay đổi.

1Màn hình có các góc bo tròn. Khi tính theo đường chéo hình chữ nhật, kích thước màn hình iPad Air là 10.86 inch. Diện tích hiển thị thực tế nhỏ hơn.

2Cần có gói cước dữ liệu. Mạng 5G chỉ khả dụng ở một số thị trường và được cung cấp qua một số nhà mạng. Tốc độ có thể thay đổi tùy địa điểm và nhà mạng. Để biết thông tin về hỗ trợ mạng 5G, vui lòng liên hệ nhà mạng và truy cập apple.com/ipad/cellular.

3Phụ kiện iPad được bán riêng. Khả năng tương thích tùy thuộc thế hệ sản phẩm.

4Thời lượng pin khác nhau tùy theo cách sử dụng và cấu hình. Truy cập apple.com/batteries để biết thêm thông tin.', 'ImageProduct/418/418_0.png,ImageProduct/418/418_1.png,ImageProduct/418/418_2.png,ImageProduct/418/418_3.png', 15, 100, '2024-06-12 15:43:40', 1, 0, 0, 1),
        (419, 'Apple iPad mini 6 (2021), WiFi', 'iPad mini 6 (2021) iPad mini mới.
Thiết kế màn hình toàn phần với màn hình Liquid Retina 8.3 inch. Chip A15 Bionic mạnh mẽ với Neural Engine. Camera trước Ultra Wide 12MP với tính năng Trung Tâm Màn Hình. Cổng kết nối USB-C. Mạng 5G siêu nhanh. Ghi chú, đánh dấu tài liệu hoặc phác thảo ngay khi những ý tưởng lớn xuất hiện trong đầu với Apple Pencil (thế hệ thứ 2) có khả năng gắn kết bằng nam châm và sạc không dây.

Màn hình Liquid Retina 8.3 inch tuyệt đẹp với True Tone và dải màu rộng
Chip A15 Bionic với Neural Engine
Xác thực bảo mật với Touch ID
Camera sau Wide 12MP, camera trước Ultra Wide 12MP với tính năng Trung Tâm Màn Hình
Hiện có các màu tím, ánh sao, hồng và xám bạc
Loa stereo ở cạnh trên và cạnh dưới
Mạng 5G cho tốc độ tải xuống, xem video và nghe nhạc trực tuyến nhanh như chớp
Luôn kết nối với Wi-Fi 6 siêu nhanh
Thời lượng pin lên tới 10 giờ
Cổng kết nối USB-C để sạc và kết nối phụ kiện
Tương thích với Apple Pencil (thế hệ thứ 2)
iPadOS 15 sở hữu sức mạnh độc đáo, dễ sử dụng và được thiết kế cho tính đa năng của iPad

Bộ Sản phẩm gồm:
1. iPad
2. Bộ sạc', 'ImageProduct/419/419_0.png,ImageProduct/419/419_1.png,ImageProduct/419/419_2.png,ImageProduct/419/419_3.png', 15, 100, '2024-06-12 15:52:52', 19, 0, 0, 1),
        (420, 'Đồng Hồ Nam Hugi HBT, Đính Đá 3 vòng Cao Cấp, Phong Cách Sang Trọng , Đồng hồ hubot', '👉 Đồng Hồ Nam hugi HBT, Đính Đá Cao Cấp, Phong Cách Sang Trọng
🔰 CAM KẾT ĐỒNG HỒ HÀNG CAO CẤP 🔰
🔥 Cam Kết Sản Phẩm Chuẩn Hình
🔥 Khách Hàng Được Kiểm Tra Trước Thanh Toán Sau
🔥 Hotline: 0393583320   (TƯ VẤN - HỖ TRỢ - BẢO HÀNH)

Thông tin sản phẩm :
 ✔️ Kích Thước Mặt : 42 mm
 ✔️ Kích Thước Dây: 20cm
 ✔️ Thời Gian Bảo Hành: 12 Tháng
 ✔️ Chống Nước : chống nước sinh hoạt, đi mưa nhẹ
(Hạn chế tiếp xúc nước để sản phẩm bền đẹp hơn)', 'ImageProduct/420/420_0.png,ImageProduct/420/420_1.png,ImageProduct/420/420_2.png,ImageProduct/420/420_3.png', 2, 101, '2024-06-12 17:19:14', 45, 1, 0, 1),
        (421, 'Đồng hồ điện tử casio unisex WR 94WA 9DG chống nước bơi lội đi mưa thoải mái, dây nhựa huyền thoại.', 'Thông số kỹ thuật và các tính năng nổi bật:

Cũng là một trong các dòng F huyền thoại của casio, niềm tự hào Rich Kid thế hệ 7X, 8X
Chống Nước 3ATM ( Tắm rửa, đi mưa thoải mái)
EL Backlight
Báo hàng ngày
1/100 giây đồng hồ bấm giờ kỹ thuật số
công suất đo: 23''59.99 "
Chế độ đo: thời gian Net, phân chia thời gian, 1st-2 lần nơi
Hourly Time Signal
Auto Calendar
Độ chính xác: +/- 30 giây mỗi tháng
Pin CR2016
Approx. Tuổi thọ pin: 7 năm
Kích thước / tổng trọng lượng
37,5 x 33,5 x 9,5 mm / 27g

*CHÍNH SÁCH BẢO HÀNH:
- Bảo hành 01 năm tất cả các lỗi về máy
- Bảo hành pin trọn đời', 'ImageProduct/421/421_0.png,ImageProduct/421/421_1.png,ImageProduct/421/421_2.png,ImageProduct/421/421_3.png,ImageProduct/421/421_4.png', 2, 101, '2024-06-12 17:35:21', 31, 0, 0, 1),
        (422, 'Đồng hồ Casio unisex A168 Full Box cổ điển, chống nước, dây thép không gỉ, lịch sự, thời trang', 'Đồng hồ nam Casio A168 cổ điển, chống nước, dây thép không gỉ, lịch sự, trang trọng

💛Dây đeo bằng thép không gỉ
💛Mặt kính khoáng
💛Chống nước
💛Đèn cực tím phát quang điện tử
💛Tuổi thọ pin xấp xỉ: 2 năm với pin CR2016
💛 case 39mm

🌻Các tính năng
Mặt gương bóng loáng
Chống nước
Báo thức
Đồng hồ bấm giờ 1/100 giây
Đèn cực tím phát quang điện tử

🌻Đặc điểm kỹ thuật
Vật liệu vỏ / gờ: Nhựa / Mạ crôm
Chốt có thể điều chỉnh
Dây đeo bằng thép không gỉ
Mặt kính khoáng
Chống nước
Đèn cực tím phát quang điện tử
Đồng hồ bấm giờ 1/100 giây
Khả năng đo: 59’59,99″
Chế độ đo: Thời gian đã trôi qua, ngắt giờ, thời gian về đích thứ nhất – thứ hai
Báo giờ hàng ngày
Tín hiệu thời gian hàng giờ
Lịch tự động (28 ngày cho Tháng 2)
Định dạng giờ 12/24
Giờ hiện hành thông thường:
Đồng hồ số: Giờ, phút, giây, sáng/chiều, tháng, ngày, thứ
Độ chính xác: ±30 giây một tháng
Tuổi thọ pin xấp xỉ: 2 năm với pin CR2016
Kích thước vỏ / Tổng trọng lượng
Kích thước vỏ : 38×36×9mm
Tổng trọng lượng : 49g
Khả năng chống nước : 5 atm
Bảo hành: 12 tháng , lỗi đổi mới trong 30 ngày không cần trả hàng', 'ImageProduct/422/422_0.png,ImageProduct/422/422_1.png,ImageProduct/422/422_2.png,ImageProduct/422/422_3.png', 2, 101, '2024-06-12 17:39:55', 20, 0, 0, 1),
        (423, 'Đồng hồ nam Franck muller thể thao đính đá cao cấp tặng hộp và vòng tay', 'MTP STORE BIỂU TƯỢNG CHẤT LƯỢNG!
+ CAM KẾT HÌNH ẢNH, MÔ TẢ TÍNH NĂNG CHUẨN
+ BẢO HÀNH 1 ĐỔI 1 NẾU SAI HÀNG HOẶC LỖI
ZALO hỗ trợ: 0393583320
Cở sở 1: Lô CC04 đường Lý Thái Tổ, TP Bắc Ninh.
Cơ sở 2: Số 14 Trần Phú, Phường Đông Ngàn, TX Từ Sơn, Bắc Ninh.
Cở sở 3: 102 Đường Lý Thường Kiệt, TT Lim, Tiên Du, Bắc Ninh.
Đồng hồ nam Franck muller đính đá cao cấp tặng hộp và vòng tay DH402
✅: CAM KẾT CỦA SHOP
- Cam kết ảnh shop tự chụp 100% ( Xem thêm video)
- Đồng hồ nam Casi được tặng hộp đi kèm (có thể mua thêm hộp cao cấp ở deal sốc)
- Hỗ trợ kiểm tra hàng trước (inbox shop)
- 📞: Hotline:
✅: QUYỀN LỢI CỦA kHÁCH HÀNG khi mua Đồng hồ nam casi
- Bảo hành 1 Đổi 1 trong vòng 30 ngày do lỗi nhà sản xuất
- Bảo hành sửa chữa 12 tháng ( có thẻ bảo hành )
✅: THÔNG TIN SẢN PHẨM
• Kiểu máy : Máy pin (Nhập khẩu nhật)
• Kích thước vỏ : 51,9×48,8×16,9mm
• Tổng trọng lượng : 93g
• Kích thước đây : 220 x 16mm
• Vật liệu vỏ / vành bezel: Nhựa / Thép không gỉ
• Mặt kính :  Kính Mineral chống xước
• Chống nước : 3ATM / 30M
• Giờ thế giới
 31 múi giờ (48 thành phố + giờ phối hợp quốc tế), bật/tắt tiết kiệm ánh sáng ban ngày, chuyển đổi Giờ địa phương/Giờ thế giới
• Giờ hiện hành thông thường
Đồng hồ kim: 2 kim (giờ, phút (kim di chuyển 20 giây một lần)), 1 mặt số (chỉ báo đồng hồ bấm giờ)
Đồng hồ số: Giờ, phút, giây, chiều, tháng, ngày, thứ
✅: BỘ SẢN PHẨM GỬI KHÁCH HÀNG
+ 01 đồng hồ
+ 01 hộp bảo quản đỏ  (mua trong deal sốc 0 đồng)
(Có thể mua thêm hộp xịn - cao cấp ở phần deal hoặc ib shop)
 ✅: THỜI GIAN GIAO NHẬN Đồng hồ nam casi
- Khu vực Hà Nội : 01-02 Ngày làm việc
- Khu vực còn lại : 02-05 Ngày làm việc
- ❗ Lưu Ý : Thời gian giao có thể kéo dài hơn vào các ngày cuối tuần, lễ, tết và Flash sale của shop', 'ImageProduct/423/423_0.png,ImageProduct/423/423_1.png,ImageProduct/423/423_2.png,ImageProduct/423/423_3.png,ImageProduct/423/423_4.png', 2, 101, '2024-06-12 17:48:52', 45, 0, 0, 1),
        (424, 'Đồng hồ nữ burberry dây kim loại không gỉ, hàng full box, thẻ bảo hành 12 tháng', 'MTP STORE BIỂU TƯỢNG CHẤT LƯỢNG!
+ CAM KẾT HÌNH ẢNH, MÔ TẢ TÍNH NĂNG CHUẨN
+ BẢO HÀNH 1 ĐỔI 1 NẾU SAI HÀNG HOẶC LỖI
ZALO hỗ trợ: 0393583320
Cở sở 1: Lô CC04 đường Lý Thái Tổ, TP Bắc Ninh.
Cơ sở 2: Số 14 Trần Phú, Phường Đông Ngàn, TX Từ Sơn, Bắc Ninh.
Cở sở 3: 102 Đường Lý Thường Kiệt, TT Lim, Tiên Du, Bắc Ninh.
Thông tin bảo hành Đồng hồ nữ burberry
* 1 Đổi 1 trong 30 ngày đầu nếu có lỗi (ĐỔI CHIẾC MỚI - KHÔNG CẦN ĐỢI SỬA)
* Bảo hành sửa chữa 12 tháng với sản phẩm của shop
* Cam kết sản phẩm chuẩn hình, có video
( Khách hàng muốn kiểm tra trước inboxx shop để được hỗ trợ )
THÔNG SỐ SẢN PHẨM : Đồng hồ nữ burberry
• Kiểu máy : Pin nhật
• Kích thước mặt : 28mm
• Kích thước đây : 220 x 16mm
• Chất liệu dây: Dây cao su thơm
• Chất liệu khung : Thép không gỉ.
• Kính : Kính Mineral chống xước
• Chống nước : Chỉ số chống nước 3ATM / 30M
• Bảo hành máy 12 tháng / Bảo hành đá trọn đời
BỘ SẢN PHẨM Đồng hồ nữ burberry bao gồm
- 1 Đồng hồ
- 1 Hộp đồng hồ đi kèm
- 1 Thẻ bảo hành', 'ImageProduct/424/424_0.png,ImageProduct/424/424_1.png,ImageProduct/424/424_2.png,ImageProduct/424/424_3.png', 2, 101, '2024-06-12 17:53:32', 45, 0, 0, 1),
        (425, 'Đồng Hồ Dây Da Cặp Đôi Nam Nữ Trẻ Trung Năng Động Size Mặt 30-40mm - Máy Quartz - Bảo Hành 6 Tháng', '📌 THÔNG SỐ KỸ THUẬT
✔ Thương hiệu: DW
✔ Kích thước mặt: Nam 40 mm - nữ 30 mm
✔ Kích thước dây: Chiều dài: Nam 24 cm - nữ 21 cm ./. Chiều rộng: Nam 2 cm - nữ 1.6 cm
✔ Chống nước: 3 ATM (đi mưa nhẹ, không rửa tay giặt đồ)
✔ Thời gian Bảo hành: Bảo hành đồng hồ 6 tháng

📌 GỢI Ý SỬ DỤNG VÀ BẢO DƯỠNG

❌ Nên tránh:
- Va chạm và tiếp xúc với chất ăn mòn, nhiệt độ cao hoặc từ trường mạnh.
- Sử dụng bất kì dung môi, chất làm sạch, chất tẩy công nghiệp, chất dính, sơn hoặc các chất xịt mỹ phẩm.
- Đeo đồng hồ cùng các vòng đeo tay vì dễ tạo vết xước hay làm hỏng mặt đồng hồ.
- Chỉnh nút chỉnh giờ khi đồng hồ bị ướt.
- Để đồng hồ nơi nhiệt độ thay đổi đột ngột.
- Sử dụng, nhấn các nút hoặc cài đặt ở dưới nước.

☑ Nên làm:
- Làm sạch đồng hồ theo định kỳ vải mềm hơi ẩm để gia tăng tuổi thọ đồng hồ.
- Nếu xuất hiện hơi nước ngưng tụ, cần mang đồng hồ đến Trung Tâm Dịch Vụ Khách Hàng của các hãng càng nhanh càng tốt để giảm thiểu hư hỏng bên trong.
- Thay pin khi đồng hồ chạy sai giờ hoặc chuyển động kim giây không đều vì rò rỉ điện do pin chết có thể gây ra hỏng hóc nghiêm trọng cho đồng hồ.
- Tắt nguồn khi không được sử dụng trong thời gian dài, để kích hoạt công tắc bảo quản nguồn đặc biệt và tránh hao pin.', 'ImageProduct/425/425_0.png,ImageProduct/425/425_1.png,ImageProduct/425/425_2.png,ImageProduct/425/425_3.png', 2, 101, '2024-06-12 18:02:50', 37, 0, 0, 1),
        (426, 'Đồng hồ Nam Rolex dây da mềm, phong cách classic, hàng full box thẻ bảo hành 12 tháng', ' 𝑹.𝑶.𝑳.𝑬.𝑿 𝑫𝑨𝑻𝑬𝑱𝑼𝑺𝑻 - 𝑩𝒊𝒆̂̉𝒖 𝑻𝒖̛𝒐̛̣𝒏𝒈 𝑪𝒖̉𝒂 𝑷𝒉𝒐𝒏𝒈 𝑪𝒂́𝒄𝒉
* Đồng hồ Ro.lex Nữ
- Kích thước mặt: Nam 40 mm // Nữ 24 mm
- Kích thước dây: Nam: Dài 24 cm / rộng 2cm // Nữ: Dài 20 cm / rộng 1.6 cm
- Chống nước: 3ATM (Rửa tay, mưa nhẹ được, hạn chế bơi lội)
- Bộ sản phẩm tới tay khách hàng bao gồm
+ 01 đồng hồ rolex
+ 01 hộp đồng hồ rolex
+ 01 thẻ bảo hành

-𝑹.𝑶.𝑳.𝑬.𝑿 𝑫𝑨𝑻𝑬𝑱𝑼𝑺𝑻 - 𝑩𝒊𝒆̂̉𝒖 𝑻𝒖̛𝒐̛̣𝒏𝒈 𝑪𝒖̉𝒂 𝑷𝒉𝒐𝒏𝒈 𝑪𝒂́𝒄𝒉
- Size: nữ 30mm
- Chống nước 3ATM/30m
- Mặt kính Mineral chống xước, chống va đập
- Mọi sản phẩm đều được bảo hành 12 tháng', 'ImageProduct/426/426_0.png,ImageProduct/426/426_1.png,ImageProduct/426/426_2.png,ImageProduct/426/426_3.png', 2, 101, '2024-06-12 18:21:29', 10, 1, 0, 1),
        (427, 'Đồng hồ nam vỏ thép B5000 bạc, mạnh mẽ cá tính.', '- 𝑹.𝑶.𝑳.𝑬.𝑿 𝑫𝑨𝑻𝑬𝑱𝑼𝑺𝑻 - 𝑩𝒊𝒆̂̉𝒖 𝑻𝒖̛𝒐̛̣𝒏𝒈 𝑪𝒖̉𝒂 𝑷𝒉𝒐𝒏𝒈 𝑪𝒂́𝒄𝒉
* Đồng hồ Ro.lex Nữ
- Kích thước mặt: Nam 40 mm // Nữ 24 mm
- Kích thước dây: Nam: Dài 24 cm / rộng 2cm // Nữ: Dài 20 cm / rộng 1.6 cm
- Chống nước: 3ATM (Rửa tay, mưa nhẹ được, hạn chế bơi lội)
- Bộ sản phẩm tới tay khách hàng bao gồm
+ 01 đồng hồ rolex
+ 01 hộp đồng hồ rolex
+ 01 thẻ bảo hành

-𝑹.𝑶.𝑳.𝑬.𝑿 𝑫𝑨𝑻𝑬𝑱𝑼𝑺𝑻 - 𝑩𝒊𝒆̂̉𝒖 𝑻𝒖̛𝒐̛̣𝒏𝒈 𝑪𝒖̉𝒂 𝑷𝒉𝒐𝒏𝒈 𝑪𝒂́𝒄𝒉
- Size: nữ 30mm
- Chống nước 3ATM/30m
- Mặt kính Mineral chống xước, chống va đập
- Mọi sản phẩm đều được bảo hành 12 tháng
- Khách hàng nhận hàng xem hàng rồi trả tiền! 𝘾𝙖𝙢 𝙠𝙚̂́𝙩 hàng đẹp hơn trong ảnh ', 'ImageProduct/427/427_0.png,ImageProduct/427/427_1.png,ImageProduct/427/427_2.png,ImageProduct/427/427_3.png', 2, 101, '2024-06-12 18:25:17', 10, 0, 0, 1),
        (428, 'Đồng hồ nữ burberry, dây da mềm, màu kem, mặt hồng, đồng hồ thời trang cao cấp, giá rẻ..', '*Thông tin sản phẩm:
✔ Thương hiệu: Burberry
✔ Kích thước mặt: 28mm
✔ Kích thước dây: 22cm
✔ Chống nước: 3ATM (Kháng nước sinh hoạt, nên hạn chế nước để sản phẩm bền đẹp hơn, shop không bảo hành lỗi vô nước)
✔ Bảo hành: Bảo hành đồng hồ 6 tháng
✔ Kiểu máy: Quartz
✔ Dành cho: Nữ
✔ Chất liệu vỏ: Thép không gỉ
✔ Chất liệu mặt trước: Kính cứng
✔ Chất liệu dây: Dây da cao cấp
✔ Độ dày mặt: 7mm
✔ Số kim: 3
✔ Năng lượng sử dụng: Pin', 'ImageProduct/428/428_0.png,ImageProduct/428/428_1.png,ImageProduct/428/428_2.png,ImageProduct/428/428_3.png', 2, 101, '2024-06-12 18:51:43', 10, 0, 0, 1),
        (429, 'Đồng Hồ NAM ROLEX R075b TRẮNG Chống Xước, dây da cao cấp.', 'THÔNG TIN SẢN PHẨM ĐH NAM ROLEX
- Tình trạng: Mới
- Kích thước mặt đồng hồ ROLEX: 38mm (nam)
- Kích thước dây đồng hồ ROLEX: 20mm (nam)
- Chống nước ĐH ROLEX: 3ATM (đi mưa rửa tay thoái mái)
- Loại: Dùng kim quay hiển thị, lịch ngày tiện lợi.
- Chất liệu mặt ĐH ROLEX: Kính tráng Sapphire chống xước sinh hoạt
- Chất liệu vỏ: Thép không gỉ cao cấp.
- Năng lượng sử dụng: Pin sử dụng trên 3 năm.
- BẢO HÀNH: 12 tháng kèm thẻ bảo hành. ◈
BỘ SẢN PHẨM GỒM: ✔ Đồng hồ cao cấp ✔ Hộp đựng sang trọng ✔ Thẻ bảo hành của shop
CAM KẾT đồng hồ chất lượng, giống hình ảnh, nói KHÔNG với ảnh mạng, photoshop.
- Đổi trả hàng và hoàn tiền trong vòng 7 ngày miễn phí.
- Đồng hồ bị lỗi, hỏng vui lòng liên hệ shop để được bảo hành và đổi trả sớm nhất.', 'ImageProduct/429/429_0.png,ImageProduct/429/429_1.png,ImageProduct/429/429_2.png,ImageProduct/429/429_3.png', 2, 101, '2024-06-12 19:03:51', 17, 0, 0, 1),
        (430, 'Đồng hồ Rolex nam - viền đá daimond cao cấp, dây kim loại đúc nguyên khối không bay màu, thời trang sang trọng, quý phái', 'THÔNG TIN SẢN PHẨM
• Kiểu máy : Máy pin (Nhập khẩu nhật)
• Kích thước mặt : Tròn 38mm
• Kích thước đây : 220 x 16mm
• Chất liệu dây: Dây kim loại
• Chất liệu khung : Thép không gỉ.
• Mặt kính :  Kính Mineral chống xước
• Chống nước : 3ATM / 30M
(khuyến cáo các bạn tránh nước để đồng hồ được bền đẹp hơn, chốt chỉnh giờ phải được đóng chặt vì đóng ko chặt hoặc quên đóng chốt sẽ bị vào nước)', 'ImageProduct/430/430_0.png,ImageProduct/430/430_1.png,ImageProduct/430/430_2.png,ImageProduct/430/430_3.png', 2, 101, '2024-06-12 20:19:00', 48, 0, 0, 1),
        (431, 'Đồng hồ nam Rolex máy cơ automatic dây da sang trọng chống xước bảo hành 12 tháng', 'THÔNG TIN SẢN PHẨM
• Kiểu máy : Máy cơ
• Kích thước mặt : 42mm
• Kích thước đây : 200 x 16mm
• Chất liệu dây: Dây da cao cấp
• Chất liệu khung : Thép không gỉ.
• Mặt kính :  Kính Mineral chống xước
• Chống nước : Kháng nước sinh hoạt, bình thường nên hạn chế nước sẽ bền hơn.
• Chất liệu vỏ: Thép không gỉ
• Viền mặt (mạ vàng hồng)
• Đá mặt số: Kim cương
(khuyến cáo các bạn tránh nước để đồng hồ được bền đẹp hơn, chốt chỉnh giờ phải được đóng chặt vì đóng ko chặt hoặc quên đóng chốt sẽ bị vào nước)', 'ImageProduct/431/431_0.png,ImageProduct/431/431_1.png,ImageProduct/431/431_2.png,ImageProduct/431/431_3.png,ImageProduct/431/431_4.png', 2, 101, '2024-06-12 20:22:39', 45, 0, 0, 1),
        (432, 'Đồng hồ nữ Rolex viền đá, mặt số la mã đính đá, hàng full box, thẻ bảo hành 12 tháng', '- 𝑹.𝑶.𝑳.𝑬.𝑿 𝑫𝑨𝑻𝑬𝑱𝑼𝑺𝑻 - 𝑩𝒊𝒆̂̉𝒖 𝑻𝒖̛𝒐̛̣𝒏𝒈 𝑪𝒖̉𝒂 𝑷𝒉𝒐𝒏𝒈 𝑪𝒂́𝒄𝒉
* Đồng hồ R.olex Nữ
- Kích thước mặt: 24mm
- Kích thước dây: Dài 21 cm / rộng 1.4cm
- Chống nước: 3ATM (Rửa tay, mưa nhẹ được, hạn chế bơi lội)
- Bộ sản phẩm tới tay khách hàng bao gồm
+ 01 đồng hồ rolex
+ 01 hộp đồng hồ rolex
+ 01 thẻ bảo hành', 'ImageProduct/432/432_0.png,ImageProduct/432/432_1.png,ImageProduct/432/432_2.png,ImageProduct/432/432_3.png', 2, 101, '2024-06-12 20:27:08', 10, 0, 0, 1),
        (433, 'Đồng hồ thời trang thể thao nam nữ GT GRAND TOURING', 'THÔNG TIN CHUNG:
TÊN SẢN PHẨM: Đồng hồ thời trang thể thao nam nữ GT GRAND TOURING
THÀNH PHẦN:
- Dây đeo: Cao su
- Mặt kính : Mặt kính Mineral crytal chống trầy và va đập tốt
- Khung: Hợp kim công nghệ mạ
- Bộ máy: Time Module quartz movement

THÔNG SỐ KỸ THUẬT:
- Kích thước mặt: 40mm
- Chiều dài dây: 22 cm
- Dày: 8mm
- Chiều rộng dây:18mm
- Chức năng: Xem giờ
- Chống nước: 3ATM ( chống nước sinh hoạt )
- Màu sắc: Trắng, xanh, đỏ
- Xuất xứ: Trung Quốc', 'ImageProduct/433/433_0.png,ImageProduct/433/433_1.png,ImageProduct/433/433_2.png,ImageProduct/433/433_3.png', 2, 101, '2024-06-12 20:32:02', 5, 0, 0, 1),
        (434, 'Đồng hồ Nam POEDAGAR - PRX nam tính (Tặng full phụ kiện: Hộp, Pin, Tháo mắt dây)', 'THÔNG TIN GIỚI THIỆU SẢN PHẨM:
- Thương hiệu: Poedagar
- Tình trạng: Mới
- Kích thước mặt: 40mm
- Chiều rộng dây: 20mm
- Chiều dài: 24cm
- Chất liệu dây: Thép không rỉ
- Chất liệu vỏ: Thép không gỉ 316L
- Kiểu máy: Janpan movt
- Năng lượng sử dụng: Pin
- Đồ chịu nước: 3ATM - 5ATM
- Hiển thị lịch ngày, lịch thứ, kim dạ quang
- Mặt kính: Kính khoáng phủ Saphire chống xước sinh hoạt
- Bảo hành: 12 tháng theo chính sách điện tử, 1 đổi 1 trong 7 ngày nếu có lỗi do nhà sản xuất.', 'ImageProduct/434/434_0.png,ImageProduct/434/434_1.png,ImageProduct/434/434_2.png,ImageProduct/434/434_3.png', 2, 101, '2024-06-12 20:45:14', 5, 0, 0, 1),
        (435, 'Kem dưỡng làm dịu da DIVE IN Hyaluronic Acid', '🔵 Đặc điểm chính

➰ Hyaluronic Acid : Phức hợp 5D có trọng lượng phân tử thấp

➰ Panthenol & Allantoin : Giữ ẩm và làm dịu da

➰ Kem dưỡng da dạng gel giúp làm mát và dịu da



🔵 Dành cho da

➰ Da khô, da dầu, da hỗn hợp, da nhạy cảm



🔵 Hiệu quả

➰ Làm mát và dịu da

➰ Cấp nước dưỡng ẩm da

➰ Cho làn da bóng ẩm với lớp finish da sảng khoái, mát mẻ



🔵 Hướng dẫn sử dụng

1. Thoa đều một vài giọt serum lên mặt

2. Tiếp đó thoa lớp kem làm dịu da lên trên vào mỗi buổi sáng và tối.



🔵 Mẹo khi dùng!

Hạ nhiệt làn da: Nếu bạn muốn hạ nhiệt ngay lập tức cho da vào những ngày trời nóng và ẩm, hãy bảo quản kem trong tủ lạnh để sử dụng như mặt nạ làm dịu mát da!

Mặt nạ ngủ: Nếu da bạn trở nên khô ráp do sử dụng máy lạnh nhiều, hãy thoa kem như một lớp mặt nạ ngủ để cấp ẩm cho da!', 'ImageProduct/435/435_0.png,ImageProduct/435/435_1.png,ImageProduct/435/435_2.png,ImageProduct/435/435_3.png,ImageProduct/435/435_4.png', 16, 102, '2024-06-12 21:05:42', 30, 0, 0, 1),
        (436, 'Set serum chăm sóc da căng bóng mịn số 1 DIVE IN Hyaluronic Acid', '🔵 Đặc điểm chính

➰ Hyaluronic Acid : Phức hợp 5D có trọng lượng phân tử thấp

➰ Nước pha với sữa dưỡng dạng nhũ tương: giữ ẩm và làm dịu da

➰ Giữ ẩm sâu và mềm mại với làn da căng bóng



🔵 Dành cho da

➰ Da khô, da dầu, da hỗn hợp, da nhạy cảm



🔵 Hiệu quả

➰ Giảm tình trạng căng khô da

➰ Bổ sung độ ẩm cho da bóng ẩm

➰ Dưỡng ẩm và làm dịu da



🔵 Hướng dẫn sử dụng

1. Nhỏ vài giọt serum lên tay hoặc trực tiếp lên da mặt, thoa đều serum lên bề mặt da.

2. Vỗ nhẹ để serum thấm đều vào da.

3. Lặp lại quy trình trên thêm vài lần nữa để bổ sung lớp dưỡng ẩm cho da.

4. Sử dụng như serum dưỡng da hàng ngày cho cả ban ngày và ban đêm.



🔵 Mẹo khi dùng!

Nếu sản phẩm trang điểm của bạn đang dùng là loại lì matte, bạn có thể sử dụng serum để trộn với phấn nền foundation theo tỉ lệ 1:1 để trang điểm.', 'ImageProduct/436/436_0.png,ImageProduct/436/436_1.png,ImageProduct/436/436_2.png,ImageProduct/436/436_3.png,ImageProduct/436/436_4.png', 16, 102, '2024-06-12 21:08:50', 24, 0, 0, 1),
        (437, 'Kem BALANCEFUL CICA làm dịu và dưỡng ẩm cho làn da bị tổn thương, kem phục hồi cho da mụn, 80ml', 'Kem rau má BALANCEFUL chăm sóc da mụn và nhạy cảm,

dưỡng ẩm, làm mát và dịu da mà không gây kích ứng.



🟢 Đặc điểm chính

🍀 Kem không gây bết dính

🍀 Đã hoàn thành thử nghiệm về kích ứng da

🍀 Đã thông qua kiểm tra các thành phần không gây tắc nghẽn lỗ chân lông



🟢 Dành cho da

Da nhạy cảm, da hỗn hợp và da dầu



🟢 Hiệu quả

🍀 Làm dịu làn da đang bị kích ứng và mẩn đỏ do bị kích ứng hóa chất

🍀 Giữ ẩm dồi dào và bóng mượt da với công thức không gây bí da

🍀 Giúp duy trì kết cấu da mềm mại, mịn màng, không gây mụn



🟢 Hướng dẫn sử dụng

[1] Sau khi làm sạch kết cấu da, thoa đều kem lên vùng da cần làm dịu

[2] Thoa một lớp kem dày lên vùng da đang gặp vấn đề, mụn hoặc nhạy cảm', 'ImageProduct/437/437_0.png,ImageProduct/437/437_1.png,ImageProduct/437/437_2.png,ImageProduct/437/437_3.png,ImageProduct/437/437_4.png', 16, 102, '2024-06-12 21:13:03', 20, 0, 0, 1),
        (438, 'Tinh chất trắng sáng da CELLMAZING Vitamin C, cải thiện tông da và kết cấu da, điều chỉnh các vết thâm,', 'Tinh chất làm trắng sáng da Cellmazing Vitamin C

giúp cải thiện tông màu và kết cấu da, khắc phục các vết thâm



🎀 Điểm chính

🤍 Phức hợp Vitamin C 5D

🤍 Tăng cường và nâng tông da, cho làn da rạng rỡ hơn

🤍 Điều chỉnh và thu nhỏ kích thước lỗ chân lông, cho làn da mịn màng hơn



🎀 Những ai nên sử dụng

🤍 Da bạn có sẹo do mụn, da nhiều vết thâm

🤍 Tông da bạn tối màu

🤍 Da bạn nhiều lỗ chân lông chảy xệ

🤍 Da bạn nhiều tàn nhang, nám

🤍 Da bạn thô ráp



🎀 Hiệu quả

🤍 Cải thiện sắc tố và vết thâm da

🤍 Làm sạch vết thâm, cải thiện tông màu da

🤍 Điều chỉnh, giảm kích thước và cải thiện tình trạng chảy xệ của lỗ chân lông', 'ImageProduct/438/438_0.png,ImageProduct/438/438_1.png,ImageProduct/438/438_2.png,ImageProduct/438/438_3.png,ImageProduct/438/438_4.png', 16, 102, '2024-06-12 21:16:59', 30, 0, 0, 1),
        (439, 'Kem dưỡng săn chắc da CELLMAZING Collagen, se khít lỗ chân lông, chống nhăn, tăng đàn hồi da, 60ml', 'Kem săn chắc da CELLMAZING 5D Collagen,

cải thiện nếp nhăn da, tăng độ đàn hồi và thu nhỏ lỗ chân lông



🎀 Đặc điểm chính

🤍 Chăm sóc độ đàn hồi của da và chăm sóc lỗ chân lông quá to

🤍 Kết cấu săn chắc, không bết dính, dưỡng ẩm dồi dào cho da



🎀 Thích hợp cho

🤍 Những người bắt đầu lo lắng những lỗ chân lông quá to

🤍 Những người muốn cải thiện độ đàn hồi và kết cấu của da

🤍 Những người muốn sản phẩm có thể sử dụng được cho cả làn da nhạy cảm (không gây kích ứng hay nổi mụn trên da)



🎀 Hiệu quả

🤍 Chăm sóc chống lão hóa

🤍 Se khít và thu nhỏ lỗ chân lông

🤍 Dưỡng ẩm và làm dịu da





🎀 Hướng dẫn sử dụng

Bước 1. Thoa một lượng kem vừa đủ lên vùng da cần chăm sóc độ đàn hồi.

Bước 2. Thoa đều lên cổ để kem hấp thụ vào da.



📍 Mẹo hay khi dùng: Bạn có thể thoa kem dưỡng sau khi sử dụng mặt nạ gel COLLAGEN để tăng thêm hiệu quả làm săn chắc da!', 'ImageProduct/439/439_0.png,ImageProduct/439/439_1.png,ImageProduct/439/439_2.png,ImageProduct/439/439_3.png,ImageProduct/439/439_4.png', 16, 102, '2024-06-12 21:21:32', 30, 0, 0, 1),
        (440, ' Tinh chất trắng sáng da CELLMAZING Vitamin C', 'Tinh chất làm trắng sáng da Cellmazing Vitamin C

giúp cải thiện tông màu và kết cấu da, khắc phục các vết thâm



🎀 Điểm chính

🤍 Phức hợp Vitamin C 5D

🤍 Tăng cường và nâng tông da, cho làn da rạng rỡ hơn

🤍 Điều chỉnh và thu nhỏ kích thước lỗ chân lông, cho làn da mịn màng hơn



🎀 Những ai nên sử dụng

🤍 Da bạn có sẹo do mụn, da nhiều vết thâm

🤍 Tông da bạn tối màu

🤍 Da bạn nhiều lỗ chân lông chảy xệ

🤍 Da bạn nhiều tàn nhang, nám

🤍 Da bạn thô ráp



🎀 Hiệu quả

🤍 Cải thiện sắc tố và vết thâm da

🤍 Làm sạch vết thâm, cải thiện tông màu da

🤍 Refines and reduces saggy pores and sizes

Điều chỉnh, giảm kích thước và cải thiện tình trạng chảy xệ của lỗ chân lông', 'ImageProduct/440/440_0.png,ImageProduct/440/440_1.png,ImageProduct/440/440_2.png,ImageProduct/440/440_3.png,ImageProduct/440/440_4.png', 16, 102, '2024-06-12 21:48:59', 10, 0, 0, 1),
        (441, 'Bộ tinh chất essence dưỡng môi SOLID IN Lip Essence, bóng ẩm, căng mọng, cấp ẩm sâu, 11ml+11ml', 'Son dưỡng tinh chất SOLID-IN,

dưỡng ẩm cho đôi môi sạch và căng bóng suốt thời gian dài



🟡 Đặc điểm chính

☀️ Dưỡng ẩm lâu dài

☀️ Cho đôi môi căng mọng mà không gây bết dính



🟡 Dành cho da

Môi khô /  Môi nhạy cảm / Môi xỉn màu



🟡 Hiệu quả

☀️Cấp giữ ẩm tập trung

☀️ Tẩy tế bào chết môi

☀️ Căng bóng làn môi



🟡 Hướng dẫn sử dụng

☀️ Thoa một lớp dưỡng dày trước khi đi ngủ lên môi như đang dùng mặt nạ dưỡng môi ngủ

☀️Có thể sử dụng để bổ sung độ ẩm một cách chắc chắn', 'ImageProduct/441/441_0.png,ImageProduct/441/441_1.png,ImageProduct/441/441_2.png,ImageProduct/441/441_3.png,ImageProduct/441/441_4.png', 16, 102, '2024-06-12 21:51:18', 5, 0, 0, 1),
        (442, 'Toner DIVE IN Hyaluronic Acid Mini, dành cho bước chăm sóc da đầu tiên, sản phẩm se khít da mặt với độ pH thấp', 'Toner DIVE IN chứa Hyaluronic Acid phân tử thấp,

làm mềm mại và dịu da, mềm mịn và dưỡng ẩm cho da.



🔵 Đặc điểm chính

➰ Hyaluronic Acid : Phức hợp 5D có trọng lượng phân tử thấp

➰ Làm dịu và dưỡng ẩm da

➰ Chứa Panthenol, Allantoin, Ceramide NP



🔵 Dành cho da

➰ Da khô, da dầu, da hỗn hợp, da nhạy cảm



🔵 Hiệu quả

➰Bước đầu tiên cho quy trình dưỡng da bóng ẩm.

➰Thành phần Panthenol và Allantoin giúp dưỡng ẩm và làm dịu làn da, giúp da thoải mái hơn.

➰ Dưỡng ẩm sâu bên trong da



🔵 Hướng dẫn sử dụng

 1.  Thấm toner đều lên miếng bông cotton, sau đó lau nhẹ nhàng lên da mặt để làm đều kết cấu da

 2. Thoa liên tục nhiều lớp toner lên da để giúp dưỡng ẩm bổ sung và thư giãn cho da, đặc biệt vào những ngày da thấy nhạy cảm', 'ImageProduct/442/442_0.png,ImageProduct/442/442_1.png,ImageProduct/442/442_2.png,ImageProduct/442/442_3.png,ImageProduct/442/442_4.png', 16, 102, '2024-06-12 21:54:32', 5, 0, 0, 1),
        (443, 'Bộ mẫu thử size mini DIVE IN All in One', 'Bộ mẫu thử size mini DIVE IN All in One

Hình thành quy trình chăm sóc dưỡng ẩm da với Torriden!



🔵 Bộ sản phẩm gồm

🔸 Sữa rửa mặt DIVE IN 30ml

🔸 Toner DIVE IN 50ml

🔸 Serum DIVE IN 10ml

🔸 Kem dưỡng làm dịu da DIVE IN 20ml



🔵 Đặc điểm chính

Quy trình chăm sóc da hoàn hảo giúp làn da bạn mịn màng, dưỡng ẩm, ngậm nước, sáng bóng hơn.



🔵 Dành cho da

➰ Da khô, da dầu, da hỗn hợp và da nhạy cảm



🔵 Hướng dẫn sử dụng

Bước 1. Sữa rửa mặt làm sạch da

Bước 2. Toner

Bước 3. Serum

Bước 4. Kem dưỡng làm dịu da



- BAO BÌ BỀN VỮNG: Thân thiện với môi trường

- CÔNG THỨC SẠCH: Chứng nhận Thuần chay

- BẢO VỆ ĐỘNG VẬT: Không thử nghiệm trên động vật', 'ImageProduct/443/443_0.png,ImageProduct/443/443_1.png,ImageProduct/443/443_2.png,ImageProduct/443/443_3.png,ImageProduct/443/443_4.png,ImageProduct/443/443_5.png,ImageProduct/443/443_6.png', 16, 102, '2024-06-12 21:58:28', 30, 0, 0, 1),
        (444, 'Sữa rửa mặt tạo bọt DIVE IN Hyaluronic Acid, làm sạch, làm dịu và cấp ẩm cho da, sử dụng hàng ngày, 150ml', 'Sữa rửa mặt tạo bọt DIVE IN chứa Hyaluronic Acid phân tử thấp,

sự khởi đầu của một loại sữa rửa mặt có tính axit yếu và giữ ẩm hoàn hảo.



🔵 Đặc điểm chính

➰ Sảng khoái làn da và giữ ẩm sau khi rửa mặt

➰ Chăm sóc dịu nhẹ làn da nhạy cảm mà không gây kích ứng

➰ Dồi dào bọt bong bóng mềm mịn giúp làm sạch và bảo vệ da



🔵 Dành cho da

➰ Da khô đến da dầu, da nhạy cảm, da siêu khô bên trong, da khô sau khi rửa mặt



🔵 Hiệu quả

➰ Làm sạch triệt để mọi tạp chất, cặn bẩn trên da

➰ Dưỡng ẩm dồi dào, không khô căng da

➰ Làm sạch dịu nhẹ và mềm mại làn da



🔵 Hướng dẫn sử dụng

Bước 1. Tạo nhiều bọt bong bóng sữa rửa mặt rồi mát xa nhẹ nhàng toàn bộ da mặt

Bước 2. Rửa sạch mặt bằng nước ấm, tiếp tục mát xa theo chuyển động tròn nhẹ nhàng

Bước 3. Hoàn thành với kem dưỡng ẩm Torriden yêu thích của bạn💙', 'ImageProduct/444/444_0.png,ImageProduct/444/444_1.png,ImageProduct/444/444_2.png,ImageProduct/444/444_3.png,ImageProduct/444/444_4.png', 16, 102, '2024-06-12 22:02:20', 29, 0, 0, 1),
        (445, 'Kem BALANCEFUL CICA Mini làm dịu và dưỡng ẩm cho làn da bị tổn thương, kem phục hồi cho da mụn, 20ml', 'Kem rau má BALANCEFUL chăm sóc da mụn và nhạy cảm,

dưỡng ẩm, làm mát và dịu da mà không gây kích ứng.



🟢 Đặc điểm chính

🍀 Kem không gây bết dính

🍀 Đã hoàn thành thử nghiệm về kích ứng da

🍀 Đã thông qua kiểm tra các thành phần không gây tắc nghẽn lỗ chân lông



🟢 Dành cho da

Da nhạy cảm, da hỗn hợp và da dầu



🟢 Hiệu quả

🍀 Làm dịu làn da đang bị kích ứng và mẩn đỏ do bị kích ứng hóa chất

🍀 Giữ ẩm dồi dào và bóng mượt da với công thức không gây bí da

🍀 Giúp duy trì kết cấu da mềm mại, mịn màng, không gây mụn', 'ImageProduct/445/445_0.png,ImageProduct/445/445_1.png,ImageProduct/445/445_2.png,ImageProduct/445/445_3.png,ImageProduct/445/445_4.png', 16, 102, '2024-06-12 22:09:28', 5, 0, 0, 1),
        (446, 'Nước tẩy trang DIVE IN Hyaluronic Acid, tẩy trang dịu nhẹ và dưỡng ẩm cho mọi làn da, 400ml', 'Nước tẩy trang DIVE IN chứa Hyaluronic Acid phân tử thấp,

nhẹ nhàng loại bỏ lớp trang điểm và làm sạch da.



🔵 Đặc điểm chính

➰ Hyaluronic Acid : Phức hợp 8D có trọng lượng phân tử thấp

➰ Nước pha với sữa dưỡng dạng nhũ tương: Làm sạch nhẹ nhàng mà không gây kích ứng cho da

➰ Kết cấu dạng nước



🔵 Dành cho da

➰ Da khô, da dầu, da hỗn hợp, da nhạy cảm



🔵 Hiệu quả

➰ Làm sạch kem chống nắng khoáng chất

➰ Giữ ẩm mịn màng cho da

➰ Làm sạch sâu và nhẹ nhàng ', 'ImageProduct/446/446_0.png,ImageProduct/446/446_1.png,ImageProduct/446/446_2.png,ImageProduct/446/446_3.png,ImageProduct/446/446_4.png', 16, 102, '2024-06-12 22:12:25', 20, 0, 0, 1),
        (447, 'Pad đa năng DIVE IN Hyaluronic Acid Mini, Toner Pad làm dịu mát da, giảm mẩn đỏ, cấp ẩm sâu, 160ml, 10 miếng', 'Toner Pad đa năng DIVE IN chứa Hyaluronic Acid phân tử thấp,

pad dưỡng ẩm giúp làm dịu mát da tức thì.



🔵 Đặc điểm chính

➰ Hyaluronic Acid : Phức hợp 5D có trọng lượng phân tử thấp

➰ Chứa Panthenol & Allantoin



🔵 Dành cho da

➰ Da khô, da dầu, da hỗn hợp, da nhạy cảm



🔵 Hiệu quả

➰ Cấp nước, dưỡng ẩm cho da

➰ Miếng pad bám dính chặt vào da

➰ Làm mát, hạ nhiệt làn da', 'ImageProduct/447/447_0.png,ImageProduct/447/447_1.png,ImageProduct/447/447_2.png,ImageProduct/447/447_3.png,ImageProduct/447/447_4.png', 16, 102, '2024-06-12 22:17:37', 5, 0, 0, 1),
        (448, 'Serum làm dịu da hàng ngày số 1 DIVE IN Hyaluronic Acid, Serum BALANCEFUL CICA chăm sóc bã nhờn và tế bào chết', 'Serum DIVE IN chứa Hyaluronic Acid phân tử thấp,

dưỡng ẩm sâu bên trong da, lấy lại sự tự tin cho làn da





🔵 Đặc điểm chính

➰ Hyaluronic Acid : Phức hợp 5D có trọng lượng phân tử thấp

➰ Nước pha với sữa dưỡng dạng nhũ tương: giữ ẩm và làm dịu da

➰ Giữ ẩm sâu và mềm mại với làn da căng bóng



🔵 Dành cho da

➰ Da khô, da dầu, da hỗn hợp, da nhạy cảm



🔵 Hiệu quả

➰ Giảm tình trạng căng khô da

➰ Bổ sung độ ẩm cho da bóng ẩm

➰ Dưỡng ẩm và làm dịu da



🔵 Hướng dẫn sử dụng

1. Nhỏ vài giọt serum lên tay hoặc trực tiếp lên da mặt, thoa đều serum lên bề mặt da.

2. Vỗ nhẹ để serum thấm đều vào da.

3. Lặp lại quy trình trên thêm vài lần nữa để bổ sung lớp dưỡng ẩm cho da.

4. Sử dụng như serum dưỡng da hàng ngày cho cả ban ngày và ban đêm.



🔵 Mẹo khi dùng!

Nếu sản phẩm trang điểm của bạn đang dùng là loại lì matte, bạn có thể sử dụng serum để trộn với phấn nền foundation theo tỉ lệ 1:1 để trang điểm.', 'ImageProduct/448/448_0.png,ImageProduct/448/448_1.png,ImageProduct/448/448_2.png,ImageProduct/448/448_3.png,ImageProduct/448/448_4.png,ImageProduct/448/448_5.png', 16, 102, '2024-06-12 22:21:50', 24, 0, 0, 1),
        (449, ' Essence hàng ngày SOLID IN tăng cường hàng rào bảo vệ da, 100ml', 'Tinh chất dưỡng Ceramide SOLID-IN,

giữ ẩm cho làn da ngậm nước mà không gây bết dính



🟡 Đặc điểm chính

☀️ Phức hợp Ceramide 5D và D-panthenol

☀️ Chăm sóc độ ẩm tối thiểu



🟡 Dành cho da

Muốn khôi phục lại sự cân bằng khỏe mạnh cho làn da khô



🟡 Hiệu quả

☀️ Thành phần Ceramide và Panthenol hiệu quả cao, có tác dụng dưỡng ẩm cân bằng gấp 3 lần

☀️ Giữ ẩm cho da mà không gây bết dính sau khi thoa



🟡 Hướng dẫn sử dụng

☀️ Có thể thoa nhiều lớp để sử dụng khi da quá khô

☀️ Sử dụng tinh chất dưỡng này để rút ngắn quá trình chăm sóc da để có một lớp trang điểm hình thành khối, không rời rạc.

', 'ImageProduct/449/449_0.png,ImageProduct/449/449_1.png,ImageProduct/449/449_2.png,ImageProduct/449/449_3.png,ImageProduct/449/449_4.png', 16, 102, '2024-06-12 22:24:08', 30, 0, 0, 1),
        (450, 'Kem chống nắng dưỡng ẩm ngậm nước DIVE IN Hyaluronic Acid, kết cấu mỏng nhẹ, dưỡng ẩm chuyên sâu', 'Kem chống nắng giữ ẩm DIVE IN,

bảo vệ làn da khỏi ánh nắng suốt 24h đồng hồ



🔵 Bạn nên dùng nếu

➰ Bạn cảm thấy kem chống nắng đang dùng khá nặng nề bí bách da

➰ Bạn muốn trải nghiệm một loại kem vừa chống nắng vừa dưỡng ẩm dồi dào cho da

➰ Bạn có làn da nhạy cảm và đang lo lắng về vấn đề kích ứng của da

➰ Bạn đang cần tìm một loại kem chống nắng xuyên suốt 24h



🔵 Đặc điểm chính

➰ Phức hợp 10D Hyaluronic Acid

➰ Đã được chứng minh lâm sàng về khả năng bảo vệ da suốt 24h

➰ Kem chống nắng an toàn cho làn da nhạy cảm



🔵 Dành cho da

➰ Da khô, da dầu, da hỗn hợp và da nhạy cảm



🔵 Hiệu quả

Giúp da trắng sáng và giảm nếp nhăn

Bảo vệ da chống lại tia UV (chứa SPF50+, PA++++)



🔵 Công thức kem chống nắng

➰ Công thức tinh chất dưỡng ẩm thấm sâu nhẹ nhàng vào da', 'ImageProduct/450/450_0.png,ImageProduct/450/450_1.png,ImageProduct/450/450_2.png,ImageProduct/450/450_3.png,ImageProduct/450/450_4.png', 16, 102, '2024-06-12 22:27:59', 38, 0, 0, 1),
        (451, 'Kem chống nắng dịu nhẹ không nano DIVE IN Hyaluronic Acid, nâng tông da tự nhiên, chống tia UV, SPF 50+ PA++++', 'Kem chống nắng khoáng chất dịu nhẹ DIVE IN giúp nâng tông da tự nhiên,

bảo vệ da chống lại tia UV mạnh mẽ



🔵 Đặc điểm chính

➰ Hyaluronic Acid : Phức hợp 5D có trọng lượng phân tử thấp

➰ Chứa Panthenol & Allantoin

➰ Bảo vệ da phải tiếp xúc với tia UV mỗi ngày



🔵 Dành cho da

➰ Da dầu, da hỗn hợp



🔵 Hiệu quả

➰ Hàng rào giữ ẩm bảo vệ da

➰ Kem chống nắng khoáng chất phân tử cao

➰ Chất kem khi tán cho cảm giác mềm mại, mượt mà



🔵 Công thức

Chất kem mềm mịn với công thức độ ẩm và độ bám dính cao



🔵 Hướng dẫn sử dụng

Sử dụng trong bước cuối cùng của quy trình chăm sóc da hàng ngày của bạn



🔔 Mẹo khi dùng của MD!

Khi lười trang điểm, bạn có thể sử dụng kem chống nắng như một lớp nền trang điểm để tạo hiệu ứng nâng tông da tự nhiên:)', 'ImageProduct/451/451_0.png,ImageProduct/451/451_1.png,ImageProduct/451/451_2.png,ImageProduct/451/451_3.png,ImageProduct/451/451_4.png', 16, 102, '2024-06-12 22:30:29', 38, 0, 0, 1),
        (452, 'Kem chống nắng nâng tông da BALANCEFUL CICA, điều chỉnh khuyết điểm, hiệu ứng nâng tông da xỉn màu tự nhiên', 'Kem chống nắng rau má nâng tông BALANCEFUL,

đánh bay nỗi lo về tia UV, tận hưởng ánh nắng mặt trời.



🟢 Đặc điểm chính

🍀 Kem chống nắng nâng tông da chống nắng 3 trong 1!

🍀 Điều chỉnh những vết mẩn đỏ trong thư

🍀 Chống nắng mạnh mẽ nhờ thành phần SPF50+, PA++++

🍀 Dành cho làn da nhạy cãm quanh năm



🟢 Dành cho da

Còn sản phẩm chống tia UV, sản phẩm chống nhăn và sáng trắng làn da



🟢 Hiệu quả

🍀Thành phần 5D CICA

🍀Hiệu chỉnh tông da màu xanh

🍀An toàn cho cả làn dạy nhảm



🟢 Hướng dẫn sử dụng

Bước 1. Sau các bước dưỡng da, thoa một lượng kem vừa đủ lên vùng da dễ bị bắt nắng như trán, sóng mũi, quanh mắt, gò má trước

Bước 2. Vỗ nhẹ nhàng để kem hấp thụ đều vào da



🟢 Mẹo khi dùng!

🍀 Giải pháp hàng ngày giúp hiệu chỉnh tông màu da tự nhiên

🍀 Có thể dùng để thay kem lót trang điểm (Không cần dùng Foundation)

🍀 Nên dùng ở bước cuối cùng của quy trình dưỡng da và trước khi đánh kem nền foundation', 'ImageProduct/452/452_0.png,ImageProduct/452/452_1.png,ImageProduct/452/452_2.png,ImageProduct/452/452_3.png,ImageProduct/452/452_4.png', 16, 102, '2024-06-12 22:33:05', 38, 0, 0, 1),
        (453, 'Mặt nạ gel săn chắc da CELLMAZING Collagen, chăm sóc nếp nhăn, nâng cơ da cổ, giảm nếp nhăn vùng cổ', 'Mặt nạ gel săn chắc da CELLMAZING 5D Collagen chăm sóc từ mặt đến cổ,

Cải thiện nếp nhăn da, chăm sóc độ đàn hồi và nâng da cổ



🎀 Điểm chính

🤍 Công thức 3 miếng All-in-one chăm sóc từ da mặt đến da cổ

🤍 Săn chắc làn da từ chăm sóc độ đàn hồi đến nếp nhăn

🤍 Dưỡng ẩm sâu và bám chặt hoàn toàn vào da



🎀 Những ai nên sử dụng

🤍 Nếu bạn muốn cải thiện độ đàn hồi da và nếp nhăn

🤍 Phù hợp nếu bạn có làn da khô, thiếu sức sống, kém rạng rỡ

🤍 Nếu bạn có làn da nhạy cảm và muốn chăm sóc nếp nhăn (không gây kích ứng hay nổi mụn trên da)



🎀 Hiệu quả

🤍 Chăm sóc nếp nhăn vùng mắt/ má/ trán

🤍 Chăm sóc nếp nhăn rãnh cười

🤍 Chăm sóc nếp nhăn vùng cổ', 'ImageProduct/453/453_0.png,ImageProduct/453/453_1.png,ImageProduct/453/453_2.png,ImageProduct/453/453_3.png,ImageProduct/453/453_4.png', 16, 102, '2024-06-12 22:38:04', 30, 1, 0, 1),
        (454, 'Toner Pad hàng ngày BALANCEFUL Cica, túi refill, làm dịu và cân bằng da, chăm sóc tế bào da chết, cho da nhạy cảm', 'Toner Pad rau má chăm sóc da hàng ngày BALANCEFUL giúp làm dịu da,

làm sạch bã nhờn dư thừa và chăm sóc kết cấu da



🟢 Đặc điểm chính

🍀 Miếng bông pad thuần chay dập hoa văn nổi

🍀 Thành phần tẩy tế bào chết không bào mòn da (LHA+PHA)

🍀 Dồi dào lượng tinh chất như mặt nạ giấy với kích thước miếng pad lớn



🟢 Dành cho da

Da nhạy cảm và da hỗn hợp



🟢 Hiệu quả

🍀 Làm sạch bã nhờn dư thừa trên da

🍀 Không gây kích ứng cho làn da nhạy cảm

🍀 Làm dịu vết mẩn đỏ trên da dầu và da bị kích ứng



🟢 Hướng dẫn sử dụng

Bước 1. Sau khi rửa sạch mặt, dùng mặt bông pad dập hoa văn nổi để lau nhẹ nhàng lên da mặt theo chiều cấu tạo của da

Bước 2. Sau đó dùng mặt còn lại của miếng bông pad để làm sạch da

Step 3. Mát xa nhẹ nhàng dưỡng chất còn sót lại giúp thấm sâu vào da hơn.', 'ImageProduct/454/454_0.png,ImageProduct/454/454_1.png,ImageProduct/454/454_2.png,ImageProduct/454/454_3.png,ImageProduct/454/454_4.png', 16, 102, '2024-06-12 22:43:28', 35, 0, 0, 1);

insert into shop_bee.variation (id, product_id, name)
values  (1000, 400, 'Màu Sắc'),
        (1001, 400, 'Dung lượng'),
        (1002, 401, 'Màu sắc'),
        (1003, 401, 'Dung lượng'),
        (1004, 402, 'Màu sắc'),
        (1005, 402, 'Dung lượng'),
        (1006, 403, 'Màu Sắc'),
        (1007, 404, 'Màu Sắc'),
        (1008, 405, 'Màu sắc'),
        (1009, 406, 'Màu sắc'),
        (1010, 407, 'Màu sắc'),
        (1011, 409, 'Màu sắc'),
        (1012, 411, 'Màu sắc'),
        (1013, 412, 'Màu sắc'),
        (1014, 413, 'Màu sắc'),
        (1015, 414, 'Màu sắc'),
        (1016, 415, 'AIRTAG'),
        (1017, 416, 'Màu sắc'),
        (1018, 416, 'Capacity'),
        (1019, 417, 'Màu sắc'),
        (1020, 418, 'Màu sắc'),
        (1021, 419, 'Màu sắc'),
        (1022, 419, 'Dung Lượng'),
        (1023, 420, 'Màu sắc'),
        (1024, 422, 'Màu sắc'),
        (1025, 423, 'Màu sắc'),
        (1026, 424, 'Màu sắc'),
        (1027, 425, 'Màu sắc'),
        (1028, 426, 'Màu sắc'),
        (1029, 427, 'Màu sắc'),
        (1030, 429, 'Màu sắc'),
        (1031, 429, 'Hộp'),
        (1032, 430, 'Màu sắc'),
        (1033, 432, 'Màu sắc'),
        (1034, 433, 'Màu sắc'),
        (1035, 434, 'Màu sắc'),
        (1036, 435, 'Khối Lượng'),
        (1037, 453, 'Số mặt');

insert into shop_bee.variation_option (id, variation_id, value)
values  (5000, 1000, 'Titan - Tự nhiên'),
        (5001, 1001, '256GB'),
        (5002, 1001, '512GB'),
        (5003, 1001, '1TB'),
        (5004, 1000, 'Titan - Xanh'),
        (5005, 1000, 'Titan - Trắng'),
        (5006, 1000, 'Titan - Đen'),
        (5007, 1002, 'Xanh dương'),
        (5008, 1003, '128GB'),
        (5009, 1003, '256GB'),
        (5010, 1003, '512GB'),
        (5011, 1003, '1TB'),
        (5012, 1002, 'Vàng'),
        (5013, 1002, 'Hồng'),
        (5014, 1002, 'Xanh lá'),
        (5015, 1002, 'Đen'),
        (5016, 1004, 'Midnight'),
        (5017, 1005, '128GB'),
        (5018, 1005, '256GB'),
        (5019, 1005, '512GB'),
        (5020, 1004, 'While'),
        (5021, 1004, 'Blue'),
        (5022, 1004, 'Red'),
        (5023, 1004, 'Pink'),
        (5024, 1004, 'Green'),
        (5025, 1006, 'Trắng'),
        (5026, 1007, 'Trắng'),
        (5027, 1008, 'Space Gray'),
        (5028, 1008, 'Silver'),
        (5029, 1009, 'Space Grey'),
        (5030, 1009, 'StarLight'),
        (5031, 1009, 'Silver'),
        (5032, 1009, 'MidNight'),
        (5033, 1010, 'Space Black'),
        (5034, 1010, 'Silver'),
        (5035, 1011, 'StarLight'),
        (5036, 1011, 'MidNight'),
        (5037, 1011, 'Storm Blue'),
        (5038, 1012, 'Red'),
        (5039, 1012, 'Purple'),
        (5040, 1012, 'Starlight'),
        (5041, 1012, 'Midnight'),
        (5042, 1012, 'Blue'),
        (5043, 1012, 'Yellow'),
        (5044, 1013, 'Xanh'),
        (5045, 1013, 'Đen'),
        (5046, 1013, 'Đỏ'),
        (5047, 1013, 'Vàng'),
        (5048, 1013, 'Tím'),
        (5049, 1013, 'Trắng'),
        (5050, 1014, 'Blue Titanium'),
        (5051, 1014, 'Natural Titanium'),
        (5052, 1014, 'While Titanium'),
        (5053, 1014, 'Black Titanium'),
        (5054, 1015, 'Blue'),
        (5055, 1015, 'Black'),
        (5056, 1015, 'Pink'),
        (5057, 1015, 'Green'),
        (5058, 1015, 'Yellow'),
        (5059, 1016, 'AIRTAG 4 PACK'),
        (5060, 1016, 'AIRTAG 1 PACK'),
        (5061, 1017, 'White'),
        (5062, 1018, '64GB'),
        (5063, 1018, '128GB'),
        (5064, 1017, 'Blue'),
        (5065, 1017, 'Green'),
        (5066, 1017, 'Purple'),
        (5067, 1017, 'Black'),
        (5068, 1017, 'Red'),
        (5069, 1019, 'Sliver'),
        (5070, 1019, 'Blue'),
        (5071, 1019, 'Yellow'),
        (5072, 1019, 'Pink'),
        (5073, 1020, 'Starlight'),
        (5074, 1020, 'Blue'),
        (5075, 1020, 'Space Gray'),
        (5076, 1020, 'Pink'),
        (5077, 1020, 'Purple'),
        (5078, 1021, 'Starlight'),
        (5079, 1022, '64GB'),
        (5080, 1022, '256GB'),
        (5081, 1021, 'Space Gray'),
        (5082, 1021, 'Purple'),
        (5083, 1021, 'PInk'),
        (5084, 1023, 'Nam, Đen Trắng'),
        (5085, 1023, 'Nam, Đen vàng'),
        (5086, 1023, 'Nam, Đen full'),
        (5087, 1023, 'Nữ, Đen Trắng'),
        (5088, 1023, 'Nữ, Đen vàng'),
        (5089, 1023, 'Nữ, Đen full'),
        (5090, 1024, 'Bạc'),
        (5091, 1024, 'Đen bạc'),
        (5092, 1024, 'Đen vàng'),
        (5093, 1025, 'Đen đá trắng'),
        (5094, 1025, 'Đen đá vàng'),
        (5095, 1025, 'Xanh đá trắng'),
        (5096, 1025, 'Xanh đá vàng'),
        (5097, 1025, 'Đen vàng'),
        (5098, 1025, 'Đen Trắng'),
        (5099, 1026, 'Full vàng'),
        (5100, 1026, 'Full trắng'),
        (5101, 1026, 'Vàng Trắng'),
        (5102, 1027, 'Nâu mặt đen, Nữ'),
        (5103, 1027, 'Nâu mặt trắng, Nữ'),
        (5104, 1027, 'Đen mặt đen, Nữ'),
        (5105, 1027, 'Đen mặt trắng, Nữ'),
        (5106, 1027, 'Nâu mặt đen, Nam'),
        (5107, 1027, 'Nâu mặt trắng, Nam'),
        (5108, 1027, 'Đen mặt đen, Nam'),
        (5109, 1027, 'Đen mặt trắng, Nam'),
        (5110, 1028, 'Mặt đen'),
        (5111, 1028, 'Mặt vàng'),
        (5112, 1029, 'Mặt đen'),
        (5113, 1029, 'Mặt vàng'),
        (5114, 1030, 'Dây đen'),
        (5115, 1031, 'Hộp giấy'),
        (5116, 1030, 'Dây nâu'),
        (5117, 1030, 'Full đen'),
        (5118, 1032, 'Full vàng'),
        (5119, 1032, 'Mặt đen'),
        (5120, 1032, 'Mặt trắng'),
        (5121, 1032, 'Mặt xanh lá'),
        (5122, 1032, 'Mặt xanh dương'),
        (5123, 1032, 'Mặt đỏ'),
        (5124, 1033, 'Hồng'),
        (5125, 1033, 'Mặt nâu'),
        (5126, 1033, 'Mặt trắng'),
        (5127, 1034, 'Trắng'),
        (5128, 1034, 'Xanh dương'),
        (5129, 1034, 'Đỏ'),
        (5130, 1034, 'Xanh lá'),
        (5131, 1035, 'Mặt đen'),
        (5132, 1035, 'Mặt trắng'),
        (5133, 1035, 'Mặt xanh ngọc'),
        (5134, 1035, 'Mặt xanh dương'),
        (5135, 1036, '100ml (Ống)'),
        (5136, 1036, '100ml (Hũ)'),
        (5137, 1036, '100ml + 100ml'),
        (5138, 1037, '4 miếng (3 mặt)'),
        (5139, 1037, '4 miếng (2 mặt)');

insert into shop_bee.product_item (id, product_id, img_path, variation1, variation2, qty_in_stock, price)
values  (5001, 400, 'ImageProduct/400/400_01.png', 5000, 5001, 100, 30700000),
        (5002, 400, 'ImageProduct/400/400_01.png', 5000, 5002, 100, 30700000),
        (5003, 400, 'ImageProduct/400/400_01.png', 5000, 5003, 100, 30700000),
        (5004, 400, 'ImageProduct/400/400_04.png', 5004, 5001, 100, 30700000),
        (5005, 400, 'ImageProduct/400/400_04.png', 5004, 5002, 100, 30700000),
        (5006, 400, 'ImageProduct/400/400_04.png', 5004, 5003, 100, 30700000),
        (5007, 400, 'ImageProduct/400/400_07.png', 5005, 5001, 100, 30700000),
        (5008, 400, 'ImageProduct/400/400_07.png', 5005, 5002, 100, 30700000),
        (5009, 400, 'ImageProduct/400/400_07.png', 5005, 5003, 100, 30700000),
        (5010, 400, 'ImageProduct/400/400_010.png', 5006, 5001, 100, 30700000),
        (5011, 400, 'ImageProduct/400/400_010.png', 5006, 5002, 100, 30700000),
        (5012, 400, 'ImageProduct/400/400_010.png', 5006, 5003, 100, 30700000),
        (5013, 401, 'ImageProduct/401/401_01.png', 5007, 5008, 30, 20000000),
        (5014, 401, 'ImageProduct/401/401_01.png', 5007, 5009, 30, 20000000),
        (5015, 401, 'ImageProduct/401/401_01.png', 5007, 5010, 30, 20000000),
        (5016, 401, 'ImageProduct/401/401_01.png', 5007, 5011, 30, 20000000),
        (5017, 401, 'ImageProduct/401/401_05.png', 5012, 5008, 30, 20000000),
        (5018, 401, 'ImageProduct/401/401_05.png', 5012, 5009, 30, 20000000),
        (5019, 401, 'ImageProduct/401/401_05.png', 5012, 5010, 30, 20000000),
        (5020, 401, 'ImageProduct/401/401_05.png', 5012, 5011, 30, 20000000),
        (5021, 401, 'ImageProduct/401/401_09.png', 5013, 5008, 30, 20000000),
        (5022, 401, 'ImageProduct/401/401_09.png', 5013, 5009, 30, 20000000),
        (5023, 401, 'ImageProduct/401/401_09.png', 5013, 5010, 30, 20000000),
        (5024, 401, 'ImageProduct/401/401_09.png', 5013, 5011, 30, 20000000),
        (5025, 401, 'ImageProduct/401/401_013.png', 5014, 5008, 30, 20000000),
        (5026, 401, 'ImageProduct/401/401_013.png', 5014, 5009, 30, 20000000),
        (5027, 401, 'ImageProduct/401/401_013.png', 5014, 5010, 30, 20000000),
        (5028, 401, 'ImageProduct/401/401_013.png', 5014, 5011, 30, 20000000),
        (5029, 401, 'ImageProduct/401/401_017.png', 5015, 5008, 30, 20000000),
        (5030, 401, 'ImageProduct/401/401_017.png', 5015, 5009, 30, 20000000),
        (5031, 401, 'ImageProduct/401/401_017.png', 5015, 5010, 30, 20000000),
        (5032, 401, 'ImageProduct/401/401_017.png', 5015, 5011, 30, 20000000),
        (5033, 402, 'ImageProduct/402/402_01.png', 5016, 5017, 100, 16900000),
        (5034, 402, 'ImageProduct/402/402_01.png', 5016, 5018, 100, 16900000),
        (5035, 402, 'ImageProduct/402/402_01.png', 5016, 5019, 100, 16900000),
        (5036, 402, 'ImageProduct/402/402_04.png', 5020, 5017, 100, 16900000),
        (5037, 402, 'ImageProduct/402/402_04.png', 5020, 5018, 100, 16900000),
        (5038, 402, 'ImageProduct/402/402_04.png', 5020, 5019, 100, 16900000),
        (5039, 402, 'ImageProduct/402/402_07.png', 5021, 5017, 100, 16900000),
        (5040, 402, 'ImageProduct/402/402_07.png', 5021, 5018, 100, 16900000),
        (5041, 402, 'ImageProduct/402/402_07.png', 5021, 5019, 100, 16900000),
        (5042, 402, 'ImageProduct/402/402_010.png', 5022, 5017, 100, 16900000),
        (5043, 402, 'ImageProduct/402/402_010.png', 5022, 5018, 100, 16900000),
        (5044, 402, 'ImageProduct/402/402_010.png', 5022, 5019, 100, 16900000),
        (5045, 402, 'ImageProduct/402/402_013.png', 5023, 5017, 100, 16900000),
        (5046, 402, 'ImageProduct/402/402_013.png', 5023, 5018, 100, 16900000),
        (5047, 402, 'ImageProduct/402/402_013.png', 5023, 5019, 100, 16900000),
        (5048, 402, 'ImageProduct/402/402_016.png', 5024, 5017, 100, 16900000),
        (5049, 402, 'ImageProduct/402/402_016.png', 5024, 5018, 100, 16900000),
        (5050, 402, 'ImageProduct/402/402_016.png', 5024, 5019, 100, 16900000),
        (5051, 403, 'ImageProduct/403/403_01.png', null, 5025, 50, 6199000),
        (5052, 404, 'ImageProduct/404/404_0.png', null, null, 100, 790000),
        (5053, 405, 'ImageProduct/405/405_01.png', null, 5027, 100, 11990000),
        (5054, 405, 'ImageProduct/405/405_02.png', null, 5028, 100, 11990000),
        (5055, 406, 'ImageProduct/406/406_01.png', null, 5029, 100, 37990000),
        (5056, 406, 'ImageProduct/406/406_02.png', null, 5030, 100, 37990000),
        (5057, 406, 'ImageProduct/406/406_03.png', null, 5031, 100, 37990000),
        (5058, 406, 'ImageProduct/406/406_04.png', null, 5032, 100, 37990000),
        (5059, 407, 'ImageProduct/407/407_01.png', null, 5033, 20, 64999000),
        (5060, 407, 'ImageProduct/407/407_02.png', null, 5034, 20, 64999000),
        (5061, 408, 'ImageProduct/408/408_0.png', null, null, 100, 3890000),
        (5062, 409, 'ImageProduct/409/409_01.png', null, 5035, 150, 7490000),
        (5063, 409, 'ImageProduct/409/409_02.png', null, 5036, 150, 7490000),
        (5064, 409, 'ImageProduct/409/409_03.png', null, 5037, 150, 7490000),
        (5065, 410, 'ImageProduct/410/410_0.png', null, null, 100, 549000),
        (5066, 411, 'ImageProduct/411/411_01.png', null, 5038, 50, 31990000),
        (5067, 411, 'ImageProduct/411/411_02.png', null, 5039, 50, 31990000),
        (5068, 411, 'ImageProduct/411/411_03.png', null, 5040, 50, 31990000),
        (5069, 411, 'ImageProduct/411/411_04.png', null, 5041, 50, 31990000),
        (5070, 411, 'ImageProduct/411/411_05.png', null, 5042, 50, 31990000),
        (5071, 411, 'ImageProduct/411/411_06.png', null, 5043, 50, 31990000),
        (5072, 412, 'ImageProduct/412/412_01.png', null, 5044, 30, 15990000),
        (5073, 412, 'ImageProduct/412/412_02.png', null, 5045, 30, 15990000),
        (5074, 412, 'ImageProduct/412/412_03.png', null, 5046, 30, 15990000),
        (5075, 412, 'ImageProduct/412/412_04.png', null, 5047, 30, 15990000),
        (5076, 412, 'ImageProduct/412/412_05.png', null, 5048, 30, 15990000),
        (5077, 412, 'ImageProduct/412/412_06.png', null, 5049, 30, 15990000),
        (5078, 413, 'ImageProduct/413/413_01.png', null, 5050, 80, 34190000),
        (5079, 413, 'ImageProduct/413/413_02.png', null, 5051, 80, 34190000),
        (5080, 413, 'ImageProduct/413/413_03.png', null, 5052, 80, 34190000),
        (5081, 413, 'ImageProduct/413/413_04.png', null, 5053, 80, 34190000),
        (5082, 414, 'ImageProduct/414/414_01.png', null, 5054, 100, 29990000),
        (5083, 414, 'ImageProduct/414/414_02.png', null, 5055, 100, 29990000),
        (5084, 414, 'ImageProduct/414/414_03.png', null, 5056, 100, 29990000),
        (5085, 414, 'ImageProduct/414/414_04.png', null, 5057, 100, 29990000),
        (5086, 414, 'ImageProduct/414/414_05.png', null, 5058, 100, 29990000),
        (5087, 415, 'ImageProduct/415/415_01.png', null, 5059, 100, 3590000),
        (5088, 415, 'ImageProduct/415/415_02.png', null, 5060, 150, 849000),
        (5089, 416, 'ImageProduct/416/416_01.png', 5061, 5062, 120, 20990000),
        (5090, 416, 'ImageProduct/416/416_01.png', 5061, 5063, 120, 20990000),
        (5091, 416, 'ImageProduct/416/416_03.png', 5064, 5062, 120, 20990000),
        (5092, 416, 'ImageProduct/416/416_03.png', 5064, 5063, 120, 20990000),
        (5093, 416, 'ImageProduct/416/416_05.png', 5065, 5062, 120, 20990000),
        (5094, 416, 'ImageProduct/416/416_05.png', 5065, 5063, 120, 20990000),
        (5095, 416, 'ImageProduct/416/416_07.png', 5066, 5062, 120, 20990000),
        (5096, 416, 'ImageProduct/416/416_07.png', 5066, 5063, 120, 20990000),
        (5097, 416, 'ImageProduct/416/416_09.png', 5067, 5062, 120, 20990000),
        (5098, 416, 'ImageProduct/416/416_09.png', 5067, 5063, 120, 20990000),
        (5099, 416, 'ImageProduct/416/416_011.png', 5068, 5062, 120, 20990000),
        (5100, 416, 'ImageProduct/416/416_011.png', 5068, 5063, 120, 20990000),
        (5101, 417, 'ImageProduct/417/417_01.png', null, 5069, 150, 16990000),
        (5102, 417, 'ImageProduct/417/417_02.png', null, 5070, 150, 16990000),
        (5103, 417, 'ImageProduct/417/417_03.png', null, 5071, 150, 16990000),
        (5104, 417, 'ImageProduct/417/417_04.png', null, 5072, 150, 16990000),
        (5105, 418, 'ImageProduct/418/418_01.png', null, 5073, 180, 15174000),
        (5106, 418, 'ImageProduct/418/418_02.png', null, 5074, 180, 15174000),
        (5107, 418, 'ImageProduct/418/418_03.png', null, 5075, 180, 15174000),
        (5108, 418, 'ImageProduct/418/418_04.png', null, 5076, 180, 15174000),
        (5109, 418, 'ImageProduct/418/418_05.png', null, 5077, 180, 15174000),
        (5110, 419, 'ImageProduct/419/419_01.png', 5078, 5079, 50, 15600000),
        (5111, 419, 'ImageProduct/419/419_01.png', 5078, 5080, 50, 15600000),
        (5112, 419, 'ImageProduct/419/419_03.png', 5081, 5079, 50, 15600000),
        (5113, 419, 'ImageProduct/419/419_03.png', 5081, 5080, 50, 15600000),
        (5114, 419, 'ImageProduct/419/419_05.png', 5082, 5079, 50, 15600000),
        (5115, 419, 'ImageProduct/419/419_05.png', 5082, 5080, 50, 15600000),
        (5116, 419, 'ImageProduct/419/419_07.png', 5083, 5079, 50, 15600000),
        (5117, 419, 'ImageProduct/419/419_07.png', 5083, 5080, 50, 15600000),
        (5118, 420, 'ImageProduct/420/420_01.png', null, 5084, 120, 300000),
        (5119, 420, 'ImageProduct/420/420_02.png', null, 5085, 120, 300000),
        (5120, 420, 'ImageProduct/420/420_03.png', null, 5086, 120, 300000),
        (5121, 420, 'ImageProduct/420/420_04.png', null, 5087, 120, 300000),
        (5122, 420, 'ImageProduct/420/420_05.png', null, 5088, 120, 300000),
        (5123, 420, 'ImageProduct/420/420_06.png', null, 5089, 120, 300000),
        (5124, 421, 'ImageProduct/421/421_0.png', null, null, 120, 120000),
        (5125, 422, 'ImageProduct/422/422_01.png', null, 5090, 200, 200000),
        (5126, 422, 'ImageProduct/422/422_02.png', null, 5091, 200, 200000),
        (5127, 422, 'ImageProduct/422/422_03.png', null, 5092, 200, 200000),
        (5128, 423, 'ImageProduct/423/423_01.png', null, 5093, 200, 500000),
        (5129, 423, 'ImageProduct/423/423_02.png', null, 5094, 200, 500000),
        (5130, 423, 'ImageProduct/423/423_03.png', null, 5095, 200, 500000),
        (5131, 423, 'ImageProduct/423/423_04.png', null, 5096, 200, 500000),
        (5132, 423, 'ImageProduct/423/423_05.png', null, 5097, 200, 500000),
        (5133, 423, 'ImageProduct/423/423_06.png', null, 5098, 200, 500000),
        (5134, 424, 'ImageProduct/424/424_01.png', null, 5099, 300, 400000),
        (5135, 424, 'ImageProduct/424/424_02.png', null, 5100, 300, 400000),
        (5136, 424, 'ImageProduct/424/424_03.png', null, 5101, 300, 400000),
        (5137, 425, 'ImageProduct/425/425_01.png', null, 5102, 300, 190000),
        (5138, 425, 'ImageProduct/425/425_02.png', null, 5103, 300, 190000),
        (5139, 425, 'ImageProduct/425/425_03.png', null, 5104, 300, 190000),
        (5140, 425, 'ImageProduct/425/425_04.png', null, 5105, 300, 190000),
        (5141, 425, 'ImageProduct/425/425_05.png', null, 5106, 300, 190000),
        (5142, 425, 'ImageProduct/425/425_06.png', null, 5107, 300, 190000),
        (5143, 425, 'ImageProduct/425/425_07.png', null, 5108, 300, 190000),
        (5144, 425, 'ImageProduct/425/425_08.png', null, 5109, 300, 190000),
        (5145, 426, 'ImageProduct/426/426_01.png', null, 5110, 20, 400000),
        (5146, 426, 'ImageProduct/426/426_02.png', null, 5111, 20, 400000),
        (5147, 427, 'ImageProduct/427/427_01.png', null, 5112, 120, 400000),
        (5148, 427, 'ImageProduct/427/427_02.png', null, 5113, 120, 400000),
        (5149, 428, 'ImageProduct/428/428_0.png', null, null, 130, 1390000),
        (5150, 429, 'ImageProduct/429/429_01.png', 5114, 5115, 200, 180000),
        (5151, 429, 'ImageProduct/429/429_02.png', 5116, 5115, 200, 180000),
        (5152, 429, 'ImageProduct/429/429_03.png', 5117, 5115, 200, 180000),
        (5153, 430, 'ImageProduct/430/430_01.png', null, 5118, 200, 380000),
        (5154, 430, 'ImageProduct/430/430_02.png', null, 5119, 200, 380000),
        (5155, 430, 'ImageProduct/430/430_03.png', null, 5120, 200, 380000),
        (5156, 430, 'ImageProduct/430/430_04.png', null, 5121, 200, 380000),
        (5157, 430, 'ImageProduct/430/430_05.png', null, 5122, 200, 380000),
        (5158, 430, 'ImageProduct/430/430_06.png', null, 5123, 200, 380000),
        (5159, 431, 'ImageProduct/431/431_0.png', null, null, 200, 1500000),
        (5160, 432, 'ImageProduct/432/432_01.png', null, 5124, 400, 500000),
        (5161, 432, 'ImageProduct/432/432_02.png', null, 5125, 400, 500000),
        (5162, 432, 'ImageProduct/432/432_03.png', null, 5126, 400, 500000),
        (5163, 433, 'ImageProduct/433/433_01.png', null, 5127, 500, 1000000),
        (5164, 433, 'ImageProduct/433/433_02.png', null, 5128, 500, 1000000),
        (5165, 433, 'ImageProduct/433/433_03.png', null, 5129, 500, 1000000),
        (5166, 433, 'ImageProduct/433/433_04.png', null, 5130, 500, 1000000),
        (5167, 434, 'ImageProduct/434/434_01.png', null, 5131, 200, 300000),
        (5168, 434, 'ImageProduct/434/434_02.png', null, 5132, 200, 300000),
        (5169, 434, 'ImageProduct/434/434_03.png', null, 5133, 200, 300000),
        (5170, 434, 'ImageProduct/434/434_04.png', null, 5134, 200, 300000),
        (5171, 435, 'ImageProduct/435/435_01.png', null, 5135, 200, 528000),
        (5172, 435, 'ImageProduct/435/435_02.png', null, 5136, 300, 528000),
        (5173, 435, 'ImageProduct/435/435_03.png', null, 5137, 300, 1056000),
        (5174, 436, 'ImageProduct/436/436_0.png', null, null, 300, 968000),
        (5175, 437, 'ImageProduct/437/437_0.png', null, null, 400, 528000),
        (5176, 438, 'ImageProduct/438/438_0.png', null, null, 500, 572000),
        (5177, 439, 'ImageProduct/439/439_0.png', null, null, 500, 660000),
        (5178, 440, 'ImageProduct/440/440_0.png', null, null, 200, 140000),
        (5179, 441, 'ImageProduct/441/441_0.png', null, null, 400, 308000),
        (5180, 442, 'ImageProduct/442/442_0.png', null, null, 400, 160000),
        (5181, 443, 'ImageProduct/443/443_0.png', null, null, 400, 572000),
        (5182, 444, 'ImageProduct/444/444_0.png', null, null, 500, 330000),
        (5183, 445, 'ImageProduct/445/445_0.png', null, null, 300, 160000),
        (5184, 446, 'ImageProduct/446/446_0.png', null, null, 500, 440000),
        (5185, 447, 'ImageProduct/447/447_0.png', null, null, 500, 160000),
        (5186, 448, 'ImageProduct/448/448_0.png', null, null, 300, 990000),
        (5187, 449, 'ImageProduct/449/449_0.png', null, null, 300, 572000),
        (5188, 450, 'ImageProduct/450/450_0.png', null, null, 500, 550000),
        (5189, 451, 'ImageProduct/451/451_0.png', null, null, 500, 550000),
        (5190, 452, 'ImageProduct/452/452_0.png', null, null, 500, 550000),
        (5191, 453, 'ImageProduct/453/453_01.png', null, 5138, 200, 526000),
        (5192, 453, 'ImageProduct/453/453_02.png', null, 5139, 200, 660000),
        (5193, 454, 'ImageProduct/454/454_0.png', null, null, 500, 902000);


<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đơn hàng của tôi</title>
    <script defer type="module" src="./GenerateSideBar.js"></script>
    <script defer type="module" src="./Order.js"></script>
    <link rel="stylesheet" type="text/css" href="../style.css">
    <link rel="stylesheet" type="text/css" href="../Top-Bar.css">
    <link rel="stylesheet" type="text/css" href="../Footer.css">
    <link rel="stylesheet" href="./UAASCommon.css">
    <link rel="stylesheet" href="../Pop_ups.css">
    <link rel="stylesheet" href="../CommonCSS.css">
    <link rel="stylesheet" href="./assets/css/Order.css">
</head>

<body class="Color-White">

    <div id="toast">
    </div>
    <h3 class="title">ĐƠN MUA</h3>
    <div class="UAAS_wrap pad-l-r-170">
        <main class="Order_content">
            <div id="nav">
                <a class="nav-item btn">Tất cả</a>
                <a class="nav-item btn">Chờ thanh toán</a>
                <a class="nav-item btn">Vận chuyển</a>
                <a class="nav-item btn">Hoàn thành</a>
                <a class="nav-item btn">Đã hủy</a>
                <a class="nav-item btn">Trả hàng/Hoàn tiền</a>
            </div>

            <form class="search_form" action="" method="post">
                <input type="search" id="search" placeholder="Tìm kiếm theo tên shop, id đơn hàng hoặc tên sản phẩm">
                <i class="fa-solid fa-search"></i>
            </form>

            <div class="wrap">
                <div class="Order_item">
                    <div class="header">
                        <div class="shop">
                            <img src=".././img/Logo/Avatar.png" alt="" class="shop_avatar">
                            Tên Shop
                        </div>
                        <div class="status">Giao hàng thành công</div>
                    </div>

                    <div class="content">
                        <div class="product">
                            <img src="../img/Product/T-Shirt.jpeg" alt="" class="product_img">
                            <div class="product_info">
                                <div class="name">Quần sort jean nữ KABICO kaki nữ lưng cao, quần sooc đùi jean cạp cao
                                    ống
                                    rộng cắt gấu C3</div>
                                <div class="variant">Phân loại hàng: Đen, S</div>
                                <div class="qty_and_price">
                                    <div class="qty">Số lượng: 2</div>
                                    <div class="price">
                                        <span class="old_price">200.000đ</span>
                                        <span class="new_price">100.000đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product">
                            <img src="../img/Product/T-Shirt.jpeg" alt="" class="product_img">
                            <div class="product_info">
                                <div class="name">Quần sort jean nữ KABICO kaki nữ lưng cao, quần sooc đùi jean cạp cao
                                    ống
                                    rộng cắt gấu C3</div>
                                <div class="variant">Phân loại hàng: Đen, S</div>
                                <div class="qty_and_price">
                                    <div class="qty">Số lượng: 2</div>
                                    <div class="price">
                                        <span class="old_price">200.000đ</span>
                                        <span class="new_price">100.000đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product">
                            <img src="../img/Product/T-Shirt.jpeg" alt="" class="product_img">
                            <div class="product_info">
                                <div class="name">Quần sort jean nữ KABICO kaki nữ lưng cao, quần sooc đùi jean cạp cao
                                    ống
                                    rộng cắt gấu C3</div>
                                <div class="variant">Phân loại hàng: Đen, S</div>
                                <div class="qty_and_price">
                                    <div class="qty">Số lượng: 2</div>
                                    <div class="price">
                                        <span class="old_price">200.000đ</span>
                                        <span class="new_price">100.000đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product">
                            <img src="../img/Product/T-Shirt.jpeg" alt="" class="product_img">
                            <div class="product_info">
                                <div class="name">Quần sort jean nữ KABICO kaki nữ lưng cao, quần sooc đùi jean cạp cao
                                    ống
                                    rộng cắt gấu C3</div>
                                <div class="variant">Phân loại hàng: Đen, S</div>
                                <div class="qty_and_price">
                                    <div class="qty">Số lượng: 2</div>
                                    <div class="price">
                                        <span class="old_price">200.000đ</span>
                                        <span class="new_price">100.000đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product">
                            <img src="../img/Product/T-Shirt.jpeg" alt="" class="product_img">
                            <div class="product_info">
                                <div class="name">Quần sort jean nữ KABICO kaki nữ lưng cao, quần sooc đùi jean cạp cao
                                    ống
                                    rộng cắt gấu C3</div>
                                <div class="variant">Phân loại hàng: Đen, S</div>
                                <div class="qty_and_price">
                                    <div class="qty">Số lượng: 2</div>
                                    <div class="price">
                                        <span class="old_price">200.000đ</span>
                                        <span class="new_price">100.000đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="product">
                            <img src="../img/Product/T-Shirt.jpeg" alt="" class="product_img">
                            <div class="product_info">
                                <div class="name">Quần sort jean nữ KABICO kaki nữ lưng cao, quần sooc đùi jean cạp cao
                                    ống
                                    rộng cắt gấu C3</div>
                                <div class="variant">Phân loại hàng: Đen, S</div>
                                <div class="qty_and_price">
                                    <div class="qty">Số lượng: 2</div>
                                    <div class="price">
                                        <span class="old_price">200.000đ</span>
                                        <span class="new_price">100.000đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="footer">
                        <div class="qty_and_total">
                            <div class="qty">6 sản phẩm</div>
                            <div class="total">
                                Tổng tiền: <span>100.000đ</span>
                            </div>
                        </div>
                        <div class="choice">
                            <p>Vui lòng chỉ nhấn “Đã nhận được hàng” khi đơn hàng đã được giao đến bạn và sản phẩm nhận
                                được
                                không có vấn đề nào.</p>
                            <div class="action">
                                <button class="btn btn1">Đánh giá</button>
                                <button class="btn btn2">Yêu cầu trả hàng hoàn tiền</button>
                                <button class="btn btn2">Liên hệ người bán</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
</body>

</html>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
    <%@ include file="common/taglib.jsp" %>
        <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

            <!DOCTYPE html>
            <html lang="vi">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Search</title>
                <link rel="stylesheet" type="text/css" href="style.css">
                <link rel="stylesheet" type="text/css" href="Top-Bar.css">
                <link rel="stylesheet" type="text/css" href="Footer.css">
                <link rel="stylesheet" type="text/css" href="CommonCSS.css">
                <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
                <link rel="stylesheet" href="Search.css">
                <link rel="stylesheet" href="grid.css">
            </head>

            <body>
                <%@ include file="Top-Bar.jsp" %>
                    <fmt:setLocale value="vi_VN" />
                    <div class="Search_wrap">
                        <aside class="S_sidebar">
                            <h3>Bộ lọc tìm kiếm</h3>
                            <div class="S_catalog">
                                <h4 class="S_sidebar-title">Theo danh mục</h4>
                                <div class="S_catalog-content">
                                    <div class="checkbox-group">
                                        <div class="Checkbox_item">
                                            <input type="checkbox" class="S_catalog-item" id="catalog-item1">
                                            <label for="catalog-item1">Thời trang</label>
                                        </div>

                                        <div>
                                            <input type="checkbox" class="S_catalog-item" id="catalog-item2">
                                            <label for="catalog-item2">Đồng hồ</label>
                                        </div>

                                        <div>
                                            <input type="checkbox" class="S_catalog-item" id="catalog-item3">
                                            <label for="catalog-item3">Giày dép</label>
                                        </div>

                                        <div>
                                            <input type="checkbox" class="S_catalog-item" id="catalog-item4">
                                            <label for="catalog-item4">Thiết bị gia dụng</label>
                                        </div>
                                    </div>
                                    <span class="S_seemore">Xem thêm <i class="fa-solid fa-chevron-down"></i></span>
                                </div>
                            </div>

                            <div class="S_price">
                                <h4 class="S_sidebar-title">Giá tiền</h4>
                                <div class="S_price-content">
                                    <div>
                                        <i class="fa-solid fa-dollar-sign"></i>
                                        <input type="number" id="min-price" name="min-price" min="0" max="1000">
                                    </div>
                                    <i class="fa-solid fa-arrow-right"></i>
                                    <div>
                                        <i class="fa-solid fa-dollar-sign"></i>
                                        <input type="number" id="max-price" name="max-price" min="0" max="1000">
                                    </div>
                                </div>
                            </div>

                            <div class="S_place">
                                <h4 class="S_sidebar-title">Nơi bán</h4>
                                <div class="S_place-content">
                                    <div class="checkbox-group">
                                        <div class="Checkbox_item">
                                            <input type="checkbox" class="S_place-item" id="place-item1">
                                            <label for="place-item1">Hà Nội</label>
                                        </div>

                                        <div>
                                            <input type="checkbox" class="S_place-item" id="place-item2">
                                            <label for="place-item2">Thành phố Hồ Chí Minh</label>
                                        </div>

                                        <div>
                                            <input type="checkbox" class="S_place-item" id="place-item3">
                                            <label for="place-item3">Đà Nẵng</label>
                                        </div>

                                        <div>
                                            <input type="checkbox" class="S_place-item" id="place-item4">
                                            <label for="place-item4">Quảng Trị</label>
                                        </div>

                                        <div>
                                            <input type="checkbox" class="S_place-item" id="place-item5">
                                            <label for="place-item5">Đăk Lăk</label>
                                        </div>
                                    </div>
                                    <span class="S_seemore">Xem thêm <i class="fa-solid fa-chevron-down"></i></span>
                                </div>
                            </div>

                            <div class="S_rating">
                                <h4 class="S_sidebar-title">Đánh giá</h4>
                                <div class="S_rating-content">
                                    <div class="rating_item">
                                        <input type="checkbox" name="" id="">
                                        <img src="./img/Search/Rating group.png" alt="">
                                    </div>

                                    <div class="rating_item">
                                        <input type="checkbox" name="" id="">
                                        <img src="./img/Search/Rating group-2.png" alt="">
                                        <span>Trở lên</span>
                                    </div>
                                    <div class="rating_item">
                                        <input type="checkbox" name="" id="">
                                        <img src="./img/Search/Rating group-3.png" alt="">
                                        <span>Trở lên</span>
                                    </div>
                                    <div class="rating_item">
                                        <input type="checkbox" name="" id="">
                                        <img src="./img/Search/Rating group-4.png" alt="">
                                        <span>Trở lên</span>
                                    </div>
                                    <div class="rating_item">
                                        <input type="checkbox" name="" id="">
                                        <img src="./img/Search/Rating group-5.png" alt="">
                                        <span>Trở lên</span>
                                    </div>
                                </div>
                            </div>
                            <button class="btn S_price_btn">Áp dụng</button>
                        </aside>

                        <main class="S_content">
                            <div class="S_shop">
                                <div class="S_big_title">
                                    <h3>Shop liên quan "Lorem ispum"</h3>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </span>
                                </div>

                                <div class="S_shop_wrap">
                                    <div class="S_Shop_info">
                                        <img src="./img/Shop/Avatar.png" alt="#">
                                        <h3>Tên shop</h3>
                                        <div class="S_Shop_rating">
                                            <span>
                                                <i class="fa-solid fa-star"></i>
                                                4.9 | 60k lượt theo dõi
                                            </span>
                                        </div>
                                        <a href="./Shop.jsp" class="S_Shop_btn btn">Xem shop</a>
                                    </div>

                                    <div class="S_Shop_product">
                                        <div class="Card">
                                            <a href="./Product_Details.jsp">
                                                <img class="Card-Image" src="./img/Product/T-Shirt.jpeg"
                                                    alt="Ảnh sản phẩm">
                                                <span class="Hot">Hot</span>
                                                <span class="Sale">-50%</span>
                                            </a>
                                            <div class="Card_top">
                                                <a href="./Product_Details.jsp">
                                                    <h3>Áo thun nữ co dán</h3>
                                                </a>
                                                <a class="Card_shop" href="Shop.jsp">
                                                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                    <span>Tên shop</span>
                                                </a>
                                            </div>
                                            <div class="Card_bot">
                                                <div class="Card_price">
                                                    <span class="oldPrice">238.000đ</span>
                                                    <span class="newPrice">150.000đ</span>
                                                </div>

                                                <div class="Card_rating">
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="Card">
                                            <a href="./Product_Details.jsp">
                                                <img class="Card-Image" src="./img/Product/T-Shirt.jpeg"
                                                    alt="Ảnh sản phẩm">
                                                <span class="Hot">Hot</span>
                                                <span class="Sale">-50%</span>
                                            </a>
                                            <div class="Card_top">
                                                <a href="./Product_Details.jsp">
                                                    <h3>Áo thun nữ co dán</h3>
                                                </a>
                                                <a class="Card_shop" href="Shop.jsp">
                                                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                    <span>Tên shop</span>
                                                </a>
                                            </div>
                                            <div class="Card_bot">
                                                <div class="Card_price">
                                                    <span class="oldPrice">238.000đ</span>
                                                    <span class="newPrice">150.000đ</span>
                                                </div>

                                                <div class="Card_rating">
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="Card">
                                            <a href="./Product_Details.jsp">
                                                <img class="Card-Image" src="./img/Product/T-Shirt.jpeg"
                                                    alt="Ảnh sản phẩm">
                                                <span class="Hot">Hot</span>
                                                <span class="Sale">-50%</span>
                                            </a>
                                            <div class="Card_top">
                                                <a href="./Product_Details.jsp">
                                                    <h3>Áo thun nữ co dán</h3>
                                                </a>
                                                <a class="Card_shop" href="Shop.jsp">
                                                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                    <span>Tên shop</span>
                                                </a>
                                            </div>
                                            <div class="Card_bot">
                                                <div class="Card_price">
                                                    <span class="oldPrice">238.000đ</span>
                                                    <span class="newPrice">150.000đ</span>
                                                </div>

                                                <div class="Card_rating">
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <i class="fa-solid fa-star"></i>
                                                    <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                                </div>
                                            </div>
                                        </div>

                                        <button><i class="fa-solid fa-chevron-right"></i></button>
                                    </div>
                                </div>
                            </div>

                            <div class="S_product">
                                <div class="S_big_title">
                                    <h3>Sản phẩm liên quan "Lorem ispum"</h3>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </span>
                                </div>

                                <div class="S_Product_list">
                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="Card">
                                        <a href="./Product_Details.jsp">
                                            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                                            <span class="Hot">Hot</span>
                                            <span class="Sale">-50%</span>
                                        </a>
                                        <div class="Card_top">
                                            <a href="./Product_Details.jsp">
                                                <h3>Áo thun nữ co dán</h3>
                                            </a>
                                            <a class="Card_shop" href="Shop.jsp">
                                                <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                                                <span>Tên shop</span>
                                            </a>
                                        </div>
                                        <div class="Card_bot">
                                            <div class="Card_price">
                                                <span class="oldPrice">238.000đ</span>
                                                <span class="newPrice">150.000đ</span>
                                            </div>

                                            <div class="Card_rating">
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <i class="fa-solid fa-star"></i>
                                                <span class="Card_ratingCount">(62.5k đánh giá) </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="Page_num" style="width: 650px;">
                                <div class="num_item" id="Page_pre"><i class="fa-solid fa-chevron-left"></i></div>
                                <div class="num_item">1</div>
                                <div class="num_item">2</div>
                                <div class="num_item">3</div>
                                <div class="num_item">4</div>
                                <div class="num_item">5</div>
                                <div class="num_item">...</div>
                                <div class="num_item">20</div>
                                <div class="num_item" id="Page_next"><i class="fa-solid fa-chevron-right"></i></div>
                            </div>
                        </main>
                    </div>
                    <%@ include file="Footer.jsp" %>
            </body>

            </html>
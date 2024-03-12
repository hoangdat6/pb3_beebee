<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Shop</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <link rel="stylesheet" type="text/css" href="./CommonCSS.css">
    <link rel="stylesheet" type="text/css" href="./Top-Bar.css">
    <link rel="stylesheet" type="text/css" href="./Footer.css">
    <link rel="stylesheet" type="text/css" href="./Shop.css">
    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="./main.js"></script>
</head>

<body>
<%@ include file="Top-Bar.jsp" %>
<div id="Shop_header">
    <img src="./img/Shop/Background.png" alt="Ảnh bìa" class="Shop_background">
    <div class="Shop_infor">
        <img src="./img/Shop/Avatar.png" alt="Ảnh đại diện" class="Shop_image">
        <div class="Shop_desc">
            <div class="col">
                <h3 class="Shop_name">Tên Shop</h3>
                <p class="Shop_evaluate"><img src="./img/Shop/Star Icon.svg" alt=""> 4.9 | 60k lượt theo dõi
                </p>
            </div>
            <div class="col">
                <p class="Shop_subHeading"><img src="./img/Shop/Product Icon.svg" alt="Sản phẩm">Sản
                    phẩm:
                    <span class="Shop_subVal">650</span>
                </p>
                <p class="Shop_subHeading"> <img src="./img/Shop/Chat.svg" alt="Chat">Tỉ lệ phản hồi
                    chat:
                    <span class="Shop_subVal">99% (Trong vài giờ)</span>
                </p>
            </div>
            <div class="col">
                <p class="Shop_subHeading"><img src="./img/Shop/Location icon.svg" alt="">Vị trí:
                    <span class="Shop_subVal">Đà Nẵng</span>
                </p>
                <p class="Shop_subHeading"><img src="./img/Shop/ThamGiaIcon.svg" alt="Tham gia">Tham gia:
                    <span class="Shop_subVal">5 năm</span>
                </p>
            </div>
            <input class="Follow_btn btn" type="submit" value="+ Theo dõi">
        </div>
    </div>
</div>

<div id="Shop_content">
    <div class="Shop_content--Header pad-l-r-170">
        <a href="#">
            Dạo
        </a>
        <a href="#">Sản phẩm mới nhất</a>
        <a href="#">
            Top sản phẩm bán chạy
        </a>
        <a href="#">
            Tất cả sản phẩm
        </a>
    </div>

    <img class="Big_image" src="./img/Shop/Slider.png" alt="Big Image">

    <div class="Product_list pad-l-r-170">
        <div class="Card">
            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
            <span class="Hot">Hot</span>
            <span class="Sale">-50%</span>
            <div class="Card_top">
                <h3>Áo thun nữ co dán</h3>
                <div class="Card_shop">
                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                    <span>Tên shop</span>
                </div>
            </div>
            <div class="Card_bot">
                <div class="Card_bot-left">
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

                <div class="Card_logo">
                    <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
                    <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
                </div>
            </div>
        </div>

        <div class="Card">
            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
            <span class="Hot">Hot</span>
            <span class="Sale">-50%</span>
            <div class="Card_top">
                <h3>Áo thun nữ co dán sfd fsd fsd sfd sfd sfd sdf fsd sfd sdf sdf sdf s sfd s fsdf sdf </h3>
                <div class="Card_shop">
                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                    <span>Tên shop</span>
                </div>
            </div>
            <div class="Card_bot">
                <div class="Card_bot-left">
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

                <div class="Card_logo">
                    <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
                    <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
                </div>
            </div>
        </div>
        <div class="Card">
            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
            <span class="Hot">Hot</span>
            <span class="Sale">-50%</span>
            <div class="Card_top">
                <h3>Áo thun nữ co dán</h3>
                <div class="Card_shop">
                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                    <span>Tên shop</span>
                </div>
            </div>
            <div class="Card_bot">
                <div class="Card_bot-left">
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

                <div class="Card_logo">
                    <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
                    <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
                </div>
            </div>
        </div>
        <div class="Card">
            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
            <span class="Hot">Hot</span>
            <span class="Sale">-50%</span>
            <div class="Card_top">
                <h3>Áo thun nữ co dán</h3>
                <div class="Card_shop">
                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                    <span>Tên shop</span>
                </div>
            </div>
            <div class="Card_bot">
                <div class="Card_bot-left">
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

                <div class="Card_logo">
                    <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
                    <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
                </div>
            </div>
        </div>
        <div class="Card">
            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
            <span class="Hot">Hot</span>
            <span class="Sale">-50%</span>
            <div class="Card_top">
                <h3>Áo thun nữ co dán</h3>
                <div class="Card_shop">
                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                    <span>Tên shop</span>
                </div>
            </div>
            <div class="Card_bot">
                <div class="Card_bot-left">
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

                <div class="Card_logo">
                    <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
                    <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
                </div>
            </div>
        </div>
        <div class="Card">
            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
            <span class="Hot">Hot</span>
            <span class="Sale">-50%</span>
            <div class="Card_top">
                <h3>Áo thun nữ co dán</h3>
                <div class="Card_shop">
                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                    <span>Tên shop</span>
                </div>
            </div>
            <div class="Card_bot">
                <div class="Card_bot-left">
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

                <div class="Card_logo">
                    <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
                    <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
                </div>
            </div>
        </div>
        <div class="Card">
            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
            <span class="Hot">Hot</span>
            <span class="Sale">-50%</span>
            <div class="Card_top">
                <h3>Áo thun nữ co dán</h3>
                <div class="Card_shop">
                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                    <span>Tên shop</span>
                </div>
            </div>
            <div class="Card_bot">
                <div class="Card_bot-left">
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

                <div class="Card_logo">
                    <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
                    <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
                </div>
            </div>
        </div>
        <div class="Card">
            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
            <span class="Hot">Hot</span>
            <span class="Sale">-50%</span>
            <div class="Card_top">
                <h3>Áo thun nữ co dán</h3>
                <div class="Card_shop">
                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                    <span>Tên shop</span>
                </div>
            </div>
            <div class="Card_bot">
                <div class="Card_bot-left">
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

                <div class="Card_logo">
                    <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
                    <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
                </div>
            </div>
        </div>
        <div class="Card">
            <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
            <span class="Hot">Hot</span>
            <span class="Sale">-50%</span>
            <div class="Card_top">
                <h3>Áo thun nữ co dán</h3>
                <div class="Card_shop">
                    <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
                    <span>Tên shop</span>
                </div>
            </div>
            <div class="Card_bot">
                <div class="Card_bot-left">
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

                <div class="Card_logo">
                    <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
                    <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
                </div>
            </div>
        </div>

    </div>

    <div id="Shop_slider">
        <div class="Sliders">
            <div class="slider" style="background-image: url(./img/Shop/Slider.png)"></div>
            <div class="slider" style="background-image: url(./img/Shop/Slider2.avif)" alt="#"> </div>
            <div class="slider" style="background-image: url(./img/Shop/Slider3.avif)" alt="#"> </div>
            <div class="slider" style="background-image: url(./img/Shop/Slider4.avif)" alt="#"></div>
        </div>
        <button id="Shop_pre" class="btn"><i class="fa-solid fa-chevron-left"></i></button>
        <button id="Shop_next" class="btn"><i class="fa-solid fa-chevron-right"></i></button>
        <div class="Order">
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
        </div>
    </div>
    <script type="text/javascript" src="./Shop.js"></script>

    <img src="./img/Shop/BaoHanh.png" alt="Chính sách bảo hành">

    <div id="Shop_product">
        <main>
            <div class="Filter pad-l-r-170">
                <form class="Shop_search_container" action="#" method="post">
                    <input type="search" name="Shop_search" id="Shop_search"
                           placeholder="Tìm kiếm sản phẩm">
                    <i class="fa-solid fa-search"></i>
                </form>
                <h3>Sắp xếp theo</h3>
                <span class="Filter_item">Phổ biến</span>
                <span class="Filter_item">Mới nhất</span>
                <div class="Filter_price">
                    <span style="font-size: 16px; font-weight: 500;">Giá</span>
                    <select name="Lọc giá" id="Filter">
                        <option value="low">Thấp đến cao</option>
                        <option value="high">Cao đến thấp</option>
                    </select>
                </div>
                <span class="Filter_item">Bán chạy</span>
            </div>
            <div class="Product_list pad-l-r-170 pad-t-b-30">
                <% for (int i = 0; i < 20; i++) { %>
                <div class="Card">
                    <a href="./Product_Details.jsp">
                        <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
                        <span class="Hot">Hot</span>
                        <span class="Sale">-50%</span>
                    </a>
                    <div class="Card_top">
                        <h3>Áo thun nữ co dán</h3>
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
                <% } %>
            </div>
        </main>
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

<%@ include file="Footer.jsp" %>
</body>

</html>
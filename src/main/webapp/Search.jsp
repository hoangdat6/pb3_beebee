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
                <script src="Card.js"></script>
            </head>

            <body>
                <%@ include file="Top-Bar.jsp" %>
                    <fmt:setLocale value="vi_VN" />
                    <div class="Search_wrap">
                        <c:choose>
                        <c:when test="${searchsellers.size() > 0}">
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
<%--                                    <c:forEach items="${searchsellers}" var="searchseller">--%>
                                        <h3>SHOP LIÊN QUAN ĐẾN "${searchsellers[0].shopName}" </h3>
<%--                                    </c:forEach>--%>
<%--                                    <c:if test="${sessionScope.get('searchproducts') != null}">--%>
<%--                                        <h3>Shop liên quan ${sessionScope.get('searchsellers')[0].shopName} </h3>--%>
<%--                                    </c:if>--%>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </span>
                                </div>

                                <div class="S_shop_wrap">
                                    <div class="S_Shop_info">
                                        <img src="${searchsellers[0].avatar}" alt="#">
                                        <h3>${searchsellers[0].shopName}</h3>
                                        <div class="S_Shop_rating">
                                            <span>
                                                <i class="fa-solid fa-star"></i>${searchsellers[0].views} | 60k lượt theo dõi
                                            </span>
                                        </div>
                                        <a href="<c:url value="/shop?id=${searchsellers[0].id != null ? searchsellers[0].id : 0}"/>" class="S_Shop_btn btn">Xem shop</a>
                                    </div>
                                    <div class="S_Shop_product">
                                        <script>
                                            <c:set var="count" value="0" />
                                            <c:forEach items="${searchproducts}" var="searchproduct">
                                            <c:if test="${searchproduct.sellerId == searchsellers[0].id and count lt 3}">
                                            var productUrl = '<c:url value="/product?id=${searchproduct.id}" />';
                                            var sellerName = "${searchproduct.sellerName != null ? searchproduct.sellerName : 'Tên Shop'}";
                                            var sellerUrl = "<c:url value="/shop?id=${searchproduct.sellerId != null ? searchproduct.sellerId : 0}"/>";
                                            var sellerAvatar = "${searchproduct.sellerAvatar != null ? searchproduct.sellerAvatar : 'img/Brand/Coffee.jpeg'}";
                                            document.querySelector('.S_shop_wrap .S_Shop_product').innerHTML += createCard({
                                                name: "${searchproduct.name}",
                                                price: "${searchproduct.price}",
                                                discount: "${searchproduct.discount}",
                                                imgPath: "${searchproduct.imgPath}",
                                                sellerName: sellerName,
                                                productUrl: productUrl,
                                                sellerUrl: sellerUrl,
                                                sellerAvatar: sellerAvatar
                                            });
                                            <c:set var="count" value="${count + 1}" />
                                            </c:if>
                                            </c:forEach>
                                        </script>
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
                                        <script>
                                            <c:forEach items="${searchproducts}" var="searchproduct">
                                            var productUrl = '<c:url value="/product?id=${searchproduct.id}" />';
                                            var sellerName = "${searchproduct.sellerName != null ? searchproduct.sellerName : 'Tên Shop'}";
                                            var sellerUrl = "<c:url value="/shop?id=${searchproduct.sellerId != null ? searchproduct.sellerId : 0}"/>";
                                            var sellerAvatar = "${searchproduct.sellerAvatar != null ? searchproduct.sellerAvatar : 'img/Brand/Coffee.jpeg'}";

                                            document.querySelector('.S_product .S_Product_list').innerHTML += createCard({
                                                name: "${searchproduct.name}",
                                                price: "${searchproduct.price}",
                                                discount: "${searchproduct.discount}",
                                                imgPath: "${searchproduct.imgPath}",
                                                sellerName: sellerName,
                                                productUrl: productUrl,
                                                sellerUrl : sellerUrl,
                                                sellerAvatar : sellerAvatar
                                            });
                                            </c:forEach>
                                        </script>
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
                        </c:when>
                            <c:otherwise>
                                <div style="margin: 15% auto; display: flex; justify-content: center; align-content: center">
                                    <div style="text-align: center">
                                        <h1>Không tìm thấy kết quả nào</h1>
                                        <h2>Hãy thử sử dụng các từ khóa chung chung hơn</h2>
                                    </div>

                                </div><!-- Code to execute if condition is false -->
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <%@ include file="Footer.jsp" %>
            </body>

            </html>
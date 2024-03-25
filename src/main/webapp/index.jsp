<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="CommonCSS.css">
  <link rel="stylesheet" type="text/css" href="Top-Bar.css">
  <link rel="stylesheet" type="text/css" href = "Footer.css">
  <link rel="stylesheet" type="text/css" href="style.css">
  <script type="text/javascript" src="main.js"></script>
  <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
</head>

<!--Header contain navigation-->

<body>
<%@ include file="Top-Bar.jsp" %>
<fmt:setLocale value = "vi_VN"/>

<div id="Slider">
  <div class="Slider-container">
    <span class="Slider-container__lable">Ưu đãi cuối tuần</span>
    <h2 class="Slider-container__main">Mua sắm cùng chúng tôi để có chất lượng tốt hơn và giá tốt nhất.</h2>
    <p class="Slider-container__slogan">Chúng tôi đã chuẩn bị những ưu đãi đặc biệt cho bạn trên các sản phẩm
      tiêu dùng. Đừng bỏ lỡ những cơ hội này...</p>
    <button class="btn Slider-container__btn">Khám phá ngay</button>
    <div class="Price">
      <div class="Price-Cost">
                <span class="new-Price">
                  120.000₫
                </span>
        <span class="old-Price">
                    240.000₫
                </span>
      </div>
      <div class="clear"></div>
      <div class="Price-desc">
        Đừng bỏ lỡ, thời gian khuyến mại có hạn
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</div>
<div id="Home-Content">
  <div class="Category">
    <p class="Category-Title">
      Danh mục
    </p>
    <div class="Card-Container">
      <c:forEach items="${categories}" var="category" begin="0" end="5">
        <a href='<c:url value="/catrgory/${category.id}"/>' class="Category-Card">
          <img src="img/Product/T-Shirt.jpeg" alt="Thời trang">
          <p class="Card-Desc">
            <c:out value="${category.name}"/>
          </p>
        </a>
      </c:forEach>
    </div>

  </div>
  <!-- Khu vực "DÀNH RIÊNG CHO BẠN" -->
  <div class="Product">
    <div class="Title-Container">
      <div class="Title-Desc">
        <h3>Dành riêng cho bạn</h3>
        <p>Sản phẩm mới với mức giá tốt nhất</p>
      </div>
      <button class="btn">View All <i class="fa-solid fa-arrow-right"></i></button>
    </div>
    <div class="Product_list pad-l-r-170 pad-t-b-30">
      <c:forEach items="${products}" var="product">
      <div class="Card">
        <a href='<c:url value="/product?id=${product.id}" />'>
          <img class="Card-Image" src="./img/Product/T-Shirt.jpeg" alt="Ảnh sản phẩm">
          <span class="Hot">Hot</span>
          <span class="Sale">-${product.discount}%</span>
        </a>
        <div class="Card_top">
          <a href='<c:url value="/product?id=${product.id}" />'>
            <h3>${product.name}</h3>
          </a>
          <a class="Card_shop" href="Shop.jsp">
            <img src="./img/Brand/Coffee.jpeg" alt="Ảnh cửa hàng">
            <c:if test="${product.sellerName != null}">
              <span>${product.sellerName}</span>
            </c:if>
            <c:if test="${product.sellerName == null}">
              <span>Tên Shop</span>
            </c:if>
          </a>
        </div>
        <div class="Card_bot">
          <div class="Card_price">
            <span class="oldPrice">
              <fmt:formatNumber value = "${product.price}" type = "currency"/>
            </span>
            <span class="newPrice">
              <fmt:formatNumber value = "${product.price * (1 - product.discount / 100)}" type = "currency"/>
            </span>
          </div>

          <div class="Card_rating">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <span class="Card_ratingCount">(62.5k đánh giá) </span>
          </div>

          <div class="Card_logo">
            <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
            <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
          </div>
        </div>
      </div>
      </c:forEach>

    </div>
  </div>

  <div class="Title-Container">
    <div class="Title-Desc">
      <h3>Sản phẩm hàng đầu</h3>
      <p>Các sản phẩm bán chạy và đánh giá cao</p>
    </div>
    <button class="btn">View All <i class="fa-solid fa-arrow-right"></i></button>
  </div>

  <div class="Product_list pad-l-r-170 pad-t-b-30">
    <% for (int i = 0; i < 20; i++) { %>
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

        <div class="Card_logo">
          <img src="./img/Shop/heart.svg" alt="Thêm vào mục yêu thích">
          <img src="./img/Shop/Cart.svg" alt="Thêm vào giỏ hàng">
        </div>
      </div>
    </div>
    <% } %>
  </div>

</div>
  <%@ include file="Footer.jsp" %>
</body>

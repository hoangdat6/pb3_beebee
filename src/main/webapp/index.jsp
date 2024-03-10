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
      <c:forEach var="i" begin="1" end="6">
        <a class="Category-Card">
          <img src="img/Product/T-Shirt.jpeg" alt="Thời trang">
          <p class="Card-Desc">
            Thời trang
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
    <div class="Product-List pad-l-r-170 pad-t-b-30">
      <c:forEach items="${products}" var="product">
        <a href='<c:url value="/product?id=${product.id}" />'  class="Product-Card">
          <div class="Product-Image">
            <span class="Hot">Hot</span>
            <span class="Discount">- ${product.discount}%</span>
          </div>
          <div class="Product-Desc">
            <p class="product-name">${product.name}</p>
            <div class="Brand-Avatar"></div>
            <c:if test="product.sellerName == null">
            <label for="Brand-Avatar">Tên Shop</label>
            </c:if>
            <c:if test="product.sellerName != null">
            <label for="Brand-Avatar">${product.sellerName}dsad</label>
            </c:if>
            <div class="clear"></div>
            <div class="Line"></div>
            <div class="Product-Bot-Container">
              <div class="Product-Price">
                  <span class="new-Price">
                    <fmt:formatNumber value = "${product.price * (1 - product.discount / 100)}" type = "currency"/>
                  </span>
                <span class="old-Price">
                  <fmt:formatNumber value = "${product.price}" type = "currency"/>
                  </span>
              </div>
              <div class="Product-Button">
                <i class="fa-regular fa-heart"></i>
                <i class="fa-solid fa-cart-shopping"></i>
              </div>
              <div class="Product-Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
            </div>
          </div>
        </a>
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
  <div class="Product-List pad-l-r-170 pad-t-b-30">

    <c:forEach var="i" begin="1" end="10">
    <a href="Product_Details.jsp" class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
            <span class="old-Price">
                      240.000₫
                  </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </a>
    </c:forEach>

  </div>
</div>
</div>
  <%@ include file="Footer.jsp" %>
</body>

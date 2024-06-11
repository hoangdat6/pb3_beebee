<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Trang chủ</title>
  <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
  <link rel="stylesheet" type="text/css" href = "<c:url value="/Footer.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
  <script type="text/javascript" src="<c:url value="/main.js"/>"></script>
  <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>' />
  <script src="<c:url value="/Card.js"/>"></script>
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
        <a href='<c:url value="/search?keyword=${category.name}"/>' class="Category-Card">
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
    <div class="Product_list pad-l-r-170 pad-t-b-30"></div>
      <script>
        <c:forEach items="${products}" var="product">
        var productName = '${product.name}';
        var productId = '${product.id}';
        var productUrl = `<c:url value="/product?" />`;
        var sellerName = "${product.sellerName != null ? product.sellerName : 'Tên Shop'}";
        var sellerUrl = "<c:url value="/shop?id=${product.sellerId != null ? product.sellerId : 0}"/>";
        var sellerAvatar = "${product.sellerAvatar != null ? product.sellerAvatar : 'img/Brand/Coffee.jpeg'}";

        document.querySelector('.Product .Product_list').innerHTML += createCard({
          name: "${product.name}",
          price: "${product.price}",
          discount: "${product.discount}",
          imgPath: "${product.imgPath}",
          productName: productName,
          productId : productId,
          sellerName: sellerName,
          productUrl: productUrl,
          sellerUrl : sellerUrl,
          sellerAvatar : sellerAvatar
        });
        </c:forEach>
      </script>
    <button type="button" class="btn-view_more">Xem thêm <i class="fa-solid fa-chevron-down"></i></button>
  </div>
  <div class="Product">

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
      </div>
    </div>
    <% } %>
  </div>
    <input type="button" value="Xem thêm" class="btn-view_more">

  </div>

</div>
  <%@ include file="Footer.jsp" %>
</body>

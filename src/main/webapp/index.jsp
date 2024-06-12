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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
    <div class="Product_list pad-l-r-170 pad-t-b-30" id="for-you"></div>
      <script>
        <c:forEach items="${products}" var="product">
        var productName = '${product.name}';
        var productId = '${product.id}';
        var productUrl = `<c:url value="/product?" />`;
        var sellerName = "${product.sellerName != null ? product.sellerName : 'Tên Shop'}";
        var sellerUrl = "<c:url value="/shop?id=${product.sellerId != null ? product.sellerId : 0}"/>";
        var sellerAvatar = "${product.sellerAvatar != null ? product.sellerAvatar : 'img/Brand/Coffee.jpeg'}";

        document.querySelector('#for-you').innerHTML += createCard({
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
    <input type="hidden" name="page-for_you" id="page-for_you" value="1" >
    <button type="button" class="btn-view_more" id="btn-show_more_for-you">Xem thêm <i class="fa-solid fa-chevron-down"></i></button>
  </div>
  <div class="Product">
    <div class="Title-Container">
      <div class="Title-Desc">
        <h3>Sản phẩm hàng đầu</h3>
        <p>Các sản phẩm bán chạy và đánh giá cao</p>
      </div>
      <button class="btn">View All <i class="fa-solid fa-arrow-right"></i></button>
    </div>
    <div class="Product_list pad-l-r-170 pad-t-b-30" id="top-product"></div>
      <script>
        <c:forEach items="${topProducts}" var="product">
          var productName1 = '${product.name}';
          var productId1 = '${product.id}';
          var productUrl1 = `<c:url value="/product?" />`;
          var sellerName1 = "${product.sellerName != null ? product.sellerName : 'Tên Shop'}";
          var sellerUrl1 = "<c:url value="/shop?id=${product.sellerId != null ? product.sellerId : 0}"/>";
          var sellerAvatar1 = "${product.sellerAvatar != null ? product.sellerAvatar : 'img/Brand/Coffee.jpeg'}";

          document.querySelector('#top-product').innerHTML += createCard({
            name: "${product.name}",
            price: "${product.price}",
            discount: "${product.discount}",
            imgPath: "${product.imgPath}",
            productName: productName1,
            productId : productId1,
            sellerName: sellerName1,
            productUrl: productUrl1,
            sellerUrl : sellerUrl1,
            sellerAvatar : sellerAvatar1
          });
        </c:forEach>
      </script>
      <input type="hidden" name="page-for_you" id="page-top" value="1" >
      <button type="button" class="btn-view_more" id="btn-show_more_top">Xem thêm <i class="fa-solid fa-chevron-down"></i></button>
  </div>
  <%@ include file="Footer.jsp" %>
<script src="<c:url value="/scripts.js"/>"></script>

</body>

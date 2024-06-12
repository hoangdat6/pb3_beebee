<%--<jsp:useBean id="productDetail" scope="session" type="com.example.pbl3_1.controller.dto.product.ProductDetailDTO"/>--%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${productDetail.name}</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Product-Detail.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Footer.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/ProductImagePopup.css"/>">
    <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>' />
    <link rel="stylesheet" href="<c:url value="/AlertPopUp.css"/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="main.js"></script>
    <script type="text/javascript" src="./toast.js"></script>

    <link rel="stylesheet" type="text/css" href="<c:url value="/toast.css"/>">
</head>

<body>
<%-- Header --%>
<%@ include file="Top-Bar.jsp" %>
<fmt:setLocale value="vi_VN" />
<div id="toast">

</div>

<c:set value="${productDetail.imgPath}" var="imgPath" />

<div id="PD-Content" class="pad-l-r-170">
    <div class="Product_Loop">
        <div class="Product_Loop-left">
            <div class="Product_Loop-Image">
                <div class="Main-Image" style="background: url(${productDetail.imgPath[0]}) center/cover no-repeat;" id="main_item-0">
                    <span class="Hot">Hot</span>
                    <span class="Sale" id="${productDetail.discount}">-${productDetail.discount}%</span>
                </div>
                <div class="Secondary-Image">
                    <input type="hidden" name="imgPaths" id="imgPaths" value="${imgPath}">
                    <div><i class="fa-solid fa-chevron-left Next" id="prev-left"></i></div>
                    <div id="image-container">
                        <img src="${imgPath[1]}" alt="#" class="image-item" id="item-1">
                        <img src="${imgPath[2]}" alt="#" class="image-item" id="item-2">
                        <img src="${imgPath[3]}" alt="#" class="image-item" id="item-3">
                    </div>
                    <div><i class="fa-solid fa-chevron-right Next" id="next-right"></i></div>
                </div>
            </div>
        </div>
        <div class="Product_Loop-right">
            <div class="Product-Content">
                <div class="Product-Evaluation">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                    <span>16k lượt đánh giá</span>
                </div>
                <span style="font-size: 20px; line-height: 1.6; margin: 15px 0;" id="Product-Name">${productDetail.name}</span>
                <div class="Product-Price">
                    <c:if test="${productDetail.minPrice != productDetail.maxPrice}">
                                                <span class="old-Price">
                                                    <fmt:formatNumber value="${productDetail.minPrice}" type="currency" /> -
                                                    <fmt:formatNumber value="${productDetail.maxPrice}" type="currency" />
                                                </span>
                        <span class="new-Price">
                                                    <fmt:formatNumber value="${productDetail.minPrice * (1 - productDetail.discount / 100)}" type="currency" /> -
                                                    <fmt:formatNumber value="${productDetail.maxPrice * (1 - productDetail.discount / 100)}" type="currency" />
                                                </span>
                    </c:if>

                    <c:if test="${productDetail.minPrice == productDetail.maxPrice}">
                        <span class="old-Price">
                            <fmt:formatNumber value="${productDetail.maxPrice}" type="currency" />
                        </span>
                        <span class="new-Price">
                            <fmt:formatNumber value="${productDetail.maxPrice * (1 - productDetail.discount / 100)}" type="currency" />
                        </span>
                    </c:if>

                </div>
                <div class="Product_category">
                    <input type="hidden" id="product_id" value="${productDetail.id}">
                    <c:set var="cnt" value="1" />
                    <input type="hidden" id="product_id" name="product_id" value="${productDetail.id}"/>
                    <c:forEach var="variation" items="${productDetail.variations}">
                        <div class="Category_item">
                            <h3 style="font-size: 16px; color:#333; margin-right: 20px;">${variation.name}</h3>
                            <div class="Category_container">
                                <c:forEach var="option" items="${variation.variationOptions}">
                                    <button id="${option.id}" class="Category_option${cnt}">${option.value}</button>
                                </c:forEach>
                            </div>

                        </div>
                        <c:set var="cnt" value="${cnt + 1}" />
                    </c:forEach>

                </div>
                <div style="font-size: 14px; margin-bottom: 12px"><span id="quantity">${productDetail.quantity}</span> sản phẩm có sẵn</div>
            </div>

            <div class="Product_Loop-Button">
                <c:if test="${productDetail.isProductOfSeller == false}">
                <div class="Qty">
                    <button class="btn Qty__Minus" onclick="decreaseQuantity(this)"><i
                            class="fa-solid fa-minus"></i></button>
                    <label>
                        <input class="btn Qty__Input" type="number" value="1" min="1">
                    </label>
                    <button class="btn Qty__Plus" onclick="increaseQuantity(this)"><i
                            class="fa-solid fa-plus"></i></button>
                </div>
                <button class="btn Add-to-Cart Same" onclick="saveToCart(true)">
                    <i class="fa-solid fa-cart-shopping"></i>
                    <p>Thêm vào giỏ hàng</p>
                </button>

                <button class="btn Add-to-Favorite Same">
                    <i class="fa-regular fa-heart"></i>
                    <p>Yêu thích</p>
                </button>
                </c:if>

            </div>
            <c:if test="${productDetail.isProductOfSeller == false}">
                <button class="btn Buy" id="check_out">Mua ngay</button>
            </c:if>
            <div class="Product-Menu">
                Danh mục
                <span>${productDetail.categoryName}</span>
            </div>
        </div>

    </div>
    <div class="Shop">
        <a href="<c:url value="/shop?id=${productDetail.sellerId}"/>">
            <img id="coverImgShop" src="${productDetail.sellerAvatar}" alt="Logo Shop">
        </a>
        <div class="Shop-Content">
            <a href="<c:url value="/shop?id=${productDetail.sellerId}"/>">
                <h3 id="shopName">${productDetail.sellerName}</h3>
            </a>
            <div class="Shop-Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
                <span>16k lượt đánh giá</span>
            </div>
        </div>
    </div>
    <script>
        var description = `${productDetail.description}`;
    </script>
    <div class="Tabs">
        <div class="Tabs-Menu">
            <button id="Tabs_detail" class="btn" >Thông tin chi tiết về sản phẩm</button>
            <button id="Tabs_comment" class="btn">Đánh giá</button>
        </div>
        <div id="Tabs-Content">

        </div>
    </div>
</div>
<script type="text/javascript" src="<c:url value="Product_Details.js"/>"></script>
<script defer type="text/javascript" src="<c:url value="Product_Detail_event.js"/>"></script>
<script src="<c:url value="/Pop-ups.js"/>"></script>
<script src="<c:url value="/AlertPopUp.js"/>"></script>
<script type="text/javascript" src="<c:url value="/ProductImagePopup.js"/>"></script>
<script src="<c:url value="RemovePopup.js"/>"></script>

<%@ include file="Footer.jsp" %>
</body>
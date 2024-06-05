
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giỏ Hàng</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
    <link rel="stylesheet" type="text/css" href ="<c:url value="/Footer.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/Cart.css"/>">
    <link rel="stylesheet" href="<c:url value="/AlertPopUp.css"/>">
    <script type="text/javascript" src="<c:url value="AlertPopUp.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/main.js"/>"></script>
    <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>' />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <%@ include file="Top-Bar.jsp" %>
    <fmt:setLocale value = "vi_VN"/>
<body class="Color-White">
<div id="Cart_Header">
    <h3 class="Cart_Title">
        Giỏ hàng
    </h3>
    <div class="Process_Container">
        <div class="Process_Item">
            <span class="Process_Item-Number">1</span>
            <span class="Process_Item-Title">
                            Giỏ hàng
                        </span>
        </div>

        <div class="clear"></div>

        <div class="Process_Item">
            <span class="Process_Item-Number">2</span>
            <span class="Process_Item-Title">
                            Chi tiết thanh toán
                        </span>
        </div>
        <div class="clear"></div>

        <div class="Process_Item">
            <span class="Process_Item-Number">3</span>
            <span class="Process_Item-Title">
                            Hoàn tất đơn hàng
                        </span>
        </div>
        <div class="clear"></div>

    </div>
</div>

<div id="Cart_Content">
    <main class="Cart_Table">
        <input type="hidden" name="ORDER_CART_ITEM" value="${sessionScope.get("ORDER_CART_ITEM")}">
        <div class="Table_Header">
            <div class="Check_box">
                <input type="checkbox" name="Cart_CB" id="select_all">
            </div>
            <div class="Table_Header-Product">
                <span class="Table_Header-Item">Sản phẩm</span>
            </div>
            <div class="Table_Header-Price">
                <span class="Table_Header-Item">Số lượng</span>
                <span class="Table_Header-Item">Đơn giá</span>
                <span class="Table_Header-Item">Tổng cộng</span>
            </div>
            <div style="flex: 1">

            </div>
        </div>

        <div class="Table_Content">
            <c:forEach items="${shoppingCarts}" var="shoppingcart">
                <div class="Shop_Products">
                    <input type="hidden" name="isLocked" value="${shoppingcart.isLocked}">
                    <a class="Shop_Products-Header" href="<c:url value="/shop?id=${shoppingcart.shopId}"/>">
                        <input type="hidden" name="shopId" class="shopId" value="${shoppingcart.shopId}">
                        <input type="checkbox" name="ShopPick" class="ShopPick">
                        <img src="${shoppingcart.shopAvatar}" alt="Shop" class="shop_avatar">
                        <span class="Shop_Name">${shoppingcart.shopName}</span>
                    </a>
                    <div class="Shop_Products-Content">
                        <c:forEach items="${shoppingcart.productForCartDTOList}" var="productcart">
                            <div class="Shop_Products-Cell">
                                <div class="Check_box">
                                    <input type="hidden" value="${productcart.isSoldOut}" class="isSoldOut">
                                    <input type="hidden" value="${productcart.isDeleted}" class="isDeleted">
                                    <input type="hidden" value="${productcart.isOutOfStock}" class="isOutOfStock">
                                    <input type="hidden" value="${productcart.qtyInStock}" class="qtyInStock">
                                    <label>
                                        <input type="checkbox" name="Cart_CB" class="Cart_CB">
                                    </label>
                                </div>
                                <a class="Product_Info" href="<c:url value="/product?id=${productcart.productId}"/>">
                                    <div class="Product_Info-Item">
                                        <img class="Cell_Col_1 product_img" src="${productcart.imgPath}" alt="Product Imge">
                                    </div>
                                    <div class="Product_Info-Item Detail_Info">
                                        <div class="Item-Name">
                                                ${productcart.name}
                                        </div>
                                        <div>
                                            <p class="Item-Category">
                                                    ${productcart.variations}
                                            </p>
                                        </div>
                                        <c:if test="${productcart.qtyInStock <= 10}">
                                            <span>còn ${productcart.qtyInStock} sản phẩm</span>

                                        </c:if>
                                    </div>
                                </a>

                                <div class="Cell_Col_3">
                                    <div class="Item-Qty">
                                        <input type="hidden" name="shoppingCartItemId" value="${productcart.shoppingCartItemId}">
                                        <input type="hidden" name="price" value="${productcart.price}">
                                        <input type="hidden" name="discount" value="${productcart.discount}">
                                        <input type="hidden" value="${productcart.productItemId}" name="productItemId">
                                        <button class="btn" type="submit" name="action" value="decrease" onclick="UpdateCartItem(this)"><i class="fa-solid fa-minus"></i></button>
                                        <input class="Qty__Input" name="quantity" value="${productcart.quantity}" min="1" readonly>
                                        <button class="btn" type="submit" name="action" value="increase" onclick="UpdateCartItem(this)"><i class="fa-solid fa-plus"></i></button>
                                    </div>
                                    <span class="Item-Unit_Price">
                                        <fmt:formatNumber value="${productcart.price * (1 - productcart.discount / 100.0)}" type="currency"/>
                                    </span>

                                    <span class="Item-Total_Price">
                                        <fmt:formatNumber value="${(productcart.price * (1 - productcart.discount / 100.0)) * productcart.quantity}" type="currency"/>
                                    </span>
                                </div>
                                <button class="Item-Remove" onclick="RemoveCartItem(this)" >
                                    Xóa
                                </button>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </c:forEach>
        </div>
    </main>


    <aside>
        <h3 class="Cart_Summary-Title">
            Tóm tắt đơn hàng
        </h3>
        <div class="Cart_Summary-Voucher">
            <c:forEach var="shippingMethod" items="${shippingMethods}">
                <div class="Shipping_Option-Item">
                    <input type="radio" id="shippingMethod${shippingMethod.shippingMethod.getValue()}" name="shippingMethod" value="${shippingMethod.shippingMethod.getValue()}" checked>
                    <label for="shippingMethod${shippingMethod.shippingMethod.getValue()}">${shippingMethod.name}</label>
                    <span>${shippingMethod.fee}đ</span>
                </div>
            </c:forEach>

            <div class="Total-Price">
                <span>Tổng tiền sản phẩm</span>
                <span id="total_product_price">0₫</span>
            </div>

            <div class="Total-Checkout">
                <span>Tổng tiền thanh toán</span>
                <span id="total_price">0₫</span>
            </div>
            <input class="btn" onclick="getInfo()" id="Checkout" type="submit" value="Thanh toán">
            <%--            </form>--%>
        </div>
    </aside>
</div>
<script src="<c:url value="/Pop-ups.js"/>"></script>
<script src="<c:url value="/AlertPopUp.js"/>"></script>
<script src="<c:url value="/Cart.js"/>"></script>
<%@ include file="Footer.jsp" %>
</body>
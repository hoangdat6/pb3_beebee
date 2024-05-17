
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
    <link rel="stylesheet" href="<c:url value="AlertPopUp.css"/>">
    <script type="text/javascript" src="<c:url value="AlertPopUp.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/main.js"/>"></script>
    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
    <script src="<c:url value="/Cart.js"/>"></script>
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
        <div class="Table_Header">
            <div class="Check_box">
                <input type="checkbox" name="Cart_CB">
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
            <c:forEach items="${shoppingcarts}" var="shoppingcart">
                <div class="Shop_Products">
                    <a class="Shop_Products-Header" href="<c:url value="/shop?id=${shoppingcart.sellerId}"/>">
                        <input type="checkbox" name="Shop" id="ShopPick">
                        <img src="${shoppingcart.avatar}" alt="Shop">
                        <span class="Shop_Name">${shoppingcart.shopName}</span>
                    </a>
                    <div class="Shop_Products-Content">

                        <c:forEach items="${shoppingcart.productForShoppingCarts}" var="productcart">
                            <div class="Shop_Products-Cell">
                                <div class="Check_box">
                                    <label>
                                        <input type="checkbox" name="Cart_CB">
                                    </label>
                                </div>
                                <a class="Product_Info" href="<c:url value="/product?id=${productcart.productId}"/>">
                                    <div class="Product_Info-Item">
                                        <img class="Cell_Col_1" src="${productcart.imgPath}" alt="Product Imge">
                                    </div>
                                    <div class="Product_Info-Item Detail_Info">
                                        <div class="Item-Name">
                                            ${productcart.name}
                                        </div>
                                        <div>
                                            <p class="Item-Category">
                                                    ${productcart.nameVariation1}: ${productcart.valueVariation1} <br>
                                                    ${productcart.nameVariation2}: ${productcart.valueVariation2}
                                            </p>
                                        </div>
                                    </div>
                                </a>

                                <div class="Cell_Col_3">
                                    <div class="Item-Qty">
                                        <input type="hidden" name="id" value="${productcart.id}">
                                        <input type="hidden" name="price" value="${productcart.price}">
                                        <button class="btn" type="submit" name="action" value="decrease" onclick="UpdateCartItem(this)">-</button>
                                        <input class="Qty__Input" name="quantity" value="${productcart.quantity}" min="1" readonly>
                                        <button class="btn" type="submit" name="action" value="increase" onclick="UpdateCartItem(this)">+</button>
                                    </div>
                                    <span class="Item-Unit_Price">
                                        <fmt:formatNumber value="${productcart.price}" type="currency"/>
                                    </span>

                                    <span class="Item-Total_Price">
                                        <fmt:formatNumber value="${productcart.price * productcart.quantity}" type="currency"/>
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
            <div class="Cart_Voucher">
                <i class="fa-solid fa-ticket"></i>
                <span>Voucher</span>
                <a href="#" class="Cart_Summary-Add_Voucher">
                    Chọn hoặc nhập mã
                </a>
            </div>
            <form class="Shipping_Option" action="/submit-form" method="post">
                <div class="Shipping_Option-Item">
                    <input type="radio" id="free-shipping" name="shipping-option" value="free-shipping">
                    <label for="free-shipping">Miễn phí giao hàng</label>
                    <span>0đ</span>
                </div>

                <div class="Shipping_Option-Item">
                    <input type="radio" id="fast-shipping" name="shipping-option" value="fast-shipping">
                    <label for="fast-shipping">Giao hàng nhanh</label>
                    <span>0đ</span>
                </div>

                <div class="Shipping_Option-Item">
                    <input type="radio" id="express-shipping" name="shipping-option"
                           value="express-shipping">
                    <label for="express-shipping">Giao hàng hỏa tốc</label>
                    <span>0đ</span>
                </div>

                <div class="Shipping_Option-Item">
                    <input type="radio" id="Self-pickup" name="shipping-option" value="Self-pickup">
                    <label for="Self-pickup">Tự lấy hàng</label>
                    <span>0đ</span>
                </div>

                <div class="Total-Price">
                    <span>Tổng tiền sản phẩm</span>
                    <span>0₫</span>
                </div>

                <div class="Total-Checkout">
                    <span>Tổng tiền thanh toán</span>
                    <span>0₫</span>
                </div>
                <a href="CheckOut.jsp">
                    <input class="btn" id="Checkout" type="submit" value="Thanh toán">
                </a>
            </form>
        </div>
    </aside>
</div>


<%@ include file="Footer.jsp" %>
</body>

<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh toán</title>
    <link rel="stylesheet" type="text/css" href ="<c:url value="/CommonCSS.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/Footer.css"/>">
  <link rel="stylesheet" href="<c:url value="/CheckOut.css"/>">
    <link rel="stylesheet" href="<c:url value="/PopupAddress.css"/>">
    <link rel="stylesheet" href="<c:url value="/ApplyVoucher.css"/>">


    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="main.js"></script>
    <script src="<c:url value="CheckOut.js"/>"></script>
<%--    <script src="<c:url value="Pop-ups.js"/>"></script>--%>
    <script src="<c:url value="PopupAddress.js"/>"></script>
    <script src="<c:url value="ApplyVoucher.js"/>"></script>


</head>
<%@ include file="Top-Bar.jsp" %>
<fmt:setLocale value = "vi_VN"/>
<body class="Color-White">

<div id="CO_Header">
    <h3 class="CO_Title">
        Thanh Toán
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

<div id="CO_Content">
    <section class="content_item address_content">
        <div class="title_address">
            <div class="sub_title">
                <i class="fa-solid fa-location-dot"></i>
                <h3>Địa chỉ nhận hàng</h3>
            </div>
            <div onclick="AddressPopUp()"  class="change_address">Thay đổi</div>
        </div>
        <div class="address_content--item" id="delivery_address">
            <input type="hidden" id="address_id" value="${address.id}">
            <div class="info_cus">
                ${address.fullname}, ${address.phone}
            </div>
            <div class="address_info">
                ${address.detail}, ${address.ward}, ${address.district}, ${address.province}
            </div>
        </div>
    </section>
    <section class="content_item product_content">
        <div class="header_product">
            <div class="col1">
                Sản phẩm
            </div>
            <div class="col2">
                <span>Đơn giá</span>
                <span>Thành tiền</span>
            </div>
        </div>
        <div class="product_of_shop">
            <div class="shop_content">
                <img src="SellerImages/7/avatar.png" alt="shop">
                <span>Tên Shop</span>
            </div>
            <div class="product_item">
                <div class="product_img">
                    <img src="img_product/dep_002.png" alt="">
                </div>
                <div class="product_info">
                    <span class="product_name">[NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv</span>
                    <span class="product_variation">Loại: Nâu đất, Holiday</span>
                    <span class="product_quantity">Số lượng: 2</span>
                </div>
                <div class="product_price">
                    <span class="price_item">đ180.000</span>
                    <span class="total_item">đ360.000</span>
                </div>
            </div>
            <div class="product_item">
                <div class="product_img">
                    <img src="img_product/dep_002.png" alt="">
                </div>
                <div class="product_info">
                    <span class="product_name">[NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv</span>
                    <span class="product_variation">Loại: Nâu đất, Holiday</span>
                    <span class="product_quantity">Số lượng: 2</span>
                </div>
                <div class="product_price">
                    <span class="price_item">đ180.000</span>
                    <span class="total_item">đ360.000</span>
                </div>
            </div>
            <div class="checkout_of_shop">
                <div class="shop_voucher">
                    <span>Voucher của shop</span>
                    <a href="#" class="choose_voucher">Chọn Voucher</a>
                </div>
                <div class="total_payment">
                    <div class="payment_item">
                        <span>Tổng số tiền</span>
                        <span>211000đ</span>
                    </div>
                    <div class="payment_item">
                        <span>Voucher</span>
                        <span class="voucher_money">-211000đ</span>
                    </div>
                    <div class="payment_item total_pay">
                        <span>Tổng thanh toán</span>
                        <span class="total_money">211000đ</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="product_of_shop">
            <div class="shop_content">
                <img src="SellerImages/7/avatar.png" alt="shop">
                <span>Tên Shop</span>
            </div>
            <div class="product_item">
                <div class="product_img">
                    <img src="img_product/dep_002.png" alt="">
                </div>
                <div class="product_info">
                    <span class="product_name">[NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv</span>
                    <span class="product_variation">Loại: Nâu đất, Holiday</span>
                    <span class="product_quantity">Số lượng: 2</span>
                </div>
                <div class="product_price">
                    <span class="price_item">đ180.000</span>
                    <span class="total_item">đ360.000</span>
                </div>
            </div>
            <div class="product_item">
                <div class="product_img">
                    <img src="img_product/dep_002.png" alt="">
                </div>
                <div class="product_info">
                    <span class="product_name">[NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv [NEW][V6 SIREN HOLIDAY] Son Kem Lì Merzy The First Velv</span>
                    <span class="product_variation">Loại: Nâu đất, Holiday</span>
                    <span class="product_quantity">Số lượng: 2</span>
                </div>
                <div class="product_price">
                    <span class="price_item">đ180.000</span>
                    <span class="total_item">đ360.000</span>
                </div>
            </div>
            <div class="checkout_of_shop">
                <div class="shop_voucher">
                    <span>Voucher của shop</span>
                    <div onclick="createPopupVoucher()" class="choose_voucher">Chọn Voucher</div>
                </div>
                <div class="total_payment">
                    <div class="payment_item">
                        <span>Tổng số tiền</span>
                        <span>211000đ</span>
                    </div>
                    <div class="payment_item">
                        <span>Voucher</span>
                        <span class="voucher_money">-211000đ</span>
                    </div>
                    <div class="payment_item total_pay">
                        <span>Tổng thanh toán</span>
                        <span class="total_money">211000đ</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="content_item payment_content">
        <div class="shopbee_voucher">
            <span>Voucher của sàn</span>
            <a href="#" class="shopbee_voucher--choose">Chọn Voucher</a>
        </div>
        <div class="payment_method">
            <span>Phương thức thanh toán</span>
            <div class="radio_payment-item">
                <input type="radio" name="payment_method" id="note_payment">
                <Label for="note_payment">Thanh toán khi nhận hàng</Label>
            </div>
            <div class="radio_payment-item">
                <input type="radio" name="payment_method" id="online_payment">
                <Label for="online_payment">Thanh toán bằng Momo</Label>
            </div>
        </div>
        <div class="all_order_total">
            <div></div>
            <div class="all_order_total-container">
                <div class="all_order_total-item">
                    <span>Tổng số tiền</span>
                    <span>211000đ</span>
                </div>
                <div class="all_order_total-item">
                    <span>Phí vận chuyển</span>
                    <span>21000đ</span>
                </div>
                <div class="all_order_total-item">
                    <span>Voucher</span>
                    <span>-211000đ</span>
                </div>
                <div class="all_order_total-item total_all">
                    <span>Tổng thanh toán</span>
                    <span class="total_all-money">211000đ</span>
                </div>
            </div>
        </div>
    </section>
</div>
<%@ include file="Footer.jsp" %>

<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
<script src="<c:url value="app.js"/>"></script>
<script src="<c:url value="RemovePopup.js"/>"></script>


</body>






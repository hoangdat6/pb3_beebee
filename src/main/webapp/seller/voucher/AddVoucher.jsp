<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../../common/taglib.jsp" %>

<%--
  Created by IntelliJ IDEA.
  User: dathv1612
  Date: 5/25/24
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="/seller/voucher/AddVoucher.css"/>">
    <link rel="stylesheet" href="<c:url value="/seller/product/SideBar.css"/>">
    <link rel="stylesheet" href="<c:url value="PopupChooseProduct.css"/>">
    <link rel="stylesheet" href="<c:url value="/CommonCSS.css"/>">
    <script src="<c:url value="PopupChooseProduct.js"/>"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
    <script src="<c:url value="/seller/common/SellerCommon.js"/>"></script>

    <title>Thêm voucher</title>
</head>

<body>
<%@ include file="/seller/common/SellerCommon.jsp" %>
<fmt:setLocale value = "vi_VN"/>

<div class="container">
    <section>
        <h3>Thông tin cơ bản</h3>
        <div class="content">
            <div class="info_item">
                <label for="voucher_type">Loại mã</label>
                <select name="" id="voucher_type" class="voucher_select">
                    <option value="1">voucher toàn shop</option>
                    <option value="2">Voucher sản phẩm</option>
                </select>
            </div>
            <div class="info_item">
                <label for="voucher_name">Tên voucher</label>
                <input type="text" name="voucher_name" id="voucher_name" class="common_voucher_input">
            </div>
            <div class="info_item">
                <label for="voucher_code">Mã voucher</label>
                <div class="caption_input">
                    <input type="text" name="voucher_code" id="voucher_code" class="common_voucher_input">
                    <span>Vui lòng chỉ nhập các kí tự chữ cái (A- Z), số (0 - 9); tối đa 10 kí tự</span>
                </div>
            </div>
            <div class="info_item">
                <label for="voucher_name">Thời gian áp dụng</label>
                <div class="voucher_duration">
                    <input type="datetime-local" name="start_date" id="start_date">
                    <div></div>
                    <input type="datetime-local" name="end_date" id="end_date">
                </div>
            </div>
        </div>
    </section>
    <section>
        <h3>Thiết lập mã giảm giá</h3>
        <div class="content">
            <div class="info_item">
                <label for="voucher_name">Loại mã | Mức giảm</label>
                <div class="double_input">
                    <select name="voucher_type-money" id="voucher_type-money">
                        <option value="1"> Theo phần trăm</option>
                        <option value="1"> Theo số tiền</option>
                    </select>
                    <input type="text" name="voucher_discount" id="voucher_discount">
                </div>
            </div>
            <div class="info_item">
                <label for="voucher_name">Giá trị đơn hàng tối thiểu</label>
                <input type="text" name="voucher_for_order" id="voucher_for_order" class="common_voucher_input">
            </div>
            <div class="info_item">
                <label for="voucher_code">Tổng lượt sử dụng tối đa</label>
                <div class="caption_input">
                    <input type="text" name="voucher_number" id="voucher_number" class="common_voucher_input">
                    <span>Vui lòng chỉ nhập các kí tự chữ cái (A- Z), số (0 - 9); tối đa 10 kí tự</span>
                </div>
            </div>
            <div class="info_item">
                <label for="voucher_code">Lượt sử dụng tối đa / người ...</label>
                <div class="caption_input">
                    <input type="text" name="voucher_number_use" id="voucher_number_use"
                           class="common_voucher_input">
                    <span>Vui lòng chỉ nhập các kí tự chữ cái (A- Z), số (0 - 9); tối đa 10 kí tự</span>
                </div>
            </div>
        </div>
    </section>
    <section>
        <h3>Hiển thị và áp dụng</h3>
        <div class="content">
            <div class="info_item">
                <label for="voucher_for">Thiết lập hiển thị</label>
                <select name="" id="voucher_for" class="voucher_select">
                    <option value="1">Công khai</option>
                    <option value="2">Không công khai</option>
                </select>
            </div>
            <div class="info_item">
                <label for="voucher_type">Sản phẩm được áp dụng</label>
                <input type="button" value="Thêm sản phẩm áp dụng" class="btn_apply-product" onclick="ChooseProduct()">
            </div>
        </div>
    </section>
</div>
</body>

</html>
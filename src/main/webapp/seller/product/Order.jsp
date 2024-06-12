<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đơn hàng của tôi</title>
    <script defer src="<c:url value="Order.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/seller/common/SellerCommon.css"/>">
    <link rel="stylesheet" href="<c:url value="/CommonCSS.css"/>">
    <link rel="stylesheet" href="<c:url value="Order.css"/>">
    <link rel="stylesheet" href="<c:url value="/seller/common/SellerCommon.css"/>">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>'/>
    <link rel="stylesheet" href="<c:url value="/AlertPopUp.css"/>">

</head>

<body>
<%--<%@ include file="../Top-Bar.jsp" %>--%>
<fmt:setLocale value="vi_VN" />
<c:set var="User" value="${sessionScope.get('USERMODEL')}" />
<%@ include file="../common/SellerCommon.jsp" %>
<fmt:setLocale value = "vi_VN"/>
<div id="toast">
</div>
<h3 class="title">ĐƠN BÁN</h3>
<div class="UAAS_wrap" style="display: flex; justify-content: center">
    <main class="Order_content">
        <div id="nav">
            <a class="nav-item btn active" id="0">Tất cả</a>
            <a class="nav-item btn" id="1">Chờ thanh toán</a>
            <a class="nav-item btn" id="2">Chờ xác nhận</a>
            <a class="nav-item btn" id="3">Vận chuyển</a>
            <a class="nav-item btn" id="5">Hoàn thành</a>
            <a class="nav-item btn" id="6">Đã hủy</a>
            <a class="nav-item btn" id="4">Trả hàng/Hoàn tiền</a>
        </div>

        <form class="search_form" action="" method="post">
            <input type="search" id="search" placeholder="Tìm kiếm theo tên shop, id đơn hàng hoặc tên sản phẩm">
            <i class="fa-solid fa-search"></i>
        </form>
        <div class="wrap">
        </div>
    </main>
</div>
<script>
    $(document).ready(function() {
        createSellerOrderDetailTable();
    });
</script>
<script src="<c:url value='/RemovePopup.js'/>"></script>
<script src="<c:url value="/seller/common/SellerCommon.js"/>"></script>
<script src="<c:url value="/Pop-ups.js"/>"></script>
<script src="<c:url value="/AlertPopUp.js"/>"></script>
</body>

</html>
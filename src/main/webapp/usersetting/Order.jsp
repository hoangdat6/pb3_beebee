<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đơn hàng của tôi</title>
    <script src="<c:url value="GenerateSideBar.js"/>"></script>
    <script defer src="<c:url value="Order.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="../style.css">
    <link rel="stylesheet" type="text/css" href="../Top-Bar.css">
    <link rel="stylesheet" type="text/css" href="../Footer.css">
    <link rel="stylesheet" href="./UAASCommon.css">
    <link rel="stylesheet" href="../Pop_ups.css">
    <link rel="stylesheet" href="../CommonCSS.css">
    <link rel="stylesheet" href="./assets/css/Order.css">
</head>

<body class="Color-White">
    <%@ include file="../Top-Bar.jsp" %>
    <fmt:setLocale value="vi_VN" />
    <c:set var="User" value="${sessionScope.get('USERMODEL')}" />
    <div id="toast">
    </div>
    <h3 class="title">ĐƠN MUA</h3>
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
            createOrderDetailTable();
            GenerateSideBar("Order" ,"${USERMODEL.username}", "${USERMODEL.avatar}");
        });
    </script>
    <%@ include file="../Footer.jsp" %>
    <script src="<c:url value='/RemovePopup.js'/>"></script>

</body>

</html>
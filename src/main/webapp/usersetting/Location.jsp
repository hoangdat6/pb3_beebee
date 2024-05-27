<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Địa chỉ</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Footer.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="../main.js"></script>
    <link rel="stylesheet" href="<c:url value="Pop_ups.css"/>">
    <script src="../toast.js"></script>
    <script src="./GenerateSideBar.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/toast.css"/>">
    <link rel="stylesheet" href="<c:url value="UAASCommon.css"/>">
    <link rel="stylesheet" href="<c:url value="assets/css/Location.css"/>">
</head>

<body class="Color-White">
    <%@ include file="../Top-Bar.jsp" %>
        <fmt:setLocale value="vi_VN" />
        <c:set var="User" value="${sessionScope.get('USERMODEL')}" />
        <div id="toast">
        </div>
        <h3 class="title">ĐỊA CHỈ CỦA TÔI</h3>
        <div class="UAAS_wrap pad-l-r-170">
            <main class="LO_content">
                <div id="addAddressBtn" class="btn"><i class="fa-solid fa-plus"></i> Thêm địa chỉ mới</div>
                <div class="Address_container">
                    <c:forEach items="${address}" var="address">
                    <div class="Address_item">
                        <div class="Address_item_left">
                            <div class="row1">
<<<<<<< HEAD
                                ${address.fullname} | ${address.phone}
                            </div>
                            <div class="row2">
                                <p>${address.detail}</p>
                                <p>${address.ward}, ${address.district}, ${address.province}</p>
=======
                                <span class="item_name"> Vũ Văn </span>
                                |
                                <span class="item_phone">0937******</span>
                            </div>
                            <div class="row2">
                                <p class="item_detail">h15/1 K35 Mẹ Suốt, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng</p>
                                <p>
                                    <span class="item_ward">Phường Hòa Khánh Nam</span>,
                                    <span class="item_district">Liên Chiểu</span>,
                                    <span class="item_city">Đà Nẵng</span>
                                </p>
>>>>>>> ec6ebfdd9af63626937b38aeaaeca81a1f863f9c
                            </div>
                            <div class="row3 Address_type item_name">
                                Mặc định
                            </div>
                        </div>
                        <div class="Address_item_right">
                            <div class="row1">
                                <button class="Address_remove_btn btn">Xóa</button>
                                <button class="Address_update_btn btn">Cập nhật</button>
                            </div>
                            <div class="row2 Address_set_default btn">
                                Đặt làm địa chỉ mặc định
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </main>
        </div>
        <%@ include file="../Footer.jsp" %>
        <script>
            GenerateSideBar("Location", "${User.username}");
        </script>
        <script type="text/javascript" src="./Location.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
</body>

</html>
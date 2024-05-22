<!-- <%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
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
    <link rel="stylesheet" href="<c:url value="/Pop_ups.css"/>">
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
                                ${address.fullname} | ${address.phone}
                            </div>
                            <div class="row2">
                                <p>${address.detail}</p>
                                <p>${address.ward_value}, ${address.district_value}, ${address.province_value}</p>
                            </div>
                            <c:if test="${address.isDefault}">
                            <div class="row3 Address_type">
                               Mặc định
                            </div>
                            </c:if>
                        </div>
                        <div class="Address_item_right">
                            <div class="row1">
                                <input type="hidden" name="addressId" value="${address.id}">
                                <input type="hidden" name="addressName" value="${address.fullname}">
                                <input type="hidden" name="addressDetail" value="${address.detail}">
                                <input type="hidden" name="addressPhone" value="${address.phone}">
                                <input type="hidden" name="addressWard" value="${address.ward}">
                                <input type="hidden" name="addressDistrict" value="${address.district}">
                                <input type="hidden" name="addressProvince" value="${address.province}">
                                <input type="hidden" name="addressIsDefault" value="${address.isDefault}">
                                <button class="Address_remove_btn btn" onclick="removeAddress(this)">Xóa</button>
                                <button class="Address_update_btn btn" onclick="updateAddress(this)">Cập nhật</button>
                            </div>
                            <c:if test="${!address.isDefault}">
                                <div class="row2 Address_set_default btn" onclick="SetDefault(this)">
                                    Đặt làm địa chỉ mặc định
                                </div>
                            </c:if>
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
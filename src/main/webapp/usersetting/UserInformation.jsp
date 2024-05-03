<!-- <%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information</title>
    <link rel="stylesheet" type="text/css" href="../style.css">
    <link rel="stylesheet" type="text/css" href="../Top-Bar.css">
    <link rel="stylesheet" type="text/css" href="../Footer.css">
    <link rel="stylesheet" type="text/css" href="../CommonCSS.css">
    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="../main.js"></script>
    <link rel="stylesheet" href="UserInformation.css">
    <link rel="stylesheet" href="../Pop_ups.css">
    <script type="text/javascript" src="../main.js"></script>
    <script src="../toast.js"></script>
    <script src="./GenerateSideBar.js"></script>
    <link rel="stylesheet" href="../toast.css">
    <link rel="stylesheet" href="./UAASCommon.css">
</head>

<body class="Color-White">
    <%@ include file="../Top-Bar.jsp" %>
        <fmt:setLocale value="vi_VN" />
        <c:set var="User" value="${sessionScope.get('USERMODEL')}" />
        <h1 class="UI_title">
            Tài khoản của tôi
        </h1>
        <div id="toast">
        </div>
        <div class="UAAS_wrap pad-l-r-170">
            <c:if test="${sessionScope.get('changePassStatus') == false}">
                <script>
                    showSuccessToast('Thay đổi mật khẩu thành công', ' ');
                </script>
                <c:remove var="changePassStatus" scope="session" />
            </c:if>
            <!-- <aside class="UAAS_bar UAAS_bar--UserInformation">
                <div class="UAAS_bar_top">
                    <div class="Avatar_wrapper">
                        <img class="UAAS_avatar" id="Avatar" src="../img/Product-Details/Review-Avatar-1.jpeg" alt="#">
                        <input type="file" name="fileInput" id="fileInput" style="display: none;">
                        <img class="UAAS_camera" src="../img/User_information/Camera.svg" id="cameraImage" alt="#">
                    </div>
                    <h3 class="UAAS_userName">${User.username}</h3>
                </div>
                <ul class="UAAS_bar_bot">
                    <li class="UAAS_bar_bot_item" id="UAAS_userInformation"><img src="../img/User_information/User.png" alt="#">Tài khoản
                    </li>
                    <li class="UAAS_bar_bot_item" id="UAAS_location"><img src="../img/User_information/Location.svg" alt="#">Địa
                        chỉ của tôi</li>
                    <li class="UAAS_bar_bot_item" id="UAAS_order"><img src="../img/User_information/order.png" alt="#">Đơn hàng
                        của tôi</li>
                    <li class="UAAS_bar_bot_item" id="UAAS_favorite"><img src="../img/User_information/heart.svg" alt="#">Sản phẩm
                        yêu thích</li>
                    <li class="UAAS_bar_bot_item" id="UAAS_logOut"><a href='<c:url value="/logout"/>'><img
                            src="../img/User_information/log%20out.svg" alt="#">Đăng xuất</a></li>
                </ul>
            </aside> -->

            <main class="UI_content">
                <form action='<c:url value="/changeinfor"/>' class="UI_form" method="post">
                    <h3 class="form_title">Thông tin cá nhân</h3>
                    <div class="UI_form_element">
                        <label for="UI_name">Họ và tên</label>
                        <input type="text" id="UI_name" name="UI_name"
                            value='<c:if test="${User.fullname != null}">${User.fullname}</c:if>' required>
                    </div>

                    <div class="UI_form_element">
                        <label for="UI_username">Tên đăng nhập</label>
                        <input type="text" id="UI_username" name="UI_username"
                            value='<c:if test="${User.username != null}">${User.username}</c:if>' readonly required>
                    </div>

                    <div class="UI_form_element">
                        <label for="UI_dob">Ngày tháng năm sinh</label>
                        <input type="date" id="UI_dob" name="UI_dob" required max="2024-12-31" onkeydown="return false;"
                            onfocus="this.click();" value='<c:if test="${User.dob != null}">${User.dob}</c:if>'>
                    </div>

                    <div class="UI_form_element">
                        <label for="UI_phone">Số điện thoại</label>
                        <input type="tel" id="UI_phone" name="UI_phone" pattern="([0-9]{10})"
                            value='<c:if test="${User.phone != null}">${User.phone}</c:if>' readonly required>
                        <span id="error-message">Số điện thoại không hợp lệ</span>
                    </div>

                    <div class="Email_input">
                        <label for="UI_email">Email</label>
                        <input type="email" id="UI_email" name="UI_email"
                            value='<c:if test="${User.email != null}">${User.email}</c:if>' readonly>
                        <div onclick="EmailIdentify()" class="btn Email_input_Btn"><i
                                class="fa-regular fa-pen-to-square"></i></div>
                    </div>

                    <input class="btn" type="submit" value="Lưu thay đổi">
                </form>

                <form action='<c:url value="/changepass"/>' class="UI_form" method="post">
                    <h3 class="form_title">Thay đổi mật khẩu</h3>
                    <div class="UI_form_element">
                        <label for="UI_oldPass">Mật khẩu cũ</label>
                        <input type="password" name="oldpass" id="UI_oldPass" value='<c:if test="${sessionScope.get('oldpass') !=null}">
                        ${sessionScope.get('oldpass')}</c:if>' required>
                        <c:if test="${sessionScope.get('opstatus') == false}">
                            <span style="color: red; display: block !important;">Mật khẩu không đúng</span>
                        </c:if>
                    </div>

                    <div class="UI_form_element">
                        <label for="UI_newPass">Mật khẩu mới</label>
                        <input type="password" name="newpass" id="UI_newPass" value='<c:if test="${sessionScope.get('newpass') !=null}">${sessionScope.get('newpass')}</c:if>'
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\S{8,}" required placeholder="Mật khẩu (ít
                        nhất 8 kí tự, bao gồm số, chữ viết thường, chữ in hoa và dấu cách)">
                    </div>

                    <div class="UI_form_element">
                        <label for="UI_confirmPass">Xác nhận mật khẩu mới</label>
                        <input type="password" name="cfnewpass" value='<c:if test="${sessionScope.get(' cfnewpass')
                            !=null}">${sessionScope.get('cfnewpass')}</c:if>'
                        id="UI_confirmPass" required>
                        <c:if test="${sessionScope.get('cfpstatus') == false}">
                            <span style="color: red; display: block !important;">Mật khẩu không khớp</span>
                        </c:if>
                    </div>
                    <input class="btn" type="submit" value="Lưu thay đổi">
                </form>
            </main>
        </div>
        <%@ include file="../Footer.jsp" %>
            <script>
                GenerateSideBar("UserInformation");
            </script>
            <script type="text/javascript" src="../Pop-ups.js"></script>
            <script src="UserInformation.js"></script>
</body>

</html>
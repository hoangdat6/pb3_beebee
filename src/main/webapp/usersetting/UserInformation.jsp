<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Footer.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="<c:url value ="/main.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value ="/usersetting/UserInformation.css"/>">
    <link rel="stylesheet" href="<c:url value ="/Pop_ups.css"/>">
    <script type="text/javascript" src="<c:url value ="/main.js"/>"></script>
    <script src="<c:url value ="/toast.js"/>"></script>
    <script src="<c:url value ="/usersetting/GenerateSideBar.js"/>"></script>
    <link rel="stylesheet" href="<c:url value ="/toast.css"/>">
    <link rel="stylesheet" href="<c:url value ="/usersetting/UAASCommon.css"/>">
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

            <main class="UI_content">
                <form action='<c:url value="/usersetting/changeinfor"/>' class="UI_form" method="post">
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

                <form action='<c:url value="/usersetting/changepass"/>' class="UI_form" method="post">
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
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\S{8,}" required placeholder="Mật khẩu (ít nhất 8 kí tự, bao gồm số, chữ viết thường, chữ in hoa và dấu cách)">
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
            <script type="text/javascript" src="<c:url value ="/Pop-ups.js"/>"></script>
        <script defer src="<c:url value = "UserInformation.js"/>"></script>
        <script defer>
            GenerateSideBar("UserInformation", "${User.username}");
        </script>
</body>

</html>
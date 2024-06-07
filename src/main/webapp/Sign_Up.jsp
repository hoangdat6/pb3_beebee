<%@ include file="common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Đăng kí tài khoản</title>
        <link rel="stylesheet" type="text/css" href ="<c:url value="/CommonCSS.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
        <link rel="stylesheet" type="text/css" href ="<c:url value="/Footer.css"/>">
        <link rel="stylesheet" type="text/css" href="<c:url value="/Sign_Up.css"/>">
        <script type="text/javascript" src="<c:url value="/main.js"/>"></script>
        <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>' />

    </head>
<body class="Color-White">
    <header id="SU-Header" class="pad-l-r-170">
      <a href="Login.jsp" class="SU-Header_Back">
          <i class="fa-solid fa-chevron-left"></i>
          <span>Trở về</span>
      </a>
      <span>Bạn đã có tài khoản? <a class="Have-Account" href='<c:url value="/login?action=login"/>'>Đăng nhập</a></span>
    </header>
    <div class="Logo-Container">
        <img src="img/Logo/Logo.png" alt="Logo" class="Logo-Image">
        <p style="padding-top: 20px;">Đăng ký để bắt đầu mua/bán hàng trên nền tảng của chúng tôi</p>
    </div>
    <div class="SU-Content">
        <div class="Login-Method">
            <a href="" class="Method-Item"><i class="fa-brands fa-facebook"></i> Đăng nhập bằng Facebook</a>
            <a href="" class="Method-Item"><i class="fa-brands fa-google"></i> Đăng nhập bằng Google</a>
        </div>
        <div class="mg-b-40" style="width: 100%; height: 33px; justify-content: center; align-items: center; gap: 23px; display: inline-flex">
            <div style="flex: 1 1 0; height: 2px; background: rgba(102, 102, 102, 0.25)"></div>
            <div style="color: #666666; font-size: 24px; font-weight: 400; word-wrap: break-word">OR</div>
            <div style="flex: 1 1 0; height: 2px; background: rgba(102, 102, 102, 0.25)"></div>
        </div>
        <h3 class="mg-b-40" style="font-size: 20px; color:#666666">Đăng ký với Email và số điện thoại của bạn</h3>

        <form action='<c:url value="/register"/>' method="post" class="mg-b-20">
            <c:set var="newUser" value="${sessionScope.get('newUser')}"/>
            <label for="username">Tên đăng nhập:</label><br>
            <input type="text" id="username" name="username" value='<c:if test="${newUser.username != null}">${newUser.username}</c:if>' required><br>
            <c:if test="${sessionScope.get('userStatus') == false}">
                <span style="color: red;">*Tên đăng nhập đã được sử dụng</span>
            </c:if>
            <br>
            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email" value='<c:if test="${newUser.email != null}">${newUser.email}</c:if>' required><br>
            <c:if test="${sessionScope.get('emailStatus') == false}">
                <span style="color: red;">*Email đã được sử dụng</span>
            </c:if>
            <br>
<%--            <label for="phone">Số điện thoại:</label><br>--%>
<%--            <input type="tel" id="phone" name="phone" pattern="[0-9]{10,11}" value='<c:if test="${newUser.phone != null}">${newUser.phone}</c:if>' required><br><br>--%>

            <label for="password">Mật khẩu</label><br>

            <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\S{8,}" value='<c:if test="${newUser.password != null}">${newUser.password}</c:if>' required placeholder="Mật khẩu (ít nhất 8 kí tự, bao gồm số, chữ viết thường, chữ in hoa và dấu cách)"><br><br>

            <label for="confirmPassword">Nhập lại mật khẩu:</label><br>
            <input type="password" id="confirmPassword" name="confirmPassword" value='<c:if test="${sessionScope.get('confirmPassword') != null}">${sessionScope.get('confirmPassword')}</c:if>' required><br>
            <c:if test="${sessionScope.get('cpStatus') == false}">
                <p style="color: red;">*Mật khẩu không trùng khớp</p>
            </c:if>
            <br>
            <div class="Form-Item" style="display: flex; flex-wrap:wrap;justify-content:space-between; align-items:center; width: 600px;">
                <div class="Gender">
                    <label class="Gender-Label" for="gender">Giới tính:</label><br>
                    <select id="gender" name="gender" required>
                        <option value="male">Nam</option>
                        <option value="female">Nữ</option>
                        <option value="other">Khác</option>
                    </select>
                    <script>
                        var initialValue = "<c:out value='${newUser.gender}'/>";
                        var selectElement = document.getElementById("gender");
                        for (var i = 0; i < selectElement.options.length; i++) {
                            if (selectElement.options[i].value === initialValue) {
                                selectElement.options[i].selected = true;
                                break;
                            }
                        }
                    </script>
                </div>
                <div class="DOB">
                    <label for="dob">Ngày sinh:</label><br>
                    <input style="width: 360px;" type="date" id="dob" name="dob" value = '<c:if test="${newUser.dob != null}">${newUser.dob}</c:if>' required>
                </div>
            </div>

            <input type="submit" value="Đăng ký">
        </form>
        <p style="font-size:20px; padding-bottom: 80px">Bạn đã có tài khoản? <a href="Login.jsp" style="color:var(--orange-weight-color); font-weight:600;">Đăng nhập</a></p>
    </div>

    <%@ include file="Footer.jsp" %>
</body>
</html>
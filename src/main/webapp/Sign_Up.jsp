<%@ include file="common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Details</title>
        <link rel="stylesheet" type="text/css" href = "CommonCSS.css">
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" type="text/css" href ="Footer.css">
        <link rel="stylesheet" type="text/css" href="Sign_Up.css">
        <!-- <script src="https://code.iconify.design/iconify-icon/1.0.8/iconify-icon.min.js"></script> -->
<%--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
        <script type="text/javascript" src="main.js"></script>
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

        <form action="#" method="post" class="mg-b-20">
            <label for="displayName">Tên hiển thị (Họ và tên):</label><br>
            <input type="text" id="displayName" name="displayName" required><br><br>

            <label for="email">Email:</label><br>
            <input type="email" id="email" name="email" required><br><br>

            <label for="phone">Số điện thoại:</label><br>
            <input type="tel" id="phone" name="phone" pattern="[0-9]{10,11}" required><br><br>

            <label for="password">Mật khẩu</label><br>
            <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\S{8,}" required placeholder="Mật khẩu (ít nhất 8 kí tự, bao gồm số, chữ viết thường, chữ in hoa và dấu cách)"><br><br>

            <label for="confirmPassword">Nhập lại mật khẩu:</label><br>
            <input type="password" id="confirmPassword" name="confirmPassword" required><br><br>

            <div class="Form-Item" style="display: flex; flex-wrap:wrap;justify-content:space-between; align-items:center; width: 600px;">
                <div class="Gender">
                    <label class="Gender-Label" for="gender">Giới tính:</label><br>
                    <select id="gender" name="gender" required>
                        <option value="male">Nam</option>
                        <option value="female">Nữ</option>
                        <option value="other">Khác</option>
                    </select>
                </div>
                <div class="DOB">
                    <label for="dob">Ngày sinh:</label><br>
                    <input style="width: 360px;" type="date" id="dob" name="dob" required>
                </div>
            </div>

            <input type="submit" value="Đăng ký">
        </form>
        <p style="font-size:20px; padding-bottom: 80px">Bạn đã có tài khoản? <a href="Login.jsp" style="color:var(--orange-weight-color); font-weight:600;">Đăng nhập</a></p>
    </div>

    <%@ include file="Footer.jsp" %>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href = "CommonCSS.css">
        <link rel="stylesheet" type="text/css" href="Login.css">
        <link rel="stylesheet" type="text/css" href ="Footer.css">
        <!-- <script src="https://code.iconify.design/iconify-icon/1.0.8/iconify-icon.min.js"></script> -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script type="text/javascript" src="main.js"></script>
    </head>
    <body class="BG-White">
        <header id="LG-Header" class="mg-l-r-170">
            <a href="index.jsp" class="LG-Header_Back">
                <i class="fa-solid fa-chevron-left"></i>
                <span>Trở về</span>
            </a>
            <a href="Sign_Up.jsp" class="New_Account">
                Tạo tài khoản mới
            </a>
        </header>

        <div id="LG-Logo">
            <div class="LG-Container">
                <img src="img/Logo/Logo.png" alt="Logo" class="LG-Logo_Image">
                <p class="LG-Logo_Desc">Đăng Nhập</p>
            </div>
        </div>

        <main id="LG-Content">
            <div class="Login-Form">
                <form action="#" method="post">
                    <div>
                        <label for="username">Email hoặc Số điện thoại</label><br>
                        <input type="text" id="username" name="username" required placeholder="example@gmail.com"><br>
                    </div>
                    <div>
                        <label for="password">Mật khẩu</label><br>
                        <input type="password" id="password" name="password" required placeholder="Mật khẩu"><br>
                    </div>
                    <div class="Forgot-Password">
                        <a href="#" class="btn">Quên mật khẩu?</a>
                    </div>
                    <div>
                        <input class="btn Login-Button" type="submit" value="Đăng nhập">
                    </div>
                </form>
            </div>
            <div class="Login-Method">
                <ul>
                    <li><a class="btn" href="#"><i class="fa-brands fa-google"></i>Tiếp tục với Google</a></li>
                    <li><a class="btn" href="#"><i class="fa-brands fa-facebook"></i>Tiếp tục với Facebook</a></li>
                    <li><a class="btn" href="#"><i class="fa-solid fa-phone"></i>Đăng nhập bằng SMS</a></li>
                </ul>
                <p class="No-Account">Chưa có tài khoản? <a href="#">Đăng ký</a>.</p>
            </div>
        </main>

        <%@ include file="Footer.jsp" %>

    </body>
</html>
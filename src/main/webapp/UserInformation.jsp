<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Information</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="Top-Bar.css">
    <link rel="stylesheet" type="text/css" href="Footer.css">
    <link rel="stylesheet" type="text/css" href="CommonCSS.css">
    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
    <script type="text/javascript" src="main.js"></script>
    <link rel="stylesheet" href="UserInformation.css">
    <script type="text/javascript" src="main.js"></script>
</head>

<body class="Color-White">
    <%@ include file="Top-Bar.jsp" %>
    <fmt:setLocale value="vi_VN" />
    <div class="UI_wrap pad-l-r-170">
        <aside class="UI_bar">
            <div class="UI_bar_top">
                <div class="Avatar_wrapper">
                    <img class="UI_avatar" id="Avatar" src="./img/Product-Details/Review-Avatar-1.jpeg" alt="#">
                    <input type="file" name="fileInput" id="fileInput" style="display: none;">
                    <img class="UI_camera" src="./img/User_information/Camera.svg" id="cameraImage" alt="#">
                    <script>
                        document.addEventListener('DOMContentLoaded', function () {
                            // Get the image and file input elements
                            const cameraImage = document.getElementById('cameraImage');
                            const fileInput = document.getElementById('fileInput');
                            const avatar = document.getElementById('Avatar');
                            // Add click event listener to the image
                            cameraImage.addEventListener('click', function () {
                                // Trigger click event on file input
                                fileInput.click();
                            });

                            // Add change event listener to file input
                            fileInput.addEventListener('change', function () {
                                // Check if any file is selected
                                if (fileInput.files && fileInput.files[0]) {
                                    const reader = new FileReader();

                                    // Read the selected file as a URL
                                    reader.onload = function (e) {
                                        // Set the image source to the selected file URL
                                        avatar.src = e.target.result;
                                    }

                                    // Read the selected file
                                    reader.readAsDataURL(fileInput.files[0]);
                                }
                            });
                        });
                    </script>
                </div>
                <h3 class="UI_userName">Tên người dùng</h3>
            </div>
            <ul class="UI_bar_bot">
                <li class="UI_bar_bot_item"><img src="./img/User_information/User.png" alt="#">Tài khoản</li>
                <li class="UI_bar_bot_item"><img src="./img/User_information/Location.svg" alt="#">Địa chỉ của tôi</li>
                <li class="UI_bar_bot_item"><img src="./img/User_information/order.png" alt="#">Đơn hàng của tôi</li>
                <li class="UI_bar_bot_item"><img src="./img/User_information/heart.svg" alt="#">Sản phẩm yêu thích</li>
                <li class="UI_bar_bot_item"><img src="./img/User_information/log out.svg" alt="#">Đăng xuất</li>
            </ul>
        </aside>

        <main class="UI_content">
            <h1 class="UI_title">
                Tài khoản của tôi
            </h1>
            <form action="" class="UI_form">
                <h3 class="form_title">Thông tin cá nhân</h3>
                <label for="UI_name">Họ và tên</label>
                <input type="text" id="UI_name" name="UI_name" required>

                <label for="UI_username">Tên đăng nhập</label>
                <input type="text" id="UI_username" name="UI_username" required>

                <label for="UI_dob">Ngày tháng năm sinh</label>
                <input type="date" id="UI_dob" name="UI_dob" required>

                <label for="UI_phone">Số điện thoại</label>
                <input type="tel" id="UI_phone" name="UI_phone" pattern="[0-9]{10}" required>

                <label for="UI_email">Email</label>
                <input type="email" id="UI_email" name="UI_email" required>

                <h3 class="form_title">Thay đổi mật khẩu</h3>
                <label for="UI_oldPass">Mật khẩu cũ</label>
                <input type="password" id="UI_oldPass">

                <label for="UI_newPass">Mật khẩu mới</label>
                <input type="password" id="UI_newPass">

                <label for="UI_confirmPass">Xác nhận mật khẩu mới</label>
                <input type="password" id="UI_confirmPass">

                <input class="btn" type="submit" value="Lưu thay đổi">
            </form>
        </main>
    </div>
    <%@ include file="Footer.jsp" %>
</body>

</html>
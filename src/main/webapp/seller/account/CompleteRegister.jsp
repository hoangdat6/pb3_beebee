<%@ include file="../../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hoàn tất đăng ký</title>
    <link rel="stylesheet" href="./CompleteRegister.css">
    <link rel="stylesheet" href="./Register.css">
    <link rel="stylesheet" href="../Common/SellerCommon.js">
    <link rel="stylesheet" href="../../CommonCSS.css">
    <script src="Register.js"></script>
</head>
<body>
    <div class="SR_wrap">
        <!-- SR - Seller register -->
        <script>
            completeSidebar();
        </script>
        <main class="SR_main">
            <h3 class="SR_main_title">
                Hoàn tất đăng ký
            </h3>
            <div class="SR_main_content">
                <div class="SR_main_icon">
                    <i class="fa-solid fa-check"></i>
                </div>
                <p class="SR_main_para">Chúc mừng, bạn đã thành công đăng ký trở thành người bán!!!</p>
                <button onclick="location.href='../product/AddProduct.jsp'" class="SR_main_btn btn">Trải nghiệm giao diện người bán</button>
            </div>
        </main>
    </div>
</body>
</html>
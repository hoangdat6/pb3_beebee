<%@ include file="common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hoàn tất đơn hàng</title>
  <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/Footer.css"/>">
  <link rel="stylesheet" href="<c:url value="/CheckOutDone.css"/>">
  <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
  <script type="text/javascript" src="<c:url value="/main.js"/>"></script>
</head>

<%-- Header  --%>
<%@ include file="Top-Bar.jsp" %>

<body class="Color-White">
    <div id="COD_Header">
        <h3 class="COD_Title">
            Hoàn Thành
        </h3>

        <div class="Process_Container">
            <div class="Process_Item">
                <span class="Process_Item-Number">1</span>
                <span class="Process_Item-Title">
                    Giỏ hàng
                </span>
            </div>
            <div class="clear"></div>

            <div class="Process_Item">
                <span class="Process_Item-Number">2</span>
                <span class="Process_Item-Title">
                    Chi tiết thanh toán
                </span>
            </div>
            <div class="clear"></div>

            <div class="Process_Item">
                <span class="Process_Item-Number">3</span>
                <span class="Process_Item-Title">
                    Hoàn tất đơn hàng
                </span>
            </div>
            <div class="clear"></div>
        </div>
    </div>

    <main class="COD_Content">
        <div class="COD-Title">
            <p  style="text-align:center; color:#6C7275; font-size:28px; font-weight: 500;">Thank you! 🎉</p>
            <p  style="font-size: 40px; line-height:44px; font-weight:500; color:#23262F;text-align:center;">Đơn hàng của bạn đã được ghi nhận</p>
        </div>
        <div class="COD-Item">
            <div class="COD-Item--PlaceHolder">
                <img src="img/Product-Details/Category-1.jpeg" alt="">
                <span class="Number">2</span>
            </div>
            <div class="COD-Item--PlaceHolder">
                <img src="img/Product-Details/Category-1.jpeg" alt="">
                <span class="Number">2</span>
            </div>
            <div class="COD-Item--PlaceHolder">
                <img src="img/Product-Details/Category-1.jpeg" alt="">
                <span class="Number">2</span>
            </div>
        </div>
        <div class="COD-Order_Detail">
            <div class="Title">
                <div class="Title-Item">Mã đơn hàng</div>
                <div class="Title-Item">Ngày</div>
                <div class="Title-Item">Tổng thanh toán</div>
                <div class="Title-Item">Phương thức thanh toán</div>
            </div>
            <div class="Info">
                <div class="Info-Item">#0123_45678</div>
                <div class="Info-Item">02/08/2024</div>
                <div class="Info-Item">800.000₫</div>
                <div class="Info-Item">Tài khoản ngân hàng</div>
            </div>
        </div>
        <a href="#" class="btn History">Lịch sử mua hàng</a>
    </main>

    <%@ include file="Footer.jsp" %>
</body>
</html>

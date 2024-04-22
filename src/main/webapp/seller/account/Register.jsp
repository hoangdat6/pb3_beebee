<%@ include file="../../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký thông tin cơ bản</title>
    <link rel="stylesheet" href="./Register.css">
    <link rel="stylesheet" href="../Common/SellerCommon.js">
    <link rel="stylesheet" href="../../CommonCSS.css">
    <script src="./Register.js"></script>
</head>

<body>
<c:set var="User" value="${sessionScope.get('USERMODEL')}" />
    <div class="SR_wrap">
        <!-- SR - Seller register -->
        <script>
            registerSidebar();
        </script>
        <main class="SR_main">
            <h3 class="SR_main_title">
                Đăng ký trở thành người bán
            </h3>
            <div class="SR_main_content">
                    <form action='<c:url value="/seller/account/register"/>' class="SR_form" method="post">
                    <div class="SR_form_item">
                        <label for="ShopName">Tên Shop</label>
                        <input placeholder="Nhập tên Shop vào đây" value='<c:if test="${sessionScope.get('nameshop') != null}">${sessionScope.get('nameshop')}</c:if>' name="nameshop" id="ShopName" type="text" required>
                    </div>
                    <div class="SR_form_item">
                        <label for="ShopEmail">Email</label>
                        <input id="ShopEmail" name="shopemail" type="text" value='<c:if test="${User.email != null}">${User.email}</c:if>' readonly>
                    </div>  
                    <div class="SR_form_item">
                        <label>Địa chỉ lấy hàng</label>
                        <div class="container">
                            <select class="form-select form-select-sm mb-3" id="city" aria-label=".form-select-sm" required>
                                <option value="" selected>Chọn tỉnh thành</option>
                            </select>
                            <select class="form-select form-select-sm mb-3" id="district" aria-label=".form-select-sm" required>
                                <option value="" selected>Chọn quận huyện</option>
                            </select>
                            <select class="form-select form-select-sm" id="ward" aria-label=".form-select-sm" required>
                                <option value="" selected>Chọn phường xã</option>
                            </select>

                            <label for="Address-Desc">Địa chỉ chi tiết</label>
                            <input type="text" name="Dia chi" id="Address-Desc"
                                placeholder="Số đường, thôn, kiệt, hẻm,..." required>
                        </div>
                    </div>
                    <div style="display: flex; flex-direction:row-reverse; gap: 15px" class="SR_form_item">
                        <input class="btn btn_Send" name="button" value="Xác minh" type="submit" require>
                        <input class="btn btn_Cancel" name="button" value="Hủy" type="submit" require>
                    </div>
                </form>
            </div>
        </main>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script src="../../app.js"></script>
</body>

</html>
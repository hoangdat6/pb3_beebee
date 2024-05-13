<%@ include file="common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>THanh toán</title>
  <link rel="stylesheet" type="text/css" href ="<c:url value="/CommonCSS.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/style.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
  <link rel="stylesheet" type="text/css" href="<c:url value="/Footer.css"/>">
  <link rel="stylesheet" href="<c:url value="/CheckOut.css"/>">
  <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
  <script type="text/javascript" src="main.js"></script>
</head>
<%-- Header  --%>
<%@ include file="Top-Bar.jsp" %>

<body class="Color-White">

    <div id="CO_Header">
        <h3 class="CO_Title">
            Thanh Toán
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
    
    <div id="CO_Content">
        <div class="CO_Content-Col1 CO-Content--Item">
            <!--Mục Thông tin liên hệ -->
            <div class="CO-Form CO-Form1">
                <h3 class="CO-Form-Item--Title">
                    Thông tin liên hệ
                </h3>
                <form action="#" method="post" class="CO-Form--Content">
                    <div class="row1">
                        <label for="CO--Item-Name">Họ và tên</label>
                        <input type="text" name="Tên" id="CO--Item-Name">
                    </div>

                    <div class="row2">
                        <label for="CO--Item-PhoneNumber">Số điện thoại</label>
                        <input type="text" name="Số điện thoại" id="CO--Item-PhoneNumber">
                    </div>
                </form>
            </div>
            <!-- Mục địa chỉ liên lạc và giao hàng -->
            <div class="CO-Form CO-Form2">
                <div class="CO-title-2 flex flex-space_between">
                    <h3 class="CO-Form-Item--Title">
                        Địa chỉ giao hàng
                    </h3>
                    <input type="button" name="" class="" value="Chọn địa chỉ của bạn">
                </div>

                <form action="#" method="post" class="CO-Form--Content">
                    <div class="container">
                        <h4>Tỉnh/Thành Phố</h4>
                        <select class="form-select form-select-sm mb-3" id="city" aria-label=".form-select-sm">
                            <option value="" selected>Chọn tỉnh thành</option>           
                        </select>
                        
                        <h4>Quận/Huyện</h4>
                        <select class="form-select form-select-sm mb-3" id="district" aria-label=".form-select-sm">
                            <option value="" selected>Chọn quận huyện</option>
                        </select>
                        
                        <h4>Xã/Phường</h4>
                        <select class="form-select form-select-sm" id="ward" aria-label=".form-select-sm">
                            <option value="" selected>Chọn phường xã</option>
                        </select> 
                        
                        <label for="Address-Desc">Địa chỉ chi tiết</label>
                        <input type="text" name="Dia chi" id="Address-Desc" placeholder="Số đường, thôn, kiệt, hẻm,...">
                    </div>
                </form>

            </div>
            <!-- Mục chọn phương thức thanh toán -->
            <div class="CO-Form CO-Form3">
                <h3 class="CO-Form-Item--Title">
                    Phương thức thanh toán
                </h3>
                
                <div class="Payment_Method">
                    <input type="radio" name="Thanh toán bằng tài khoản ngân hàng" id="Bank-Method">
                    <span>Thanh toán bằng tài khoản ngân hàng</span>
                </div>
                
                <div class="Payment_Method">
                    <input type="radio" name="Trả tiền mặt" id="Cash-Method">
                    <span>Thanh toán bằng tiền mặt</span>
                </div>

            </div>    

            <button class="Col1--Button btn" type="submit">Xác nhận đơn hàng</button>
        </div>

        <div class="CO_Content-Col2 CO-Content--Item">
            <h3 class="CO-Col2--Title">
                Tóm tắt thanh toán
            </h3>

            <div class="CO-Col2--Content">
                <div class="CO-Col2-Product">
                    <div class="Col2-Product-Item">
                        <img class="Col2-Product-Item--Image" src="img/Product-Details/Category-1.jpeg" alt="Product">
                        <div class="Col2-Product-Item--Main">
                            <h3 class="Main--Name">Bàn xách tay</h3>
                            <div class="Col2-Main--Qty_and_Category">
                                <span class="Main--Category">Loại: Đen</span>
                                <div class="Col2-Main--Qty Qty">
                                    <button class="btn Qty__Minus" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="btn Qty__Plus" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="Col2-Product-Item--Price">
                          <p>350.000₫</p>
                        </div>
                    </div>

                    <div class="Col2-Product-Item">
                        <img class="Col2-Product-Item--Image" src="img/Product-Details/Category-1.jpeg" alt="Product">
                        <div class="Col2-Product-Item--Main">
                            <h3 class="Main--Name">Bàn xách tay</h3>
                            <div class="Col2-Main--Qty_and_Category">
                                <span class="Main--Category">Loại: Đen</span>
                                <div class="Col2-Main--Qty Qty">
                                    <button class="btn Qty__Minus" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="btn Qty__Plus" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="Col2-Product-Item--Price">
                          <p>350.000₫</p>
                        </div>
                    </div>

                    <div class="Col2-Product-Item">
                        <img class="Col2-Product-Item--Image" src="img/Product-Details/Category-1.jpeg" alt="Product">
                        <div class="Col2-Product-Item--Main">
                            <h3 class="Main--Name">Bàn xách tay</h3>
                            <div class="Col2-Main--Qty_and_Category">
                                <span class="Main--Category">Loại: Đen</span>
                                <div class="Col2-Main--Qty Qty">
                                    <button class="btn Qty__Minus" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="btn Qty__Plus" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="Col2-Product-Item--Price">
                          <p>350.000₫</p>
                        </div>
                    </div>

                    <div class="Col2-Product-Item">
                        <img class="Col2-Product-Item--Image" src="img/Product-Details/Category-1.jpeg" alt="Product">
                        <div class="Col2-Product-Item--Main">
                            <h3 class="Main--Name">Bàn xách tay</h3>
                            <div class="Col2-Main--Qty_and_Category">
                                <span class="Main--Category">Loại: Đen</span>
                                <div class="Col2-Main--Qty Qty">
                                    <button class="btn Qty__Minus" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="btn Qty__Plus" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="Col2-Product-Item--Price">
                          <p>350.000₫</p>
                        </div>
                    </div>

                    <div class="Col2-Product-Item">
                        <img class="Col2-Product-Item--Image" src="img/Product-Details/Category-1.jpeg" alt="Product">
                        <div class="Col2-Product-Item--Main">
                            <h3 class="Main--Name">Bàn xách tay</h3>
                            <div class="Col2-Main--Qty_and_Category">
                                <span class="Main--Category">Loại: Đen</span>
                                <div class="Col2-Main--Qty Qty">
                                    <button class="btn Qty__Minus" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="btn Qty__Plus" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                </div>
                            </div>
                        </div>
                        <div class="Col2-Product-Item--Price">
                          <p>350.000₫</p>
                        </div>
                    </div>
                </div>
                
                <div class="CO-Voucher CO-Same">
                    <i class="fa-solid fa-ticket"></i>
                    <span class="Voucher-Code">Mã giảm giá</span>
                    <span class="Voucher-Money">-50.000₫</span>
                </div>

                <div class="CO-Delivery CO-Same">
                    <h4>Vận chuyển</h4>
                    <span class="CO-Same--Item">Free</span>
                </div>

                <div class="CO-Price CO-Same">
                    <h4>Tổng tiền sản phẩm</h4>
                    <span class="CO-Same--Item">850.000₫</span>
                </div>

                <div class="CO-Total CO-Same">
                    <h3>Tổng tiền thanh toán</h3>
                    <span class="CO-Same--Item">850.000₫</span>
                </div> 
            </div>
        </div>
    </div>
    <%@ include file="Footer.jsp" %>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.21.1/axios.min.js"></script>
    <script type="text/javascript" src="app.js"></script>
</body>



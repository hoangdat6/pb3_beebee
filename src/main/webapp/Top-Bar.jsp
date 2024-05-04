<%@ include file="common/taglib.jsp" %>
  <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%-- Top Bar --%>
      <header id="Header">
        <div class="Header-Top">
          <div class="Header-Top__item1">Chúng tôi giao hàng mỗi ngày từ <span class="orange-bold">7:00</span> đến
            <span class="orange-bold">23:00</span>
          </div>
          <div class="Header-Top__item2">Bạn đang ở kênh mua hàng! <a href="<c:url value="/seller"/>" class="orange-bold">Chuyển qua kênh người
              bán?</a></div>

        </div>
        <div class="Header-Bot">
          <div class="Header-Bot__left">
            <a href='<c:url value="/home"/>' ><img class="Logo" src="img/Logo/Logo.png" alt="Logo"></a>
            <form action="/search" method="get">
              <label for="search"></label>
              <input type="search" id="search" name="q" placeholder="Tìm kiếm theo sản phẩm, phân loại và thương hiệu">
              <i class="fa-solid fa-magnifying-glass"></i>
            </form>
          </div>

          <ul class="Header-Bot__right">
            <li class="Header-Bot__Account">
              <c:if test="${sessionScope.get('USERMODEL') != null}">
                <a style="color: #030712" href='<c:url value="/userinfor"/>'><i class="fa-solid fa-user"></i></a>
              </c:if>
              <c:if test="${sessionScope.get('USERMODEL') == null}">
                <a style="color: #030712" href='<c:url value="/login"/>'><i class="fa-solid fa-user"></i></a>
              </c:if>
              ${sessionScope.get("USERMODEL") != null ? sessionScope.get("USERMODEL").username : "Đăng nhập"}
              <c:if test="${sessionScope.get('USERMODEL') != null}">
              <div class="User_option">
                <div class="Shop_option">
                  <h3>Shop của bạn</h3>
                  <a href="#"><img src="./img/Shop/kenhNguoiBan.svg" alt="">Kênh người bán</a>
                  <a href="#"><img src="./img/Shop/QLDonhang.svg" alt="">Quản lí đơn hàng</a>
                  <a href="#"><img src="./img/Shop/QLSanPham.svg" alt="">Quản lí sản phẩm</a>
                  <a href="#"><img src="./img/Shop/DuLieu.svg" alt="">Dữ liệu</a>
                  <a href="#"><img src="./img/Shop/ChamSocKH.svg" alt="">Chăm sóc khách hàng</a>
                </div>
                <div class="Line"></div>
                <div class="Account_option">
                  <h3>Tài khoản của bạn</h3>
                  <a href='<c:url value="/userinfor"/>'><img src="./img/Shop/TKCuaToi.svg" alt="">Tài khoản của tôi</a>
                  <a href="#"><img src="./img/Shop/DiaChiCT.svg" alt="">Địa chỉ của tôi</a>
                  <a href="#"><img src="./img/Shop/DonMua.svg" alt="">Đơn mua</a>
                  <a href='<c:url value="/logout"/>'><img src="./img/Shop/DangXuar.svg" alt="">Đăng xuất</a>
                </div>
              </div>
              </c:if>
            </li>
            <li class="Header-Bot__Cart" style="position: relative;">
              <i class="fa-solid fa-cart-shopping"></i>Giỏ hàng
              <div class="SM_Cart_Container" style="position: absolute;
      font-size: 16px;
      top: 0;
      margin-top: 40px;
      left: 0;
      box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.10), 0 8px 8px 0 rgba(0, 0, 0, 0.09), 0 19px 11px 0 rgba(0, 0, 0, 0.05), 0 33px 13px 0 rgba(0, 0, 0, 0.01), 0 52px 14px 0 rgba(0, 0, 0, 0.00);
      z-index: 5;
      padding: 40px 24px;
      background: #fff;
      color: #121212;">
                <h3>SẢN PHẨM MỚI THÊM</h3>
                <div class="SM_Cart-Content">
                  <div class="SM_Cart-Item">
                    <input name="SM_Cart_CB" type="checkbox" class="SM_Cart-Item--Checkbox">
                    <img class="SM_Cart-Item--Image" src="img/Product-Details/Category-1.jpeg" alt="Product">
                    <div class="SM_Cart-Item--Main">
                      <h3 class="Main--Name">Bàn xách tay</h3>
                      <div class="Main--Shop">
                        <img src="img/Brand/Coffee.jpeg" alt="Shop Avatar">
                        <span>Tên Shop</span>
                      </div>
                      <div class="Main--Qty_and_Category">
                        <span class="Main--Category">Loại: Đen</span>
                        <div class="Main--Qty Qty">
                          <button class="btn Qty__Minus" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"
                              style="font-size: 10px;"></i></button>
                          <input class="btn Qty__Input" value="1" min="1">
                          <button class="btn Qty__Plus" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"
                              style="font-size: 10px;"></i></button>
                        </div>
                      </div>
                    </div>
                    <div class="SM_Cart-Item--Price">
                      <span>350.000₫</span>
                      <i class="fa-solid fa-x"></i>
                    </div>
                  </div>
                </div>
                <div class="Purchase">
                  <div class="Total">
                    <h3>Total</h3>
                    <span class="Total_Price">
                      1.400.000₫
                    </span>
                  </div>
                  <a class="Checkout-Btn btn" href="Checkout.jsp">Thanh toán</a>
                  <a class="Cart-Btn btn" href="<c:url value="/cart"/> ">Xem giỏ hàng</a>
                </div>
              </div>
            </li>
            <li class="Header-Bot__Announce">
              <i class="fa-solid fa-bell"></i>
              Thông báo
            </li>
          </ul>
        </div>
      </header>
      <%-- End of Top Bar --%>
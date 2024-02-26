<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %><%-- Top Bar --%>
<header id="Header">
  <div class="Header-Top">
    <div class="Header-Top__item1">Chúng tôi giao hàng mỗi ngày từ <span class="orange-bold">7:00</span> đến
      <span class="orange-bold">23:00</span></div>
    <div class="Header-Top__item2">Bạn đang ở kênh mua hàng! <a href="#" class="orange-bold">Chuyển qua kênh người
      bán?</a></div>

  </div>
  <div class="Header-Bot">
    <div class="Header-Bot__left">
      <img class="Logo" src="img/Logo/Logo.png" alt="Logo">
      <form action="/search" method="get">
        <label for="search"></label>
        <input type="search" id="search" name="q"
               placeholder="Tìm kiếm theo sản phẩm, phân loại và thương hiệu">
        <i class="fa-solid fa-magnifying-glass"></i>
      </form>
    </div>

    <ul class="Header-Bot__right">
      <li class="Header-Bot__Account">
        <i class="fa-solid fa-user"></i>
        Tài khoản
      </li>
      <li class="Header-Bot__Cart" style="position: relative; display: flex;">
           <i class="fa-solid fa-cart-shopping"></i>Giỏ hàng
           <div class="SM_Cart_Container">
             <h3>SẢN PHẨM MỚI THÊM</h3>
             <div class="SM_Cart-Content">

               <div class="SM_Cart-Item">
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
                       <button class="btn Qty__Minus" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                       <input class="btn Qty__Input" value="1" min="1">
                       <button class="btn Qty__Plus" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
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
               <a class="Cart-Btn btn" href="Cart.jsp">Xem giỏ hàng</a>
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
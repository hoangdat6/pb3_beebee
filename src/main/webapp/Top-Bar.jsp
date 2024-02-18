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
      <li class="Header-Bot__Cart">
        <i class="fa-solid fa-cart-shopping"></i>
        Giỏ hàng
      </li>
      <li class="Header-Bot__Announce">
        <i class="fa-solid fa-bell"></i>
        Thông báo
      </li>
    </ul>
  </div>
</header>
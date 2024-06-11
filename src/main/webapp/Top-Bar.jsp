<%@ include file="common/taglib.jsp" %>
  <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%-- Top Bar --%>
      <header id="Header">
        <div class="Header-Top">
          <div class="Header-Top__item1">Chúng tôi giao hàng mỗi ngày từ <span class="orange-bold">7:00</span> đến
            <span class="orange-bold">23:00</span>
          </div>
          <div class="Header-Top__item2">Bạn đang ở kênh mua hàng! <a href="<c:url value="/seller/account/register"/>" class="orange-medium">Chuyển qua kênh người
              bán?</a></div>
          <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
          <script src="<c:url value="/Top-Bar.js"/>"></script>
          <script>
            var timeoutId; // Biến để lưu trữ ID của hẹn giờ

            $(document).ready(function(){
              $('#search').on('input', function(){
                clearTimeout(timeoutId); // Xóa hẹn giờ trước đó (nếu có)
                timeoutId = setTimeout(sendToJava, 500); // Hẹn giờ 0.5s và gọi hàm sendToJava
              });
              // Xóa nội dung khi click vào một phần tử ngoài ô tìm kiếm và ngoài kết quả tìm kiếm
              $(document).on('click', function(event) {
                if (!$(event.target).closest('#search').length && !$(event.target).closest('#suggestSearch').length) {
                  $('#suggestSearch').empty();
                }
              });
              $('#search').on('focus', function(){
                // Gọi lại hàm sendToJava để hiển thị lại kết quả tìm kiếm
                sendToJava();
              });
            });

            function sendToJava() {
              var searchData = $('#search').val().trim();
              if(!searchData)
              {
                $('#suggestSearch').empty();
                return;
              } // Nếu không có dữ liệu thì không gửi yêu cầu
              $.ajax({
                url: '/PBL3_1_war_exploded/suggestsearch', // URL của servlet bạn muốn gửi yêu cầu đến
                type: 'GET',
                data: {searchData: searchData},
                success: function(response){
                  // Xử lý phản hồi từ servlet (nếu có)
                  // Xóa kết quả tìm kiếm cũ
                  $('#suggestSearch').empty();
                  // Thêm từng kết quả tìm kiếm vào danh sách
                  response.forEach(function(suggestion) {
                    $('#suggestSearch').append('<a role="option" href="/PBL3_1_war_exploded/search?keyword=' + encodeURIComponent(suggestion) + '">' + suggestion + '</a>');
                  });
                  console.log('Đã nhận phản hồi từ servlet: ' + response);
                },
                error: function(){
                  console.log('Đã xảy ra lỗi khi gửi yêu cầu đến servlet.');
                }
              });
            }
          </script>
        </div>
        <div class="Header-Bot">
          <div class="Header-Bot__left">
            <a href='<c:url value="/home"/>' ><img class="Logo" src='<c:url value= "/img/Logo/Logo Ispum.png"/>' alt="Logo"></a>
            <form action= '<c:url value="/search"/>' method="post">
              <label for="search"></label>
              <input type="search" value='<c:if test="${sessionScope.get('keyword') != null}">${sessionScope.get('keyword')}</c:if>' id="search" name="search" placeholder="Tìm kiếm theo sản phẩm, phân loại và thương hiệu">
              <div id="suggestSearch">

              </div>
              <i class="fa-solid fa-magnifying-glass"></i>
            </form>
          </div>

          <ul class="Header-Bot__right">
            <li class="Header-Bot__Account">
              <c:if test="${sessionScope.get('USERMODEL') != null}">
                <a href='<c:url value="/usersetting/userinfor"/>'>
                  <i class="fa-solid fa-user"></i>
                    ${sessionScope.get("USERMODEL") != null ? sessionScope.get("USERMODEL").username : "Đăng nhập"}
                </a>
              </c:if>
              <c:if test="${sessionScope.get('USERMODEL') == null}">
                <a href='<c:url value="/login"/>'><i class="fa-solid fa-user"></i>
                ${sessionScope.get("USERMODEL") != null ? sessionScope.get("USERMODEL").username : "Đăng nhập"}
                </a>
              </c:if>


              <c:if test="${sessionScope.get('USERMODEL') != null}">
              <div class="User_option">
                <div class="Shop_option">
                  <h3>Shop của bạn</h3>
                  <a href="<c:url value="/seller/account/register"/>"><i class="fa-solid fa-shop"></i> Kênh người bán</a>
                  <a href="#"><i class="fa-solid fa-list-check"></i> Quản lí đơn hàng</a>
                  <a href="<c:url value="/seller/product/productmanagement"/>"><i class="fa-brands fa-product-hunt"></i> Quản lí sản phẩm</a>
                  <a href="#"><i class="fa-solid fa-chart-simple"></i> Dữ liệu</a>
                  <a href="#"><i class="fa-solid fa-headset"></i> Chăm sóc khách hàng</a>
                </div>
                <div class="Line"></div>
                <div class="Account_option">
                  <h3>Tài khoản của bạn</h3>
                  <a href='<c:url value="/usersetting/userinfor"/>'><i class="fa-solid fa-user"></i> Tài khoản của tôi</a>
                  <a href='<c:url value="/usersetting/address"/>'><i class="fa-solid fa-location-dot"></i> Địa chỉ của tôi</a>
                  <a href='<c:url value="/usersetting/order"/>'><i class="fa-solid fa-money-bill"></i> Đơn mua</a>
                  <a href='<c:url value="/logout"/>'><i class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a>
                </div>
              </div>
              </c:if>
            </li>
            <li class="Header-Bot__Cart">
              <i class="fa-solid fa-cart-shopping"></i>Giỏ hàng
              <div class="SM_Cart_Container">
                <h3>SẢN PHẨM MỚI THÊM</h3>
                <div class="SM_Cart-Content">
                </div>
                  <a class="Cart-Btn btn" href="<c:url value="/cart"/>">Xem giỏ hàng</a>
              </div>
            </li>
            <li class="Header-Bot__Announce">
              <i class="fa-solid fa-bell"></i>
              Thông báo
            </li>
          </ul>
        </div>
<c:if test="${sessionScope.get('USERMODEL') != null}">
        <script>
          $(document).ready(function(){
              update();
          });
        </script>
</c:if>
      </header>
      <%-- End of Top Bar --%>
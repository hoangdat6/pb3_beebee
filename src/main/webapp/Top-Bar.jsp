<%@ include file="common/taglib.jsp" %>
  <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%-- Top Bar --%>
      <header id="Header">
        <div class="Header-Top">
          <div class="Header-Top__item1">Chúng tôi giao hàng mỗi ngày từ <span class="orange-bold">7:00</span> đến
            <span class="orange-bold">23:00</span>
          </div>
          <div class="Header-Top__item2">Bạn đang ở kênh mua hàng! <a href="<c:url value="/seller/account/register"/>" class="orange-bold">Chuyển qua kênh người
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
                    $('#suggestSearch').append('<a role="option" href="/PBL3_1_war_exploded/search?keyword=' + encodeURIComponent(suggestion) + '">' + suggestion + '</a><br>');
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
            <a href='<c:url value="/home"/>' ><img class="Logo" src='<c:url value= "/img/Logo/Logo.png"/>' alt="Logo"></a>
            <form action= '<c:url value="/search"/>' method="post">
              <label for="search"></label>
              <input type="search" value='<c:if test="${sessionScope.get('keyword') != null}">${sessionScope.get('keyword')}</c:if>' id="search" name="search" placeholder="Tìm kiếm theo sản phẩm, phân loại và thương hiệu">
              <div id="suggestSearch"></div>
              <i class="fa-solid fa-magnifying-glass"></i>
            </form>
          </div>

          <ul class="Header-Bot__right">
            <li class="Header-Bot__Account">
              <c:if test="${sessionScope.get('USERMODEL') != null}">
                <a style="color: #030712" href='<c:url value="/usersetting/userinfor"/>'><i class="fa-solid fa-user"></i>
                    ${sessionScope.get("USERMODEL") != null ? sessionScope.get("USERMODEL").username : "Đăng nhập"}
                </a>
              </c:if>
              <c:if test="${sessionScope.get('USERMODEL') == null}">
                <a style="color: #030712" href='<c:url value="/login"/>'><i class="fa-solid fa-user"></i>
                ${sessionScope.get("USERMODEL") != null ? sessionScope.get("USERMODEL").username : "Đăng nhập"}
                </a>
              </c:if>


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
                  <a href='<c:url value="/usersetting/userinfor"/>'><img src="./img/Shop/TKCuaToi.svg" alt="">Tài khoản của tôi</a>
                  <a href='<c:url value="/usersetting/address"/>'><img src="./img/Shop/DiaChiCT.svg" alt="">Địa chỉ của tôi</a>
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
                </div>
                <div class="Purchase">
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
<c:if test="${sessionScope.get('USERMODEL') != null}">
        <script>
          $(document).ready(function(){
              update();
          });
        </script>
</c:if>
      </header>
      <%-- End of Top Bar --%>
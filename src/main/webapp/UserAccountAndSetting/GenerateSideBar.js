function GenerateSideBar(type = "UserInformation") {
    // Tạo thẻ aside
    let aside = document.createElement('aside');
    aside.classList.add('UAAS_bar');
    let Type = `UAAS_bar--${type}`;
    // Tạo nội dung HTML
    aside.innerHTML = `
        <div class="UAAS_bar_top">
            <div class="Avatar_wrapper">
                <img class="UAAS_avatar" id="Avatar" src="../img/Product-Details/Review-Avatar-1.jpeg" alt="#">
                <input type="file" name="fileInput" id="fileInput" style="display: none;">
                <img class="UAAS_camera" src="../img/User_information/Camera.svg" id="cameraImage" alt="#">
            </div>
            <h3 class="UAAS_userName">\${User.username}</h3>
        </div>
        <ul class="UAAS_bar_bot ${Type}">
            <li class="UAAS_bar_bot_item" id="UAAS_userInformation"><img src="../img/User_information/User.png" alt="#">Tài khoản
            </li>
            <li class="UAAS_bar_bot_item" id="UAAS_location"><img src="../img/User_information/Location.svg" alt="#">Địa
                chỉ của tôi</li>
            <li class="UAAS_bar_bot_item" id="UAAS_order"><img src="../img/User_information/order.png" alt="#">Đơn hàng
                của tôi</li>
            <li class="UAAS_bar_bot_item" id="UAAS_favorite"><img src="../img/User_information/heart.svg" alt="#">Sản phẩm
                yêu thích</li>
            <li class="UAAS_bar_bot_item" id="UAAS_logOut"><a href='<c:url value="/logout"/>'><img
                src="../img/User_information/log%20out.svg" alt="#">Đăng xuất</a></li>
        </ul>`;

    // Tìm thẻ wrap và thêm thẻ aside vào trong nó
    let wrap = document.querySelector('.UAAS_wrap');
    wrap.prepend(aside);
}
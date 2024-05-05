function GenerateSideBar(type = "UserInformation", username) {
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
        <h3 class="UAAS_userName">${username}</h3>
    </div>
    <ul class="UAAS_bar_bot ${Type}">
        <li class="UAAS_bar_bot_item" id="UAAS_userInformation">
        <a href="/PBL3_1_war_exploded/usersetting/userinfor">
            <i class="fa-solid fa-user"></i> Tài khoản
        </a>
        </li>
        <li class="UAAS_bar_bot_item" id="UAAS_location">
            <a href="/PBL3_1_war_exploded/usersetting/address">
                <i class="fa-solid fa-location-dot"></i> 
                Địa chỉ của tôi</li>
            </a>
        <li class="UAAS_bar_bot_item" id="UAAS_order"><i class="fa-solid fa-box"></i> Đơn hàng
            của tôi</li>
        <li class="UAAS_bar_bot_item" id="UAAS_favorite"><i class="fa-solid fa-heart"></i> Sản phẩm
            yêu thích</li>
        <li class="UAAS_bar_bot_item" id="UAAS_logOut"><a href='/PBL3_1_war_exploded/logout'><i
                    class="fa-solid fa-right-from-bracket"></i> Đăng xuất</a></li>
    </ul>`;

    // Tìm thẻ wrap và thêm thẻ aside vào trong nó
    let wrap = document.querySelector('.UAAS_wrap');
    wrap.prepend(aside);
}

export default GenerateSideBar;
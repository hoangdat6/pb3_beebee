function generateSidebar() {
    let sidebar = document.createElement("div");
    sidebar.classList.add("side_bar");
    sidebar.innerHTML = `
    <a href="/PBL3_1_war_exploded/seller/product/order" class="btn item">
        <i class="fa-solid fa-clipboard"></i>
        <span>Quản lý đơn hàng</span>
    </a>

    <div>
        <a href="/PBL3_1_war_exploded/seller/product/productmanagement" class="btn item">
            <i class="fa-solid fa-bag-shopping"></i>
            <span>Quản lý sản phẩm</span>
        </a>
        <ul>
            <li class="subitem"><a href="/PBL3_1_war_exploded/seller/product/productmanagement">Tất cả sản phẩm</a></li>
            <li class="subitem"><a href="">Sản phẩm vi phạm</a></li>
            <li class="subitem"><a href="/PBL3_1_war_exploded/seller/product/save">Thêm sản phẩm</a></li>
            <li class="subitem"><a href="/PBL3_1_war_exploded/seller/voucher/AddVoucher.jsp">Thêm Voucher</a></li>
        </ul>
    </div>

    <div>
        <a href="" class="btn item">
            <i class="fa-solid fa-comments"></i>
            <span>Chăm sóc khách hàng</span>
        </a>
        <ul>
            <li class="subitem"><a href="">Quản lí Chat</a></li>
            <li class="subitem"><a href="">Quản lí đánh giá</a></li>
        </ul>
    </div>

    <div>
        <a href="" class="btn item">
            <i class="fa-solid fa-wallet"></i>
            <span>Tài chính</span>
        </a>
        <ul>
            <li class="subitem"><a href="">Doanh thu</a></li>
            <li class="subitem"><a href="">Số dư TK BeeShop</a></li>
            <li class="subitem"><a href="">Tài khoản ngân hàng</a></li>
        </ul>
    </div>

    <a href="/PBL3_1_war_exploded/seller/statistic" class="btn item">
        <i class="fa-solid fa-chart-area"></i>
        <span>Dữ liệu và thống kê</span>
    </a>

    <div>
        <a href="" class="btn item">
            <i class="fa-solid fa-shop"></i>
            <span>Quản lý Shop</span>
        </a>
        <ul>
            <li class="subitem"><a href="">Hồ sơ Shop</a></li>
            <li class="subitem"><a href="">Trang trí Shop</a></li>
            <li class="subitem"><a href="">Thiết lập Shop</a></li>
        </ul>
    </div>
    `;
    document.body.prepend(sidebar);
}

$(document).ready(() => {
    generateSidebar();
});
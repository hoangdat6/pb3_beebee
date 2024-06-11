function createListOrder(data) {
    document.querySelector(".wrap").innerHTML = "";
    data.forEach(function (order) {
        var Class = `id-${order.id}`;
        createOrderTable(order, Class);
    });
}

function createOrderTable(order, Class) {
    document.querySelector(".wrap").innerHTML +=
            `<div class="Order_item ${Class}">    
                <div class="header"> 
                        <a class="shop" href="/PBL3_1_war_exploded/shop?id=${order.sellerId}">
                            <img src="/PBL3_1_war_exploded/${order.avatar}" alt="" class="shop_avatar"/>
                            <span>${order.name}
                        </a>
                    <div class="status">${order.status}</div>
                </div>
                <div class="content ${Class}">
                </div>
            </div>`;

    var classSelector = `.content.${Class}`;
    var Price = 0;
    order.products.forEach(function (product) {
        console.log(classSelector);
        Price += product.quantity * product.price * (100 - product.discount) / 100;
        document.querySelector(classSelector).innerHTML += createProductOrder(product);
    });
    var class2Selector = `.Order_item.${Class}`;
    var voucherFee = 0;
    var s = "";
    order.orderDiscounts.forEach(function (orderDiscount) {
        voucherFee += orderDiscount.voucherDiscount;
        s += `<div>${orderDiscount.nameVoucher}: <span>-${orderDiscount.voucherDiscount}đ</span></div>`;
    });
    document.querySelector(class2Selector).innerHTML +=
        `<div class="footer">
    <div class="qty_and_total">
        <div class="qty">${order.products.length} sản phẩm</div>
        <div class="total">
            <div>Tổng tiền: <span>${Price}đ</span></div>
            <div>Phí vận chuyển: <span>${order.shippingFee}đ</span></div>
            ${s}
            <div>Thành tiền: <span>${Price + order.shippingFee - voucherFee}đ</span></div>
        </div>
    </div>
    <div class="choice">
        <p>Vui lòng chỉ nhấn “Đã nhận được hàng” khi đơn hàng đã được giao đến bạn và sản phẩm nhận
            được
            không có vấn đề nào.</p>
        <div class="action">
            <button class="btn btn1 ${Class}">Đánh giá</button>
            <button class="btn btn2 ${Class}">Yêu cầu trả hàng hoàn tiền</button>
            <button class="btn btn2 ${Class}">Liên hệ người bán</button>
        </div>
    </div>
</div>`
}

function createProductOrder(product) {
    return `<div class="product">` +
        `<a href="/PBL3_1_war_exploded/product?id=${product.id}">` +
        `<img src="/PBL3_1_war_exploded/${product.imgPath}" alt="" class="product_img"/>` +
        `<div class="product_info">` +
        `<div class="name">${product.name}</div>` +
        `</a>` +
        `<div class="variant">Phân loại hàng: ${product.nameVariation1}, ${product.nameVariation2}</div>` +
        `<div class="qty_and_price">` +
        `<div class="qty">Số lượng: ${product.quantity}</div>` +
        `<div class="price">` +
        `<span class="old_price">${product.price * product.quantity}đ</span>` +
        `<span class="new_price">${product.quantity * product.price * (100 - product.discount) / 100}đ</span>` +
        `</div>` +
        `</div>` +
        `</div>`
}

function createOrderDetailTable() {
    var element = document.querySelector('.nav-item.btn.active');
    var status = element.getAttribute('id');
    console.log("id status  = " + status); // Sẽ in ra ID của phần tử, trong trường hợp này là "0"
    // var search = document.getElementById("search").value;
    $.ajax({
        url: '/PBL3_1_war_exploded/usersetting/order/api',
        type: 'GET',
        data: {
            status: status,
            // search: ""
        },
        contentType: 'application/json',
        success: function (data) {
            // console.log(data);
            createListOrder(data);
        },
        error: function (error) {
            console.error('Error:', error);
        }
    });
}

// import GenerateSideBar from "./GenerateSideBar.js";
//
// GenerateSideBar("Order");
document.querySelectorAll(".nav-item").forEach(function (navItem) {
    navItem.addEventListener("click", function () {
        document.querySelectorAll(".nav-item").forEach(function (item) {
            item.classList.remove("active");
        });
        navItem.classList.add("active");
        console.log("ID = " + navItem.getAttribute("id"));
        createOrderDetailTable();
    });
});
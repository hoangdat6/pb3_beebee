function createListOrder(data) {
    document.querySelector(".wrap").innerHTML = "";
    data.forEach(function (order) {
        var Class = `id-${order.id}`;
        createSellerOrderTable(order, Class);
    });
}

function createSellerOrderTable(order, Class) {
    document.querySelector(".wrap").innerHTML +=
        `<div class="Order_item ${Class}">    
                <div class="header"> 
                        <a class="shop">
                            <img src="/PBL3_1_war_exploded/${order.avatar}" alt="" class="user_avatar"/>
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
    var str =
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
<!--        <p>Vui lòng chỉ nhấn “Đã nhận được hàng” khi đơn hàng đã được giao đến bạn và sản phẩm nhận-->
<!--            được-->
<!--            không có vấn đề nào.</p>-->
        <div class="action">`
    if (order.status === "Chờ thanh toán")
    {
        str += `<button class="btn btnContact ${Class}">Liên hệ người mua</button>`;
    }else if(order.status === "Chờ xác nhận") {
        str += `<button class="btn btnConfirm ${Class}">Xác nhận</button>`;
    }else if(order.status === "Vận chuyển") {
        str += `<button class="btn btnContact ${Class}">Liên hệ người mua</button>`;
    }else if(order.status === "Chờ giao hàng") {
        str += `<button class="btn btnDelivered ${Class}">Đã giao hàng</button>`;
    }else if(order.status === "Hoàn thành") {
        str += `<button class="btn btnContact ${Class}">Liên hệ người mua</button>`;
    }else if(order.status === "Đã hủy") {
        str += `<button class="btn btnContact ${Class}">Liên hệ người mua</button>`;
    }
    // <button class="btn btn1 ${Class}">Đánh giá</button>
    // <button class="btn btn2 ${Class}">Yêu cầu trả hàng hoàn tiền</button>
    // <button class="btn btn2 ${Class}">Liên hệ người bán</button>
    str+=
        `</div>
        </div>
    </div>`
    document.querySelector(class2Selector).innerHTML += str;
}

function createProductOrder(product) {
    var Result = `<div class="product">` +
        `<a href="/PBL3_1_war_exploded/product?id=${product.id}">` +
        `<img src="/PBL3_1_war_exploded/${product.imgPath}" alt="" class="product_img"/>` +
        `<div class="product_info">` +
        `<div class="name">${product.name}</div>` +
        `</a>` +
        `<div class="variant">`
    var ok = false;
    if (product.nameVariation1 != null)
    {
        Result += product.nameVariation1;
        ok = true;
    }
    if (product.nameVariation2 != null)
    {
        if (ok)
            Result += ", ";
        Result += product.nameVariation2;
    }
    Result += `</div>` +
        `<div class="qty_and_price">` +
        `<div class="qty">Số lượng: ${product.quantity}</div>` +
        `<div class="price">` +
        `<span class="old_price">${(product.price * product.quantity).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' })}đ</span>` +
        `<span class="new_price">${(product.quantity * product.price * (100 - product.discount) / 100).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' })}</span>` +
        `</div>` +
        `</div>` +
        `</div>`;
    return Result;
}

function createSellerOrderDetailTable() {
    var element = document.querySelector('.nav-item.btn.active');
    var status = element.getAttribute('id');
    console.log("id status  = " + status); // Sẽ in ra ID của phần tử, trong trường hợp này là "0"
    // var search = document.getElementById("search").value;
    $.ajax({
        url: '/PBL3_1_war_exploded/seller/product/order/api',
        type: 'GET',
        data: {
            status: status,
        },
        contentType: 'application/json',
        success: function (data) {
            console.log(data);
            createListOrder(data);
            document.querySelectorAll('.btnDelivered').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    console.log('Đã gửi hàng');
                    // var result = confirm("Bạn đã thật sự giao hàng chưa?");
                    createAlertPopUp("Thông báo", "Bạn đã thật sự giao hàng chưa?",
                        [{text: 'Có', class: 'btn-light btn-m', callback: 'removeAlert()', resolveValue: true},
                            {text: 'Không', class: 'button-solid-primary btn-m', callback: 'removeAlert()', resolveValue: false} ])
                        .then((value) => {
                            if(value === true) {
                                // Xử lý sự kiện click cho nút 'Hủy đơn hàng'
                                console.log('Đã gửi hàng');
                                console.log(btn.classList[2].substring(3));
                                $.ajax({
                                    url: '/PBL3_1_war_expproduct.quantity * product.price * (100 - product.discount) /loded/seller/product/order/delivered',
                                    type: 'GET',
                                    data: {
                                        id: btn.classList[2].substring(3),
                                        status: status
                                    },
                                    success: function (data) {
                                        console.log(data);
                                        createSellerOrderDetailTable();
                                    },
                                    error: function (error) {
                                        console.error('Error:', error);
                                    }
                                });
                            }
                        });
                    // if (result) {
                    //
                    // }else
                    // {
                    //     console.log("Không hủy");
                    // }
                });
            });

            // Liên hệ với người bán
            // document.querySelectorAll('.btnContact').forEach(function (btn) {
            //     btn.addEventListener('click', function () {
            //         // Xử lý sự kiện click cho nút 'Liên hệ với người bán'
            //         console.log('Liên hệ với người bán');
            //     });
            // });

            // Đã nhận hàng
            document.querySelectorAll('.btnConfirm').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    // Xử lý sự kiện click cho nút 'Đã nhận hàng'
                    createAlertPopUp("Thông báo", "Bạn có chắc chắn muốn xác nhận đơn hàng không?",
                        [{text: 'Có', class: 'btn-light btn-m', callback: 'removeAlert()', resolveValue: true},
                            {text: 'Không', class: 'button-solid-primary btn-m', callback: 'removeAlert()', resolveValue: false} ])
                        .then((value) => {
                            if(value === true) {
                                // Xử lý sự kiện click cho nút 'Hủy đơn hàng'
                                console.log('Đã xác nhận');
                                console.log(btn.classList[2].substring(3));
                                $.ajax({
                                    url: '/PBL3_1_war_exploded//seller/product/order/confirm',
                                    type: 'GET',
                                    data: {
                                        id: btn.classList[2].substring(3),
                                        status: status
                                    },
                                    success: function (data) {
                                        console.log(data);
                                        createSellerOrderDetailTable();
                                    },
                                    error: function (error) {
                                        console.error('Error:', error);
                                    }
                                });
                            }
                        });
                });
            });

            // Trả hàng hoàn tiền
            // document.querySelectorAll('.btnReturn').forEach(function (btn) {
            //     btn.addEventListener('click', function () {
            //         // Xử lý sự kiện click cho nút 'Yêu cầu trả hàng hoàn tiền'
            //         console.log('Yêu cầu trả hàng hoàn tiền');
            //     });
            // });

            // Đánh giá sản phẩm
            // document.querySelectorAll('.btnReview').forEach(function (btn) {
            //     btn.addEventListener('click', function () {
            //         // Xử lý sự kiện click cho nút 'Đánh giá'
            //         console.log('Đánh giá');
            //     });
            // });
            //
            // // Mua lần nữa
            // document.querySelectorAll('.btnRepurchase').forEach(function (btn) {
            //     btn.addEventListener('click', function () {
            //         // Xử lý sự kiện click cho nút 'Mua lần nữa'
            //         console.log('Mua lần nữa');
            //     });
            // });
            // document.querySelectorAll('.btnPay').forEach(function(btn) {
            //     btn.addEventListener('click', function() {
            //         // Xử lý sự kiện click cho nút 'Thanh toán'
            //         console.log('Thanh toán');
            //         var parent = btn.closest('.Order_item');
            //
            //         // Lấy giá trị total từ thẻ cha
            //         var total = parent.querySelector('.total span').innerText.slice(0, -1);
            //         var id = btn.classList[2].substring(3);
            //         console.log(total);
            //         overlayQR(total, id);
            //     });
            // });
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
        createSellerOrderDetailTable();
    });
});

// Sau khi đã tạo các nút và thêm chúng vào DOM
// Thanh toán

// Hủy đơn hàng
// document.addEventListener('DOMContentLoaded' , function() {
//     console.log(document.querySelectorAll('.btnCancel'));
//
// });

function createOverlay() {
    let overlay = document.createElement('div');
    overlay.id = 'overlay';
    Object.assign(overlay.style, {
        position: 'fixed',
        top: 0,
        left: 0,
        width: '100%',
        height: '100%',
        backgroundColor: 'rgba(0,0,0,0.5)',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
    });
    document.body.appendChild(overlay);
    return overlay;
}

function overlayQR(total, orderIds){
    let overlay = createOverlay();
    let QRPopups = document.createElement("div");

    QRPopups.innerHTML =  `
        <img src="https://img.vietqr.io/image/970422-00161224886868-compact2.png?amount=${total}&addInfo='${orderIds}'&accountName=HOANG%20VAN%20DAT">
    `

    overlay.appendChild(QRPopups);
}
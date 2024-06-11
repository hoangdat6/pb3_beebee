function createListOrder(data) {
    document.querySelector(".wrap").innerHTML = "";
    data.forEach(function (order) {
        var Class = `id-${order.id}`;
        createOrderTable(order, Class);
    });
}

// <div className="footer">
//     <div className="qty_and_total">
//         <div className="qty">6 sản phẩm</div>
//         <div className="total">
//             Tổng tiền: <span>100.000đ</span>
//         </div>
//     </div>
//     <div className="choice">
//         <p>Vui lòng chỉ nhấn “Đã nhận được hàng” khi đơn hàng đã được giao đến bạn và sản phẩm nhận
//             được
//             không có vấn đề nào.</p>
//         <div className="action">
//             <button className="btn btn1">Đánh giá</button>
//             <button className="btn btn2">Yêu cầu trả hàng hoàn tiền</button>
//             <button className="btn btn2">Liên hệ người bán</button>
//         </div>
//     </div>
// </div>

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
        <p>Vui lòng chỉ nhấn “Đã nhận được hàng” khi đơn hàng đã được giao đến bạn và sản phẩm nhận
            được
            không có vấn đề nào.</p>
        <div class="action">`
            if (order.status === "Chờ thanh toán")
            {
                str += `<button class="btn btnPay ${Class}">Thanh toán</button>`;
                str += `<button class="btn btnCancel ${Class}">Hủy đơn hàng</button>`;
            }else if(order.status === "Chờ xác nhận") {
                str += `<button class="btn btnCancel ${Class}">Hủy đơn hàng</button>`;
                str += `<button class="btn btnContact ${Class}">Liên hệ với người bán</button>`;
            }else if(order.status === "Vận chuyển") {
                str += `<button class="btn btnReceived ${Class}">Đã nhận hàng</button>`;
                str += `<button class="btn btnReturn ${Class}">Yêu cầu trả hàng hoàn tiền</button>`;
            }else if(order.status === "Chờ giao hàng") {
                str += `<button class="btn btnReceived ${Class}">Đã nhận hàng</button>`;
                str += `<button class="btn btnContact ${Class}">Liên hệ với người bán</button>`;
            }else if(order.status === "Hoàn thành") {
                str += `<button class="btn btnReview ${Class}">Đánh giá</button>`;
                str += `<button class="btn btnRepurchase ${Class}">Mua lần nữa</button>`;
            }else if(order.status === "Đã hủy") {
                str += `<button class="btn btnRepurchase ${Class}">Mua lại</button>`;
                str += `<button class="btn btnContact ${Class}">Liên hệ với người bán</button>`;
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
        `<span class="old_price">${product.price * product.quantity}đ</span>` +
        `<span class="new_price">${product.quantity * product.price * (100 - product.discount) / 100}đ</span>` +
        `</div>` +
        `</div>` +
        `</div>`;
    return Result;
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
        },
        contentType: 'application/json',
        success: function (data) {
            console.log(data);
            createListOrder(data);
            document.querySelectorAll('.btnCancel').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    var result = confirm("Bạn có chắc chắn muốn hủy đơn hàng này không?");
                    if (result) {
                        // Xử lý sự kiện click cho nút 'Hủy đơn hàng'
                        console.log('Hủy đơn hàng');
                        console.log(btn.classList[2].substring(3));
                        $.ajax({
                            url: '/PBL3_1_war_exploded/usersetting/order/cancel',
                            type: 'GET',
                            data: {
                                id: btn.classList[2].substring(3),
                                status: status
                            },
                            success: function (data) {
                                console.log(data);
                                createOrderDetailTable();
                            },
                            error: function (error) {
                                console.error('Error:', error);
                            }
                        });
                    }else
                    {
                        console.log("Không hủy");
                    }
                });
            });

            // Liên hệ với người bán
            document.querySelectorAll('.btnContact').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    // Xử lý sự kiện click cho nút 'Liên hệ với người bán'
                    console.log('Liên hệ với người bán');
                });
            });

            // Đã nhận hàng
            document.querySelectorAll('.btnReceived').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    // Xử lý sự kiện click cho nút 'Đã nhận hàng'
                    console.log('Đã nhận hàng');
                    var result = confirm("Bạn có chắc chắn muốn xác nhận đã nhận hàng không?")
                    if (result) {
                        // Xử lý sự kiện click cho nút 'Hủy đơn hàng'
                        console.log('Đã nhận hàng');
                        console.log(btn.classList[2].substring(3));
                        $.ajax({
                            url: '/PBL3_1_war_exploded/usersetting/order/received',
                            type: 'GET',
                            data: {
                                id: btn.classList[2].substring(3),
                                status: status
                            },
                            success: function (data) {
                                console.log(data);
                                createOrderDetailTable();
                            },
                            error: function (error) {
                                console.error('Error:', error);
                            }
                        });
                    }else
                    {
                        console.log("Không nhận");
                    }

                });
            });

            // Trả hàng hoàn tiền
            document.querySelectorAll('.btnReturn').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    // Xử lý sự kiện click cho nút 'Yêu cầu trả hàng hoàn tiền'
                    console.log('Yêu cầu trả hàng hoàn tiền');
                });
            });

            // Đánh giá sản phẩm
            document.querySelectorAll('.btnReview').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    // Xử lý sự kiện click cho nút 'Đánh giá'
                    console.log('Đánh giá');
                });
            });

            // Mua lần nữa
            document.querySelectorAll('.btnRepurchase').forEach(function (btn) {
                btn.addEventListener('click', function () {
                    // Xử lý sự kiện click cho nút 'Mua lần nữa'
                    console.log('Mua lần nữa');
                });
            });
            document.querySelectorAll('.btnPay').forEach(function(btn) {
                btn.addEventListener('click', function() {
                    // Xử lý sự kiện click cho nút 'Thanh toán'
                    console.log('Thanh toán');
                    var parent = btn.closest('.Order_item');

                    // Lấy giá trị total từ thẻ cha
                    var total = parent.querySelector('.total span').innerText.slice(0, -1);
                    var id = btn.classList[2].substring(3);
                    console.log(total);
                    overlayQR(total, id);
                });
            });
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
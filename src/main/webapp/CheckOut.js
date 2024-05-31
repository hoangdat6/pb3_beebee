function getPrice() {
    let products = document.querySelectorAll(".Col2-Product-Item");
    let total = 0;
    products.forEach(product => {
        let price = parseFloat(product.querySelector("#price").value);
        let quantity = product.querySelector(".Qty__Input").value;
        total += price * quantity;
    });

    console.log(total);

    let total_product_price = document.querySelector("#product_price");
    let total_price = document.querySelector("#total_price");

    total_product_price.textContent = total.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
    total_price.textContent = total.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });

    return total;
}

function UpdateQuantity(button) {
    let action = button.value;

    let quantity = button.closest(".Qty").querySelector(".Qty__Input");
    let currentQuantity = parseInt(quantity.value);
    if(action === "increase"){
        quantity.value = currentQuantity + 1;
    } else if(action === "decrease"){
        if(currentQuantity > 1){
            quantity.value = currentQuantity - 1;
        }else if(currentQuantity === 1){
            if(confirm("Bạn chắc chắn muốn bỏ sản phẩm này?") === true){
                (button.closest(".Col2-Product-Item").remove());
            }
        }
    }

    getPrice();
}

function getProduct(){
    let products = document.querySelectorAll(".Col2-Product-Item");
    let data = [];
    products.forEach(product => {
        let productItemId = product.querySelector("#productItemId").value;
        let quantity = product.querySelector(".Qty__Input").value;
        let sellerId = product.querySelector("#sellerId").value;
        let total = product.querySelector("#price").value;

        data.push({
            sellerId : sellerId,
            productItemId : productItemId,
            quantity : quantity,
            total : total
        });
    });
    return data;

}

function order(){
    let fullname = $("#CO--Item-Name").val();
    let phone = $("#CO--Item-PhoneNumber").val();
    let citySelect = document.querySelector('#city');
    let districtSelect = document.querySelector('#district');
    let wardSelect = document.querySelector('#ward');

    let city = citySelect.options[citySelect.selectedIndex].value;
    let district = districtSelect.options[districtSelect.selectedIndex].value;
    let ward = wardSelect.options[wardSelect.selectedIndex].value;
    let detail = document.querySelector("#Address-Desc").value;
    let paymentMethod = document.querySelector("input[name='payment']").id;

    let total = getPrice();
    let data = [];
    data.push({
        fullname : fullname,
        phone : phone,
        detail: detail,
        province : city,
        district : district,
        ward : ward,
        paymentMethod : paymentMethod,
        total : total
    });

    let products = getProduct();
    data.push(products);

    console.log(data);

    $.ajax({
        type: "POST",
        url: "/PBL3_1_war_exploded/api/checkout",
        data: JSON.stringify(data),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

        }
    });
}

let paymentTotal;
function getPriceOrder(){
    let shops = document.querySelectorAll(".product_of_shop");
    let total_all = 0;
    let voucher_discount_all = 0;
    let shipping_fee_all = 0;

    shops.forEach(shop => {
        let products = shop.querySelectorAll(".product_item");
        let total_order_shop = 0;

        let shipping_fee_shop = parseInt(shop.querySelector("input[name='shippingFee']").value);
        shipping_fee_all += shipping_fee_shop;
        products.forEach(product => {
            let price = parseFloat(product.querySelector("input[name='price']").value);
            let discount = parseFloat(product.querySelector("input[name='discount']").value);
            let quantity = parseFloat(product.querySelector("input[name='quantity']").value);
            total_order_shop += price * (1 - discount / 100.0) * quantity;
        });


        total_all += total_order_shop;

        let total_price = shop.querySelector(".total_price");
        let voucher_money = shop.querySelector(".voucher_money");
        let total_money = shop.querySelector(".total_money");
        // let voucher_discount = parseInt(shop.querySelector("input[name='voucher_discount']").value);
        let voucher_discount = 100;

        voucher_discount_all += voucher_discount;

        total_price.textContent = (Math.round(total_order_shop)).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
        voucher_money.textContent = "-" + (Math.round(voucher_discount)).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
        total_money.textContent = (Math.round(total_order_shop - voucher_discount + shipping_fee_shop)).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
    });


    let total_all_order = document.querySelector("#total_all_order");
    let shipping_fee = document.querySelector("#shipping_fee");
    let voucher_all = document.querySelector("#voucher_all");
    let total_all_money = document.querySelector("#total_all-money");

    total_all_order.textContent = (Math.round(total_all)).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
    shipping_fee.textContent = (Math.round(shipping_fee_all)).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
    voucher_all.textContent = "-" +  (Math.round(voucher_discount_all)).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
    paymentTotal = Math.round(total_all - voucher_discount_all + shipping_fee_all);
    total_all_money.textContent = paymentTotal.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });

}

$(document).ready(function () {
    getPriceOrder();
    getPrice();
});


function btnOrder(){
    getDataForOrder();
}


function getDataForOrder(){
    let addressId = document.querySelector("#address_id").value;
    let paymentMethodId = document.querySelector("input[name='payment_method']:checked").id;
    let data = {
        addressId : addressId,
        paymentMethodId : paymentMethodId,
        paymentTotal : paymentTotal
    }

    $.ajax({
        type: "POST",
        url: "/PBL3_1_war_exploded/api/checkout",
        data: JSON.stringify(data),
        contentType: "application/json",
        success: function (response) {
            console.log(response);
            if (response.code == '200'){
                window.location.href = '/PBL3_1_war_exploded/check-out-done';
            }else {
                createAlertPopUp("Xác nhận", "Có 1 số sản phẩm đã hết hàng, vui lòng chọn các lựa chọn sau!",
                    [{text: 'Trở về giỏ hàng', class: 'button-solid-primary btn-m', callback: 'removeAlert()', resolveValue: true},
                        {text: 'Đặt tất cả các sản phẩm còn lại', class: 'btn-light btn-m', callback: 'removeAlert()', resolveValue: false}]
                    )
            }
        }
    });
}


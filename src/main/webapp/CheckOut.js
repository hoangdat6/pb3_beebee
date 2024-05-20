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
            console.log(response);
        }
    });
}

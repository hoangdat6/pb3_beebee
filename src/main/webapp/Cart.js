$(document).ready(function() {
    // Lấy tất cả các phần tử .Shop_Products
    let shopProducts = document.querySelectorAll('.Shop_Products');
    // Lặp qua tất cả các phần tử .Shop_Products
    shopProducts.forEach(shopProduct => {
        // Lấy giá trị của thuộc tính isLocked
        let isLocked = shopProduct.querySelector('input[name="isLocked"]').value;

        // Kiểm tra nếu isLocked == true
        if (isLocked == 'true') {
            let shopPick = shopProduct.querySelector('.ShopPick');
            shopPick.remove();
            let cartCB = shopProduct.querySelectorAll('.Cart_CB');
            cartCB.forEach(cb => {
                let checkbox = cb.closest('.Check_box');
                cb.remove();
                checkbox.innerHTML += '<div class="sold_out">Ngừng bán</div>';
            });

            let header = shopProduct.querySelector('.Shop_Products-Header');
            header.removeAttribute('href');
            header.innerHTML = '';
            header.innerHTML += '<div class="shop_locked">shop không còn hoạt động</div>'

            let productCells = shopProduct.querySelectorAll('.Shop_Products-Cell');
            productCells.forEach(cell => {
                cell.classList.add("sold-out-product");
            });
        }
    });
});

$(document).ready(function() {
    let cartCBs = $(document).find('.Cart_CB');

    cartCBs.each(function() {
        let ORDER_CART_ITEM = $(this).closest('.Cart_Table').find('input[name="ORDER_CART_ITEM"]').val();

        let cartItemId = $(this).closest(".Shop_Products-Cell").find("input[name='shoppingCartItemId']").val();
        if (ORDER_CART_ITEM != null && ORDER_CART_ITEM == cartItemId){
            $(this).prop('checked', true);

        }

        let cell = $(this).closest('.Shop_Products-Cell');
        let isDeleted = cell.find('.isDeleted').val();
        if (isDeleted == 'true') {
            cell.find(".Cart_CB").remove();
            cell.find(".Check_box").append('<div class="sold_out">Ngừng bán</div>');
            cell.addClass('sold-out-product');
        }else{
            let isSoldOut = cell.find('.isSoldOut').val();
            let isOutOfStock = cell.find('.isOutOfStock').val();
            if (isSoldOut == 'true') {
                let checkBox = cell.find('.Check_box');
                checkBox.find('.Cart_CB').remove();
                checkBox.append('<div class="sold_out">Hết hàng</div>');
                cell.addClass('sold-out-product');
                return;
            }
            if (isOutOfStock == 'true'){
                let checkBox = cell.find('.Check_box');
                checkBox.find('.Cart_CB').remove();
                checkBox.append('<div class="sold_out" style="font-size: 10px;">không đủ hàng</div>');
            }
        }
        getPrice();
    });
});


function RemoveCartItem(button) {
    let item = button.parentElement;
    let parent = item.parentElement; // Shop_Products-Content
    let id = item.querySelector("input[name='shoppingCartItemId']").value;
    $.ajax({
        type: "GET",
        url: "/PBL3_1_war_exploded/api/remove",
        data: {idCartItem : id},
        success: function(response){
            if(response.status === "200"){
                item.remove();
            }
            if(parent.innerHTML.trim() === ''){
                parent.parentElement.remove(); // xóa Shop_Products nếu shop không còn sản phẩm nào.
            }
        }
    });
}

let debounceTimer;
function UpdateCartItem(button) {
    let action = button.value;
    let item = button.parentElement.parentElement;
    let quantity = parseInt(item.querySelector("input[name='quantity']").value);
    let price = parseInt(item.querySelector("input[name='price']").value);
    let discount = parseInt(item.querySelector("input[name='discount']").value);
    if (action === "increase") {
        quantity++;
    } else if (action === "decrease" && quantity > 0) {
        quantity--;
    }

    let product = item.closest(".Shop_Products-Cell");
    let qtyInStock = $(product).find(".qtyInStock").val();

    if(quantity <= qtyInStock){
        let checkbox = $(product).find(".Check_box");
        checkbox.find(".sold_out").remove();
        if (checkbox.find(".Cart_CB").length === 0)
            checkbox.append(`<label><input type="checkbox" name="Cart_CB" class="Cart_CB"></label>`);
    }else{
        let checkbox = $(product).find(".Check_box");
        checkbox.find(".Cart_CB").remove();
        if (checkbox.find(".sold_out").length === 0)
            checkbox.append(`<div class="sold_out" style="font-size: 10px;">không đủ hàng</div>`);
        getPrice();
    }

    if(quantity === 0){
        let check = createAlertPopUp("Thông báo", "Bạn chắc chắn muốn bỏ sản phẩm này?",
            [{text: 'Có', class: 'button-solid-primary btn-m', callback: 'removeAlert()', resolveValue: true},
            {text: 'Không', class: 'btn-light btn-m', callback: 'removeAlert()', resolveValue: false}]
        ).then((value) => {
            if(value === true) {
                RemoveCartItem(button.parentElement.parentElement);
            } else {
                quantity++;
            }
        });
    }else {
        item.querySelector("input[name='quantity']").value = quantity;
        item.querySelector("input[class='Qty__Input']").value = quantity;
        item.parentElement.querySelector(".Item-Total_Price").textContent =
            (Math.round(quantity * price * (1 - discount / 100.0))).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });

        getPrice();

        clearTimeout(debounceTimer);
        debounceTimer = setTimeout(function () {
            let id = item.querySelector("input[name='shoppingCartItemId']").value;
            console.log("Action:", action);
            $.ajax({
                type: "GET",
                url: "/PBL3_1_war_exploded/api/update",
                data: {idCartItem : id,quantity : quantity, action : action},
                success: function(response){
                }
            });
        }, 1000); // Delay in milliseconds

    }
}



$(document).ready(function () {
    $("#select_all").change(function () {
        setCheckAll($(this).is(':checked'));
        getPrice();
    });
});

function setCheckAll(checked){
    let shopElements = $(document).find('.Shop_Products');
    shopElements.each(function () {
        $(this).find('.ShopPick').prop('checked', checked);
        $(this).find('.Cart_CB').each(function (){
            $(this).prop('checked', checked);
        });
    });
}

$(document).ready(function () {
    $(`.ShopPick`).change(function () {
        setCheckAllShop(this, $(this).is(':checked'));
        checkAllCartCB(this);
        getPrice();
    });
});

function setCheckAllShop(element){
    let isChecked = $(element).is(':checked');
    let shopElement = $(element).closest('.Shop_Products');
    let cartCB = shopElement.find("input[name='Cart_CB']");

    cartCB.each(function (){
        $(this).prop('checked', isChecked);
    });

}

$(document).ready(function () {
    $(`.Cart_CB`).change(function () {
        checkAllCartCB(this);
        setCheckCartCB(this, $(this).is(':checked'));
        getPrice();
    });
});

function setCheckCartCB(element){
    let isChecked = $(element).is(':checked');
    let shopElement = $(element).closest('.Shop_Products');
    let shopPick = shopElement.find('.ShopPick');
    let cartTable = shopElement.closest('.Cart_Table');

    if(!isChecked){
        shopPick.prop('checked', false);
        cartTable.find('#select_all').prop('checked', false);
    }

    let cartCBs = shopElement.find(".Cart_CB");
    let isAllChecked = true;
    cartCBs.each(function (){
        if(!$(this).is(':checked')){
            isAllChecked = false;
        }
    });

    if(isAllChecked){
        shopPick.prop('checked', true);
    }
}


function checkAllCartCB(element){
    let cartTable = $(element).closest('.Cart_Table');

    let cartCBs = cartTable.find('.Cart_CB');
    let isAllChecked = true;

    cartCBs.each(function (){
        if(!$(this).is(':checked')){
            isAllChecked = false;
        }
    });

    cartTable.find('#select_all').prop('checked', isAllChecked);
}


function getSelectedItems(){
    let selectedItems = [];
    let cartCBs = $(document).find('.Cart_CB');
    cartCBs.each(function() {
        if($(this).is(':checked')){
            let itemCell = $(this).closest('.Shop_Products-Cell');
            selectedItems.push(itemCell);
        }
    });
    return selectedItems;
}

function getPrice(){
    let cartCBs = getSelectedItems();
    let total = 0;

    cartCBs.forEach(cb => {
        let price = parseInt(cb.find("input[name='price']").val());
        let quantity = parseInt(cb.find("input[name='quantity']").val());
        let discount = parseInt(cb.find("input[name='discount']").val());
        total += price * (1 - discount / 100.0) * quantity;
    })

    let total_product_price = document.querySelector("#total_product_price");
    let total_price = document.querySelector("#total_price");

    total_product_price.textContent = (Math.round(total)).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });
    total_price.textContent = (Math.round(total)).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });

    return total;
}

function getSelectedDataByShop(){
    let selectedData = [];
    let shopElements = document.querySelectorAll('.Shop_Products');

    let selectedItems = getSelectedItems();

    if(selectedItems.length === 0){
        createAlertPopUp("Thông báo", "Vui lòng chọn sản phẩm",
            [{text: 'Ok', class: 'button-solid-primary btn-m', callback: 'removeAlert()'}]);
        return;
    }

    selectedItems.forEach(item => {
        let shoppingCartItemId = parseInt(item.find("input[name='shoppingCartItemId']").val());
        selectedData.push({
            shoppingCartItemId : shoppingCartItemId
        });
    });

    let shippingMethod = getShippingMethod();

    if(shippingMethod === null){
        createAlertPopUp("Thông báo", "Vui lòng chọn phương thức giao hàng",
            [{text: 'Ok', class: 'button-solid-primary btn-m', callback: 'removeAlert()'},
                {text: 'Không', class: 'btn-light btn-m', callback: 'removeAlert()', resolveValue: false}]);

        return;
    }

    selectedData.push({
        shippingMethod : shippingMethod
    })

    return selectedData;
}

function getShippingMethod(){
    return document.querySelector('input[name="shippingMethod"]:checked') ? document.querySelector('input[name="shippingMethod"]:checked').value : null;
}

function getInfo(){
    let selectedData = getSelectedDataByShop();
    
    if(selectedData.length === 0){
        createAlertPopUp("Thông báo", "Vui lòng chọn sản phẩm",
            [{text: 'Ok', class: 'button-solid-primary btn-m', callback: 'removeAlert()'}]);
        return;
    }

    $.ajax({
        type : "POST",
        url : "/PBL3_1_war_exploded/api/order",
        data : JSON.stringify(selectedData),
        contentType: "application/json",
        success: function(response){
            console.log(response);
            response = JSON.parse(response);
            if(response.status === "200"){
                window.location.href = "/PBL3_1_war_exploded/check-out";
            }
        }
    });

    console.log(data);
}


function RemoveCartItem(button)
{
    let item = button.parentElement;
    let parent = item.parentElement; // Shop_Products-Content
    let id = item.querySelector("input[name='id']").value;
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
    if (action === "increase") {
        quantity++;
    } else if (action === "decrease" && quantity > 0) {
        quantity--;
    }

    if(quantity === 0){
        // createAlertPopUp("Bạn chắc chắn muốn bỏ sản phẩm này?", "qweqwe", null);
        if(confirm("Bạn chắc chắn muốn bỏ sản phẩm này?") === true){
            RemoveCartItem(button.parentElement.parentElement);
            return;
        }else {
            quantity++;
        }
    }

    item.querySelector("input[name='quantity']").value = quantity;
    item.querySelector("input[class='Qty__Input']").value = quantity;
    item.parentElement.querySelector(".Item-Total_Price").textContent = (quantity * price).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });

    getPrice();
    // delay 1s : 1s mới update 1 lần
    clearTimeout(debounceTimer);
    debounceTimer = setTimeout(function () {
        let id = item.querySelector("input[name='id']").value;
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


$(document).ready(function () {
    $("#select_all").change(function () {
        setCheckAll($(this).is(':checked'));
        getPrice();
    });
});

function setCheckAll(checked){
    let shopElements = document.querySelectorAll('.Shop_Products');
    shopElements.forEach(shopElement => {
        shopElement.querySelector('.ShopPick').checked = checked;
        shopElement.querySelectorAll('.Cart_CB').forEach(cb => cb.checked = checked);
    });
}

$(document).ready(function () {
    $(`.ShopPick`).change(function () {
        setCheckAllShop(this, $(this).is(':checked'));
        checkAllCartCB(this);
        getPrice();

    });
});

function setCheckAllShop(element, checked){
    let isChecked = $(element).is(':checked');
    let shopElement = $(element).closest('.Shop_Products');
    shopElement.find("input[name='Cart_CB']").prop('checked', isChecked);
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
    let cartCBs = document.querySelectorAll('.Cart_CB');
    cartCBs.forEach(cb => {
        if(cb.checked){
            let itemCell = $(cb).closest('.Shop_Products-Cell');
            selectedItems.push(itemCell);
        }
    });
    return selectedItems;
}

function getPrice(){
    let cartCBs = getSelectedItems();
    console.log(cartCBs);
    let total = 0;

    cartCBs.forEach(cb => {
        let price = parseInt(cb.find("input[name='price']").val());
        let quantity = parseInt(cb.find("input[name='quantity']").val());
        total += price * quantity;
    })

    let total_product_price = document.querySelector("#total_product_price");
    let total_price = document.querySelector("#total_price");

    total_product_price.textContent = total + "₫";
    total_price.textContent = total + "₫";

    console.log(total_price.textContent);
    return total;
}

function getInfo(){
    let selectedItems = getSelectedItems();
    let data = [];

    selectedItems.forEach(item => {
        let price = parseInt(item.find("input[name='price']").val());
        let quantity = parseInt(item.find("input[name='quantity']").val());
        let shoppingCartItemId = parseInt(item.find("input[name='id']").val());
        let sellerId = parseInt(item.find("input[name='sellerId']").val());

        data.push({
            // price : price,
            // quantity : quantity,
            sellerId : sellerId,
            shoppingCartItemId : shoppingCartItemId
        });
    })

    $.ajax({
        type: "POST",
        url: "/PBL3_1_war_exploded/api/order",
        data: JSON.stringify(data),
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
// import { createAlertPopUp } from './AlertPopUp.js'; // Đường dẫn tới file1.js


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

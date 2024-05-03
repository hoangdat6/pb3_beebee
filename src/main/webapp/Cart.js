function RemoveCartItem(button)
{
    let item = button.parentElement.parentElement;
    let id = item.querySelector("input[name='id']").value;
    let number = parseInt(item.closest('.Shop_Products').querySelector("input[name='number']").value);
    $.ajax({
        type: "GET",
        url: "/PBL3_1_war_exploded/api/remove",
        data: {idCartItem : id, number : number},
        success: function(response){

        }
    });
    console.log(number);
    if (number===1)
        item.closest('.Shop_Products').remove();
    else {
        item.remove();
        item.closest('.Shop_Products').querySelector("input[name='number']").value=(number-1).toString();
    }

}
function UpdateCartItem(button) {
    let item = button.parentElement;
    let id = item.querySelector("input[name='id']").value;
    let quantity = parseInt(item.querySelector("input[name='quantity']").value);
    let action = button.value;
    let price = parseInt(item.querySelector("input[name='price']").value);
    console.log("Action:", action);
    $.ajax({
        type: "GET",
        url: "/PBL3_1_war_exploded/api/update",
        data: {idCartItem : id,quantity : quantity, action : action},
        success: function(response){
        }
    });
    if (action === "increase") {
        quantity++;
    } else if (action === "decrease" && quantity > 0) {
        quantity--;
    }
   item.querySelector("input[name='quantity']").value = quantity;
    item.querySelector("input[class='Qty__Input']").value = quantity;
    item.parentElement.querySelector(".Item-Total_Price").textContent = (quantity*price).toLocaleString('vi-VN', { style: 'currency', currency: 'VND' });

}

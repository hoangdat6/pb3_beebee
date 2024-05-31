function update(){
    $.ajax({
        type: "GET",
        url: "/PBL3_1_war_exploded/api/getAllCartItems",
        success: function(response){
            console.log(response);
            $(".SM_Cart-Content").empty();
            response.forEach(item => {
                addItemToCart(item);
            });
        },
        error: function(jqXHR){
            console.log(jqXHR.responseText);
        }
    });
}
function addItemToCart(cartItem){
    let newcartItem = document.createElement("div");
    newcartItem.className = "SM_Cart-Item";
    newcartItem.innerHTML= `
        <input name="SM_Cart_CB" type="checkbox" class="SM_Cart-Item--Checkbox">
        <img class="SM_Cart-Item--Image" src="${"/PBL3_1_war_exploded/" + (cartItem.coverImgPath != null ? cartItem.coverImgPath : "")}" alt="Product">
        <div class="SM_Cart-Item--Main">
            <h3 class="Main--Name">${cartItem.name}</h3>
            <div class="Main--Shop">
                <img src="${"/PBL3_1_war_exploded/" + (cartItem.shopImgPath != null ? cartItem.shopImgPath : "")}" alt="Shop Avatar">
                <span>${cartItem.shopName}</span>
            </div>
            <div class="Main--Qty_and_Category">
                <span class="Main--Category">
                    ${cartItem.variations}
                </span>
                <div class="Main--Qty Qty">
                    <input class="btn Qty__Input" value="${cartItem.quantity}" min="1">
                </div>
            </div>
        </div>
        <div class="SM_Cart-Item--Price">
            <span>${(cartItem.price != null && cartItem.price != "") ? cartItem.price.toLocaleString('vi-VN', { style: 'currency', currency: 'VND' }) : "0"}</span>
        </div>`;

    document.querySelector(".SM_Cart-Content").appendChild(newcartItem);
}
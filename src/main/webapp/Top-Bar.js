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
        <img class="SM_Cart-Item--Image" src="${(cartItem.coverImgPath != null ? cartItem.coverImgPath : "")}" alt="Product">
        <div class="SM_Cart-Item--Main">
            <h3 class="Main--Name">${cartItem.name}</h3>
            <div class="Main--Shop">
                <img src="${(cartItem.shopImgPath != null ? cartItem.shopImgPath : "")}" alt="Shop Avatar">
                <span>${cartItem.shopName}</span>
            </div>
            <div class="Main--Qty_and_Category">
                ${(cartItem.variations != null 
                    && cartItem.variations != undefined
                    && cartItem.variations != " ") ?
                `<span class="Main--Category">
                    ${cartItem.variations}
                </span>` : 
                ""}
                
                <span class="Main--Qty">
                    <span>Số lượng: </span>
                    <input class="btn" value="${cartItem.quantity}">
                </span>
            </div>
        </div>
        <div class="SM_Cart-Item--Price">
            <span>${(cartItem.price != null && cartItem.price != "") ? cartItem.price.toLocaleString('vi-VN', {
        style: 'currency',
        currency: 'VND'
    }) : "0"}</span>
        </div>`;

    document.querySelector(".SM_Cart-Content").appendChild(newcartItem);
}
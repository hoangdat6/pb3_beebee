document.addEventListener("DOMContentLoaded", function() {
    const colorOptions1 = document.querySelectorAll('.Category_option1');
    const colorOptions2 = document.querySelectorAll('.Category_option2');
    
    colorOptions1.forEach(option => {
        option.addEventListener('click', function() {
            Selected(colorOptions1, this);
        });
    });

    colorOptions2.forEach(option => {
        option.addEventListener('click', function() {
            Selected(colorOptions2, this);
        });
    });
});

function Selected(colorOptions, selectedOption) {
    let select;
    // Xóa lớp 'Selected' khỏi tất cả các lựa chọn màu khác
    colorOptions.forEach(opt => {
        if(opt.classList.contains('Selected')){
            select = opt;
            opt.classList.remove('Selected');
        }
    });
    
    // Thêm lớp 'Selected' cho lựa chọn màu được chọn
    if(selectedOption !== select)
        selectedOption.classList.add('Selected');
}

function changeImage(image) {
    document.getElementById('productImage').src = image;
}

let discount = parseFloat($(".Sale").attr('id'));
let oldPrice = $(".Product-Price").html();
let quantityAll = $("#quantity").html();

$(document).ready(function(){
    $(".Category_option1, .Category_option2").click(function(){
        let variation1 = null;
        let variation2 = null;
        let input = document.getElementsByClassName('Qty__Input');
        let quantity = parseInt(input[0].value);

        if($(".Category_option1").length){
            variation1 = $(".Category_option1.Selected").attr('id');

            if($(".Category_option2").length)
                variation2 = $(".Category_option2.Selected").attr('id');

            if(variation1 === undefined || variation2 === undefined){
                $(".Product-Price").html(oldPrice);
                $("#quantity").html(quantityAll);
            }
        }

        $.ajax({
            type: "GET",
            url: "/PBL3_1_war_exploded/api/product-detail",
            data: {variation1: variation1, variation2: variation2},
            success: function(response){
                load(response);
            }
        });
    });
});

function load(response){
    let product = JSON.parse(response);
    let formattedPrice = Number(product.price).toLocaleString('vi-VN', {style : 'currency', currency : 'VND'});
    let formattedNewPrice = Number(product.price * (1 - discount / 100)).toLocaleString('vi-VN', {style : 'currency', currency : 'VND'});
    $(".new-Price").text(formattedNewPrice);
    $(".old-Price").text(formattedPrice);
    $("#quantity").text(product.qtyInStock);
    $(".Main-Image").attr('style', `background: url(${product.imgPath}) center/cover no-repeat;`);

}

let check;

function saveToCart(check1){
    let variation1 = null;
    let variation2 = null;
    let input = document.getElementsByClassName('Qty__Input');
    let quantity = parseInt(input[0].value);
    // addItemToCart();

    check = check1;
    if($(".Category_option1").length){
        variation1 = $(".Category_option1.Selected").attr('id');
        if($(".Category_option2").length)
            variation2 = $(".Category_option2.Selected").attr('id');

        if(variation1 === undefined || variation2 === undefined){
            alert("Please choose a variation and quantity");
            return;
        }
    }
    let quantityProductItem = parseInt($("#quantity").text());

    if(quantityProductItem < quantity){
        showErrorToast("Warning", "Số lượng sản phẩm không đủ");
        return;
    }
    let variations = "";
    $(".Category_item .Selected").each(function(){
        variations += $(this).text() + " ";
    });

    const shopImg = $('#coverImgShop').attr('src');
    const shopName = $('#shopName').text();
    const product= {
        name: $("#Product-Name").text(),
        price: $(".new-Price").text(),
        quantity: $(".Qty__Input").val(),
        coverImgPath: $(".Main-Image").css('background-image').split('(')[1].split(')')[0].slice(1, -1),
        variations: variations,
        shopName: shopName,
        shopImgPath: shopImg
    }

    $.ajax({
        type: "POST",
        url: "/PBL3_1_war_exploded/api/add-to-cart",
        data: {variation1: variation1, variation2: variation2, quantity: quantity},
        success: function(response){
            if (check){
                if(response.code == '200'){
                    showSuccessToast("Success", "Đã thêm vào giỏ hàng");
                    addItemToCart(product);
                } else {
                    showErrorToast("Warning", "Số lượng sản phẩm không đủ");
                }
            }else {
                if(response.code == '200'){
                    window.location.href = "/PBL3_1_war_exploded/cart";
                } else {
                    showErrorToast("Warning", "Số lượng sản phẩm không đủ");
                }
            }
        }
    });
}

$(document).ready(function () {
    $('#check_out').click(function () {
        saveToCart(false);
    })
});
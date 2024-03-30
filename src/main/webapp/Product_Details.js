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
        let quantity = parseInt(input[1].value);

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
    $(".Main-Image").attr('style', `background: url(${product.productImgPath}) center/cover no-repeat;`);

}

function saveToCart(){
    let variation1 = null;
    let variation2 = null;
    let input = document.getElementsByClassName('Qty__Input');
    let quantity = parseInt(input[1].value);

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
    console.log(quantityProductItem);

    if(quantityProductItem === 0){
        showErrorToast("Warning", "Vui lòng chọn loại khác");
        return;
    }

    $.ajax({
        type: "POST",
        url: "/PBL3_1_war_exploded/api/add-to-cart",
        data: {variation1: variation1, variation2: variation2, quantity: quantity},
        success: function(response){
            let re = JSON.parse(response);
            if(re.status === "200"){
                showSuccessToast();
            } else {
                showErrorToast();
            }
        }
    });
}


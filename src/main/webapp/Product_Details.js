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

function changeImage(image, index) {
    $(".Main-Image").attr('style', `background: url(${image}) center/cover no-repeat;`);
    $(".Main-Image").attr('id', 'main_item-' + index);

}

let discount = parseFloat($(".Sale").attr('id'));
let oldPrice = $(".Product-Price").html();
let quantityAll = $("#quantity").html();

$(document).ready(function(){
    let productId = $(document).find("#product_id").val();
    $(".Category_option1, .Category_option2").click(function(){
        let variation1 = null;
        let variation2 = null;
        let input = document.getElementsByClassName('Qty__Input');
        // let quantity = parseInt(input[0].value);

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
            data: {variation1: variation1, variation2: variation2, productId: productId},
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
    let productId = $(document).find("#product_id").val();
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
            createAlertPopUp("Thông báo", "Vui lòng chọn loại sản phẩm và số lượng",
                [{text: 'Ok', class: 'button-solid-primary btn-m', callback: 'removeAlert()'}]);
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
        data: {variation1: variation1, variation2: variation2, quantity: quantity, productId : productId},
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


$(document).ready(function () {
    // đặt hover cho hình ảnh
    $('.image-item').hover(function () {
        let image = $(this).attr('src');
        let itemIndex = $(this).attr('id').split('-')[1];
        $('.image-item').attr("style", "border: none;");
        changeImage(image, itemIndex);
    })
});
let img = $("#imgPaths").val();
img = img.slice(1, img.length - 1);
const imgArr = img.split(",").map(item => item.trim());



$(document).ready(function () {
    // chuyển ảnh
    let currentStart = 1;
    let visibleCount = 1;

    function updateImages() {
        $('.image-item').each(function(index) {
            let imgIndex = (currentStart + index) % imgArr.length;
            $(this).attr('src', imgArr[imgIndex]);
            $(this).attr('id', 'image-' + imgIndex);
            if(index === 1){
                $(this).attr("style", "border: 2px solid #f00;");
            }
        });
    }

    $('#next-right').click(function () {
        currentStart = (currentStart + visibleCount) % imgArr.length;
        updateImages();
        changeImage(imgArr[currentStart + 1], currentStart + 1);
    });

    $('#prev-left').click(function () {
        currentStart = (currentStart - visibleCount + imgArr.length) % imgArr.length;
        updateImages();
        changeImage(imgArr[currentStart + 1], currentStart + 1);
    });

    updateImages();

    let index;
    // popup khi click vào ảnh
    $('.image-item, .Main-Image').click(function () {
        index = $(this).attr('id').split('-')[1];
        createProductList(imgArr, parseInt(index));
        // chuyển ảnh trong popup
        let currentStartPopup = parseInt(index);
        let visibleCountPopup = 1;

        function updateImagesPopup() {
            $('.image-item-popup').each(function(index) {
                if(index === currentStartPopup){
                    $(this).attr("style", "border: 2px solid #f00;");
                }else {
                    $(this).attr("style", "border: none;");
                }
            });
        }

        $('#next-right-pu').click(function () {
            currentStartPopup = (currentStartPopup + visibleCountPopup) % imgArr.length;
            updateImagesPopup();
            changeImagePopup(imgArr[currentStartPopup]);
        });

        $('#prev-left-pu').click(function () {
            currentStartPopup = (currentStartPopup - visibleCountPopup + imgArr.length) % imgArr.length;
            updateImagesPopup();
            changeImagePopup(imgArr[currentStartPopup]);
        });

        updateImagesPopup();
    });
});

function changeImagePopup(image) {
    $(".main_image_pu").attr('src', `${image}`);
}







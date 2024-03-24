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


// $(document).ready(function(){
//     $(".Category_option1, .Category_option2").click(function(){
//         let variation1 = $(".Category_option1.Selected").attr('id');
//         let variation2 = null;
//         if($(".Category_option2").length){
//             variation2 = $(".Category_option2.Selected").attr('id');
//             if(variation1 !== undefined && variation2 !== undefined){
//                 $.ajax({
//                     type: "GET",
//                     url: "/PBL3_1_war_exploded/api/product-detail",
//                     data: {variation1: variation1, variation2: variation2},
//                     success: function(response){
//                         let product = JSON.parse(response);
//                         // $("#quantity").text(product.qtyInStock);
//                         document.querySelector('#quantity').innerText = product.qtyInStock;
//                     }
//                 });
//             }
//         } else {
//             if(variation1 !== undefined){
//                 $.ajax({
//                     type: "GET",
//                     url: "/PBL3_1_war_exploded/api/product-detail",
//                     data: {variation1: variation1, variation2: null},
//                     success: function(response){
//                         let product = JSON.parse(response);
//                         $("#quantity").text(product.qtyInStock);
//
//                     }
//                 });
//             }
//         }
//     });
//
//     $(".Category_option2").click(function(){
//         let variation1 = $(".Category_option1.Selected").attr('id');
//         let variation2 = $(".Category_option2.Selected").attr('id');
//         if(variation1 !== undefined && variation2 !== undefined){
//             $.ajax({
//                 type: "GET",
//                 url: "/PBL3_1_war_exploded/api/product-detail",
//                 data: {variation1: variation1, variation2: variation2},
//                 success: function(response){
//                     let product = JSON.parse(response);
//                     $("#quantity").text(product.qtyInStock);
//
//                 }
//             });
//         }
//     });
// });
//
//
// $(document).ready(function(){
//     $(".Category_option1, .Category_option2").click(function(){
//         let variation1 = $(".Category_option1.Selected").attr('id');
//         let variation2 = $(".Category_option2.Selected").attr('id');
//         if(variation1 !== undefined && variation2 !== undefined){
//             $.ajax({
//                 type: "GET",
//                 url: "/PBL3_1_war_exploded/api/product-detail",
//                 data: {variation1: variation1, variation2: variation2},
//                 success: function(response){
//                     let product = JSON.parse(response);
//                     $("#price").text(product.price);
//                     $("#quantity").text(product.qtyInStock);
//                 }
//             });
//         }
//     });
// });

let discount = parseFloat($(".Sale").attr('id'));

$(document).ready(function(){
    $(".Category_option1, .Category_option2").click(function(){
        let variation1 = $(".Category_option1.Selected").attr('id');
        let variation2 = null;
        if($(".Category_option2").length){
            variation2 = $(".Category_option2.Selected").attr('id');
            if(variation1 !== undefined && variation2 !== undefined){
                $.ajax({
                    type: "GET",
                    url: "/PBL3_1_war_exploded/api/product-detail",
                    data: {variation1: variation1, variation2: variation2},
                    success: function(response){
                        load(response);
                    }
                });
            }
        } else {
            if(variation1 !== undefined){``
                $.ajax({
                    type: "GET",
                    url: "/PBL3_1_war_exploded/api/product-detail",
                    data: {variation1: variation1, variation2: null},
                    success: function(response){
                        load(response);
                    }
                });
            }
        }
    });
});

function load(response){
    let product = JSON.parse(response);
    let formattedPrice = Number(product.price).toLocaleString('vi-VN', {style : 'currency', currency : 'VND'});
    let formattedNewPrice = Number(product.price * (1 - discount / 100)).toLocaleString('vi-VN', {style : 'currency', currency : 'VND'});
    $(".new-Price").text(formattedNewPrice);
    $(".old-Price").text(formattedPrice);
    $("#quantity").text(product.qtyInStock);
}
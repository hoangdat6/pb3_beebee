$(document).ready(function() {
    $('#btn-show_more_for-you').click(function() {
        let page = $('#page-for_you');
        $.ajax({
            url: "/PBL3_1_war_exploded/api/for-you",
            type: "GET",
            data: {
                page: parseInt(page.val()) + 1
            },
            success: function(response) {
                let products = JSON.parse(response);
                let productContainer = document.querySelector('#for-you');
                loadProduct(productContainer, products, page);
            }
        });
    });
});

$(document).ready(function() {
    $('#btn-show_more_top').click(function() {
        let page = $('#page-top');
        $.ajax({
            url: "/PBL3_1_war_exploded/api/top",
            type: "GET",
            data: {
                page: parseInt(page.val()) + 1
            },
            success: function(response) {
                let products = JSON.parse(response);
                let productContainer = document.querySelector('#top-product');
                loadProduct(productContainer, products, page);
            }
        });
    });
});

function loadProduct(element, products, page){
    products.forEach(product => {
        let productUrl1 = `/PBL3_1_war_exploded/product?`;
        let sellerUrl = '/PBL3_1_war_exploded/shop?id=' + product.sellerId;
        element.innerHTML += createCard({
            name: product.name,
            price: product.price,
            discount: product.discount,
            imgPath: product.imgPath,
            productName: product.name,
            productId : product.id,
            sellerName: product.sellerName,
            productUrl: productUrl1,
            sellerUrl: sellerUrl,
            sellerAvatar: product.sellerAvatar
        });
    });
    page.val(parseInt(page.val()) + 1);
}
class Sliders {
    constructor() {
        this.currentSlider = 0;
        this.sliders = document.querySelectorAll('#Shop_slider .slider');
        console.log('Sliders: ' + this.sliders.length);
        this.dots = document.querySelectorAll('.dot');

        console.log('Dots: ' + this.dots.length);
        this.totalSliders = this.sliders.length;

        this.showSlider(this.currentSlider);
        this.addEventListeners();
        this.startAutoSlide();
    }

    showSlider(index) {
        // Hide all sliders
        this.sliders.forEach(slider => {
            slider.style.display = 'none';
        });

        // Remove active class from all dots
        this.dots.forEach(dot => {
            dot.classList.remove('active');
        });

        // Show the current slider
        this.sliders[index].style.display = 'block';

        // Add active class to the current dot
        this.dots[index].classList.add('active');
    }

    nextSlider() {
        this.currentSlider++;
        if (this.currentSlider >= this.totalSliders) {
            this.currentSlider = 0;
        }
        this.showSlider(this.currentSlider);
    }

    previousSlider() {
        this.currentSlider--;
        if (this.currentSlider < 0) {
            this.currentSlider = this.totalSliders - 1;
        }
        this.showSlider(this.currentSlider);
    }

    addEventListeners() {
        const nextButton = document.querySelector('#Shop_next');
        const prevButton = document.querySelector('#Shop_pre');

        nextButton.addEventListener('click', () => {
            this.nextSlider();
        });

        prevButton.addEventListener('click', () => {
            this.previousSlider();
        });
    }
    startAutoSlide() {
        // Slide every 2 seconds
        setInterval(() => {
            this.nextSlider();
        }, 2000);
    }
}

document.addEventListener('DOMContentLoaded', (event) => {
    const sliders = new Sliders();
});

let url = "";
$(document).ready(function() {
    $('.Shop_content--Header .Button_header').click(function() {
        let btnId = $(this).attr('id')
        // btn Sản phẩm mới nhất
        if(btnId === "Shop_content_1"){
            $(document).ready(function () {
                $('#btn_ctime').click();
            });
        }
        // top sản phẩm bán chạy
        else if(btnId === "Shop_content_2") {
            // $(document).ready(function () {
            //     $('#').click();
            // });
        }
        // Tất cả sản phẩm
        else if(btnId === "Shop_content_3") {
            $(document).ready(function () {
                $(`#btn_pop`).click();
                $('#btn_pop').attr("style", "color: #fff; background-color: #FD1D1D;");
            });
        }
    });
});


// sort option
$(document).ready(function() {
    $('#Shop_Filter').change(function() {
        let sortValue = $('#Shop_Filter').val();

    });
});

// ajax
$(document).ready(function () {
    $('#Shop_product .Filter .Btn_Filter').click(function () {
        let params = new URLSearchParams(window.location.search);
        let sellerId = params.get('id');

        let btnId = $(this).attr('id')

        let sortValue = $('#Shop_Filter').val();
        console.log(sellerId);
        console.log(btnId);
        // sản phẩm mới nhất
        if(btnId === "btn_ctime"){
            url = "/PBL3_1_war_exploded/api/seller/ctime";
        }
        // top sản phẩm bán chạy
        else if(btnId === "btn_pop") {
            url = "/PBL3_1_war_exploded/api/seller/pop";
        }
        // Tất cả sản phẩm
        else if(btnId === "btn_best") {
            url = "/PBL3_1_war_exploded/api/all";
        }

        if(sortValue !== undefined){
            url += `?sortBy=${sortValue}`;
        }

        loadProduct(sellerId, url);
    });
});


$(document).ready(function () {
    $("#Shop_Filter").change(function () {
        let params = new URLSearchParams(window.location.search);
        let sellerId = params.get('id');
        let sortValue = $('#Shop_Filter').val();

        if(url === ""){
            url = "/PBL3_1_war_exploded/api/seller/pop";
        }

        if(url.includes("?sortBy=")){
            url = url.substring(0, url.indexOf("?sortBy="));
        }
        url += `?sortBy=${sortValue}`;

        loadProduct(sellerId, url);
    });
});
let debounceTimer;
$(window).scroll(function () {
    clearTimeout(debounceTimer);
    debounceTimer = setTimeout(function () {
        if ($("#Shop_product .Product_list").html().trim() !== "") {
            return;
        }
        if ($(window).scrollTop() + $(window).height() >= $(`#Shop_product`).offset().top) {
            let params = new URLSearchParams(window.location.search);
            let sellerId = params.get('id');
            let sortValue = $('#Shop_Filter').val();

            if (url === "") {
                url = "/PBL3_1_war_exploded/api/seller/pop";
            }

            if (url.includes("?sortBy=")) {
                url = url.substring(0, url.indexOf("?sortBy="));
            }
            url += `?sortBy=${sortValue}`;

            loadProduct(sellerId, url);
        }
    }, 100); // Delay in milliseconds
});

function loadProduct(sellerId, url) {
    console.log(url);
    $.ajax({
        type: "GET",
        url: url,
        data : {sellerId : sellerId},
        success: function (response) {
            let products = response;
            let productContainer = document.querySelector('#Shop_product .Product_list');
            productContainer.innerHTML = '';
            products.forEach(product => {
                let productUrl1 = `/PBL3_1_war_exploded/product?id=${product.id}`;
                productContainer.innerHTML += createCard({
                    name: product.name,
                    price: product.price,
                    discount: product.discount,
                    imgPath: product.imgPath,
                    sellerName: sellerName,
                    productUrl: productUrl1,
                    sellerUrl: sellerUrl,
                    sellerAvatar: sellerAvatar
                });
            });
        }
    });
}


$(document).ready( function () {
        $(`#follow_btn`).click(function () {
            $.ajax({
               type: 'POST',
                url: `/PBL3_1_war_exploded/api/shop/follow`,
                data: {sellerId : sellerId, isFollowed : isFollowed},
                success : function (response) {
                   console.log(response);
                   isFollowed = response;
                    if(response === "false"){
                        $(`#follow_btn`).val("+ Theo dõi");
                   }else {
                       $(`#follow_btn`).val("Đang theo dõi");
                    }
                }
            });
        });
    }
)



<%@ include file="common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${seller.shopName}</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Footer.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Shop.css"/>">
    <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>' />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript" src="<c:url value="/main.js"/>"></script>
    <script src="Card.js"></script>
</head>

<body>
<%@ include file="Top-Bar.jsp" %>
<div id="Shop_header">
    <img src="${seller.coverImage}"  alt="Ảnh bìa" class="Shop_background">
    <div class="Shop_infor">
        <img src="${seller.avatar}"  alt="Ảnh đại diện" class="Shop_image">
        <div class="Shop_desc_wrap">
            <div class="Shop_desc">
                <div class="col">
                    <h3 class="Shop_name">${seller.shopName}</h3>
                    <p class="Shop_evaluate"><img src="./img/Shop/Star Icon.svg"  alt=""> 4.9 | ${seller.followers} lượt theo dõi
                    </p>
                </div>
                <div class="col">
                    <p class="Shop_subHeading"><img src="./img/Shop/Product Icon.svg" alt="Sản phẩm">Sản
                        phẩm:
                        <span class="Shop_subVal">${seller.countProduct}</span>
                    </p>
                    <p class="Shop_subHeading"> <img src="./img/Shop/Chat.svg" alt="Chat">Tỉ lệ phản hồi
                        chat:
                        <span class="Shop_subVal">99% (Trong vài giờ)</span>
                    </p>
                </div>
                <div class="col">
                    <p class="Shop_subHeading"><img src="./img/Shop/Location icon.svg" alt="">Vị trí:
                        <span class="Shop_subVal">${seller.province}</span>
                    </p>
                    <p class="Shop_subHeading"><img src="./img/Shop/ThamGiaIcon.svg" alt="Tham gia">Tham gia:
                        <span class="Shop_subVal">5 năm</span>
                    </p>
                </div>
            </div>
            <div class="follow">
                <c:if test="${seller.isFollowed == false}">
                    <input class="btn follow_btn" type="submit" id="follow_btn" value="+ Theo dõi">
                </c:if>

                <c:if test="${seller.isFollowed == true}">
                    <input class="btn follow_btn" type="submit" id="follow_btn" value="Đang theo dõi">
                </c:if>
            </div>
        </div>
    </div>
</div>

<div id="Shop_content">
    <div class="Shop_content--Header pad-l-r-170">
        <a href="#Shop_content">
            Dạo
        </a>
        <a href="#Shop_product" id="Shop_content_1" class="Button_header">
            Sản phẩm mới nhất
        </a>
        <a href="#Shop_product" id="Shop_content_2" class="Button_header">
            Top sản phẩm bán chạy
        </a>
        <a href="#Shop_product" id="Shop_content_3" class="Button_header">
            Tất cả sản phẩm
        </a>
    </div>
    <div class="Product_list pad-l-r-170 pad-t-b-30" >

    </div>
    <script>

        var sellerUrl = '<c:url value="/shop?id=${seller.id != null ? seller.id : 0}"/>';
        var sellerName = "${seller.shopName != null ? seller.shopName : 'Tên Shop'}";
        var sellerAvatar = "${seller.avatar != null ? seller.avatar : './img/Brand/Coffee.jpeg'}";
        var sellerId = ${seller.id};
        var isFollowed = ${seller.isFollowed};

        <c:forEach items="${seller.mostViewedProducts}" var="product">
        var productName = '${product.name}';
        var productId = '${product.id}';
        var productUrl = '<c:url value="/product?"/>';

        document.querySelector('#Shop_content .Product_list').innerHTML += createCard({
            name: "${product.name}",
            price: "${product.price}",
            discount: "${product.discount}",
            imgPath: "${product.imgPath}",
            productName: productName,
            productId : productId,
            sellerName: sellerName,
            productUrl: productUrl,
            sellerUrl : sellerUrl,
            sellerAvatar: sellerAvatar
        });
        </c:forEach>
    </script>

    <div id="Shop_slider">
        <div class="Sliders">
            <div class="slider" style="background-image: url(./img/Shop/Slider.png)"></div>
            <div class="slider" style="background-image: url(./img/Shop/Slider2.avif)" alt="#"> </div>
            <div class="slider" style="background-image: url(./img/Shop/Slider3.avif)" alt="#"> </div>
            <div class="slider" style="background-image: url(./img/Shop/Slider4.avif)" alt="#"></div>
        </div>
        <button id="Shop_pre" class="btn"><i class="fa-solid fa-chevron-left"></i></button>
        <button id="Shop_next" class="btn"><i class="fa-solid fa-chevron-right"></i></button>
        <div class="Order">
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
        </div>
    </div>
    <script type="text/javascript" src="./Shop.js"></script>

    <img src="./img/Shop/BaoHanh.png" loading="lazy" alt="Chính sách bảo hành"  class="centered-image">

    <div id="Shop_product">
        <main>
            <div class="Filter pad-l-r-170">
                <form class="Shop_search_container" action="#" method="post">
                    <input type="search" name="Shop_search" id="Shop_search"
                           placeholder="Tìm kiếm sản phẩm">
                    <i class="fa-solid fa-search"></i>
                </form>
                <h3>Sắp xếp theo</h3>
                <button class="btn Btn_Filter" id="btn_pop">
                    <span class="Filter_item">Phổ biến</span>
                </button>
                <button class="btn Btn_Filter" id="btn_ctime">
                    <span class="Filter_item">Mới nhất</span>
                </button>
                <button class="btn Btn_Filter" id="btn_best">
                    <span class="Filter_item">Bán chạy</span>
                </button>
                <div class="Filter_price">
                    <span>Giá</span>
                    <select name="Lọc giá" id="Shop_Filter">
                        <option value="ASC"> Thấp đến cao</option>
                        <option value="DESC"> Cao đến thấp</option>
                    </select>
                </div>
            </div>
            <div class="Product_list pad-l-r-170 pad-t-b-30"></div>
        </main>
    </div>
</div>

    <%@ include file="Footer.jsp" %>
</body>

</html>
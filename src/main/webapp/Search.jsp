<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
    <%@ include file="common/taglib.jsp" %>
        <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

            <!DOCTYPE html>
            <html lang="vi">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title><c:if test="${sessionScope.get('keyword') != null}">${sessionScope.get('keyword')}</c:if></title>
                <link rel="stylesheet" type="text/css" href="Top-Bar.css">
                <link rel="stylesheet" type="text/css" href="Footer.css">
                <link rel="stylesheet" type="text/css" href="CommonCSS.css">
                <link rel="stylesheet" href="Search.css">
                <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>' />
                <script src="Card.js"></script>
            </head>

            <body>
                <%@ include file="Top-Bar.jsp" %>
                    <fmt:setLocale value="vi_VN" />
                <script>
                    function createCheckbox(id, label) {
                        // Tạo một phần tử div mới
                        var checkboxDiv = document.createElement('div');
                        checkboxDiv.className = 'Checkbox_item';

                        // Tạo một phần tử input mới
                        var checkbox = document.createElement('input');
                        checkbox.type = 'checkbox';
                        checkbox.className = 'S_catalog-item';
                        checkbox.id = id;

                        // Tạo một phần tử label mới
                        var checkboxLabel = document.createElement('label');
                        checkboxLabel.htmlFor = id;
                        checkboxLabel.textContent = label;

                        // Thêm checkbox và label vào div
                        checkboxDiv.appendChild(checkbox);
                        checkboxDiv.appendChild(checkboxLabel);

                        // Trả về phần tử div
                        return checkboxDiv;
                    }
                    function ShowPageNumber(totalPage){
                        var pageContent = document.querySelector(".Page_num");
                        pageContent.innerHTML = "";
                        pageContent.innerHTML += `<div class="num_item" id="Page_pre"><i class="fa-solid fa-chevron-left"></i></div>`;
                        for (var i = 1; i <= totalPage; i++){
                            pageContent.innerHTML += `<div class="num_item" id="numPage">` + i + `</div>`;
                        }
                        pageContent.innerHTML += `<div class="num_item" id="Page_next"><i class="fa-solid fa-chevron-right"></i></div>`;
                        for(var i = 1; i <= document.querySelectorAll(".num_item").length - 2; i++)
                        {
                            if(document.querySelectorAll(".num_item")[i].innerHTML === "1")
                            {
                                document.querySelector(".Page_num").children[i].style.backgroundColor = "#141718";
                                document.querySelector(".Page_num").children[i].style.color = "white";
                            }
                        }
                    }
                </script>
                    <div class="Search_wrap">
                        <c:choose>
                        <c:when test="${searchsellers.size() > 0}">
                        <aside class="S_sidebar">
                            <h3>Bộ lọc tìm kiếm</h3>
                            <div class="S_catalog">
                                <h4 class="S_sidebar-title">Theo danh mục</h4>
                                <div class="S_catalog-content">
                                    <div class="checkbox-group">
                                    </div>
                                </div>
                            </div>

                            <div class="S_price">
                                <h4 class="S_sidebar-title">Giá tiền</h4>
                                <div class="S_price-content">
                                    <div>
                                        <i class="fa-solid fa-dollar-sign"></i>
                                        <input type="number" id="min-price" name="min-price" min="0" max="1000">
                                    </div>
                                    <i class="fa-solid fa-arrow-right"></i>
                                    <div>
                                        <i class="fa-solid fa-dollar-sign"></i>
                                        <input type="number" id="max-price" name="max-price" min="0" max="1000">
                                    </div>
                                </div>
                            </div>
<%--                            <div class="S_place">--%>
<%--                                <h4 class="S_sidebar-title">Nơi bán</h4>--%>
<%--                                <div class="S_place-content">--%>
<%--                                    <div class="checkbox-group">--%>
<%--                                        <div class="Checkbox_item">--%>
<%--                                            <input type="checkbox" class="S_place-item" id="place-item1">--%>
<%--                                            <label for="place-item1">Hà Nội</label>--%>
<%--                                        </div>--%>

<%--                                        <div>--%>
<%--                                            <input type="checkbox" class="S_place-item" id="place-item2">--%>
<%--                                            <label for="place-item2">Thành phố Hồ Chí Minh</label>--%>
<%--                                        </div>--%>

<%--                                        <div>--%>
<%--                                            <input type="checkbox" class="S_place-item" id="place-item3">--%>
<%--                                            <label for="place-item3">Đà Nẵng</label>--%>
<%--                                        </div>--%>

<%--                                        <div>--%>
<%--                                            <input type="checkbox" class="S_place-item" id="place-item4">--%>
<%--                                            <label for="place-item4">Quảng Trị</label>--%>
<%--                                        </div>--%>

<%--                                        <div>--%>
<%--                                            <input type="checkbox" class="S_place-item" id="place-item5">--%>
<%--                                            <label for="place-item5">Đăk Lăk</label>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <span class="S_seemore">Xem thêm <i class="fa-solid fa-chevron-down"></i></span>--%>
<%--                                </div>--%>
<%--                            </div>--%>

<%--                            <div class="S_rating">--%>
<%--                                <h4 class="S_sidebar-title">Đánh giá</h4>--%>
<%--                                <div class="S_rating-content">--%>
<%--                                    <div class="rating_item">--%>
<%--                                        <input type="checkbox" name="" id="">--%>
<%--                                        <img src="./img/Search/Rating group.png" alt="">--%>
<%--                                    </div>--%>

<%--                                    <div class="rating_item">--%>
<%--                                        <input type="checkbox" name="" id="">--%>
<%--                                        <img src="./img/Search/Rating group-2.png" alt="">--%>
<%--                                        <span>Trở lên</span>--%>
<%--                                    </div>--%>
<%--                                    <div class="rating_item">--%>
<%--                                        <input type="checkbox" name="" id="">--%>
<%--                                        <img src="./img/Search/Rating group-3.png" alt="">--%>
<%--                                        <span>Trở lên</span>--%>
<%--                                    </div>--%>
<%--                                    <div class="rating_item">--%>
<%--                                        <input type="checkbox" name="" id="">--%>
<%--                                        <img src="./img/Search/Rating group-4.png" alt="">--%>
<%--                                        <span>Trở lên</span>--%>
<%--                                    </div>--%>
<%--                                    <div class="rating_item">--%>
<%--                                        <input type="checkbox" name="" id="">--%>
<%--                                        <img src="./img/Search/Rating group-5.png" alt="">--%>
<%--                                        <span>Trở lên</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
                            <button class="btn S_price_btn" id = "btn-apply">Áp dụng</button>
                        </aside>
                            <div class="Search_empty" style="display: none">
                                <h1>Không tìm thấy sản phẩm phù hợp, bạn thử tắt điều kiện lọc và tìm lại nhé</h1>
                            </div>
                        <main class="S_content">

                            <div class="S_shop">
                                <div class="S_big_title">
<%--                                    <c:forEach items="${searchsellers}" var="searchseller">--%>
                                        <h3>SHOP LIÊN QUAN ĐẾN "${sessionScope.get('keyword')}" </h3>
<%--                                    </c:forEach>--%>
<%--                                    <c:if test="${sessionScope.get('searchproducts') != null}">--%>
<%--                                        <h3>Shop liên quan ${sessionScope.get('searchsellers')[0].shopName} </h3>--%>
<%--                                    </c:if>--%>
                                    <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </span>
                                </div>

                                <div class="S_shop_wrap">
                                    <div class="S_Shop_info">
                                        <img src="${searchsellers[0].avatar}" alt="#">
                                        <h3>${searchsellers[0].shopName}</h3>
                                        <div class="S_Shop_rating">
                                            <span>
                                                <i class="fa-solid fa-star"></i>${searchsellers[0].views} | 60k lượt theo dõi
                                            </span>
                                        </div>
                                        <a href="<c:url value="/shop?id=${searchsellers[0].id != null ? searchsellers[0].id : 0}"/>" class="S_Shop_btn btn">Xem shop</a>
                                    </div>
                                    <div class="S_Shop_product">
                                        <script>
                                            <c:set var="count" value="0" />
                                            <c:forEach items="${searchproducts}" var="searchproduct">
                                            <c:if test="${searchproduct.sellerId == searchsellers[0].id and count lt 3}">
                                            var productName = '${searchproduct.name}';
                                            var productId = '${searchproduct.id}';
                                            var productUrl = '<c:url value="/product?" />';
                                            var sellerName = "${searchproduct.sellerName != null ? searchproduct.sellerName : 'Tên Shop'}";
                                            var sellerUrl = "<c:url value="/shop?id=${searchproduct.sellerId != null ? searchproduct.sellerId : 0}"/>";
                                            var sellerAvatar = "${searchproduct.sellerAvatar != null ? searchproduct.sellerAvatar : 'img/Brand/Coffee.jpeg'}";
                                            document.querySelector('.S_shop_wrap .S_Shop_product').innerHTML += createCard({
                                                name: "${searchproduct.name}",
                                                price: "${searchproduct.price}",
                                                discount: "${searchproduct.discount}",
                                                imgPath: "${searchproduct.imgPath}",
                                                productName: productName,
                                                productId : productId,
                                                sellerName: sellerName,
                                                productUrl: productUrl,
                                                sellerUrl: sellerUrl,
                                                sellerAvatar: sellerAvatar
                                            });
                                            <c:set var="count" value="${count + 1}" />
                                            </c:if>
                                            </c:forEach>
                                        </script>
                                        <button><i class="fa-solid fa-chevron-right"></i></button>
                                    </div>
                                </div>
                            </div>

                                <div class="S_product">
                                    <div class="S_big_title">
                                        <h3>Kết quả tìm kiếm cho từ khóa '${sessionScope.get('keyword')}'</h3>
                                        <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </span>
                                    </div>

                                    <div class="S_Product_list">
                                        <script>
                                            <c:forEach items="${searchproducts}" var="searchproduct">
                                            var productName = '${searchproduct.name}';
                                            var productId = '${searchproduct.id}';
                                            var productUrl = '<c:url value="/product?" />';
                                            var sellerName = "${searchproduct.sellerName != null ? searchproduct.sellerName : 'Tên Shop'}";
                                            var sellerUrl = "<c:url value="/shop?id=${searchproduct.sellerId != null ? searchproduct.sellerId : 0}"/>";
                                            var sellerAvatar = "${searchproduct.sellerAvatar != null ? searchproduct.sellerAvatar : 'img/Brand/Coffee.jpeg'}";

                                            document.querySelector('.S_product .S_Product_list').innerHTML += createCard({
                                                name: "${searchproduct.name}",
                                                price: "${searchproduct.price}",
                                                discount: "${searchproduct.discount}",
                                                imgPath: "${searchproduct.imgPath}",
                                                productName: productName,
                                                productId : productId,
                                                sellerName: sellerName,
                                                productUrl: productUrl,
                                                sellerUrl : sellerUrl,
                                                sellerAvatar : sellerAvatar
                                            });
                                            </c:forEach>

                                        </script>
                                    </div>
                                </div>
                                <div class="Page_num" style="width: 650px;">

<%--                                    <div class="num_item" id="Page_pre"><i class="fa-solid fa-chevron-left"></i></div>--%>
<%--                                    --%>
<%--&lt;%&ndash;                                    <div class="num_item">1</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="num_item">2</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="num_item">3</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="num_item">4</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="num_item">5</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="num_item">...</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    <div class="num_item">20</div>&ndash;%&gt;--%>
<%--                                    <div class="num_item" id="Page_next"><i class="fa-solid fa-chevron-right"></i></div>--%>
                                </div>
                            <script>
                                var totalPage = ${totalPage};
                                ShowPageNumber(totalPage);
                                <c:forEach items="${searchcategories}" var="category">
                                var categoryID = "catalog-item-" + "<c:out value='${category.id}'/>";
                                var categoryName = "<c:out value='${category.name}'/>";
                                    console.log("cateid = " + categoryID);
                                    console.log("catename = " + categoryName);
                                    document.querySelector('.S_catalog-content .checkbox-group').appendChild(createCheckbox(categoryID, categoryName));
                                </c:forEach>
                            </script>

                        </main>
                        </c:when>
                            <c:otherwise>
                                <div style="margin: 15% auto; display: flex; justify-content: center; align-content: center">
                                    <div style="text-align: center">
                                        <h1>Không tìm thấy kết quả nào</h1>
                                        <h2>Hãy thử sử dụng các từ khóa chung chung hơn</h2>
                                    </div>
                                </div><!-- Code to execute if condition is false -->
                            </c:otherwise>
                        </c:choose>
                    </div>
                <script>
                    $(document).ready(function() {

                        $('.S_catalog-item').change(function() {
                            var categoryID = Array.from(document.querySelectorAll('.S_catalog-item:checked')).map(element => element.id.split("-")[2]).join('-');
                            var minPrice = Math.floor(parseFloat(document.getElementById('min-price').value));
                            var maxPrice = Math.floor(parseFloat(document.getElementById('max-price').value));
                            if(isNaN(minPrice)) minPrice = 0;
                            if(isNaN(maxPrice)) maxPrice = 1000000000;
                            var url = new URL(window.location.href);
                            var keyword = url.searchParams.get('keyword');
                            console.log("minPrice = " + minPrice);
                            console.log("maxPrice = " + maxPrice);
                            // Send the data to the server
                            $.ajax({
                                url: '/PBL3_1_war_exploded/search',
                                type: 'GET',
                                data: {
                                    // keyword: encodeURIComponent(keyword),
                                    keyword: keyword,
                                    categoryID: categoryID,
                                    minPrice: minPrice,
                                    maxPrice: maxPrice,
                                    fill: true
                                },
                                contentType: 'application/json',
                                success: function(data) {
                                    var result = data;
                                    updatePageWithResult(result, keyword);
                                    console.log("TotalPage: " + result.TotalPage);
                                    ShowPageNumber(result.TotalPage);
                                },
                                error: function(error) {
                                    console.error('Error:', error);
                                }
                            });
                        });
                    });
                </script>
                <script>
                    document.getElementById('btn-apply').addEventListener('click', function() {
                        var minPrice = Math.floor(parseFloat(document.getElementById('min-price').value));
                        var maxPrice = Math.floor(parseFloat(document.getElementById('max-price').value));
                        var categoryID = Array.from(document.querySelectorAll('.S_catalog-item:checked')).map(element => element.id.split("-")[2]).join('-');
                        console.log(categoryID)
                        // Lấy URL hiện tại
                        var url = new URL(window.location.href);

                        // Lấy tham số 'keyword' từ URL
                        var keyword = url.searchParams.get('keyword');

                        if(!isNaN(minPrice) && !isNaN(maxPrice) && minPrice <= maxPrice) {
                            // Send the values to the server
                            $.ajax({
                                url: '/PBL3_1_war_exploded/search',
                                type: 'GET',
                                data: {
                                    keyword: encodeURIComponent(keyword),
                                    minPrice: minPrice,
                                    maxPrice: maxPrice,
                                    categoryID: categoryID,
                                    fill: true
                                },
                                contentType: 'application/json',
                                success: function(data) {
                                    // Handle the response data
                                    let result = data;
                                    updatePageWithResult(result, keyword);
                                    console.log("TotalPage: " + result.TotalPage);
                                    ShowPageNumber(result.TotalPage);
                                    console.log("success");
                                },
                                error: function (error) {
                                    console.error('Error:', error);
                                }
                            });
                        } else {
                            alert('Please enter valid prices');
                        }
                    });
                    function updatePageWithResult(result, keyword, checkPage = false) {
                        let products = result.list1;
                        let sellers = result.list2;
                        if(products.length === 0) {
                            document.querySelector('.S_shop_wrap').style.display = 'none';
                            document.querySelector('.S_big_title').style.display = 'none';
                            document.querySelector('.S_product .S_Product_list').style.display = 'none';
                            document.querySelector('.S_product .S_big_title').style.display = 'none';
                            document.querySelector('.S_content').style.display = 'none';
                            document.querySelector('.Search_empty').style.display = 'flex';
                            return;
                        }
                        document.querySelector('.Search_empty').style.display = 'none';
                        document.querySelector('.S_shop_wrap').style.display = 'flex';
                        document.querySelector('.S_big_title').style.display = 'block';
                        document.querySelector('.S_product .S_Product_list').style.display = 'flex';
                        document.querySelector('.S_product .S_big_title').style.display = 'block';
                        document.querySelector('.S_content').style.display = 'block';
                        if(checkPage === false)
                        {
                            let productContainer = document.querySelector('.S_shop_wrap .S_Shop_product');
                            productContainer.innerHTML = '';
                            document.querySelector('.S_big_title').innerHTML = '';
                            let shoplienquan = "SHOP LIÊN QUAN ĐẾN \"" + keyword + "\"";
                            document.querySelector('.S_big_title').innerHTML = '<h3>' + shoplienquan + '</h3>';
                            document.querySelector('.S_Shop_info').innerHTML = '';
                            document.querySelector('.S_Shop_info').innerHTML = '<img src="' + sellers[0].avatar + '" alt="#">' +
                                '<h3>' + sellers[0].shopName + '</h3>' +
                                '<div class="S_Shop_rating">' +
                                '<span>' +
                                '<i class="fa-solid fa-star"></i>' + sellers[0].views + ' | 60k lượt theo dõi' +
                                '</span>' +
                                '</div>' +
                                '<a href="/PBL3_1_war_exploded/shop?id=' + sellers[0].id + '" class="S_Shop_btn btn">Xem shop</a>';
                            let cnt = 0;

                            products.forEach(product => {
                                if(product.sellerId == sellers[0].id && cnt < 3) {
                                    let productUrl = "/PBL3_1_war_exploded/product?";
                                    productContainer.innerHTML += createCard({
                                        name: product.name,
                                        price: product.price,
                                        discount: product.discount,
                                        imgPath: product.imgPath,
                                        productName:product.name,
                                        productId: product.id,
                                        sellerName: product.sellerName,
                                        productUrl: productUrl,
                                        sellerUrl: sellerUrl,
                                        sellerAvatar: sellerAvatar
                                    });
                                    cnt++;
                                }
                            });
                        }
                        let productContainer2 = document.querySelector('.S_product .S_Product_list');
                        productContainer2.innerHTML = '';
                        products.forEach(product => {
                            let productUrl = `/PBL3_1_war_exploded/product?id=` + product.id;
                            productContainer2.innerHTML += createCard({
                                name: product.name,
                                price: product.price,
                                discount: product.discount,
                                imgPath: product.imgPath,
                                productName:product.name,
                                productId: product.id,
                                sellerName: product.sellerName,
                                productUrl: productUrl,
                                sellerUrl: sellerUrl,
                                sellerAvatar: sellerAvatar
                            });
                        });
                    }
                    document.querySelector(".Page_num").addEventListener("click", function (event){
                        const selectedBox = event.target;
                        if(selectedBox.classList.contains("num_item") === false)
                            return;

                        var currentPage = 0;
                        for(var i = 1; i <= document.querySelectorAll(".num_item").length - 2; i++)
                        {
                            if(document.querySelectorAll(".num_item")[i].style.backgroundColor === "rgb(20, 23, 24)")
                            {
                                currentPage = i;
                                break;
                            }
                        }
                        console.log("Before: " + currentPage);
                        if(selectedBox.id === "Page_pre" || selectedBox.id === "Page_next")
                        {
                            if(selectedBox.id === "Page_pre")
                            {
                                console.log("Pre");
                                if(currentPage <= 1)
                                    return;
                                currentPage = currentPage - 1;
                            }
                            else
                            {
                                console.log("Next");
                                if(currentPage >= document.querySelectorAll(".num_item").length - 2)
                                    return;
                                currentPage = currentPage + 1;
                            }
                        }else
                        {
                            selectedBox.style.backgroundColor = "#141718";
                            selectedBox.style.color = "white";
                            document.querySelector(".Page_num").style.backgroundColor = "white";
                            currentPage = selectedBox.innerText;
                        }
                        document.querySelectorAll(".num_item").forEach(function (pageNumber){
                            pageNumber.style.backgroundColor = "white";
                            pageNumber.style.color = "#141718";
                        });
                        for(var i = 1; i <= document.querySelectorAll(".num_item").length - 2; i++)
                        {
                            if(document.querySelectorAll(".num_item")[i].innerHTML === currentPage.toString())
                            {
                                document.querySelectorAll(".num_item")[i].style.backgroundColor = "#141718";
                                document.querySelectorAll(".num_item")[i].style.color = "white";
                            }
                        }
                        console.log("After: " + currentPage);
                        var minPrice = Math.floor(parseFloat(document.getElementById('min-price').value));
                        var maxPrice = Math.floor(parseFloat(document.getElementById('max-price').value));
                        var categoryID = Array.from(document.querySelectorAll('.S_catalog-item:checked')).map(element => element.id.split("-")[2]).join('-');
                        console.log(categoryID)
                        // Lấy URL hiện tại
                        var url = new URL(window.location.href);
                        // Lấy tham số 'keyword' từ URL
                        var keyword = url.searchParams.get('keyword');
                        var fill = false;
                        if(!isNaN(minPrice) || categoryID !== '') fill = true;
                        if(isNaN(minPrice)) minPrice = 0;
                        if(isNaN(maxPrice)) maxPrice = 1000000000;
                        $.ajax({
                            url: '/PBL3_1_war_exploded/search',
                            type: 'GET',
                            data: {
                                keyword: encodeURIComponent(keyword),
                                minPrice: minPrice,
                                maxPrice: maxPrice,
                                categoryID: categoryID,
                                fill: fill,
                                page: currentPage
                            },
                            contentType: 'application/json',
                            success: function(data) {
                                // Handle the response data
                                let result = data;
                                updatePageWithResult(result, keyword, true);
                                console.log("success");
                            },
                            error: function (error) {
                                console.error('Error:', error);
                            }
                        });


                    });
                </script>
                    <%@ include file="Footer.jsp" %>
            </body>

            </html>
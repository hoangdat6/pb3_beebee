<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../../common/taglib.jsp" %>

<%--
  Created by IntelliJ IDEA.
  User: dathv1612
  Date: 5/13/24
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="ProductManagement.css"/>">
    <link rel="stylesheet" href="<c:url value="SideBar.css"/>">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="<c:url value="ProductManagement.js"/>"></script>
    <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>' />
    <script src=<c:url value="/seller/common/SellerCommon.js"/>></script>
    <title>Quản lý sản phẩm</title>
</head>
<body>
<%@ include file="../common/SellerCommon.jsp" %>
<fmt:setLocale value = "vi_VN"/>
<script>
    function createTableRow(stt, id, name, sales, min_price, max_price, stock, status) {
        return `
        <tr>
            <td><input type="checkbox" name="" id="productid-` + id + `"></td>
            <td>` + stt + `</td>
            <td>` + name + `</td>
            <td>` + sales + `</td>
            <td>` + min_price + ' - ' + max_price + `</td>
            <td>` + stock + `</td>
            <td>` + status + `</td>
        </tr>
    `;
    }
    function createCategoryOption(id, name) {
        return `
        <option value="` + id + `" class="category_item">` + name + `</option>
    `;
    }
    function UpdateShowProducts(result){
        var listProduct = result;
        document.querySelector(".list_product").innerHTML = "";
        var stt = 1;
        listProduct.forEach(product => {
            var id = product.id;
            var name = product.name;
            var sales = product.sales;
            var min_price = product.min_price;
            var max_price = product.max_price;
            var stock = product.quantity;
            var status = product.statusName;
            document.querySelector(".list_product").innerHTML += createTableRow(stt, id, name, sales, min_price, max_price, stock, status);
            stt++;
        });
    }
    function ShowPageNumber(totalPage){
        var pageContent = document.querySelector(".page_content");
        pageContent.innerHTML = "";
        for (var i = 1; i <= totalPage; i++){
            pageContent.innerHTML += `<div class="page_number">` + i + `</div>`;
        }
    }
</script>

<div class="container">
    <div class="content">
        <div class="button_content">
            <div class="button_container">
                <div class="btn_shop ">Tất cả</div>
            </div>
            <div class="button_container">
                <div class="btn_shop ">Đang hoạt động</div>
            </div>
            <div class="button_container">
                <div class="btn_shop ">Vi phạm</div>
            </div>
            <div class="button_container">
                <div class="btn_shop ">Chờ duyệt</div>
            </div>
        </div>

        <div class="filter_content">
            <div class="filter_content-item category_area">
                <label for="category">Danh mục</label>
                <select name="category" id="category" class="category_input">

                </select>
            </div>
            <div class="filter_content-item search_area">
                <label for="search">Tìm kiếm</label>
                <input type="text" id="search" placeholder="Tên sản phẩm" class="search_input">
            </div>
            <div class="filter_content-item btn_area">
                <input type="button" value="Áp dụng" class="search_btn">
            </div>
        </div>

        <div class="table_content">
            <table class="product_content">
                <thead>
                <td style="width: 30px;"><input type="checkbox" name="" id="mainCheckbox"></td>
                <td style="width: 30px;">STT</td>
                <td style="width: 200px;">Tên sản phẩm</td>
                <td style="width: 100px;">Doanh số</td>
                <td style="width: 50px;">Giá</td>
                <td style="width: 50px;">Kho Hàng</td>
                <td style="width: 50px;">Trạng thái</td>
                </thead>
                <tbody class="list_product">
                </tbody>
            </table>
        </div>

        <div class="page_content">
        </div>

        <div class="modify_content">
            <div class="notice_span">
                    <span class="notice">
                        <i class="fa fa-asterisk"></i> Chỉ chọn 1 sản phẩm khi sửa thông tin
                    </span>
                <span class="notice">
                        <i class="fa fa-asterisk"></i> Có thể chọn nhiều sản phẩm khi xóa sản phẩm
                    </span>
            </div>

            <div class="modify_button">
                <input type="button" value="Sửa thông tin" class="action_btn btn_update">
                <input type="button" value="Xóa sản phẩm" class="action_btn btn_delete">
            </div>
        </div>
        <script>
            var stt = 1;
            <c:forEach var="product" items="${productManagement}">
            var id = ${product.id};
            var name = '${product.name}';
            var sales = ${product.sales};
            var min_price = ${product.min_price};
            var max_price = ${product.max_price};
            var stock = ${product.quantity};
            var status = '${product.statusName}';
            document.querySelector(".list_product").innerHTML += createTableRow(stt, id, name, sales, min_price, max_price, stock, status);
            stt++;
            </c:forEach>
            document.querySelector(".category_input").innerHTML += createCategoryOption(0, "Tất cả");
            <c:forEach var="category" items="${shopCategories}">
            var id = ${category.id};
            var name = '${category.name}';
            document.querySelector(".category_input").innerHTML += createCategoryOption(id, name);
            </c:forEach>
            var totalPage = ${totalPage};
            console.log("size = " + totalPage);
            ShowPageNumber(totalPage);
            document.querySelector("#category").addEventListener("change", function() {
                var selectedOption = this.value; // Lấy giá trị của option được chọn
                var searchValue = document.querySelector("#search").value;
                console.log(selectedOption);
                $.ajax({
                    url: "/PBL3_1_war_exploded/seller/product/productmanagement",
                    type: "GET",
                    data: {
                        idcategory: selectedOption,
                        search: searchValue,
                        check: true
                    },
                    contentType: 'application/json',
                    success: function(response) {
                        UpdateShowProducts(response.list);
                        ShowPageNumber(response.totalPage);
                    },
                    error: function (error) {
                        console.error('Error:', error);
                    }
                });

                // Thực hiện các hành động khác dựa trên giá trị của option được chọn
                // ...
            });
                document.querySelector(".page_content").addEventListener("click", function(event) {
                const selectedBox = event.target;
                if(selectedBox.classList.contains("page_number") === false)
                    return;
                document.querySelectorAll(".page_number").forEach(function(pageNumber) {
                    pageNumber.style.backgroundColor = "white";
                });
                selectedBox.style.backgroundColor = "#EE4D2D";
                document.querySelector(".page_content").style.backgroundColor = "white";
                // selectedBox.style.color = "white";
                var selectedPage = event.target.innerText;
                var selectedOption = document.querySelector("#category").value;
                var searchValue = document.querySelector("#search").value;
                // document.querySelector(".page_number").
                console.log(selectedPage);
                $.ajax({
                    url: "/PBL3_1_war_exploded/seller/product/productmanagement",
                    type: "GET",
                    data: {
                        idcategory: selectedOption,
                        search: searchValue,
                        page: selectedPage,
                        check: true
                    },
                    contentType: 'application/json',
                    success: function(response) {
                        UpdateShowProducts(response.list);
                    },
                    error: function (error) {
                        console.error('Error:', error);
                    }
                });
            });
            document.querySelector(".search_btn").addEventListener("click", function() {
                var searchValue = document.querySelector("#search").value;
                var selectedOption = document.querySelector("#category").value;
                console.log(searchValue);
                $.ajax({
                    url: "/PBL3_1_war_exploded/seller/product/productmanagement",
                    type: "GET",
                    data: {
                        idcategory: selectedOption,
                        search: searchValue,
                        check: true
                    },
                    contentType: 'application/json',
                    success: function(response) {
                        UpdateShowProducts(response.list);
                        ShowPageNumber(response.totalPage);
                    },
                    error: function (error) {
                        console.error('Error:', error);
                    }
                });
            });
            document.querySelector(".btn_delete").addEventListener("click", function() {
                var selectedProductIds = Array.from(document.querySelectorAll('input[type="checkbox"]:checked')).map(checkbox => checkbox.id.split('-')[1]);
                var idString = selectedProductIds.join('-');
                var searchValue = document.querySelector("#search").value;
                var selectedOption = document.querySelector("#category").value;
                $.ajax({
                    url: "/PBL3_1_war_exploded/seller/product/productmanagement",
                    type: "GET",
                    data: {
                        idcategory: selectedOption,
                        search: searchValue,
                        idProducts: idString,
                        action: "delete",
                        check: true
                    },
                    contentType: 'application/json',
                    success: function(response) {
                        UpdateShowProducts(response.list);
                        ShowPageNumber(response.totalPage);
                    },
                    error: function (error) {
                        console.error('Error:', error);
                    }
                });
            });
            var mainCheckbox = document.querySelector('#mainCheckbox');

            // Lắng nghe sự kiện click trên checkbox chính
            mainCheckbox.addEventListener('click', function() {
                // Lấy tất cả các checkbox khác
                var checkboxes = document.querySelectorAll('input[type="checkbox"]');

                // Đặt trạng thái của tất cả các checkbox khác tương ứng với trạng thái của checkbox chính
                checkboxes.forEach(function(checkbox) {
                    checkbox.checked = mainCheckbox.checked;
                });
            });
            // Lấy tất cả các checkbox
            var checkboxes = document.querySelectorAll('input[type="checkbox"]');

            // Lắng nghe sự kiện click trên mỗi checkbox
            checkboxes.forEach(function(checkbox) {
                checkbox.addEventListener('click', function() {
                    // Nếu checkbox này bị bỏ chọn
                    if (!this.checked) {
                        // Bỏ chọn checkbox "Tất cả"
                        document.querySelector('#mainCheckbox').checked = false;
                    }
                });
            });
        </script>
    </div>
</div>
<script src="<c:url value="/seller/common/SellerCommon.js"/>"></script>
</body>
</html>

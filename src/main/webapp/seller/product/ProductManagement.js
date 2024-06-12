function createOverlay() {
    let overlay = document.createElement('div');
    overlay.id = 'overlay';
    Object.assign(overlay.style, {
        position: 'fixed',
        top: 0,
        left: 0,
        width: '100%',
        height: '100%',
        backgroundColor: 'rgba(0,0,0,0.8)',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
    });
    document.body.appendChild(overlay);
    return overlay;
}
function getProductTable(overlay, PopUps, data, name){
    let productTable = `<div class="product_popup">
            <div class="produc_table">
                <div class="product_title" style="background-color: #CCCCCC">
                    <h3>${name}</h3>
                </div>
                <table class="table_product_content">
                `;
    if(data.length > 0)
    {
        productTable += `<tr>
                            <th>Ảnh</th>`
        if(data[0].variation1 !== null) productTable += `<th>${data[0].variation1.split(": ")[0]}</th>`
        if(data[0].variation2 !== null) productTable += `<th>${data[0].variation2.split(": ")[0]}</th>`
        productTable += `<th>Kho hàng</th>
                         <th>Giá tiền</th>
                        </tr>`
    }
    for(var i = 0; i < data.length; i++){
        productTable += `<tr>
                            <td><img src="/PBL3_1_war_exploded/${data[i].imgPath}" alt="" ></td>`
        if(data[i].variation1 !== null) productTable += `<td>${data[i].variation1.split(": ")[1]}</td>`
        if(data[i].variation2 !== null) productTable += `<td>${data[i].variation2.split(": ")[1]}</td>`
        productTable += `<td><input type="number" value="${data[i].quantity}" class="quantity productId-${data[i].id}"></td>
                            <td><input type="number" value="${data[i].price}" class="price productId-${data[i].id}"></td>
                         </tr>`
    }
    productTable += `</table>
            </div>`
    productTable += `<div class="popup_btn">
                    <button type="button" onclick="RemovePopup()">Hủy</button>
                    <button type="button" id="confirm_update">Xác nhận</button>
                </div>
        </div>`;

    // addressList = data;
    PopUps.innerHTML = productTable;
    overlay.appendChild(PopUps);

    // Add event listener for confirm button
    document.querySelector('#confirm_update').addEventListener('click',function () {
        console.log("Da update");
        var table = document.querySelector('.table_product_content');
        var updateData = "";
        for (var i = 1; i < table.rows.length; i++) {
            var row = table.rows[i];
            var rowData = "";
            rowData += row.querySelector('.quantity').classList[1].split('-')[1] + "-";
            rowData += row.querySelector('.quantity').value + "-";
            rowData += row.querySelector('.price').value;
            updateData += rowData;
            if(i !== table.rows.length - 1) updateData += ",";
        }
        var searchValue = document.querySelector("#search").value;
        var selectedOption = document.querySelector("#category").value;
        var status = document.querySelector(".active").classList[1].split('-')[1];
        var selectedPage = 1;
        for(var i = 0; i < document.querySelectorAll('.page_number').length; i++){
            if(document.querySelectorAll('.page_number')[i].style.backgroundColor === "rgb(238, 77, 45)"){
                selectedPage = document.querySelectorAll('.page_number')[i].innerHTML;
                break;
            }
        }
        $.ajax({
            url: "/PBL3_1_war_exploded/seller/product/productmanagement/updateproduct", // URL của API mà bạn muốn gửi dữ liệu đến
            type: "GET",
            data: {
                data: updateData,
                idcategory: selectedOption,
                search: searchValue,
                status: status,
                check: true,
                page: selectedPage
            },
            contentType: 'application/json',
            success: function(response) {
                // Hàm này sẽ được gọi khi yêu cầu AJAX thành công
                RemovePopup();
                UpdateShowProducts(response.list);
                ShowPageNumber(response.totalPage, response.currentPage);
                console.log("Da update");
            },
            error: function(error) {
                // Hàm này sẽ được gọi khi có lỗi xảy ra trong quá trình yêu cầu AJAX
                console.error('Error:', error);
            }
        });
    });
}





function RemovePopup() {
    let overlay = document.getElementById('overlay');
    document.body.removeChild(overlay);
}
function ProductManagementPopUp(idProduct, name){
    console.log("name = " + name);
    let overlay = createOverlay();
    let PopUps = document.createElement('div');
    PopUps.id = 'ProductManagementPop_ups';
    $.ajax({
        url: '/PBL3_1_war_exploded/seller/product/productmanagement/update',
        type: 'GET',
        data: {
            id: idProduct
        },
        contentType: 'application/json',
        success: function(data){
            console.log(data);
            getProductTable(overlay, PopUps, data, name);
        }
    })
}


function createTableRow(stt, id, name, sales, min_price, max_price, stock, status) {
    var s = `
        <tr>
            <td><input type="checkbox" class="checkboxproduct" name="" id="productid-` + id + `"></td>
            <td>` + stt + `</td>
            <td id="name-${id}">` + name + `</td>
            <td>` + sales + `</td>`
    if(min_price == max_price)
    {
        s += `<td>` + min_price + `</td>`;
    }
    else
    {
        s += `<td>` + min_price + ' - ' + max_price + `</td>`;
    }
    s += `
            <td>` + stock + `</td>
            <td>` + status + `</td>
        </tr>
    `;
    return s;
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
function ShowPageNumber(totalPage, currentPage = 1){
    var pageContent = document.querySelector(".page_content");
    pageContent.innerHTML = "";
    for (var i = 1; i <= totalPage; i++){
        if(i === parseInt(currentPage))
        {
            pageContent.innerHTML += `<div class="page_number" style="background-color: rgb(238, 77, 45);">${i}</div>`;
        }else
        {
            pageContent.innerHTML += `<div class="page_number">` + i + `</div>`;
        }

    }
}
document.addEventListener("DOMContentLoaded", function() {
    // Lấy tất cả các nút có class là 'button_container'
    var buttons = document.querySelectorAll('.button_container');
    // let ink = document.querySelector('.tab__ink_bar');
    // ink.style.width = buttons[0].offsetWidth + 'px';

    // Đăng ký sự kiện click cho từng nút
    buttons.forEach(function(button) {
        button.addEventListener('click', function() {
            setActive(this);
            // ink.style.width = this.offsetWidth + 'px';
            // ink.style.transform = `translateX(${this.offsetLeft}px)`;
        });
    });
});

function setActive(element) {
    var buttons = document.querySelectorAll('.button_container');

    buttons.forEach(function(button) {
        button.classList.remove('active');
    });

    element.classList.toggle('active');
    var status = element.classList[1].split('-')[1];
    console.log("status = " + status);
    var searchValue = document.querySelector("#search").value;
    var selectedOption = document.querySelector("#category").value;
    $.ajax({
        url: "/PBL3_1_war_exploded/seller/product/productmanagement",
        type: "GET",
        data: {
            idcategory: selectedOption,
            search: searchValue,
            status: status,
            check: true
        },
        contentType: 'application/json',
        success: function(response) {
            UpdateShowProducts(response.list);
            console.log("totalPage = " + response.totalPage);
            ShowPageNumber(response.totalPage, response.currentPage);
        },
        error: function (error) {
            console.error('Error:', error);
        }
    });


}

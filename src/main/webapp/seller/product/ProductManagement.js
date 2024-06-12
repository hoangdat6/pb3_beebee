function createTableRow(stt, id, name, sales, min_price, max_price, stock, status) {
    var s = `
        <tr>
            <td><input type="checkbox" name="" id="productid-` + id + `"></td>
            <td>` + stt + `</td>
            <td>` + name + `</td>
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
function ShowPageNumber(totalPage){
    var pageContent = document.querySelector(".page_content");
    pageContent.innerHTML = "";
    if(totalPage > 0)
    {
        pageContent.innerHTML += `<div class="page_number" style="background-color: rgb(238, 77, 45);">1</div>`;
    }
    for (var i = 2; i <= totalPage; i++){
        pageContent.innerHTML += `<div class="page_number">` + i + `</div>`;
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
            ShowPageNumber(response.totalPage);
        },
        error: function (error) {
            console.error('Error:', error);
        }
    });
}

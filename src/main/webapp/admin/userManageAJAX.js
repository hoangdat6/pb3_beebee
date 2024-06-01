function generateOverlay() {
    const overlay = document.createElement("div");
    overlay.id = "overlay";
    overlay.style.position = "fixed";
    overlay.style.top = "0";
    overlay.style.left = "0";
    overlay.style.width = "100%";
    overlay.style.height = "100%";
    overlay.style.backgroundColor = "rgba(0,0,0,0.5)";
    overlay.style.zIndex = "1000";
    overlay.style.display = "block";
    return overlay;
}
const generatePopup = (user, shop) => {
    const overlay = generateOverlay();
    if (user.imgPath == "" || user.imgPath == null || user.imgPath == undefined) {
        user.imgPath = "https://img.pikbest.com/png-images/qianku/default-avatar_2406311.png!w700wp";
    }
    else (user.imgPath = "/PBL3_1_war_exploded/" + user.imgPath);

    if (shop != null){
       if (shop.imgPath == "" || shop.imgPath == null || shop.imgPath == undefined) {
            shop.imgPath = "https://img.pikbest.com/png-images/qianku/default-avatar_2406311.png!w700wp";
       }
       else (shop.imgPath = "/PBL3_1_war_exploded/" + shop.imgPath);
    }

    const popup = document.createElement('div');
    popup.className = 'pop_up';
    popup.innerHTML = `
    <div class="account pop-up-content">
    <div class="top">
        <div class="info_wrap">
            <img src=${user.imgPath} alt="" class="avatar">
                <div class="desc">
                    <h3>${user.name}</h3>
                </div>
        </div>
        <div id="user_is_locked" class="is_locked">${!user.is_locked ? "Đang hoạt động" : "Đã khóa"}</div>
    </div>
    <div class="line80"></div>
    <div class="bot">
        <div class="item">
            <div class="item-tile">Email:</div>
            <div class="item-content">${user.email}</div>
        </div>
        <div class="item">
            <div class="item-tile">Số điện thoại:</div>
            <div class="item-content">${user.phone??""}</div>
        </div>
        <div class="item">
            <div class="item-tile">Ngày tạo tài khoản:</div>
            <div class="item-content">${user.createdAt??""}</div>
        </div>
        <div class="item">
            <div class="item-tile">Chi tiêu/năm:</div>
            <div class="item-content money">${user.total} VND</div>
        </div>
    </div>
    <button id="LockAccount">${user.is_locked ? "Mở khóa" : "Khóa tài khoản"} Khóa tài khoản</button>
    <input type="hidden" name="shop_id" value="${user.id}">
</div>
    `;
    if (user != null && shop != undefined && shop != {}) {
        popup.innerHTML += `<div class="line100"></div>
<div class="shop pop-up-content">
    <div class="top">
        <div class="info_wrap">
            <img src="${shop.imgPath}" alt="" class="avatar">
                <div class="desc">
                    <h3>${shop.name}</h3>
                    <p><i class="fa-solid fa-star"></i> 4.9</p>
                    <p>${shop.followers} lượt theo dõi</p>
                </div>
        </div>
        <div id="shop_is_locked" class="is_locked">${!shop.is_locked ? "Đang hoạt động" : "Đã khóa"}</div>
    </div>
    <div class="line80"></div>
    <div class="bot">
        <div class="item">
            <div class="item-tile">Ngày tạo shop:</div>
            <div class="item-content">${shop.createdAt}</div>
        </div>
        <div class="item">
            <div class="item-tile">Tổng số sản phẩm:</div>
            <div class="item-content">${shop.totalProducts} sản phẩm</div>
        </div>
        <div class="item">
            <div class="item-tile">Doanh thu/năm::</div>
            <div class="item-content">${shop.totalRevenue} VND</div>
        </div>
        <div class="item">
            <div class="item-tile">Tỉ lệ phản hồi:</div>
            <div class="item-content money">90% (Thường chỉ sau 15 phút)</div>
        </div>
        <div class="item">
            <div class="item-tile">Vị trí:</div>
            <div class="item-content money">${shop.location}</div>
        </div>
    </div>
    <button id="LockShop">${shop.is_locked ? "Mở khóa" : "Khóa shop"}</button>
    <input type="hidden" name="shop_id" value="${shop.id}">
</div>`;
    }
    overlay.appendChild(popup);
    document.body.appendChild(overlay);

    if (shop != null)
    {
        const LockShop = document.getElementById("LockShop");
        if (!shop.is_locked){
            LockShop.innerText = "Khóa shop";
            LockShop.style.backgroundColor = "red";
        }
        else {
            LockShop.innerText = "Mở khóa";
            LockShop.style.backgroundColor = "green";
        }

        if (shop.is_locked){
            $("#shop_is_locked").css("color", "#FF5630");
        }
        else{
            $("#shop_is_locked").css("color", "#38CB89");
        }
    }

    const LockAccount = document.getElementById("LockAccount");
    if (!user.is_locked){
        LockAccount.innerText = "Khóa tài khoản";
        LockAccount.style.backgroundColor = "red";
    }
    else{
        LockAccount.innerText = "Mở khóa";
        LockAccount.style.backgroundColor = "green";
    }

    if (user.is_locked){
        $("#user_is_locked").css("color", "#FF5630");
    }
    else{
        $("#user_is_locked").css("color", "#38CB89");
    }

    // Thêm sự kiện để xóa overlay khi click bên ngoài popup
    overlay.addEventListener('click', function() {
        document.body.removeChild(overlay);
    });

    // Ngăn chặn sự kiện click trên overlay khi click vào popup
    popup.addEventListener('click', function(event) {
        event.stopPropagation();
    });

    // Xử lý sự kiện khi click vào nút khóa tài khoản
    $("#LockShop").click(function(e) {
        if (shop == null) return;
        e.preventDefault();
        let shop_is_locked = $("#shop_is_locked");
        $.ajax({
            url: "/PBL3_1_war_exploded/lockShop",
            type: 'GET',
            data : {
                shop_id : shop.id
            },
            success: function(data) {
                console.log(data);
                let buttonTarget = e.target;
                if (!data.is_locked){
                    alert("Mở khóa shop thành công!");
                    buttonTarget.innerText = "Khóa shop";
                    buttonTarget.style.backgroundColor = "red";
                    shop_is_locked.text("Đang hoạt động");
                    shop_is_locked.css("color", "#38CB89");
                }
                else {
                    alert("Khóa shop thành công!");
                    buttonTarget.innerText = "Mở khóa";
                    buttonTarget.style.backgroundColor = "green";
                    shop_is_locked.text("Đã khóa");
                    shop_is_locked.css("color", "#FF5630");
                }
                if($("#seller").css("color") === 'rgb(255, 0, 0)')
                    updateSellerStatus(shop.id, !shop.is_locked);
            },
            error: function(jqXHR, textis_locked, errorThrown) {
                console.log('Error:', errorThrown);
                console.log('is_locked:', textis_locked);
                console.log('jqXHR:', jqXHR);
            }
        });
    });

    // Xử lý sự kiện khi click vào nút khóa Shop
    $("#LockAccount").click(function(e) {
        e.preventDefault();
        let user_is_locked = $("#user_is_locked");
        $.ajax({
            url: "/PBL3_1_war_exploded/lockAccount",
            type: 'GET',
            data : {
                user_id : user.id
            },
            success: function(data) {
                console.log(data);
                let buttonTarget = e.target;
                if (!data.is_locked){
                    alert("Mở khóa tài khoản thành công!");
                    buttonTarget.innerText = "Khóa tài khoản";
                    buttonTarget.style.backgroundColor = "red";
                    user_is_locked.text("Đang hoạt động");
                    user_is_locked.css("color", "#38CB89");
                }
                else {
                    alert("Khóa tài khoản thành công!");
                    buttonTarget.innerText = "Mở khóa";
                    buttonTarget.style.backgroundColor = "green";
                    user_is_locked.text("Đã khóa");
                    user_is_locked.css("color", "#FF5630");
                }
                if ($("#customer").css("color") === 'rgb(255, 0, 0)')
                    updateCustomerStatus(user.id, !user.is_locked);
            },
            error: function(jqXHR, textis_locked, errorThrown) {
                console.log('Error:', errorThrown);
                console.log('is_locked:', textis_locked);
                console.log('jqXHR:', jqXHR);
            }
        });

    });
}

function updateCustomerStatus(user_id, is_locked) {
    let body = $('tbody');
    let row = body.find(`#${user_id}`);
    (is_locked ? row.find('td').eq(3).text('Đã khóa') : row.find('td').eq(3).text('Đang hoạt động'));
}

function updateSellerStatus(shop_id, is_locked) {
    let body = $('tbody');
    let row = body.find(`#${shop_id}`);
    (is_locked ? row.find('td').eq(3).text('Đã khóa') : row.find('td').eq(3).text('Đang hoạt động'));
}


function getDataByURL(URL) {
    return new Promise((resolve, reject) => {
        $.ajax({
            url: "/PBL3_1_war_exploded" + URL,
            type: 'GET',
            success: function(data) {
                console.log(data);
                resolve(data);
            },
            error: function(jqXHR, textis_locked, errorThrown) {
                console.log('Error:', errorThrown);
                console.log('is_locked:', textis_locked);
                console.log('jqXHR:', jqXHR);
                reject(null);
            }
        });
    });
}

$(document).ready(function() {
    $("#search_customer").click(function (event) {
        event.preventDefault(); // Prevent the form from submitting normally
        updateTable();
    });
    $("#customer").click(async (e) => {
        let buttonClicked = e.target;
        if (buttonClicked.color == "red") return;
        else{
            $("#seller").css("color", "black");
            $("#seller").css("borderBottomColor", "transparent");
            $("#customer").css("color", "red");
            $("#customer").css("borderBottomColor", "red");
        }
        e.preventDefault();
        let URL = "/getAllCustomer";
        getDataByURL(URL).then(data => {
            rerenderTable(data, ["STT", "Tên", "Email", "Trạng thái", "Chi tiêu/năm"]);
        });
    });

    $("#seller").click((e) => {
        let buttonClicked = e.target;
        if (buttonClicked.color == "red") return;
        else{
            $("#seller").css("color", "red");
            $("#seller").css("borderBottomColor", "red");
            $("#customer").css("color", "black");
            $("#customer").css("borderBottomColor", "transparent");
        }
        e.preventDefault();
        let URL = "/getAllSeller";
        getDataByURL(URL).then(data => {
            rerenderTable(data, ["STT", "Tên Shop", "Email", "Trạng thái", "Doanh thu/năm"]);
        });
    });


function updateTable() {
    let curPage = $("#seller").css("color") === 'rgb(255, 0, 0)' ? "/searchSeller" : "/searchCustomer";
    let val = $("#user_search").val();
    let status = $("#status").val();
    // Send a GET request to the server
    $.ajax({
        url: "/PBL3_1_war_exploded/" + curPage,
        type: 'GET',
        data: {
            val: val,
            status: status
        },
        success: function (data) {
            console.log(data);
            // console.log(data);
            // Clear the table
            let headers = $("#table thead th").map(function() {
                return $(this).text();
            }).get();

            rerenderTable(data, headers);
        },
        error: function (jqXHR, textis_locked, errorThrown) {
            console.log('Error:', errorThrown);
            console.log('is_locked:', textis_locked);
            console.log('jqXHR:', jqXHR);
        }
    });
}});

function rerenderTable(data, headers) {
    // Clear the x
    let thead = $("#table thead");
    thead.empty();

    // Create a new row
    let row = $("<tr></tr>");

    // Add all columns in the headers array to the thead
    headers.forEach(function(header) {
        row.append('<th>' + header + '</th>');
    });

    // Append the row to the thead
    thead.append(row);

    $("#table tbody").empty();
    // Add new data to the table
    data.forEach(function (item, index) {
        $("#table tbody").append(
            '<tr id="' + item.id + '">' +
            '<td>' + (index + 1) + '</td>' +
            '<td>' + item.name + '</td>' +
            '<td>' + item.email + '</td>' +
            `<td>${item.is_locked ? "Đã khóa" : "Đang hoạt động"}</td>` +
            '<td>' + item.total + '</td>' +
            '</tr>'
        );

        // Check if the click event handler has already been added
        if (!$(`#table tbody #${item.id}`).data('events') || !$(`#table tbody #${item.id}`).data('events').click) {
            // Add click event handler to the row
            $(`#table tbody #${item.id}`).on('click', function (e) {
                let rowId = this.id; // Lấy ID của hàng được nhấp
                $.ajax({
                    url: "/PBL3_1_war_exploded/getCustomerByID",
                    type: 'GET',
                    data: {
                        user_id: rowId,
                        isUserID: !($("#seller").css("color") === 'rgb(255, 0, 0)')
                    },
                    success: function (data) {
                        console.log(data);
                        generatePopup(data.customer, data.shop ?? null);
                    },
                    error: function (jqXHR, textis_locked, errorThrown) {
                        console.log('Error:', errorThrown);
                        console.log('is_locked:', textis_locked);
                        console.log('jqXHR:', jqXHR);
                    }
                });
            });
        }
    });
}

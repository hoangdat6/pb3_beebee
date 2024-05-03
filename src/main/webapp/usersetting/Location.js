function AddAddressPopUps(name = "", phone = "", city = "", district = "", ward = "", address = "", defaultAddress = false) {
    let overlay = document.createElement('div');
    overlay.id = 'overlay';
    Object.assign(overlay.style, {
        position: 'fixed',
        top: 0,
        left: 0,
        bottom: 0,
        right: 0,
        backgroundColor: 'rgba(0, 0, 0, 0.5)',
    });
    let AddAddressPopUp = document.createElement('div');
    AddAddressPopUp.className = 'Add_address';
    AddAddressPopUp.innerHTML = `
    <h3 class="Add_address_title">Thêm địa chỉ mới</h3>
    <form action="" class="Add_address_form">
        <div class="Contact_info Add_address_form_item">
            <h4>Thông tin liên lạc</h4>
            <div class="Contact_info_input_wrap">
                <div class="Contact_info_input_item">
                    <input placeholder="Họ và tên" type="text" id="name" name="name" value="${name}">
                </div>
                <div class="Contact_info_input_item">
                    <input placeholder="Số điện thoại" type="tel" id="phone" name="phone" pattern="[0..9]{10}" value="${phone}">
                </div>
            </div>
        </div>

        <div class="Pickup_info Add_address_form_item">
            <h4>Địa chỉ nhận hàng</h4>
            <select class="form-select form-select-sm mb-3" id="city" aria-label=".form-select-sm">
                <option value="" selected>Chọn tỉnh thành</option>
            </select>
            <select class="form-select form-select-sm mb-3" id="district" aria-label=".form-select-sm">
                <option value="" selected>Chọn quận huyện</option>
            </select>
            <select class="form-select form-select-sm" id="ward" aria-label=".form-select-sm">
                <option value="" selected>Chọn phường xã</option>
            </select>
            <input type="text" name="Dia chi" id="Address-Desc"
                placeholder="Số đường, thôn, kiệt, hẻm,..." value="${address}">
        </div>
        <div class="Set_default">
            <input type="checkbox" id="Set_default" name="Set_default" ${defaultAddress ? 'checked' : ''}>
            <label for="Set_default">Đặt làm địa chỉ mặc định</label>
        </div >

        <div class="Add_address_btns">
            <input class="btn btn_Send" value="Xác nhận" type="submit" require>
                <input class="btn btn_Cancel" value="Hủy" type="submit" require>
                </div>
            </form>
        `;
    overlay.appendChild(AddAddressPopUp);
    document.body.appendChild(overlay);
}

function AddressItem(address) {
    let Type = {
        "default": "Mặc định",
        "pickup": "Địa chỉ lấy hàng"
    }
    let addressItem = document.createElement('div');
    addressItem.className = 'Address_item';
    addressItem.innerHTML = `
    <div class="Address_item_left">
        <div class="row1">
            ${address.name} | ${address.phone}
        </div>
        <div class="row2">
            <p>${address.detail}</p>
            <p><span class="Address_item_ward">${address.ward}</span>, <span class="Address_item_district">${address.district}</span>, <span class="Address_item_city">${address.district}</span></p>
        </div>
        ${address.type != "" ? `<div class="row3 Address_type"> ${Type[address.type]}</div>` : ``}
    </div>
    <div class="Address_item_right">
            <div class="row1">
                ${address.type == "default" ? `` : `<button class="Address_remove_btn btn">Xóa</button>`}
                <button class="Address_update_btn btn">Cập nhật</button>
            </div>
        <div class="row2 Address_set_default btn" ${address.type == "default" ? 'pointer-events = "none"' : ''}>
            Đặt làm địa chỉ mặc định
        </div>
    </div>
    `;
    return addressItem;
}

function createExampleAddressItem() {
    let address = {
        name: "Vũ Văn",
        phone: "0937******",
        detail: "h15/1 K35 Mẹ Suốt, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng",
        ward: "Phường Hòa Khánh Nam",
        district: "Liên Chiểu",
        city: "Đà Nẵng",
        type: "default"
    };

    let addressItem = AddressItem(address);
    document.querySelector('.Address_container').appendChild(addressItem);
}

document.getElementById('addAddressBtn').addEventListener('click', function () {
    AddAddressPopUps();
    document.querySelector('.Add_address_btns .btn_Cancel').addEventListener('click', function () {
        document.body.removeChild(overlay);
        document.body.lastChild.remove();
    });
    let script = document.createElement('script');
    script.src = "../app.js";
    document.body.appendChild(script);
});

document.querySelector('.Address_update_btn').addEventListener('click', function () {
    AddAddressPopUps();
    document.querySelector('.Add_address_btns .btn_Cancel').addEventListener('click', function () {
        document.body.removeChild(overlay);
        document.body.lastChild.remove();
    });
    let script = document.createElement('script');
    script.src = "../app.js";
    document.body.appendChild(script);
});
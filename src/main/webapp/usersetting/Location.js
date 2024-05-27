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
                <option value="${city}" selected>Chọn tỉnh thành</option>
            </select>
            <select class="form-select form-select-sm mb-3" id="district" aria-label=".form-select-sm">
                <option value="${district}" selected>Chọn quận huyện</option>
            </select>
            <select class="form-select form-select-sm" id="ward" aria-label=".form-select-sm">
                <option value="${ward}" selected>Chọn phường xã</option>
            </select>
            <input type="text" name="Dia chi" id="Address-Desc"
                placeholder="Số đường, thôn, kiệt, hẻm,..." value="${address}">
        </div>
        <div class="Set_default">
            <input type="checkbox" id="Set_default" name="Set_default" ${defaultAddress ? 'checked': ''}>
            <label for="Set_default">Đặt làm địa chỉ mặc định</label>
        </div >

        <div class="Add_address_btns">
            <div class="btn btn_Send">
                Xác nhận
            </div>
            <div class="btn btn_Cancel">
                Hủy
            </div>
        </div>
    </form>
        `;
    overlay.appendChild(AddAddressPopUp);
    document.body.appendChild(overlay);
    AddAddressPopUp.querySelector('.Add_address_btns .btn_Send').addEventListener('click', () => {
        AddAddressItem(getAddressInfor());
    });
}

function AddAddressItem(address) {
    let Type = {
        "default": "Mặc định",
        "pickup": "Địa chỉ lấy hàng"
    }
    let addressItem = document.createElement('div');
    addressItem.className = 'Address_item';
    let addressHTML = `
    <div class="Address_item_left">
        <div class="row1">
            ${address.name} | ${address.phone}
        </div>
        <div class="row2">
            <p>${address.detail}</p>
            <p><span class="Address_item_ward">${address.ward}</span>, <span class="Address_item_district">${address.district}</span>, <span class="Address_item_city">${address.city}</span></p>
        </div>`;

    if (address.isDefault) {
        addressHTML += `
        <div class="row3 Address_type">
            Mặc định
        </div>`;
    }

    addressHTML += `
    </div>
    <div class="Address_item_right">
        <div class="row1">
            <input type="hidden" name="addressId" value="${address.id}">
            <input type="hidden" name="addressName" value="${address.name}">
            <input type="hidden" name="addressDetail" value="${address.detail}">
            <input type="hidden" name="addressPhone" value="${address.phone}">
            <input type="hidden" name="addressWard" value="${address.wardValue}">
            <input type="hidden" name="addressDistrict" value="${address.districtValue}">
            <input type="hidden" name="addressProvince" value="${address.cityValue}">
            <input type="hidden" name="addressIsDefault" value="${address.isDefault}">
            <button class="Address_remove_btn btn" onclick="removeAddress(this)">Xóa</button>
            <button class="Address_update_btn btn" onclick="updateAddress(this)">Cập nhật</button>
        </div>`;

    if (!address.isDefault) {
        addressHTML += `
        <div class="row2 Address_set_default btn" onclick="SetDefault(this)">
            Đặt làm địa chỉ mặc định
        </div>
    </div>
    `;
        document.querySelector('.Address_container').appendChild(addressItem);
    }

function createExampleAddressItem() {
    let citySelect = document.querySelector('#city');
    let districtSelect = document.querySelector('#district');
    let wardSelect = document.querySelector('#ward');
    let address = {
        name: document.querySelector('#name').value,
        phone: document.querySelector('#phone').value,
        detail: document.querySelector('#Address-Desc').value,
        ward: wardSelect.options[wardSelect.selectedIndex].text,
        district: districtSelect.options[districtSelect.selectedIndex].text,
        city: citySelect.options[citySelect.selectedIndex].text,
        type: document.querySelector('#Set_default').checked ? "default" : "type"
    };
    let addressItem = AddressItem(address);
    document.querySelector('.Address_container').appendChild(addressItem);
    $.ajax({
        type: "GET",
        url: "/PBL3_1_war_exploded/api/address",
        data: {
            fullname: address.name,
            phone: address.phone,
            detail: address.detail,
            ward: wardSelect.value,
            district: districtSelect.value,
            city: citySelect.value
        },
        success: function (response) {
        }
    });
}
}

    document.getElementById('addAddressBtn').addEventListener('click', function () {
        AddAddressPopUps();
        document.querySelector('.btn_Send').addEventListener('click', function () {
            createExampleAddressItem();
            document.body.removeChild(overlay);
            document.body.lastChild.remove();
        });
        document.querySelector('.btn_Cancel').addEventListener('click', function () {
            document.body.removeChild(overlay);
            document.body.lastChild.remove();
        });
        let script = document.createElement('script');
        script.src = "../app.js";
        document.body.appendChild(script);
    });

    function removeAddress(button) {
        let item = button.parentElement.parentElement.parentElement;
        let addressId = item.querySelector("input[name='addressId']").value;
        $.ajax({
            type: "POST",
            url: "/PBL3_1_war_exploded/api/remove-address",
            data: {addressId: addressId},
            success: function (response) {
            }
        });
        item.remove();

    }

    function updateAddress(button) {
        let item = button.parentElement.parentElement.parentElement;
        let addressId = item.querySelector("input[name='addressId']").value;
        let addressName = item.querySelector("input[name='addressName']").value;
        let addressDetail = item.querySelector("input[name='addressDetail']").value;
        let addressPhone = item.querySelector("input[name='addressPhone']").value;
        let addressWard = item.querySelector("input[name='addressWard']").value;
        let addressDistrict = item.querySelector("input[name='addressDistrict']").value;
        let addressProvince = item.querySelector("input[name='addressProvince']").value;
        let addressIsDefault = item.querySelector("input[name='addressIsDefault']").value === "true";
        AddAddressPopUps(addressName, addressPhone, addressProvince, addressDistrict, addressWard, addressDetail, addressIsDefault)
        let script = document.createElement('script');
        script.src = "../app.js";
        document.body.appendChild(script);
        document.querySelector('.btn_Send').addEventListener('click', function () {
            $.ajax({
                type: "POST",
                url: "/PBL3_1_war_exploded/api/update-address",
                data: {
                    addressId: addressId,
                    name: document.querySelector('#name').value,
                    phone: document.querySelector('#phone').value,
                    detail: document.querySelector('#Address-Desc').value,
                    city: document.querySelector('#city').value,
                    district: document.querySelector('#district').value,
                    ward: document.querySelector('#ward').value,
                    is_default: document.querySelector('#Set_default').checked
                },
                success: function (response) {
                }
            });
            if (addressIsDefault && !document.querySelector('#Set_default').checked) {
                item.querySelector(".row3.Address_type").remove();
                let defaultAddress = document.createElement('div');
                defaultAddress.className = 'row2 Address_set_default btn';
                defaultAddress.innerText = 'Đặt làm địa chỉ mặc định'
                defaultAddress.setAttribute('onclick', 'SetDefault(this)');
                item.querySelector('.Address_item_right').appendChild(defaultAddress);
            }
            if (!addressIsDefault && document.querySelector('#Set_default').checked) {
                let defaultNow = document.querySelector(".row3.Address_type");
                if (defaultNow !== null) {
                    let Address = document.createElement('div');
                    Address.className = 'row2 Address_set_default btn';
                    Address.innerText = 'Đặt làm địa chỉ mặc định'
                    Address.setAttribute('onclick', 'SetDefault(this)');
                    defaultNow.parentElement.parentElement.querySelector('.Address_item_right').appendChild(Address);
                    defaultNow.parentElement.parentElement.querySelector("input[name='addressIsDefault']").value = false;
                    defaultNow.remove();
                }
                item.querySelector('.row2.Address_set_default.btn').remove();
                let defaultAddress = document.createElement('div');
                defaultAddress.className = 'row3 Address_type';
                defaultAddress.innerText = 'Mặc định';
                item.querySelector('.Address_item_left').appendChild(defaultAddress);
            }
            item.querySelector("input[name='addressName']").value = document.querySelector('#name').value;
            item.querySelector("input[name='addressDetail']").value = document.querySelector('#Address-Desc').value;
            item.querySelector("input[name='addressPhone']").value = document.querySelector('#phone').value;
            item.querySelector("input[name='addressWard']").value = document.querySelector('#ward').value;
            item.querySelector("input[name='addressDistrict']").value = document.querySelector('#district').value;
            item.querySelector("input[name='addressProvince']").value = document.querySelector('#city').value;
            item.querySelector("input[name='addressIsDefault']").value = document.querySelector('#Set_default').checked;

            // Update the displayed address details
            item.querySelector(".row1").innerText = `${document.querySelector('#name').value} | ${document.querySelector('#phone').value}`;
            item.querySelector(".row2 p:first-child").innerText = document.querySelector('#Address-Desc').value;
            // Update the address fields displayed
            let ward = document.querySelector('#ward');
            let district = document.querySelector('#district');
            let province = document.querySelector('#city');
            item.querySelector(".row2 p:last-child").innerText = `${ward.options[ward.selectedIndex].text}, ${district.options[district.selectedIndex].text}, ${province.options[province.selectedIndex].text}`;
            document.body.removeChild(overlay);
            document.body.lastChild.remove();
        });

        document.querySelector('.btn_Cancel').addEventListener('click', function () {
            document.body.removeChild(overlay);
            document.body.lastChild.remove();
        });
    }

    function SetDefault(set) {
        let item = set.parentElement.parentElement;
        let defaultNow = document.querySelector(".row3.Address_type");
        if (defaultNow !== null) {
            let Address = document.createElement('div');
            Address.className = 'row2 Address_set_default btn';
            Address.innerText = 'Đặt làm địa chỉ mặc định'
            Address.setAttribute('onclick', 'SetDefault(this)');
            defaultNow.parentElement.parentElement.querySelector('.Address_item_right').appendChild(Address);
            defaultNow.parentElement.parentElement.querySelector("input[name='addressIsDefault']").value = false;
            defaultNow.remove();
        }
        item.querySelector('.row2.Address_set_default.btn').remove();
        let defaultAddress = document.createElement('div');
        defaultAddress.className = 'row3 Address_type';
        defaultAddress.innerText = 'Mặc định';
        item.querySelector('.Address_item_left').appendChild(defaultAddress);
        item.querySelector("input[name='addressIsDefault']").value = true;
        $.ajax({
            type: "POST",
            url: "/PBL3_1_war_exploded/api/set-default",
            data: {
                addressId: item.querySelector("input[name='addressId']").value,
            },
            success: function (response) {
            }
        });
}

function createOverlay() {
    let overlay = document.createElement('div');
    overlay.id = 'overlay';
    Object.assign(overlay.style, {
        position: 'fixed',
        top: 0,
        left: 0,
        width: '100%',
        height: '100%',
        backgroundColor: 'rgba(0,0,0,0.5)',
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
    });
    document.body.appendChild(overlay);
    return overlay;
}

function AddressPopUp(){
    let overlay = createOverlay();
    let PopUps = document.createElement('div');
    PopUps.id = 'AddressPop_ups';

    let addressList = null;

    $.ajax({
        url: '/PBL3_1_war_exploded/api/address',
        type: 'GET',
        data: {},
        success: function(data){
            getAddress(overlay, PopUps, data);
        }
    })


}

let addressList = null;

function getAddress(overlay, PopUps, data){
    let addressListHTML = `<div class="address_popup">
            <div class="content">
                <div class="address_title">
                    <h3>Địa chỉ của tôi</h3>
                </div>
                <div class="address_list">
                `;
    let checkedAddressId = document.getElementById('address_id').value;
    for (let i = 0; i < data.length; i++) {
        addressListHTML += `
                    <div class="address_item">
                        <input type="radio" name="choose_address" id="address${i}">
                        <div class="info_address">
                            <div class="header_info">
                                <div class="info_person">
                                    <span>${data[i].fullname}</span>
                                    <span>${data[i].phone}</span>
                                </div>`;

        if(data[i].isDefault === true){
            addressListHTML += `<div class="mark">
                                Mặc định
                            </div>`;
        }
        addressListHTML += `
                            </div>
                            <div class="detail_address">
                                ${data[i].detail}
                            </div>
                            <div class="general_address">
                                ${data[i].ward}, ${data[i].district}, ${data[i].province}
                            </div>
                        </div>
                    </div>
        `;
    }

    addressListHTML += `<div class="popup_btn">
                    <button type="button" onclick="RemovePopup()">Hủy</button>
                    <button type="button" id="confirm_address">Xác nhận</button>
                </div>
            </div>
        </div>`;

    addressList = data;
    PopUps.innerHTML = addressListHTML;
    overlay.appendChild(PopUps);

    // check the selected address
    data.forEach((address, index) => {
        if(address.id == checkedAddressId){
            document.getElementById(`address${index}`).checked = true;
        }
    });


    // Add event listener for confirm button
    let btnAddress = document.querySelector('#confirm_address');
    btnAddress.addEventListener('click', () => {
        let address = null;
        for (let i = 0; i < addressList.length; i++) {
            if(document.getElementById(`address${i}`).checked){
                address = addressList[i];
            }
        }
        if(address != null){
            document.getElementById('delivery_address').innerHTML = `
                <input type="hidden" id="address_id" value="${address.id}">
                <div class="info_cus">
                    ${address.fullname}, ${address.phone}
                </div>
                <div class="address_info">
                    ${address.detail}, ${address.ward}, ${address.district}, ${address.province}
                </div>`;
        }
        RemovePopup();
    });
}





function RemovePopup() {
    let overlay = document.getElementById('overlay');
    document.body.removeChild(overlay);
}
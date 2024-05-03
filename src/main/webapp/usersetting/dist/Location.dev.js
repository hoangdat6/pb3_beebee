"use strict";

function AddAddressPopUps() {
  var name = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : "";
  var phone = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : "";
  var city = arguments.length > 2 && arguments[2] !== undefined ? arguments[2] : "";
  var district = arguments.length > 3 && arguments[3] !== undefined ? arguments[3] : "";
  var ward = arguments.length > 4 && arguments[4] !== undefined ? arguments[4] : "";
  var address = arguments.length > 5 && arguments[5] !== undefined ? arguments[5] : "";
  var defaultAddress = arguments.length > 6 && arguments[6] !== undefined ? arguments[6] : false;
  var overlay = document.createElement('div');
  overlay.id = 'overlay';
  Object.assign(overlay.style, {
    position: 'fixed',
    top: 0,
    left: 0,
    bottom: 0,
    right: 0,
    backgroundColor: 'rgba(0, 0, 0, 0.5)'
  });
  var AddAddressPopUp = document.createElement('div');
  AddAddressPopUp.className = 'Add_address';
  AddAddressPopUp.innerHTML = "\n    <h3 class=\"Add_address_title\">Th\xEAm \u0111\u1ECBa ch\u1EC9 m\u1EDBi</h3>\n    <form action=\"\" class=\"Add_address_form\">\n        <div class=\"Contact_info Add_address_form_item\">\n            <h4>Th\xF4ng tin li\xEAn l\u1EA1c</h4>\n            <div class=\"Contact_info_input_wrap\">\n                <div class=\"Contact_info_input_item\">\n                    <input placeholder=\"H\u1ECD v\xE0 t\xEAn\" type=\"text\" id=\"name\" name=\"name\" value=\"".concat(name, "\">\n                </div>\n                <div class=\"Contact_info_input_item\">\n                    <input placeholder=\"S\u1ED1 \u0111i\u1EC7n tho\u1EA1i\" type=\"tel\" id=\"phone\" name=\"phone\" pattern=\"[0..9]{10}\" value=\"").concat(phone, "\">\n                </div>\n            </div>\n        </div>\n\n        <div class=\"Pickup_info Add_address_form_item\">\n            <h4>\u0110\u1ECBa ch\u1EC9 nh\u1EADn h\xE0ng</h4>\n            <select class=\"form-select form-select-sm mb-3\" id=\"city\" aria-label=\".form-select-sm\">\n                <option value=\"\" selected>Ch\u1ECDn t\u1EC9nh th\xE0nh</option>\n            </select>\n            <select class=\"form-select form-select-sm mb-3\" id=\"district\" aria-label=\".form-select-sm\">\n                <option value=\"\" selected>Ch\u1ECDn qu\u1EADn huy\u1EC7n</option>\n            </select>\n            <select class=\"form-select form-select-sm\" id=\"ward\" aria-label=\".form-select-sm\">\n                <option value=\"\" selected>Ch\u1ECDn ph\u01B0\u1EDDng x\xE3</option>\n            </select>\n            <input type=\"text\" name=\"Dia chi\" id=\"Address-Desc\"\n                placeholder=\"S\u1ED1 \u0111\u01B0\u1EDDng, th\xF4n, ki\u1EC7t, h\u1EBBm,...\" value=\"").concat(address, "\">\n        </div>\n        <div class=\"Set_default\">\n            <input type=\"checkbox\" id=\"Set_default\" name=\"Set_default\" ").concat(defaultAddress ? 'checked' : '', ">\n            <label for=\"Set_default\">\u0110\u1EB7t l\xE0m \u0111\u1ECBa ch\u1EC9 m\u1EB7c \u0111\u1ECBnh</label>\n        </div >\n\n        <div class=\"Add_address_btns\">\n            <input class=\"btn btn_Send\" value=\"X\xE1c nh\u1EADn\" type=\"submit\" require>\n                <input class=\"btn btn_Cancel\" value=\"H\u1EE7y\" type=\"submit\" require>\n                </div>\n            </form>\n        ");
  overlay.appendChild(AddAddressPopUp);
  document.body.appendChild(overlay);
}

function AddressItem(address) {
  var Type = {
    "default": "Mặc định",
    "pickup": "Địa chỉ lấy hàng"
  };
  var addressItem = document.createElement('div');
  addressItem.className = 'Address_item';
  addressItem.innerHTML = "\n    <div class=\"Address_item_left\">\n        <div class=\"row1\">\n            ".concat(address.name, " | ").concat(address.phone, "\n        </div>\n        <div class=\"row2\">\n            <p>").concat(address.detail, "</p>\n            <p><span class=\"Address_item_ward\">").concat(address.ward, "</span>, <span class=\"Address_item_district\">").concat(address.district, "</span>, <span class=\"Address_item_city\">").concat(address.district, "</span></p>\n        </div>\n        ").concat(address.type != "" ? "<div class=\"row3 Address_type\"> ".concat(Type[address.type], "</div>") : "", "\n    </div>\n    <div class=\"Address_item_right\">\n            <div class=\"row1\">\n                ").concat(address.type == "default" ? "" : "<button class=\"Address_remove_btn btn\">X\xF3a</button>", "\n                <button class=\"Address_update_btn btn\">C\u1EADp nh\u1EADt</button>\n            </div>\n        <div class=\"row2 Address_set_default btn\" ").concat(address.type == "default" ? 'pointer-events = "none"' : '', ">\n            \u0110\u1EB7t l\xE0m \u0111\u1ECBa ch\u1EC9 m\u1EB7c \u0111\u1ECBnh\n        </div>\n    </div>\n    ");
  return addressItem;
}

function createExampleAddressItem() {
  var address = {
    name: "Vũ Văn",
    phone: "0937******",
    detail: "h15/1 K35 Mẹ Suốt, Hòa Khánh Nam, Liên Chiểu, Đà Nẵng",
    ward: "Phường Hòa Khánh Nam",
    district: "Liên Chiểu",
    city: "Đà Nẵng",
    type: "default"
  };
  var addressItem = AddressItem(address);
  document.querySelector('.Address_container').appendChild(addressItem);
}

document.getElementById('addAddressBtn').addEventListener('click', function () {
  AddAddressPopUps();
  document.querySelector('.Add_address_btns .btn_Cancel').addEventListener('click', function () {
    document.body.removeChild(overlay);
    document.body.lastChild.remove();
  });
  var script = document.createElement('script');
  script.src = "../app.js";
  document.body.appendChild(script);
});
document.querySelector('.Address_update_btn').addEventListener('click', function () {
  AddAddressPopUps();
  document.querySelector('.Add_address_btns .btn_Cancel').addEventListener('click', function () {
    document.body.removeChild(overlay);
    document.body.lastChild.remove();
  });
  var script = document.createElement('script');
  script.src = "../app.js";
  document.body.appendChild(script);
});
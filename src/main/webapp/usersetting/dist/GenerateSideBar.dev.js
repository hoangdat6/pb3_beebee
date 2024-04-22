"use strict";

function GenerateSideBar() {
  var type = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : "UserInformation";
  // Tạo thẻ aside
  var aside = document.createElement('aside');
  aside.classList.add('UAAS_bar');
  var Type = "UAAS_bar--".concat(type); // Tạo nội dung HTML

  aside.innerHTML = "\n    <div class=\"UAAS_bar_top\">\n        <div class=\"Avatar_wrapper\">\n            <img class=\"UAAS_avatar\" id=\"Avatar\" src=\"../img/Product-Details/Review-Avatar-1.jpeg\" alt=\"#\">\n            <input type=\"file\" name=\"fileInput\" id=\"fileInput\" style=\"display: none;\">\n            <img class=\"UAAS_camera\" src=\"../img/User_information/Camera.svg\" id=\"cameraImage\" alt=\"#\">\n        </div>\n        <h3 class=\"UAAS_userName\">${User.username}</h3>\n    </div>\n    <ul class=\"UAAS_bar_bot ".concat(Type, "\">\n        <li class=\"UAAS_bar_bot_item\" id=\"UAAS_userInformation\"><i class=\"fa-solid fa-user\"></i> T\xE0i kho\u1EA3n\n        </li>\n        <li class=\"UAAS_bar_bot_item\" id=\"UAAS_location\"><i class=\"fa-solid fa-location-dot\"></i> \u0110\u1ECBa\n            ch\u1EC9 c\u1EE7a t\xF4i</li>\n        <li class=\"UAAS_bar_bot_item\" id=\"UAAS_order\"><i class=\"fa-solid fa-box\"></i> \u0110\u01A1n h\xE0ng\n            c\u1EE7a t\xF4i</li>\n        <li class=\"UAAS_bar_bot_item\" id=\"UAAS_favorite\"><i class=\"fa-solid fa-heart\"></i> S\u1EA3n ph\u1EA9m\n            y\xEAu th\xEDch</li>\n        <li class=\"UAAS_bar_bot_item\" id=\"UAAS_logOut\"><a href='<c:url value=\"/logout\"/>'><i\n                    class=\"fa-solid fa-right-from-bracket\"></i> \u0110\u0103ng xu\u1EA5t</a></li>\n    </ul>"); // Tìm thẻ wrap và thêm thẻ aside vào trong nó

  var wrap = document.querySelector('.UAAS_wrap');
  wrap.prepend(aside);
}
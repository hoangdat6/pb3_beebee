"use strict";

var items = [{
  "class": 'user_nav',
  name: 'Quản lý người dùng',
  icon: 'fa-user',
  href: ''
}, {
  "class": 'statis_nav',
  name: 'Dữ liệu thống kê',
  icon: 'fa-chart-pie',
  href: ''
}, {
  "class": 'verify_nav',
  name: 'Kiểm duyệt',
  icon: 'fa-user',
  href: 'fa-circle-check'
}, {
  "class": 'product_nav',
  name: 'Quản lý người dùng',
  icon: 'fa-box',
  href: ''
}];

var generateSidebar = function generateSidebar(option) {
  var sidebar = document.createElement('aside');
  sidebar.classList.add('sidebar', "sidebar--".concat(option));
  items.forEach(function (item) {
    var a = document.createElement('a');
    a.classList.add(item["class"]);
    a.href = item.href;
    a.innerHTML = "<i class=\"fa-solid ".concat(item.icon, "\"></i> ").concat(item.name);
    sidebar.appendChild(a);
  });
  document.getElementById('wrap').prepend(sidebar);
  document.querySelector(".".concat(option, "_nav")).style.color = "red";
};
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
}

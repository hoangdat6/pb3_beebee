document.addEventListener("DOMContentLoaded", function() {
    const colorOptions1 = document.querySelectorAll('.Category_option1');
    const colorOptions2 = document.querySelectorAll('.Category_option2');
    
    colorOptions1.forEach(option => {
        option.addEventListener('click', function() {
            Selected(colorOptions1, this);
        });
    });

    colorOptions2.forEach(option => {
        option.addEventListener('click', function() {
            Selected(colorOptions2, this);
        });
    });
});

function Selected(colorOptions, selectedOption) {
    // Xóa lớp 'Selected' khỏi tất cả các lựa chọn màu khác
    colorOptions.forEach(opt => {
        opt.classList.remove('Selected');
    });
    
    // Thêm lớp 'Selected' cho lựa chọn màu được chọn
    selectedOption.classList.add('Selected');
}
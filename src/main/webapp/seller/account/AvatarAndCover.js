document.querySelectorAll('input[type="file"]').forEach(input => {
    input.addEventListener('change', function () {
        const file = this.files[0];
        const reader = new FileReader();
        reader.onload = function () {
            input.parentElement.querySelector('img').src = reader.result;
            input.parentElement.querySelector('span').style.display = 'none';
            input.parentElement.classList.add('active');
        };
        reader.readAsDataURL(file);
    });
});
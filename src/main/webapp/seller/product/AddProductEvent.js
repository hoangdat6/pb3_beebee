document.addEventListener('DOMContentLoaded', () => {
    //Sự kiện thêm ảnh sản phẩm
    document.getElementById("product_image").addEventListener('change', AddProductImage);

    //Xử lí sự kiện kéo thả ảnh sản phẩm
    let labelElement = document.querySelector('label[for="product_image"]');

    // Ngăn chặn hành vi mặc định khi kéo tệp qua thẻ
    labelElement.addEventListener('dragover', function(event) {
        event.preventDefault();
    });

    // Thêm lớp 'dragover' khi tệp được kéo vào thẻ
    labelElement.addEventListener('dragenter', function(event) {
        event.preventDefault();
        labelElement.classList.add('dragover');
    });

    // Loại bỏ lớp 'dragover' khi tệp được kéo ra khỏi thẻ
    labelElement.addEventListener('dragleave', function(event) {
        labelElement.classList.remove('dragover');
    });

    // Xử lý sự kiện thả tệp
    labelElement.addEventListener('drop', function(event) {
        event.preventDefault();
        labelElement.classList.remove('dragover');
        AddProductImage(event);
    });

    document.querySelector("#product_name").addEventListener('input', function () {
        let charCount = this.value.length;
        document.querySelector("#span_for_name").textContent = `${charCount}/120`;
        if (charCount > 120) {
            document.querySelector("#span_for_name").style.color = "red";
            this.value = this.value.slice(0, 120);
        }

        if (charCount === 0) {
            document.getElementById("warning_name").innerHTML = `<span style="color: #DC2626;">Không được để trống ô</span>`;
            document.querySelector("label[for='product_name']").style = "padding-bottom: 10px;";
        } else {
            document.getElementById("warning_name").innerHTML = "";
            document.querySelector("label[for='product_name']").style = "padding-bottom: 0px;";

        }
    });

    document.querySelector("#product_description").addEventListener('input', function () {
        let charCount = this.value.length;
        document.querySelector("#span_for_description").textContent = `${charCount}/3000`;
        if (charCount > 3000) {
            document.querySelector("#span_for_description").style.color = "red";
            this.value = this.value.slice(0, 3000);
        }

        if(charCount === 0) {
            document.getElementById("warning_description").innerHTML = `<span style="color: #DC2626;">Không được để trống ô</span>`;
            document.querySelector("label[for='product_description']").style = "padding-bottom: 10px;";
        }else {
            document.getElementById("warning_description").innerHTML = "";
            document.querySelector("label[for='product_description']").style = "padding-bottom: 0px;";
        }
    });

    document.querySelector("#discount").addEventListener('input', function () {
        let charCount = this.value.length;
        if(charCount === 0) {
            document.getElementById("warning_discount").innerHTML = `<span style="color: #DC2626;">Không được để trống ô</span>`;
            document.querySelector("label[for='product_description']").style = "padding-bottom: 10px;";

        }else {
            document.getElementById("warning_discount").innerHTML = "";
            document.querySelector("label[for='product_description']").style = "padding-bottom: 0px;";
        }
        if (charCount > 2) {
            this.value = this.value.slice(0, 2);
        } else if(this.value < 0){
            this.value = 0;
        }
    });
});
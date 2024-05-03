document.addEventListener('DOMContentLoaded', () => {
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
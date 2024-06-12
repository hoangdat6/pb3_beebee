function formatDate(dateString) {
    let date = new Date(dateString);
    let year = date.getFullYear();
    let month = String(date.getMonth() + 1).padStart(2, '0');
    let day = String(date.getDate()).padStart(2, '0');
    let hours = String(date.getHours()).padStart(2, '0');
    let minutes = String(date.getMinutes()).padStart(2, '0');
    let seconds = String(date.getSeconds()).padStart(2, '0');
    return `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;
}
function save(button){
    let item = button.parentElement.parentElement.parentElement;
    let seller_id = document.getElementById("seller_id");
    let voucher_type = document.getElementById("voucher_type");
    let voucher_name = document.getElementById("voucher_name");
    let voucher_code = document.getElementById("voucher_code");
    let voucher_type_money = document.getElementById("voucher_type_money");
    let voucher_discount = document.getElementById("voucher_discount");
    let voucher_for_order = document.getElementById("voucher_for_order");
    let voucher_number = document.getElementById("voucher_number");
    let voucher_number_use = document.getElementById("voucher_number_use");
    let voucher_for = document.getElementById("voucher_for");
    let voucher_max_discount = document.getElementById("voucher_max_discount");
    let start_date = formatDate(document.getElementById("start_date").value);
    let end_date = formatDate(document.getElementById("end_date").value);

    $.ajax({
        type: "GET",
        url: "/PBL3_1_war_exploded/api/add_voucher",
        data: {
            sellerId : "27",//seller_id.value,
            voucherLocationType : voucher_type.value,
            name : voucher_name.value,
            code : voucher_code.value,
            startDate : start_date,
            endDate : end_date,
            voucherMoneyType : voucher_type_money.value,
            discountRate : voucher_discount.value,
            maxDiscount : voucher_max_discount.value,
            minApply : voucher_for_order.value,
            quantity : voucher_number.value,
            MOQ : voucher_number_use.value,
            voucherAccessType : voucher_for.value
        },
        success: function (response) {
            console.log("Voucher saved successfully", response);
        },
        error: function(xhr, status, error) {
            console.error("Error saving voucher:", xhr.responseText);
        }
    });

}
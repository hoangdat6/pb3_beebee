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


$(document).ready(function () {
    let paymentId = $(".payment").attr("id");
    if (paymentId == '2') {
        $(".History").text("Thanh toán");
        $(`.History`).attr("myCheck", "2");
    }
})


$(document).ready(function () {
    $(`.History`).click(function () {
        let check = $(`.History`).attr("myCheck");
        
        if(check == "1"){
            window.location.href = "/PBL3_1_war_exploded/usersetting/order";
        }
        
        if (check == "2"){
            let orderIds = $(`#ids`).val();
            let paymentTotal = $(`#paymentTotal`).val();
            overlayQR(paymentTotal, orderIds);
        }
    })
});


function overlayQR(total, orderIds){
    let overlay = createOverlay();
    let QRPopups = document.createElement("div");

    QRPopups.innerHTML =  `
        <img src="https://img.vietqr.io/image/970422-00161224886868-compact2.png?amount=${total}&addInfo='${orderIds}'&accountName=HOANG%20VAN%20DAT" alt="QR chuyển tiền">
    `

    overlay.appendChild(QRPopups);
}
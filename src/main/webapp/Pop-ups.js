function createOverlay() {
    let overlay = document.createElement('div');
    overlay.id = "overlay";
    Object.assign(overlay.style, {
        position: "fixed",
        top: 0,
        left: 0,
        width: "100%",
        height: "100%",
        backgroundColor: "rgba(0,0,0,0.5)",
        display: "flex",
        justifyContent: "center",
        alignItems: "center",
    });
    document.body.appendChild(overlay);
    return overlay;
}

//kiểm tra xem Pop-ups hiện tại có phải là Pop-ups nhập Email mới hay không
let isNewEmail = false;

function IndentifyPopUps(title, srcIcon, placeholder, btn1Content, btn2Content) {
    let overlay = createOverlay();
    let PopUps = document.createElement('div');
    PopUps.id = "Pop_ups";
    PopUps.innerHTML = `
            <h3 class="Pop_ups_title">${title}</h3>
            <img src="${srcIcon}" alt="">
            <div style="width: 100%;">
                <input type="email" placeholder ="${placeholder}" pattern="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+(\.[a-zA-Z]{2,})+$">
                <span id="NotValid">Địa chỉ bạn nhập không đúng định dạng</span>
                <span style="display: none;" id="Pop_ups_error">Email khong trung khop</span>
            </div>
            <div class="Pop_ups_btn">
                <div class="btn btn_Cancel" onclick="PopUpOff()">${btn1Content}</div>
                <a class="btn btn_Send" onclick='check(this)'>${btn2Content}</a>
            </div>
    `;
    overlay.appendChild(PopUps);
}

function check(a){
    let PopUps = a.parentElement.parentElement;
    let email = PopUps.querySelector('input[type="email"]').value;
    let oldEmail = document.querySelector('#UI_email').value;
    if (email == oldEmail)
    {
        EnterCodePopUps("Hủy", "Kế tiếp");
    }
    else
    {
        PopUps.querySelector('#Pop_ups_error').style.display = "block";
    }
}

function EmailIdentify() {
    IndentifyPopUps("Xác thực Email", "./img/Pop-ups/Email.png", "Nhập địa chỉ Email", "Hủy", "Gửi mã");
}

function NewEmailIdentify() {
    if (isNewEmail == true) {
        PopUpOff();
        return;
    }
    else isNewEmail = true;
    PopUpOff();
    IndentifyPopUps("Thêm Email mới", "./img/Pop-ups/Email.png", "Nhập địa chỉ Email mới", "Hủy", "Gửi mã");
}

function PopUpOff() {
    let overlay = document.getElementById('overlay');
    document.body.removeChild(overlay);
}

function EnterCodePopUps(btn1Content, btn2Content) {
    let pop_ups = document.querySelector("#Pop_ups").querySelector("input").value;
    fetch('/PBL3_1_war_exploded/cfoldemail', {
        method: 'POST',
        headers: {
            'Content-Type': 'text/html; charset=UTF-8',
        },
        body:
            {Email : pop_ups},
    })
        .then(response => response.json())
        .then(data => {
            let response = JSON.parse(data);
            console.log(response);
            if(response.status === "200") {
                showSuccessToast("Success", "Thêm sản phẩm thành công");
            }else {
                showErrorToast("Warning", "Thêm sản phẩm thất bại");
            }
        })
        .catch((error) => {
            console.error('Error:', error);
        });

    let Oldoverlay = document.getElementById('overlay');
    let email = Oldoverlay.querySelector('input[type = "email"]').value;
    document.body.removeChild(Oldoverlay);
    let overlay = createOverlay();

    let PopUps = document.createElement('div');
    PopUps.id = "Pop_ups";
    PopUps.innerHTML = `
        <h3 class="Pop_ups_title">Xác thực Email</h3>
        <span style="color:#6C7275;">Mã xác minh đã được gửi đến Email</span>
        <span style="color: #6C7275;">${email}</span>
        <div id="Pop_ups_code">
            <input type="text" id="codeBox1" maxlength="1" onkeyup="onKeyUpEvent(1, event)" onfocus="onFocusEvent(1)">
            <input type="text" id="codeBox2" maxlength="1" onkeyup="onKeyUpEvent(2, event)" onfocus="onFocusEvent(2)">
            <input type="text" id="codeBox3" maxlength="1" onkeyup="onKeyUpEvent(3, event)" onfocus="onFocusEvent(3)">
            <input type="text" id="codeBox4" maxlength="1" onkeyup="onKeyUpEvent(4, event)" onfocus="onFocusEvent(4)">
            <input type="text" id="codeBox5" maxlength="1" onkeyup="onKeyUpEvent(5, event)" onfocus="onFocusEvent(5)">
            <input type="text" id="codeBox6" maxlength="1" onkeyup="onKeyUpEvent(6, event)" onfocus="onFocusEvent(6)">
        </div>
        <p>Bạn vẫn chưa nhận được mã? <btn style="color: #38CB89; font-weight: 500;">Gửi lại</btn></p>
        <div class="Pop_ups_btn">
            <div class="btn btn_Cancel" onclick="PopUpOff()">${btn1Content}</div>
            <a class="btn btn_Send" onclick = 'NewEmailIdentify()'>${btn2Content}</a>
        </div>
    `;
    overlay.appendChild(PopUps);
}

function onKeyUpEvent(id, event) {
    if (event.keyCode >= 48 && event.keyCode <= 57) {
        const nextBox = document.querySelector(`#codeBox${id + 1}`);
        if (nextBox) {
            nextBox.focus();
        }
    }
}

function onFocusEvent(id) {
    document.querySelector(`#codeBox${id}`).select();
}
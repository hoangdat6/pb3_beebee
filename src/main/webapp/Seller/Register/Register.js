function generateSidebar(index, description) {
    // Tạo chuỗi HTML cho sidebar
    let sidebarHTML = `
        <aside class="SR_sidebar">
            <div class="SR_sidebar_content">
                <div class="SR_sidebar_hero">
                    <h3 class="SR_sidebar_title">Bước ${index}</h3>
                    <p class="SR_side_bar_desc">
                        ${description}
                    </p>
                </div>

                <div class="SR_sidebar_process SR_sidebar_process--${index}">
                    <div class="SR_sidebar_process_item">
                        <span class="number number--1">1</span>
                        <span class="content content--1">Thông tin cơ bản</span>
                    </div>
                    <div class="line_wrap">
                        <div class="vertical_line"></div>
                    </div>
                    <div class="SR_sidebar_process_item">
                        <span class="number number--2">2</span>
                        <span class="content content--2">Thêm ảnh bìa và ảnh đại diện</span>
                    </div>
                    <div class="line_wrap">
                        <div class="vertical_line"></div>
                    </div>
                    <div class="SR_sidebar_process_item">
                        <span class="number number--3">3</span>
                        <span class="content content--3">Hoàn tất đăng ký</span>
                    </div>
                </div>
            </div>
        </aside>
    `;

    // Trả về chuỗi HTML
    return sidebarHTML;
}

function registerSidebar() {
    document.querySelector('.SR_wrap').insertAdjacentHTML('beforeend', generateSidebar(1, 'Nhập thông tin cơ bản  Shop của bạn và xác nhận địa chỉ Email'));
}

function avatarAndCoverSidebar() {
    document.querySelector('.SR_wrap').insertAdjacentHTML('beforeend', generateSidebar(2, 'Thêm ảnh bìa và ảnh đại diện Shop của bạn'));
}

function completeSidebar() {
    document.querySelector('.SR_wrap').insertAdjacentHTML('beforeend', generateSidebar(3, 'Hoàn tất đăng ký Shop của bạn'));
}
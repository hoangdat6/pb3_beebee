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

function  ChooseProduct(){
    let overlay = createOverlay();
    let PopUps = document.createElement('div');
    PopUps.id = 'VoucherPop_ups';
    PopUps.innerHTML = `
        <div class="popup_container">
        <div class="top_heading">
            <span>Chọn sản phẩm</span>
        </div>
    
        <div class="filter_content">
            <div class="filter_content-item category_area">
                <label for="category">Danh mục</label>
                <select name="category" id="category" class="category_input">
                    <option value="" class="category_item">Tất cả</option>
                    <option value="" class="category_item">Thời trang</option>
                    <option value="" class="category_item">Dày dép</option>
                </select>
            </div>
            <div class="filter_content-item search_area">
                <label for="search">Tìm kiếm</label>
                <input type="text" id="search" placeholder="Tên sản phẩm, tên phân loại" class="search_input">
            </div>
            <div class="filter_content-item btn_area">
                <input type="button" value="Tìm" class="search_btn">
            </div>
        </div>

        <div class="table_content">
            <table class="product_content">
                <thead>
                    <tr>
                        <th> <input type="checkbox" name="" id=""></th>
                        <th >STT</th>
                        <th >Tên sản phẩm</th>
                        <th >Đã bán</th>
                        <th >Giá</th>
                        <th >Kho hàng</th>
                    </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>1</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>2</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>3</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>4</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>5</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>7</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>7</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>7</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>7</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>7</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>7</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="modify_content">
            <div class="modify_button">
                <input type="button" value="Hủy" class="action_btn btn_cancel" onclick="RemovePopup()">
                <input type="button" value="Xác nhận" class="action_btn btn_confirm">
            </div>
        </div>
    </div>
    `;
    overlay.appendChild(PopUps);
}

function RemovePopup() {
    let overlay = document.getElementById('overlay');
    document.body.removeChild(overlay);
}
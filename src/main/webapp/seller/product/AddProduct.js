class AddProductTable {
    constructor() {
        this.table = document.querySelector('#myTable');
        this.Variation1Name = document.querySelector('.VGI0 input[name="varient_group_name"]').value;

        this.VariationOption1NamesAndSrcImages = Array.from(document.querySelectorAll(".VGI0 .VI")).map((vi) => {
            return {
                name: vi.querySelector("input[name='VI_name']").value,
                imgSrc: vi.querySelector("img").src
            };
        });

        this.Variation2Name = "";
        this.VariationOption2Names = null;

        if (document.querySelector('.VGI1') != null) {
            this.Variation2Name = document.querySelector('.VGI1 input[name="varient_group_name"]').value;
            this.VariationOption2Names = Array.from(document.querySelectorAll(".VGI1 .VI input[name='VI_name']")).map((input) => input.value);
        }
    }
    createTable() {
        this.Variation1Name = document.querySelector('.VGI0 input[name="varient_group_name"]').value;

        this.VariationOption1NamesAndSrcImages = Array.from(document.querySelectorAll(".VGI0 .VI")).map((vi) => {
            return {
                name: vi.querySelector("input[name='VI_name']").value,
                imgSrc: vi.querySelector("img").src
            };
        });
        this.rows = [];

        this.Variation2Name = "";
        this.VariationOption2Names = null;

        if (document.querySelector('.VGI1') != null) {
            this.Variation2Name = document.querySelector('.VGI1 input[name="varient_group_name"]').value;
            this.VariationOption2Names = Array.from(document.querySelectorAll(".VGI1 .VI input[name='VI_name']")).map((input) => input.value);
        }

        if (this.VariationOption2Names !== null && this.VariationOption2Names !== undefined && this.VariationOption2Names.length > 0) {
            // Xóa toàn bộ bảng chỉ giữ lại header
            this.table.innerHTML = `<tr>
            <th>${this.Variation1Name}</th>
            <th>${this.Variation2Name}</th>
            <th>Kho Hàng</th>
            <th>Giá tiền</th>
            </tr>`;

            // Lặp qua tất cả phân loại 1
            for (let i = 0; i < this.VariationOption1NamesAndSrcImages.length; i++) {
                // Lặp qua tất cả phân loại 2
                for (let j = 0; j < this.VariationOption2Names.length; j++) {
                    // Tạo hàng mới
                    let row = this.table.insertRow();
                    // Thêm rowspan cho phân loại 1 nếu là hàng đầu tiên của phân loại 2
                    if (j === 0) {
                        // Add the category1 element
                        let cell1 = row.insertCell();
                        cell1.innerHTML = `${this.VariationOption1NamesAndSrcImages[i].name}  <img src="${this.VariationOption1NamesAndSrcImages[i].imgSrc}" alt="${this.VariationOption1NamesAndSrcImages[i].name}">`;
                        cell1.rowSpan = this.VariationOption2Names.length;
                    }

                    // Thêm phân loại 2
                    let cell2 = row.insertCell();
                    cell2.innerHTML = this.VariationOption2Names[j];

                    // Thêm hàng kho hàng và giá tiền
                    let cell3 = row.insertCell();
                    cell3.innerHTML = '<input type="number" placeholder="Kho Hàng" value = 0>';
                    let cell4 = row.insertCell();
                    cell4.innerHTML = '<input type="number" placeholder="Giá tiền" value = 0>';
                }
            }
        }
        else {
            this.table.innerHTML = `<tr>
            <th>${this.Variation1Name}</th>
            <th>Kho Hàng</th>
            <th>Giá tiền</th>
            </tr>`;
            // Iterate over category1
            for (let i = 0; i < this.VariationOption1NamesAndSrcImages.length; i++) {
                // Create a new row
                let row = this.table.insertRow();

                // Add the category1 element
                let cell1 = row.insertCell();
                cell1.innerHTML = `${this.VariationOption1NamesAndSrcImages[i].name}  <img src="${this.VariationOption1NamesAndSrcImages[i].imgSrc}" alt="${this.VariationOption1NamesAndSrcImages[i].name}">`;

                // Add cells for Kho Hàng and Giá tiền
                let cell2 = row.insertCell();
                cell2.innerHTML = '<input type="number" placeholder="Kho Hàng" value = "0">'; // Replace with actual data
                let cell3 = row.insertCell();
                cell3.innerHTML = '<input type="number" placeholder="Giá tiền" value = "0">'; // Replace with actual data
            }
        }
    }

    //Áp dụng giá trong price và kho hàng trong inventory cho tất cả các sản phẩm
    ApplyPriceAndInventoryAll() {
        let table = document.getElementById("myTable");
        let inventory = document.getElementById("inventory").value;
        let price = document.getElementById("price").value;
        let tablerows = table.rows;
        for (let i = 1; i < tablerows.length; i++) {
            let cells = tablerows[i].cells;
            cells[cells.length - 2].children[0].value = inventory == "" ? 0 : inventory;
            cells[cells.length - 1].children[0].value = price == "" ? 0 : price;
        }
    }

    addVI0toTable(VIname, VISrcImage) {
        this.VariationOption2Names = Array.from(document.querySelectorAll(".VGI1 .VI input[name='VI_name']")).map((input) => input.value);

        if (this.VariationOption2Names === null || this.VariationOption2Names === undefined || this.VariationOption2Names.length === 0) {
            let row = this.table.insertRow();
            let cell1 = row.insertCell();
            cell1.innerHTML = `${VIname}  <img src="${VISrcImage}" alt="${VIname}">`;

            // Add cells for Kho Hàng and Giá tiền
            let cell3 = row.insertCell();
            cell3.innerHTML = '<input type="number" placeholder="Kho Hàng" value = "0">'; // Replace with actual data
            let cell4 = row.insertCell();
            cell4.innerHTML = '<input type="number" placeholder="Giá tiền" value = 0>'; // Replace with actual data
        }
        else {
            for (let j = 0; j < this.VariationOption2Names.length; j++) {
                let row = this.table.insertRow();
                if (j == 0) {
                    let cell1 = row.insertCell();
                    cell1.innerHTML = `${VIname}  <img src="${VISrcImage}" alt="${VIname}">`;
                    cell1.rowSpan = this.VariationOption2Names.length;
                }

                let cell2 = row.insertCell();
                cell2.innerHTML = this.VariationOption2Names[j];
                // Add cells for Kho Hàng and Giá tiền
                let cell3 = row.insertCell();
                cell3.innerHTML = '<input type="number" placeholder="Kho Hàng" value = "0">'; // Replace with actual data
                let cell4 = row.insertCell();
                cell4.innerHTML = '<input type="number" placeholder="Giá tiền" value = 0>'; // Replace with actual data
            }
        }
    }
    //Thêm phân loại thứ 2
    addVI1toTable(VIname) {
        this.VariationOption1NamesAndSrcImages = this.VariationOption1NamesAndSrcImages = Array.from(document.querySelectorAll(".VGI0 .VI input[name='VI_name']")).map((input) => input.value);

        let curRowspan = this.table.rows[1].cells[0].rowSpan;

        for (let i = 1; i < this.table.rows.length; i += curRowspan + 1) {
            this.table.rows[i].cells[0].rowSpan = curRowspan + 1;
            let row = this.table.insertRow(i + curRowspan);
            let cell2 = row.insertCell();
            cell2.innerHTML = VIname;
            let cell3 = row.insertCell();
            cell3.innerHTML = '<input type="number" placeholder="Kho Hàng" value="0">'; // Replace with actual data
            let cell4 = row.insertCell();
            cell4.innerHTML = '<input type="number" placeholder="Giá tiền" value="0">'; // Replace with actual data
        }
    }

    deleteVI1ByIndex(index) {
        let curRowspan = this.table.rows[1].cells[0].rowSpan;
        for (let i = 1; i < this.table.rows.length && i + index < this.table.rows.length; i += curRowspan - 1) {
            this.table.rows[i].cells[0].rowSpan = curRowspan - 1;
            if (index != 0)
                this.table.deleteRow(i + index);
            else {
                this.table.rows[i].cells[1].innerHTML = this.table.rows[i + 1].cells[0].innerHTML;
                this.table.rows[i].cells[2].children[0].value = this.table.rows[i + 1].cells[1].children[0].value;
                this.table.rows[i].cells[3].children[0].value = this.table.rows[i + 1].cells[2].children[0].value;
                this.table.deleteRow(i + 1);
            }
        }
    }

    deleteVI0ByIndex(index) {
        let curRowspan = this.table.rows[1].cells[0].rowSpan;
        for (let i = 0; i < curRowspan; i++) {
            this.table.deleteRow(index * curRowspan + 1);
        }
    }

    renameVI0ByIndex(index, newName) {
        let curRowspan = this.table.rows[1].cells[0].rowSpan;
        this.table.rows[index * curRowspan + 1].cells[0].innerHTML = `${newName.name}  <img src="${newName.srcImg}" alt="${newName.name}">`;
    }

    renameVI1ByIndex(index, newName) {
        let curRowspan = this.table.rows[1].cells[0].rowSpan;
        for (let i = index + 1; i < this.table.rows.length; i += curRowspan) {
            if ((i - 1) % curRowspan === 0) {
                this.table.rows[i].cells[1].innerHTML = newName;
            }
            else {
                this.table.rows[i].cells[0].innerHTML = newName;
            }
        }
    }
}

let table;

function createTable() {
    table = new AddProductTable();
    table.createTable();
}

function ApplyPriceAndInventoryAll() {
    table.ApplyPriceAndInventoryAll();
}

//Đánh dấu phân biệt giữa nhóm phân loại 1 và nhóm phân loại 2
let VGI_id = 0;
//Thêm nhóm phân loại
function AddVarientGroup() {
    document.querySelector('.SII_content_wrap .SII_list_top').style.display = 'flex';
    if (document.querySelector('.SII_price') != null) {
        document.querySelector('.SII_price').innerHTML = "";
        document.querySelector('.SII_inventory').innerHTML = "";
    }
    if (VGI_id >= 2) return;
    let VGI_wrap = document.querySelector('#Sale_info .VGI_wrap');
    //Với nhóm phân loại chính (Nhóm phân loại 1)
    if (VGI_id == 0) {
        VGI_wrap.insertAdjacentHTML('beforeend', `
        <div class="VGI VGI0">
            <input type="text" name="varient_group_name" onblur="renameCategoryGroup(true);" placeholder="Nhóm phân loại">
            <button class="btn btnAddVarient" onclick="AddVarient('VI_wrap0')">Thêm phân loại</button>
            <button class="btn Remove_VGI" onclick="removeVGI(this)"><i class="fa-solid fa-x"></i></button>
            <div class="VI_wrap" id="VI_wrap0">
            </div>
        </div>
        `);
        ++VGI_id;
        createTable();
        AddVarient('VI_wrap0');
    }
    else {
        //Nhóm phân loại phụ (Nhóm phân loại 2)
        VGI_wrap.insertAdjacentHTML('beforeend', `
            <div class="VGI VGI1">
                <input type="text" name="varient_group_name" onblur="renameCategoryGroup(false);" placeholder="Nhóm phân loại">
                <button class="btn btnAddVarient" onclick="AddVarient('VI_wrap1')">Thêm phân loại</button>
                <button class="btn Remove_VGI" onclick="removeVGI(this)"><i class="fa-solid fa-x"></i></button>
                <div class="VI_wrap" id="VI_wrap1">
                </div>
            </div>
        `);
        ++VGI_id;
        AddVarient('VI_wrap1');
        createTable();
    }

    showErrorInput(Enumerator.ADD_VARIANT_GROUP);
}

function UpdateProductImageAfterChangeImage(event) {
    let file = event.type === 'drop' ? event.dataTransfer.files[0] : event.target.files[0];
    let input = event.target.querySelector('input[type="file"]');
    let reader = new FileReader();
    let VI = input.parentElement;
    reader.onloadend = function () {
        VI.querySelector(`label img`).src = reader.result;
        renameVI0(input);
    }
    if (file) {
        reader.readAsDataURL(file);
    }
}

function getVI0Index(element) {
    let VI = element.closest('.VI');
    let VI_wrap = document.getElementById('VI_wrap0');
    let allVI = Array.from(VI_wrap.getElementsByClassName('VI'));
    return allVI.indexOf(VI);
}

function getVI1Index(element) {
    let VI = element.closest('.VI');
    let VI_wrap = document.getElementById('VI_wrap1');
    let allVI = Array.from(VI_wrap.getElementsByClassName('VI'));
    return allVI.indexOf(VI);
}

function removeVI0(element) {
    cntVGI0element--;
    if (cntVGI0element == 0) {
        removeVGI();
        return;
    }
    let VI = element.parentElement;
    let index = getVI0Index(VI);
    VI.parentElement.removeChild(VI);
    table.deleteVI0ByIndex(index);
}

//Xóa Varient Item (Phân loại) trong Varient Group Item (Nhóm phân loại)
function removeVI1(element) {
    cntVGI1element--;
    if (cntVGI1element == 0) {
        removeVGI();
        return;
    }
    let VI = element.parentElement;
    let index = getVI1Index(VI);
    VI.parentElement.removeChild(VI);
    table.deleteVI1ByIndex(index);
}

function renameVI0(input) {
    let index = getVI0Index(input);
    let name = input.parentElement.querySelector('input[type="text"]').value;
    let srcImg = input.parentElement.querySelector('img').src;
    let info = {
        name,
        srcImg
    };

    table.renameVI0ByIndex(index, info);
}

function renameVI1(input) {
    let index = getVI1Index(input);
    table.renameVI1ByIndex(index, input.value);
}

function renameCategoryGroup(boolean) {
    if (boolean) {
        table.table.rows[0].cells[0].innerHTML = document.querySelector('.VGI0 input[name="varient_group_name"]').value;
    }
    else {
        table.table.rows[0].cells[1].innerHTML = document.querySelector('.VGI1 input[name="varient_group_name"]').value;
    }
}

let cntVGI0element = 0;
let cntVGI1element = 0;

let VI_id_wrap0 = 0;
let VI_id_wrap1 = 0;

//Thêm phân loại vào nhóm phân loại
function AddVarient(id) {
    let VI_wrap = document.getElementById(id);
    //Thêm mới một phân loại (Varient Item)
    if (id == 'VI_wrap0') {
        VI_wrap.insertAdjacentHTML('beforeend', `
        <div class="VI drop-zone" id="VI0${VI_id_wrap0}">
              <label for="VI_img${cntVGI0element}">
                <img src=${blackImgPath} alt="preview">
              </label>
              <input type="file" name="VI_img" class="VI_img" id="VI_img${cntVGI0element}">
              <input type="text" name="VI_name" id="VI_name" onblur="renameVI0(this)" placeholder="Tên phân loại">
              <button class="btn Remove_VI" onclick="removeVI0(this)"><i class="fa-solid fa-x"></i></button>
        </div>
      `);
        let VIwrap = document.getElementById(`VI0${VI_id_wrap0}`);
        let VI_Image = document.getElementById(`VI_img${cntVGI0element}`);
        let VI_Element = document.getElementById(`VI0${VI_id_wrap0}`);
        VI_Image.addEventListener('change', UpdateProductImageAfterChangeImage);
        VIwrap.addEventListener('dragover', function (e) {
            e.preventDefault();
        });
        VI_Element.addEventListener('dragenter', (event) => {
            event.preventDefault();
            VI_Element.classList.add('dragover');
        });
        VI_Element .addEventListener('dragleave', () => {
            VI_Element.classList.remove('dragover');
            console.log('dragleave');
        });
        VI_Element.addEventListener('drop', (event) => {
            event.preventDefault();
            VI_Element.classList.remove('dragover');
            UpdateProductImageAfterChangeImage(event);
        });
        table.addVI0toTable("", blackImgPath);
        ++cntVGI0element;
        ++VI_id_wrap0;
    }
    else {
        VI_wrap.insertAdjacentHTML('beforeend', `
        <div class="VI" id="VI1${VI_id_wrap1}">
            <input type="text" name="VI_name" onblur="renameVI1(this)" placeholder="Tên phân loại">
            <button class="btn Remove_VI" onclick="removeVI1(this)"><i class="fa-solid fa-x"></i></button>
        </div>
        `);
        if (cntVGI1element === 0)
            createTable();
        else table.addVI1toTable("");
        ++VI_id_wrap1;
        ++cntVGI1element;
    }
    // table.createTableByRows();
    showErrorInput(Enumerator.ADD_VARIANT);

}



//Xóa Varient Group Item (Nhóm phân loại)
function removeVGI() {
    let VGI_wrap = document.querySelector('#Sale_info .VGI_wrap');
    VGI_wrap.lastElementChild.remove();
    VGI_id--;

    if (VGI_id == 0) {
        document.querySelector('.SII_price').innerHTML = `
        <label for="Gia" class="Item_title">Giá</label>
        <input type="number" name="" id="Gia" placeholder="Giá tiền">
        `;
        document.querySelector('.SII_inventory').innerHTML = `
        <label for="KhoHang" class="Item_title">Kho hàng</label>
        <input type="number" name="Kho Hang" id="KhoHang" placeholder="Kho hàng">`;
        document.querySelector('.SII_list .SII_list_top').style.display = 'none';
        table.table.innerHTML = "";
    }
    else {
        document.querySelector('.SII_list .SII_list_top').style.display = 'flex';
        createTable();
    }
}

function ChangeImagePreview(div) {
    let input = div.querySelector('input');
    let img = div.querySelector('.img_Preview');
    let reader = new FileReader();
    reader.onload = function (e) {
        img.innerHTML = `<img src="${e.target.result}" alt="preview">`;
    }
    reader.readAsDataURL(input.files[0]);
}
let countImage = 0;

function createImgObject(imgpath){
    let imgobj = document.createElement('div');
    imgobj.classList.add("imgObject");
    let img = document.createElement('img');
    img.src = imgpath;
    let btnRemove = document.createElement('button');
    btnRemove.classList.add("btnRemove");
    btnRemove.classList.add("btn");
    btnRemove.innerHTML = '<i class="fa-solid fa-x"></i>';
    let btnPreview = document.createElement('button');
    btnPreview.className = "btnPreview";
    btnPreview.classList.add("btn");
    btnPreview.innerHTML = '<i class="fa-solid fa-search"></i>';

    imgobj.appendChild(img);
    imgobj.appendChild(btnRemove);
    btnRemove.addEventListener('click', function (e) {
        e.preventDefault();
        imgobj.parentElement.removeChild(imgobj);
        countImage--;
    });
    imgobj.appendChild(btnPreview);
    btnPreview.addEventListener('click', function () {
        createImagePreview(img.src);
    });
    return imgobj;
}


function AddProductImage(event) {
    event.preventDefault();
    let container = document.getElementById('image_preview');
    let file = event.type === 'drop' ? event.dataTransfer.files[0] : event.target.files[0];
    let reader = new FileReader();
    let imgobj;
    reader.onloadend = function (e) {
        imgobj = createImgObject(e.target.result);
        container.appendChild(imgobj);
        countImage++;
    }
    if (file) {
        reader.readAsDataURL(file);
    }
}

function AddProduct() {
    if(countImage < 4){
        showErrorToast("Warning", "Vui lòng thêm ít nhất 4 hình ảnh");
        return;
    }

    if(showErrorInput(Enumerator.SAVE_PRODUCT)){
        showErrorToast("Warning", "Vui lòng điền đầy đủ thông tin");
        return;
    }

    let data = [];
    let ProductName = document.querySelector('#product_name').value;
    let discount = parseFloat(document.querySelector('#discount').value) === null ? 0 : parseFloat(document.querySelector('#discount').value);
    let ProductCategory = document.querySelector('#category').value;
    let ProductDescription = document.querySelector('#product_description').value;
    let Variation1Name = document.querySelector('.VGI0 input[name="varient_group_name"]') != null ?
        document.querySelector('.VGI0 input[name="varient_group_name"]').value : "";
    let Variation2Name = document.querySelector('.VGI1 input[name="varient_group_name"]') != null ?
        document.querySelector('.VGI1 input[name="varient_group_name"]').value : "";
    let images = document.querySelectorAll('.imgObject img');
    let imageSrc = [];
    images.forEach((image) => {
        imageSrc.push(image.src.split(',')[1]);
    });

    if (Variation2Name === "") {
        Variation2Name = Variation1Name;
        Variation1Name = "";
    }
    data.push({
        ProductName: ProductName,
        ProductCategory: ProductCategory,
        ProductDescription: ProductDescription,
        Discount: discount,
        Variation1: Variation1Name,
        Variation2: Variation2Name,
        Images: imageSrc
    });

    if (document.getElementById("myTable").rows.length > 0) {
        let ProductRows = table.table.rows;
        const rowSpan = table.table.rows[1].cells[0].rowSpan;
        let VariationOption1Name = "";
        let cnt = 1;
        for (let i = 1; i < ProductRows.length; i++) {
            let cells = ProductRows[i].cells;
            let ProductItemImage = "";
            if (cells.length === 4) {
                VariationOption1Name = cells[0].innerText;
            }
            if(cnt % rowSpan === 1 || rowSpan === 1){
                ProductItemImage = cells[0].querySelector('img').src.split(',')[1];
            }
            cnt ++;
            let VariationOption1 = VariationOption1Name;
            let VariationOption2 = cells[cells.length - 3].innerText;
            let QtyInStock = cells[cells.length - 2].children[0].value;
            let Price = cells[cells.length - 1].children[0].value;

            data.push({
                VariationOption1: VariationOption1,
                VariationOption2: VariationOption2,
                ProductItemImage: ProductItemImage,
                QtyInStock: QtyInStock,
                Price: Price
            });
        }
        data.push({
            rowSpan: table.table.rows[1].cells[0].rowSpan
        })
    } else {
        let QtyInStock = document.getElementById("KhoHang").value;
        let Price = document.getElementById("Gia").value;
        data.push({
            VariationOption1: "",
            VariationOption2: "",
            QtyInStock: QtyInStock,
            Price: Price
        });
        data.push({
            rowSpan: 0
        })
    }


    fetch('/PBL3_1_war_exploded/seller/product/save', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body:
            JSON.stringify(data),
    })
        .then(response => response.json())
        .then(data => {
            let response = JSON.parse(data);
            console.log(response);
            if (response.status === "200") {
                showSuccessToast("Success", "Thêm sản phẩm thành công");
            } else {
                showErrorToast("Warning", "Thêm sản phẩm thất bại");
            }
        })
        .catch((error) => {
            console.error('Error:', error);
        });
}

function createOverlay() {
    let overlay = document.createElement('div');
    overlay.id = "overlay";
    overlay.style.position = "fixed";
    overlay.style.top = 0;
    overlay.style.left = 0;
    overlay.style.width = "100%";
    overlay.style.height = "100%";
    overlay.style.backgroundColor = "rgba(0,0,0,0.5)";
    overlay.style.display = "flex";
    overlay.style.justifyContent = "center";
    overlay.style.alignItems = "center";
    overlay.style.zIndex = "10000";
    overlay.addEventListener('click', function () {
        overlay.parentElement.removeChild(overlay);
    });
    document.body.appendChild(overlay);
    return overlay;
}

function createImagePreview(src) {
    let overlay = createOverlay();
    let imagePreview = document.createElement('div');
    imagePreview.id = "imagePreview";
    imagePreview.innerHTML = `
        <img src="${src}" alt="preview">
    `;
    overlay.appendChild(imagePreview);
}

$(document).ready(function () {
    $('#product_name').on("input", function () {
        let span = $('#span_for_name');
        if($(this).val().length > 120){
            $(this).val($(this).val().substring(0, 120));
            span.css( {
                color: 'red'
            });
        }
        span.text($(this).val().length + '/120');
    });

    $('#product_description').on("input", function () {
        let span = $('#span_for_description');
        if($(this).val().length > 3000){
            $(this).val($(this).val().substring(0, 3000));
            span.css( {
                color: 'red'
            });
        }
        span.text($(this).val().length + '/3000');
    });

    $('#discount').on("input", function () {
        if($(this).val().length > 2){
            $(this).val($(this).val().slice(0, 2));
        }
        // span.text($(this).val() + '%');
    });

    showErrorInput(Enumerator.ADD_VARIANT_GROUP);
});

const Enumerator = Object.freeze({
    SAVE_PRODUCT: 0,
    ADD_VARIANT_GROUP: 1,
    ADD_VARIANT: 2
});

function showErrorInput(e){

    let check = false;
    if(e == Enumerator.SAVE_PRODUCT){
        let inputs = $(".AddProduct_content input");
        inputs.each(function () {
            if ($(this).val().length === 0) {
                if(!($(this).attr("id") == "inventory" || $(this).attr("id") == "price")){
                    $(this).css({
                        borderColor: 'red'
                    });
                    check = true;
                }
            } else {
                $(this).css({
                    borderColor: 'black'
                });
            }
        });
    }else {
        let inputs = $(".AddProduct_content input");
        inputs.each(function () {
            $(this).on("input", function () {
                if($(this).val().length === 0){
                    $(this).css({
                        borderColor: 'red'
                    });
                }else{
                    $(this).css({
                        borderColor: 'black'
                    });
                }
            });
        });
    }

    return check;
}






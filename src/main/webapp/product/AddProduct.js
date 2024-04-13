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
                // Update the last 3 cells of the first row with the values of the next row
                // for (let j = 1; j <= 3; j++) {
                //     this.table.rows[i].cells[this.table.rows[i].cells.length - j].innerHTML = this.table.rows[i + 1].cells[this.table.rows[i + 1].cells.length - j].innerHTML;
                // }
                this.table.rows[i].cells[1].innerHTML = this.table.rows[i + 1].cells[0].innerHTML;
                this.table.rows[i].cells[2].children[0].value = this.table.rows[i + 1].cells[1].children[0].value;
                this.table.rows[i].cells[3].children[0].value = this.table.rows[i + 1].cells[2].children[0].value;
                // Delete the next row
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
        this.table.rows[index * curRowspan + 1].cells[0].innerHTML = newName + this.table.rows[index * curRowspan + 1].cells[0].innerHTML;
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
}

function UpdateProductImageAfterChangeImage(input) {
    let file = input.files[0];
    let reader = new FileReader();
    let VI = input.parentElement;
    reader.onloadend = function () {
        VI.querySelector(`label img`).src = reader.result;
    }
    if (file) {
        reader.readAsDataURL(file);
    } else {
        VI.querySelector(`label img`).src = "./img/Logo/insert-picture-icon.png";
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
    table.renameVI0ByIndex(index, input.value);
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
        <div class="VI" id="VI0${VI_id_wrap0}">
              <label for="VI_img${cntVGI0element}">
                <img src="./img/Logo/insert-picture-icon.png" alt="preview">
              </label>
              <input type="file" name="VI_img" class="VI_img" onchange="UpdateProductImageAfterChangeImage(this)" id="VI_img${cntVGI0element}">
              <input type="text" name="VI_name" id="VI_name" onblur="renameVI0(this)" placeholder="Tên phân loại">
              <button class="btn Remove_VI" onclick="removeVI0(this)"><i class="fa-solid fa-x"></i></button>
        </div>
      `);
        table.addVI0toTable("", './img/Logo/insert-picture-icon.png');
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

//Thay đổi ảnh bìa sau khi được chọn
document.getElementById('product_image').addEventListener('change', function (e) {
    var file = e.target.files[0];
    var reader = new FileReader();
    reader.onloadend = function () {
        document.querySelector('label[for="product_image"] img').src = reader.result;
    }
    if (file) {
        reader.readAsDataURL(file);
    }
});

function ChangeImagePreview(div) {
    let input = div.querySelector('input');
    let img = div.querySelector('.img_Preview');
    let reader = new FileReader();
    reader.onload = function (e) {
        img.innerHTML = `<img src="${e.target.result}" alt="preview">`;
    }
    reader.readAsDataURL(input.files[0]);
}



function AddProduct() {
    let data = [];
    let ProductName = document.querySelector('#product_name').value;
    let discount = parseFloat(document.querySelector('#discount').value);
    let ProductImage = document.querySelector('#product_image').src;
    let ProductCategory = document.querySelector('#category').value;
    let ProductDescription= document.querySelector('#product_description').value;
    // let table = document.querySelector('#myTable th ');
    let Variation1Name = document.querySelector('.VGI0 input[name="varient_group_name"]').value;
    let Variation2Name = document.querySelector('.VGI1 input[name="varient_group_name"]').value;

    // let ProductImage = document.getElementById('ProductImage').src;
    data.push({
        ProductName: ProductName,
        ProductImage: ProductImage,
        ProductCategory: ProductCategory,
        ProductDescription: ProductDescription,
        Discount : discount,
        Variation1 : Variation1Name,
        Variation2 : Variation2Name,
    });
    let ProductRows = table.table.rows;
    let VariationOption1Name = "";
    for (let i = 1; i < ProductRows.length; i++) {
        let cells = ProductRows[i].cells;
        if (cells.length === 4) {
            VariationOption1Name = cells[0].innerText;
        }
        let VariationOption1 = VariationOption1Name;
        let VariationOption2 = cells[cells.length - 3].innerText;
        let QtyInStock = cells[cells.length - 2].children[0].value;
        let Price = cells[cells.length - 1].children[0].value;

        data.push({
            VariationOption1: VariationOption1,
            VariationOption2: VariationOption2,
            QtyInStock: QtyInStock,
            Price: Price
        });
    }
    console.log(JSON.stringify(data));
    fetch('/PBL3_1_war_exploded/product/save', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body:
            JSON.stringify(data),
    })
        .then(response => response.json())
        .then(data => {
            console.log('Success:', data);
        })
        .catch((error) => {
            console.error('Error:', error);
        });
}

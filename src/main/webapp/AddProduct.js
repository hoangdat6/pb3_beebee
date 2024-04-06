//Thay đổi ảnh bìa sau khi được chọn
document.getElementById('product_image').addEventListener('change', function(e) {
  var file = e.target.files[0];
  var reader = new FileReader();
  reader.onloadend = function() {
      document.querySelector('label[for="product_image"] img').src = reader.result;
  }
  if (file) {
      reader.readAsDataURL(file);
  } else {
      document.querySelector('label[for="product_image"] img').src = "./img/Logo/insert-picture-icon.png";
  }
});

// document.getElementById('product_image').addEventListener('change', function(e) {
//   var files = e.target.files;
//   var preview = document.getElementById('image_preview');
//   for (var i = 0; i < files.length; i++) {
//       var file = files[i];
//       var reader = new FileReader();
//       reader.onloadend = function() {
//           var img = document.createElement('img');
//           img.src = reader.result;
//           preview.appendChild(img);
//       }
//       reader.readAsDataURL(file);
//   }
// });

class ProductTable {
  constructor(category1, category2, tableId) {
    this.category1 = category1;
    this.category2 = category2;
    this.table = document.getElementById(tableId);
  }

  generateTable() {
      if (VGI_id == 2)
      {
        // Xóa toàn bộ bảng chỉ giữ lại header
      this.table.innerHTML = `<tr>
      <th>Phân loại 1</th>
      <th>Phân loại 2</th>
      <th>Kho Hàng</th>
      <th>Giá tiền</th>
      </tr>`;
      
      // Lặp qua tất cả phân loại 1
      for (let i = 0; i < this.category1.length; i++) {
        // Lặp qua tất cả phân loại 2
        for (let j = 0; j < this.category2.length; j++) {
          // Tạo hàng mới
          let row = this.table.insertRow();

          // Thêm rowspan cho phân loại 1 nếu là hàng đầu tiên của phân loại 2
          if (j === 0) {
            // Add the category1 element
            let cell1 = row.insertCell();
            cell1.innerHTML = `${this.category1[i].name}  <img src="${this.category1[i].imgSrc}" alt="${this.category1[i].name}">`;
            cell1.rowSpan = this.category2.length;
          }

          // Thêm phân loại 2
          let cell2 = row.insertCell();
          cell2.innerHTML = this.category2[j];

          // Thêm hàng kho hàng và giá tiền
          let cell3 = row.insertCell();
          cell3.innerHTML = '<input type="number" placeholder="Kho Hàng">'; 
          let cell4 = row.insertCell();
          cell4.innerHTML = '<input type="number" placeholder="Giá tiền">'; 
        }
      }
    }
    else 
    {
      this.table.innerHTML = `<tr>
      <th>Phân loại 1</th>
      <th>Kho Hàng</th>
      <th>Giá tiền</th>
      </tr>`;
      
      // Iterate over category1
      for (let i = 0; i < this.category1.length; i++) {
        // Create a new row
        let row = this.table.insertRow();

        // Add the category1 element
        let cell1 = row.insertCell();
        cell1.innerHTML = `${this.category1[i].name}  <img src="${this.category1[i].imgSrc}" alt="${this.category1[i].name}">`;

        // Add cells for Kho Hàng and Giá tiền
        let cell2 = row.insertCell();
        cell2.innerHTML = '<input type="number" placeholder="Kho Hàng">'; // Replace with actual data
        let cell3 = row.insertCell();
        cell3.innerHTML = '<input type="number" placeholder="Giá tiền">'; // Replace with actual data
    }
  }
}
}

//Cập nhật lại thông tin của table danh sách phân loại sản phẩm
function generateProductTable() {
  let category1 = Array.from(document.querySelectorAll(".VGI1 .VI")).map((vi) => {
    return {
      name: vi.querySelector("input[name='VI_name']").value,
      imgSrc: vi.querySelector("img").src
    };
  });

  let category2 = Array.from(document.querySelectorAll(".VGI2 .VI input[name='VI_name']")).map((input) => input.value);

  let productTable = new ProductTable(category1, category2, "myTable");
  productTable.generateTable();
}

//Đánh dấu phân biệt giữa nhóm phân loại 1 và nhóm phân loại 2
let VGI_id = 0;
//Thêm nhóm phân loại
function AddVarientGroup()
{
  document.querySelector('.SII_content_wrap .SII_list_top').style.display = 'flex';
  if (document.querySelector('.SII_price') != null)
  {
    document.querySelector('.SII_price').innerHTML = "";
    document.querySelector('.SII_inventory').innerHTML = "";
  }
    if(VGI_id >= 2) return;
    ++VGI_id;
    let VGI_wrap = document.querySelector('#Sale_info .VGI_wrap');
    let id = 'VI_wrap' + (VGI_id);
    //Với nhóm phân loại chính (Nhóm phân loại 1)
    if (VGI_id == 1)
    {
      VGI_wrap.insertAdjacentHTML('beforeend', `
        <div class="VGI VGI${VGI_id}">
          <input type="text" name="varient_group_name" placeholder="Nhóm phân loại">
          <button class="btn btnAddVarient" onclick="AddVarient('${id}')">Thêm phân loại</button>
          <button class="btn Remove_VGI" onclick="removeVGI(this)"><i class="fa-solid fa-x"></i></button>
          <div class="VI_wrap" id="${id}">
          </div>
      </div>
    `);
    }
    else
    {
      //Nhóm phân loại phụ (Nhóm phân loại 2)
      VGI_wrap.insertAdjacentHTML('beforeend', `
        <div class="VGI VGI${VGI_id}">
          <input type="text" name="varient_group_name" placeholder="Nhóm phân loại">
          <button class="btn btnAddVarient" onclick="AddVarient('${id}')">Thêm phân loại</button>
          <button class="btn Remove_VGI" onclick="removeVGI(this)"><i class="fa-solid fa-x"></i></button>
          <div class="VI_wrap" id="${id}">
          </div>
      </div>
    `);
    }
    AddVarient(id);
}

let cntVGI1element = 0;

//Thêm phân loại vào nhóm phân loại
function AddVarient(id){
    let VI_wrap = document.getElementById(id);
    //Thêm mới một phân loại (Varient Item)
    if (id == 'VI_wrap1')
    {
      ++cntVGI1element;
      VI_wrap.insertAdjacentHTML('beforeend', `
      <div class="VI">
              <label for="VI_img${cntVGI1element}">
                <img src="./img/Logo/insert-picture-icon.png" alt="preview">
              </label>
              <input type="file" name="VI_img${cntVGI1element}" class="VI_img" id="VI_img${cntVGI1element}">
              <input type="text" name="VI_name" placeholder="Tên phân loại">
              <button class="btn Remove_VI" onclick="removeVI(this)"><i class="fa-solid fa-x"></i></button>
            </div>
      `);
    }
    else
    {
      VI_wrap.insertAdjacentHTML('beforeend', `
      <div class="VI">
        <input type="text" name="VI_name" placeholder="Tên phân loại">
        <button class="btn Remove_VI" onclick="removeVI(this)"><i class="fa-solid fa-x"></i></button>
      </div>
      `);
    }
    // Thêm lắng nghe sự kiện cho tất cả thẻ input trong mỗi phân loại (Varient Item)
    let inputs = document.querySelectorAll('.VI input');
    inputs.forEach(input => {
      input.addEventListener('blur', generateProductTable);
      if(input.type === 'file') {
        input.addEventListener('change', function(e) {
            var file = e.target.files[0];
            var reader = new FileReader();
            reader.onloadend = function() {
                document.querySelector(`label[for="${e.target.id}"] img`).src = reader.result;
            }
            if (file) {
                reader.readAsDataURL(file);
            } else {
                document.querySelector(`label[for="${e.target.id}"] img`).src = "./img/Logo/insert-picture-icon.png";
            }
        });
      }
    });
    generateProductTable();
}

//Xóa Varient Group Item (Nhóm phân loại)
function removeVGI(element) {
    element.parentElement.remove();
    --VGI_id;
    generateProductTable();
    if (VGI_id == 0)
    {
      document.querySelector('.SII_price').innerHTML = `<input type="number" id="price" placeholder="Giá tiền">`;
      document.querySelector('.SII_inventory').innerHTML = `<input type="number" id="inventory" placeholder="Kho hàng">`;
      document.querySelector('.SII_content_wrap .SII_list_top').style.display = 'none';
    }
}

//Xóa Varient Item (Phân loại) trong Varient Group Item (Nhóm phân loại)
function removeVI(element) {
    element.parentElement.remove();
    generateProductTable();
}

//Áp dụng giá trong price và kho hàng trong inventory cho tất cả các sản phẩm
function ApplyPriceAndInventoryAll(){
  let table = document.getElementById("myTable");
  let rows = table.rows;
  for (let i = 1; i < rows.length; i++) {
    let cells = rows[i].cells;
    cells[cells.length - 2].children[0].value = document.getElementById("inventory").value;
    cells[cells.length - 1].children[0].value = document.getElementById("price").value;
  }
}


function ChangeImagePreview(div)
{
  let input = div.querySelector('input');
  let img = div.querySelector('.img_Preview');
  let reader = new FileReader();
  reader.onload = function(e) {
    img.innerHTML = `<img src="${e.target.result}" alt="preview">`;
  }
  reader.readAsDataURL(input.files[0]);
}



// class ProductItem {
//     constructor(id, variation1, variation2, inventory, price) {
//         this.id = id;
//         this.variation1 = variation1;
//         this.variation2 = variation2;
//         this.inventory = inventory;
//         this.price = price;
//     }
//     setId(id) {
//         this.id = id;
//     }
//     setVariation1(variation1) {
//         this.variation1 = variation1;
//     }
//     setVariation2(variation2) {
//         this.variation2 = variation2;
//     }
//     setInventory(inventory) {
//         this.inventory = inventory;
//     }
//     setPrice(price) {
//         this.price = price;
//     }
// }


let VGI_id = 0;
function AddVariantGroup(){
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
    if (VGI_id === 1)
    {
        VGI_wrap.insertAdjacentHTML('beforeend', `
        <div class="VGI VGI${VGI_id}">
          <input type="text" name="varient_group_name" placeholder="Nhóm phân loại">
          <button class="btn btnAddVarient" onclick="AddVariant('${id}')">Thêm phân loại</button>
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
          <button class="btn btnAddVarient" onclick="AddVariant('${id}')">Thêm phân loại</button>
          <button class="btn Remove_VGI" onclick="removeVGI(this)"><i class="fa-solid fa-x"></i></button>
          <div class="VI_wrap" id="${id}">
          </div>
      </div>
    `);
    }

    AddVariant(id);
}

function AddVariant(id){
    let VI_wrap = document.getElementById(id);
    //Thêm mới một phân loại (Variant Item)
    if (id === 'VI_wrap1')
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
    // Thêm lắng nghe sự kiện cho tất cả thẻ input trong mỗi phân loại (Variant Item)
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

function updateProductTable() {
    let productTable = document.querySelector('#myTable tbody');
    let productItems = Array.from(productTable.children);

    console.log(productItems);

}

let id_product = 0;
let productItemArray = [];



function generateProductTable() {
    let category1 = Array.from(document.querySelectorAll(".VGI1 .VI")).map((vi) => {
        return {
            name: vi.querySelector("input[name='VI_name']").value,
            imgSrc: vi.querySelector("img").src
        };
    });

    let category2 = Array.from(document.querySelectorAll(".VGI2 .VI input[name='VI_name']")).map((input) => input.value);

    for(let i = 0; i < category1.length; i++) {
        let productItemArray1 = [];
        if(category2.length === 0) {
            let productItem = new ProductItem(id_product++, category1[i].name, "", 0, 0);
            productItemArray1.push(productItem);
        }else {
            for(let j = 0; j < category2.length; j++) {
                let productItem = new ProductItem(id_product++, category1[i].name, category2[j], 0, 0);
                productItemArray1.push(productItem);
            }
        }
        productItemArray.push(productItemArray1);
    }

    console.log(productItemArray);
    productItemArray = [];
}







<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <!-- <script src="https://code.iconify.design/iconify-icon/1.0.8/iconify-icon.min.js"></script> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<!--Header contain navigation-->

<body>
<header id="Header">
  <div class="Header-Top">
    <div class="Header-Top__item1">Chúng tôi giao hàng mỗi ngày từ <span class="orange-bold">7:00</span> đến
      <span class="orange-bold">23:00</span></div>
    <div class="Header-Top__item2">Bạn đang ở kênh mua hàng! <a href="#" class="orange-bold">Chuyển qua kênh người
      bán?</a></div>
  </div>
  <div class="Header-Bot">
    <div class="Header-Bot__left">
      <img class="Logo" src="img/Logo/Logo.png" alt="Logo">
      <form action="/search" method="get">
        <label for="search"></label>
        <input type="search" id="search" name="q"
               placeholder="Tìm kiếm theo sản phẩm, phân loại và thương hiệu">
        <i class="fa-solid fa-magnifying-glass"></i>
      </form>
    </div>

    <ul class="Header-Bot__right">
      <li class="Header-Bot__Account">
        <i class="fa-solid fa-user"></i>
        Tài khoản
      </li>
      <li class="Header-Bot__Cart">
        <i class="fa-solid fa-cart-shopping"></i>
        Giỏ hàng
      </li>
      <li class="Header-Bot__Announce">
        <i class="fa-solid fa-bell"></i>
        Thông báo
      </li>
    </ul>
  </div>
</header>
<div id="Slider">
  <div class="Slider-container">
    <span class="Slider-container__lable">Ưu đãi cuối tuần</span>
    <h2 class="Slider-container__main">Mua sắm cùng chúng tôi để có chất lượng tốt hơn và giá tốt nhất.</h2>
    <p class="Slider-container__slogan">Chúng tôi đã chuẩn bị những ưu đãi đặc biệt cho bạn trên các sản phẩm
      tiêu dùng. Đừng bỏ lỡ những cơ hội này...</p>
    <button class="btn Slider-container__btn">Khám phá ngay</button>
    <div class="Price">
      <div class="Price-Cost">
                <span class="new-Price">
                  120.000₫
                </span>
        <span class="old-Price">
                    240.000₫
                </span>
      </div>
      <div class="clear"></div>
      <div class="Price-desc">
        Đừng bỏ lỡ, thời gian khuyến mại có hạn
      </div>
    </div>
    <div class="clear"></div>
  </div>
  <div class="clear"></div>
</div>
<div id="Content">
  <div class="Category">
    <p class="Category-Title">
      Danh mục
    </p>
    <div class="Card-Container">
      <div class="Category-Card">
        <img src="img/Product/T-Shirt.jpeg" alt="Thời trang">
        <p class="Card-Desc">
          Thời trang
        </p>
      </div>
      <div class="Category-Card">
        <img src="img/Product/T-Shirt.jpeg" alt="Thời trang">
        <p class="Card-Desc">
          Thời trang
        </p>
      </div>
      <div class="Category-Card">
        <img src="img/Product/T-Shirt.jpeg" alt="Thời trang">
        <p class="Card-Desc">
          Thời trang
        </p>
      </div>
      <div class="Category-Card">
        <img src="img/Product/T-Shirt.jpeg" alt="Thời trang">
        <p class="Card-Desc">
          Thời trang
        </p>
      </div>
      <div class="Category-Card">
        <img src="img/Product/T-Shirt.jpeg" alt="Thời trang">
        <p class="Card-Desc">
          Thời trang
        </p>
      </div>
      <div class="Category-Card">
        <img src="img/Product/T-Shirt.jpeg" alt="Thời trang">
        <p class="Card-Desc">
          Thời trang
        </p>
      </div>
      <div class="Category-Card">
        <img src="img/Product/T-Shirt.jpeg" alt="Thời trang">
        <p class="Card-Desc">Avatar
          Thời trang
        </p>
      </div>
    </div>

  </div>
  <!-- Khu vực "DÀNH RIÊNG CHO BẠN" -->
  <div class="Product">
    <div class="Title-Container">
      <div class="Title-Desc">
        <h3>Dành riêng cho bạn</h3>
        <p>Sản phẩm mới với mức giá tốt nhất</p>
      </div>
      <button class="btn">View All <i class="fa-solid fa-arrow-right"></i></button>
    </div>
    <div class="Product-List pad-l-r-170 pad-t-b-30">
      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>

      <div class="Product-Card">
        <div class="Product-Image">
          <span class="Hot">Hot</span>
          <span class="Discount">- 50%</span>
        </div>
        <div class="Product-Desc">
          <h3>Áo thun nữ co dãn</h3>
          <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
          <div class="Brand-Avatar"></div>
          <label for="Brand-Avatar">Tên Shop</label>
          <div class="clear"></div>
          <div class="Line"></div>
          <div class="Product-Bot-Container">
            <div class="Product-Price">
                  <span class="new-Price">
                    120.000₫
                  </span>
              <span class="old-Price">
                      240.000₫
                  </span>
            </div>
            <div class="Product-Button">
              <i class="fa-regular fa-heart"></i>
              <i class="fa-solid fa-cart-shopping"></i>
            </div>
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="Title-Container">
    <div class="Title-Desc">
      <h3>Sản phẩm hàng đầu</h3>
      <p>Các sản phẩm bán chạy và đánh giá cao</p>
    </div>
    <button class="btn">View All <i class="fa-solid fa-arrow-right"></i></button>
  </div>
  <div class="Product-List pad-l-r-170 pad-t-b-30">
    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>

    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>

    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>

    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>

    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>

    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>

    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>

    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>

    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>

    <div class="Product-Card">
      <div class="Product-Image">
        <span class="Hot">Hot</span>
        <span class="Discount">- 50%</span>
      </div>
      <div class="Product-Desc">
        <h3>Áo thun nữ co dãn</h3>
        <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
        <div class="Brand-Avatar"></div>
        <label for="Brand-Avatar">Tên Shop</label>
        <div class="clear"></div>
        <div class="Line"></div>
        <div class="Product-Bot-Container">
          <div class="Product-Price">
                <span class="new-Price">
                  120.000₫
                </span>
            <span class="old-Price">
                    240.000₫
                </span>
          </div>
          <div class="Product-Button">
            <i class="fa-regular fa-heart"></i>
            <i class="fa-solid fa-cart-shopping"></i>
          </div>
          <div class="Product-Evaluation">
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-solid fa-star"></i>
            <i class="fa-regular fa-star"></i>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</div>
<footer id="Footer">
  <div class="Footer-Support">
    <p class="Footer-Support__Label Footer-Title">Bạn cần hỗ trợ?</p>
    <div class="Footer-Support__Contact">
      <div class="Phone-Number__Container">
        <i class="fa-solid fa-phone-volume"></i>
        <p class="time"> Thứ 2 - Chủ nhật: 08:00 - 21:00</p>
        <p class="PhoneNumber">097 xxx xxxx</p>
      </div>

      <div class="Email__Container">
        <i class="fa-solid fa-envelope"></i>
        <p class="Email__Container-Email">vulinhtruongxxx@gmail.com</p>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <ul class="Footer-Policy">
    <li class="Footer-Title">Hãy để chúng tôi giúp bạn</li>
    <li><a href="#">Khả năng tiếp cận</a></li>
    <li><a href="#">Đơn hàng của bạn</a></li>
    <li><a href="#">Trả hàng &amp; Hoàn tiền</a></li>
    <li><a href="#">Chính sách giao hàng</a></li>
    <li><a href="#">Chính sách quyền riêng tư</a></li>
    <li><a href="#">Điều khoản &amp; Điều kiện</a></li>
    <li><a href="#">Cài đặt Cookie</a></li>
    <li><a href="#">Trung tâm trợ giúp</a></li>
  </ul>
  <ul class="Footer-About">
    <li class="Footer-Title">Về chúng tôi</li>
    <li><a href="#">Đánh giá của đối tác</a></li>
    <li><a href="#">Trách nhiệm pháp lí</a></li>
    <li><a href="#">Trách nhiệm xã hội</a></li>
    <li><a href="#">Lịch sử pháp triển</a></li>
  </ul>
  <div class="Footer-Social">
    <p class="Footer-Title">Theo dõi chúng tôi</p>
    <div class="Social-Container">
      <a href="#"><i class="fa-brands fa-square-facebook"></i></a>
      <a href="#"><i class="fa-brands fa-youtube"></i></a>
      <a href="#"><i class="fa-brands fa-tiktok"></i></a>
      <a href="#"><i class="fa-brands fa-linkedin"></i></a>
    </div>
  </div>
</footer>
</body>

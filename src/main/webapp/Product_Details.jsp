<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Product Details</title>
  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" type="text/css" href="Product-Detail.css">
  <link rel="stylesheet" type="text/css" href="Top-Bar.css">
  <link rel="stylesheet" type="text/css" href ="Footer.css">
  <link rel="stylesheet" type="text/css" href = "CommonCSS.css">
  <!-- <script src="https://code.iconify.design/iconify-icon/1.0.8/iconify-icon.min.js"></script> -->
<%--  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
  <script type="text/javascript" src="main.js"></script>
</head>

<!--Header contain navigation-->

<body>
  <%-- Header  --%>
  <%@ include file="Top-Bar.jsp" %>

  <div id="PD-Content">
      <div class="Product_Loop">
        <div class="Product_Loop-left">
          <div class="Product_Loop-Image">
            <div class="Main-Image">
              <span class="Hot">Hot</span>
              <span class="Sale">-50%</span>
            </div>
            <div class="Secondary-Image">
              <img src="img/Product-Details/img-1.jpeg" alt="#">
              <img src="img/Product-Details/img-2.jpeg" alt="#">
              <img src="img/Product-Details/img-3.jpeg" alt="#">
              <i class="fa-solid fa-chevron-right Next"></i>
            </div>
          </div>
        </div>
        <div class="Product_Loop-right">
          <div class="Product-Content">
            <div class="Product-Evaluation">
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-solid fa-star"></i>
              <i class="fa-regular fa-star"></i>
              <span>16k lượt đánh giá</span>
            </div>
            <h3 id="Product-Name">Bàn xách tay</h3>
            <p class="Short-Desc">
              Mô tả ngắn
            </p>
            <div class="Product-Price">
              <span class="new-Price">
                120.000₫
              </span>
              <span class="old-Price">
                  240.000₫
              </span>
            </div>
            <div class="Product-Category">
              <button class="btn Category-Choice">Chọn loại   <i class="fa-solid fa-chevron-right"> <br></i></button>
              <div class="Category-Image">
                <img src="img/Product-Details/Category-1.jpeg" alt="#">
                <img src="img/Product-Details/Category-2.jpeg" alt="#">
                <img src="img/Product-Details/Category-3.jpeg" alt="#">
                <img src="img/Product-Details/Category-4.jpeg" alt="#">
              </div>
            </div>
          </div>
          <div class="Product_Loop-Button">
            <div class="Qty">
              <button class="btn Qty__Minus" onclick="decreaseQuantity()"><i class="fa-solid fa-minus"></i></button>
              <input class="btn Qty__Input" type="number" value="1" min="1">
              <button class="btn Qty__Plus" onclick="increaseQuantity()"><i class="fa-solid fa-plus"></i></button>
            </div>
            <div class="Add-to-Cart Same" >
                <i class="fa-solid fa-cart-shopping"></i>
                <p>Thêm vào giỏ hàng</p>
            </div>
            <div class="Add-to-Favorite Same">
              <i class="fa-regular fa-heart"></i>
              <p>Yêu thích</p>
            </div>
          </div>
          <button class="btn Buy">Mua ngay</button>
          <div class="Product-Menu">
            Danh mục
            <span> Nội Thất</span>
          </div>
          <div class="Product-Info" >
              <div class="Heading-Container" style="display: flex; justify-content:space-between">
                <h3>Thông tin thêm về sản phẩm</h3>
                <i class="fa-solid fa-chevron-right"></i>
              </div>
              <div class="Product-Info__Detail mg-bot-15">
                <h4 class="mg-bot-10">Chi Tiết</h4>
                <p>Lorem Ispum</p>
              </div>
              <div class="Product-Info__Size mg-bot-15">
                <h4 class="mg-bot-10">Kích thước</h4>
                <p>Chiều dài: 20 <br> Chiều cao: 1 ½ <br> Độ dày: 21 ½ <br>
                  Cân nặng: 7 lb 8 oz <br>
                  Số lượng: 1</p>
              </div>
          </div>
        </div>
        
      </div>
      <div class="Shop">
        <img src="img/Brand/Coffee.jpeg" alt="Logo Shop">
        <div class="Shop-Content">
          <h3>Tên Shop</h3>
          <div class="Shop-Evaluation">
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-solid fa-star"></i>
          <i class="fa-regular fa-star"></i>
          <span>16k lượt đánh giá</span>
          </div>
        </div>
      </div>
      <div class="Tabs pad-l-r-170">
        <div class="Tabs-Menu">
          <button class="Tabs-Menu__Item1 btn">Thông tin chi tiết về sản phẩm</button>
          <button class="Tabs-Menu__Item2 btn">Câu hỏi</button>
          <button class="Tabs-Menu__Item3 btn">Đánh giá</button>
        </div>
        <div class="Review-Section">
          <h3>11 Đánh giá</h3>
          <button class="btn" style="display: flex; justify-content:space-between; width: 256px;">
            <span>Mới nhất</span>
            <i class="fa-solid fa-chevron-down"></i>
          </button>
          
          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>
          
          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

          <div class="Review-Item">
            <img class="Review-Item__Avatar" src="img/Product-Details/Review-Avatar-1.jpeg" alt="Avatar">
            <div class="Review-Item--Content">
              <h4 class="Review-Item__Name">Sofia Havetz</h4>
              <div class="Review-Item__Evaluation">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>
              </div>
              <p class="Review-Item__Comment">I bought it 3 weeks ago and now come back just to say “Awesome Product”. I really enjoy it. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupt et quas molestias excepturi sint non provident.</p>
              <div class="Review-Respond">
                <button class="btn"><i class="fa-regular fa-thumbs-up"></i> Like</button>
                <button class="btn"><i class="fa-regular fa-comment-dots"></i> Reply</button>
              </div>
            </div>
          </div>

        </div>
        <button class="See-More">Xem thêm</button>
      </div>

      <div class="Similar_Product pad-l-r-170">
        <h3>Sản phẩm tương tự</h3>
        <span>Nhiều sản phẩm hơn ></span>
        <div class="line"></div>
        <div class="Product-List" style="background: #fff;">
          <div class="Product-Card">
            <div class="Product-Image">
              <span class="Hot">Hot</span>
              <span class="Discount">- 50%</span>
            </div>
            <div class="Product-Desc">
              <%--@declare id="pd-brand-avatar"--%>
                <h3>Áo thun nữ co dãn</h3>
              <p class="Character">Lorem ipsum dolor sit amet .Lorem ipsum dolor sit amet consectetur.</p>
              <div class="PD-Brand-Avatar"></div>
              <label for="PD-Brand-Avatar">Tên Shop</label>
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
              <div class="PD-Brand-Avatar"></div>
              <label for="PD-Brand-Avatar">Tên Shop</label>
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
              <div class="PD-Brand-Avatar"></div>
              <label for="PD-Brand-Avatar">Tên Shop</label>
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
        <button class = "btn"> <i class="fa-solid fa-chevron-right"></i> </button>
      </div>
  </div>
  <%@ include file="Footer.jsp" %>
</body>

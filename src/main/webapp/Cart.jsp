<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Giỏ Hàng</title>
  <link rel="stylesheet" type="text/css" href="CommonCSS.css">
  <link rel="stylesheet" type="text/css" href="Top-Bar.css">
  <link rel="stylesheet" type="text/css" href = "Footer.css">
  <link rel="stylesheet" type="text/css" href="style.css">
  <link rel="stylesheet" href="Cart.css">
  <script type="text/javascript" src="main.js"></script>
  <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>

</head>

<body class="Color-White">
    <%@ include file="Top-Bar.jsp" %>
    <div id="Cart_Header">
        <h3 class="Cart_Title">
            Cart
        </h3>
        <div class="Process_Container">
            <div class="Process_Item">
                <span class="Process_Item-Number">1</span>
                <span class="Process_Item-Title">
                    Giỏ hàng
                </span>
            </div>
            <div class="clear"></div>

            <div class="Process_Item">
                <span class="Process_Item-Number">2</span>
                <span class="Process_Item-Title">
                    Chi tiết thanh toán
                </span>
            </div>
            <div class="clear"></div>

            <div class="Process_Item">
                <span class="Process_Item-Number">3</span>
                <span class="Process_Item-Title">
                    Hoàn tất đơn hàng
                </span>
            </div>
            <div class="clear"></div>

        </div>
    </div>

    <div id="Cart_Content">
        <main class="Cart_Table">
            <div class="Table_Header">
                <span class="Table_Header-Item Table_Header-Product">Sản phẩm</span>
                <span class="Table_Header-Item">Số lượng</span>
                <span class="Table_Header-Item">Đơn giá</span>
                <span class="Table_Header-Item">Tổng cộng</span>
            </div>

            <div class="Table_Content">
                <div class="Shop_Products">
                    <div class="Shop_Products-Header">
                        <input type="checkbox" name="Shop" id="ShopPick">
                        <img src="img/Brand/Coffee.jpeg" alt="Shop">
                        <span class="Shop_Name">Ten Shop</span>
                        <i></i>
                    </div>

                    <div class="Shop_Products-Content">

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="Shop_Products">
                    <div class="Shop_Products-Header">
                        <input type="checkbox" name="Shop" id="ShopPick">
                        <img src="img/Brand/Coffee.jpeg" alt="Shop">
                        <span class="Shop_Name">Ten Shop</span>
                        <i></i>
                    </div>

                    <div class="Shop_Products-Content">

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                    </div>
                </div>
                
                <div class="Shop_Products">
                    <div class="Shop_Products-Header">
                        <input type="checkbox" name="Shop" id="ShopPick">
                        <img src="img/Brand/Coffee.jpeg" alt="Shop">
                        <span class="Shop_Name">Ten Shop</span>
                        <i></i>
                    </div>

                    <div class="Shop_Products-Content">

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="Shop_Products">
                    <div class="Shop_Products-Header">
                        <input type="checkbox" name="Shop" id="ShopPick">
                        <img src="img/Brand/Coffee.jpeg" alt="Shop">
                        <span class="Shop_Name">Ten Shop</span>
                        <i></i>
                    </div>

                    <div class="Shop_Products-Content">

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="Shop_Products">
                    <div class="Shop_Products-Header">
                        <input type="checkbox" name="Shop" id="ShopPick">
                        <img src="img/Brand/Coffee.jpeg" alt="Shop">
                        <span class="Shop_Name">Ten Shop</span>
                        <i></i>
                    </div>

                    <div class="Shop_Products-Content">

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                        <div class="Shop_Products-Cell">
                            <img class="Cell_Col_1" src="img/Product-Details/Category-1.jpeg" alt="Product Imge">
                            <div class="Cell_Col_2">
                                <p class="Item-Name">Bàn xách tay</p>
                                <p class="Item-Category">
                                    Loại: Đen
                                </p>
                                <a class="Item-Remove" href="">
                                    <i class="fa-solid fa-x"></i>
                                    Xóa khỏi giỏ hàng
                                </a>
                            </div>
                            <div class="Cell_Col_3">
                                <div class="Item-Qty">
                                    <button class="Item-Qty--Plus btn" onclick="increaseQuantity(this)"><i class="fa-solid fa-plus"></i></button>
                                    <input class="btn Qty__Input" value="1" min="1">
                                    <button class="Item-Qty--Minus btn" onclick="decreaseQuantity(this)"><i class="fa-solid fa-minus"></i></button>
                                </div>

                                <span class="Item-Unit_Price">
                                    150.000₫
                                </span>

                                <span class="Item-Total_Price">
                                    300.000₫
                                </span>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </main>

        <aside>
            <h3 class="Cart_Summary-Title">
                Tóm tắt đơn hàng
            </h3>
            <div class="Cart_Summary-Voucher">
                <div class="Cart_Voucher">
                    <i class="fa-solid fa-ticket"></i>
                    <span>Voucher</span>
                    <a href="#" class="Cart_Summary-Add_Voucher">
                        Chọn hoặc nhập mã
                    </a>
                </div>
                <form class="Shipping_Option" action="/submit-form" method="post">
                    <div class="Shipping_Option-Item">
                        <input type="radio" id="free-shipping" name="shipping-option" value="free-shipping">
                        <label for="free-shipping">Miễn phí giao hàng</label> 
                        <span>0đ</span>
                    </div>
                    
                    <div class="Shipping_Option-Item">
                        <input type="radio" id="fast-shipping" name="shipping-option" value="fast-shipping">
                        <label for="fast-shipping">Giao hàng nhanh</label> 
                        <span>0đ</span>
                    </div>
                
                    <div class="Shipping_Option-Item">
                        <input type="radio" id="express-shipping" name="shipping-option" value="express-shipping">
                        <label for="express-shipping">Giao hàng hỏa tốc</label> 
                        <span>0đ</span>
                    </div>
                
                    <div class="Shipping_Option-Item">
                        <input type="radio" id="Self-pickup" name="shipping-option" value="Self-pickup">
                        <label for="Self-pickup">Tự lấy hàng</label> 
                        <span>0đ</span>
                    </div>
                    
                    <div class="Total-Price">
                        <span>Tổng tiền sản phẩm</span>
                        <span>0₫</span>
                    </div>
                    
                    <div class="Total-Checkout">
                        <span>Tổng tiền thanh toán</span>
                        <span>0₫</span>
                    </div>
                    <a href="CheckOut.jsp">
                        <input class="btn" id="Checkout" type="submit" value="Thanh toán">
                    </a>
                </form>
                
            </div>
        </aside>
    </div>
    <%@ include file="Footer.jsp" %>
</body>
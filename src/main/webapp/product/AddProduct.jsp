<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add new product</title>
    <link rel="stylesheet" href="AddProduct.css">
    <link rel="stylesheet" type="text/css" href="../CommonCSS.css">
    <link rel="stylesheet" type="text/css" href="../Top-Bar.css">
    <link rel="stylesheet" type="text/css" href="../Footer.css">
    <script src="../toast.js"></script>
    <script src="AddProduct.js"></script>
    <link rel="stylesheet" href="../toast.css" />
    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>

</head>

<body>
    <div id="toast">

    </div>
    <div class="AddProduct_wrap">
        <aside class="Side_nav">
            <a href="#Basic_info">
                Thông tin cơ bản
            </a>
            <a href="#Sale_info">
                Thông tin bán hàng
            </a>
        </aside>

        <main class="AddProduct_content">
            <section id="Basic_info">
                <h3 class="section_title">
                    Thông tin cơ bản
                </h3>

                <form action="AddProductServlet" method="post">
                    <div style="margin-bottom: 10px;">
                        <label for="product_name">
                            Tên sản phẩm
                        </label>
                        <input type="text" name="product_name" id="product_name" required>
                    </div>

                    <label for="category">
                        Danh mục
                    </label>
                    <select name="category" id="category" required>
                        <c:forEach var="category" items="${categories}">
                            <option value="${category.id}">${category.name}</option>
                        </c:forEach>
                    </select>

                    <div style="margin-top: 10px; margin-bottom: 10px;">
                        <label for="product_description" style="">
                            Mô tả sản phẩm
                        </label>
                        <textarea name="product_description" id="product_description" cols="30" rows="10" required></textarea>
                        <span style="color: #9CA3AF"></span>2000</span>

                    </div>
                    <div>
                        <label for="discount">
                            Giảm giá (%)
                        </label>
                        <input type="number" name="discount" id="discount" required>
                        <span style="color: #9CA3AF"><= 99%</span>
                    </div>
                    <div style="margin-top: 10px; margin-bottom: 10px;">
                        <input type="file" name="product_image" id="product_image" accept="image/*" multiple>
                        <label style="font-size: 20px;" for="product_image">
                            <span style="font-size: 14px; font-weight: 500; min-width:100px;">Ảnh bìa</span>
                            <img id="ProductImage" src="../img/Logo/insert-picture-icon.png" alt="">
                        </label>
                    </div>
                    <div id="image_preview"></div>                    
                </form>
            </section>

            <section id="Sale_info">
                <h3 class="section_title">
                    Thông tin bán hàng
                </h3>
                <div class="Content_wrap">
                    <div class="SII SII_varient">
                        <h3 class="Item_title">Phân loại hàng</h3>
                        <!-- SII - Sale Infor Item -->
                        <div class="SII_content_wrap">
                            <button onclick="AddVarientGroup()" class="btn btnAddVarientGroup">
                                <i class="fa-solid fa-plus"></i>
                                Thêm nhóm phân loại
                            </button>
                            <!-- VGI - Varient Group Item -->
                            <!-- VI - Varient Item -->
                            <div class="VGI_wrap">
                                
                            </div>
                        </div>
                    </div>

                    <div class="SII SII_list">
                        <h3 class="Item_title">Danh sách phân loại hàng</h3>
                        <div class="SII_content_wrap">
                            <div class="SII_list_top">
                                <div style="position: relative;     flex-grow: 1;">
                                    <input type="number" name="Giá" id="price" placeholder="Giá" style="padding-left: 30px; width:100%">
                                    <i class="fa-solid fa-dong-sign" style="position: absolute; left: 10px; top: 50%; transform: translateY(-50%);"></i>
                                  </div>
                                <input type="number" name="Kho hàng" id="inventory" placeholder="Kho hàng">
                                <button class="SII_list_top_btn" onclick="ApplyPriceAndInventoryAll()">Áp dụng cho tất cả phân loại</button>
                            </div>

                            <div class="SII_list_table">
                                <table id="myTable">
                                </table>
                            </div>
                        </div>
                    </div>
                    
                    <div>

                    </div>
                    <div class="SII SII_price">
                        <label for="Gia" class="Item_title">Giá</label>
                        <input type="number" name="" id="Gia" placeholder="Giá">
                    </div>
                    
                    <div class="SII SII_inventory">
                        <label for="KhoHang" class="Item_title">Kho hàng</label>
                        <input type="number" name="Kho Hang" id="KhoHang" placeholder="Kho hàng">
                    </div>

                </div>
            </section>
            <section>
                <button class="btn btnSubmit" onclick="AddProduct()">Thêm sản phẩm</button>
            </section>
        </main>
    </div>
    <script>
        document.getElementById('discount').addEventListener('input', function() {
            if (this.value.length > 2) {
                this.value = this.value.slice(0, 2);
            }
        });

        
    </script>
    <script src="AddProduct.js"></script>
</body>

</html>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm sản phẩm</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/seller/product/AddProduct.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/seller/common/SellerCommon.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Top-Bar.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/Footer.css"/>">
    <script src="<c:url value="/toast.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/toast.css"/>" />
    <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>' />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <%@ include file="../common/SellerCommon.jsp" %>
    <fmt:setLocale value = "vi_VN"/>
    <div class="Side_nav">
        <a class="btn" href="#Basic_info">
            Thông tin cơ bản
        </a>
        <a class="btn" href="#Sale_info">
            Thông tin bán hàng
        </a>
        <p>Vui lòng điền đầy đủ thông tin</p>
        <p>Nếu sản phẩm không có phân loại. Bạn không bắt buộc phải thêm phân loại</p>
    </div>

    <div id="toast">
    </div>
    <main class="AddProduct_content">
            <section id="Basic_info">
                <h3 class="section_title">
                    Thông tin cơ bản
                </h3>

                <div class="Basic_info_item Basic_info_image">
                    <div class="Product_Image">
                        <h3 class="item_title">Hình ảnh sản phẩm</h3>
                        <div class="Product_Image_Container">
                            <div id="image_preview">
                                <input type="file" name="product_image" id="product_image" accept="image/*" multiple>
                                <label for="product_image" class="drop-zone">
                                    <img id="ProductImage" src="../../img/Logo/Image.png" alt="">
                                    <span>Thêm hình ảnh</span>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="note">
                        <h3 class="item_title" style="width: max-content;">Ảnh bìa</h3>
                        <p>
                            <span style="color: #EA580C;">*</span>
                            Ảnh đầu tiên mặc định sẽ là ảnh bìa
                        </p>
                        <p>
                            <span style="color: #EA580C;">*</span>
                            Ảnh bìa sẽ được hiển thị tại các trang kết quả tìm kiếm.
                        </p>
                        <p>
                            <span style="color: #EA580C;">*</span>
                            <span style="color:#131417">Tips:</span>
                            Việc sử dụng ảnh bìa đẹp sẽ thu hút thêm lượt truy cập vào sản phẩm của bạn
                        </p>
                    </div>
                </div>

                <div class="Basic_info_item">
                    <div >
                        <label class="item_title" for="product_name">
                            Tên sản phẩm
                        </label>
                    </div>
                    <div style="display: block; width: 100%;">
                        <div class="Basic_info_item">
                            <input type="text" name="product_name" id="product_name" required>
                            <span id="span_for_name">0/120
                            </span>
                        </div>
                        <div id="warning_name">
                        </div>
                    </div>
                </div>


                <div style="display: flex; flex-wrap: wrap; gap: 40px">
                    <div class="Basic_info_item">
                        <label class="item_title" for="category">
                            Danh mục
                        </label>
                        <select name="category" id="category" required>
                            <c:forEach var="category" items="${categories}">
                                <option value="${category.id}">${category.name}</option>
                            </c:forEach>
                        </select>
                    </div>

                    <div class="Basic_info_item">
                        <div >
                            <label style="display: flex;justify-content: space-between;gap: 40px;" class="item_title" for="discount">
                                Giảm giá (%)
                            </label>
                        </div>
                        <div  style="display: block; width: 100%;">
                            <div class="Basic_info_item" style="align-items: flex-start; position: relative; z-index: 0;">
                                <input type="number" name="discount" id="discount" placeholder="<= 99%" max="100" required>
                            </div>
                            <div id="warning_discount">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Basic_info_item">
                    <div>
                        <label class="item_title" for="product_description">
                            Mô tả sản phẩm
                        </label>
                    </div>
                    <div style="display: block; width: 100%;">
                        <div class="Basic_info_item" style="align-items: flex-start; position: relative; z-index: 0;">
                            <textarea name="product_description" id="product_description" cols="30" rows="10"
                            style="resize: none;"  required></textarea>
                            <span id="span_for_description">0/3000</span>
                        </div>
                        <div id="warning_description">
                        </div>
                    </div>
                </div>
            </section>

            <section id="Sale_info">
                <h3 class="section_title">
                    Thông tin bán hàng
                </h3>
                <div class="Content_wrap">
                    <div class="SII SII_varient">
                        <h3 class="item_title">Phân loại hàng</h3>
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
                        <h3 class="item_title">Danh sách phân loại hàng</h3>
                        <div class="SII_content_wrap">
                            <div class="SII_list_top">
                                <div style="position: relative;     flex-grow: 1;">
                                    <input type="number" name="Giá" id="price" placeholder="Giá"
                                        style="padding-left: 30px; width:100%">
                                    <i class="fa-solid fa-dong-sign"
                                        style="position: absolute; left: 10px; top: 50%; transform: translateY(-50%);"></i>
                                </div>
                                <input type="number" name="Kho hàng" id="inventory" placeholder="Kho hàng">
                                <button class="SII_list_top_btn" onclick="ApplyPriceAndInventoryAll()">Áp
                                    dụng cho tất cả phân loại</button>
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
                        <label for="Gia" class="item_title">Giá</label>
                        <input type="number" name="" id="Gia" placeholder="Giá">
                    </div>

                    <div class="SII SII_inventory">
                        <label for="KhoHang" class="item_title">Kho hàng</label>
                        <input type="number" name="Kho Hang" id="KhoHang" placeholder="Kho hàng">
                    </div>

                </div>
            </section>
            <section class="btn_wrap">
                <div class="btn btnSubmit" onclick="AddProduct()">Thêm sản phẩm</div>
                <div class="btn btnCancel">Hủy</div>
            </section>
        </main>
    <script>
        var blackImgPath = "<c:url value="/img/Logo/BlackImg.png"/>";
    </script>
    <script src="<c:url value="/seller/product/AddProduct.js"/>"></script>
    <script src="<c:url value="/seller/product/AddProductEvent.js"/>"></script>
    <script src="<c:url value="/Common.js"/>"></script>
    <script src=<c:url value="/seller/common/SellerCommon.js"/>></script>
</body>

</html>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../../common/taglib.jsp" %>

<%--
  Created by IntelliJ IDEA.
  User: dathv1612
  Date: 5/13/24
  Time: 11:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<c:url value="ProductManagement.css"/>">
    <script src="<c:url value="ProductManagement.js"/>"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Quản lý sản phẩm</title>
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

<div class="side_bar">
    <a href="" class="btn item">
        <i class="fa-solid fa-clipboard"></i>
        <span>Quản lý đơn hàng</span>
    </a>

    <div>
        <a href="" class="btn item">
            <i class="fa-solid fa-bag-shopping"></i>
            <span>Quản lý sản phẩm</span>
        </a>
        <ul>
            <li class="subitem"><a href="">Tất cả sản phẩm</a></li>
            <li class="subitem"><a href="">Sản phẩm vi phạm</a></li>
            <li class="subitem"><a href="">Thêm sản phẩm</a></li>
        </ul>
    </div>

    <div>
        <a href="" class="btn item">
            <i class="fa-solid fa-comments"></i>
            <span>Chăm sóc khách hàng</span>
        </a>
        <ul>
            <li class="subitem"><a href="">Quản lí Chat</a></li>
            <li class="subitem"><a href="">Quản lí đánh giá</a></li>
        </ul>
    </div>

    <div>
        <a href="" class="btn item">
            <i class="fa-solid fa-wallet"></i>
            <span>Tài chính</span>
        </a>
        <ul>
            <li class="subitem"><a href="">Doanh thu</a></li>
            <li class="subitem"><a href="">Số dư TK BeeShop</a></li>
            <li class="subitem"><a href="">Tài khoản ngân hàng</a></li>
        </ul>
    </div>

    <a href="" class="btn item">
        <i class="fa-solid fa-chart-area"></i>
        <span>Dữ liệu và thống kê</span>
    </a>

    <div>
        <a href="" class="btn item">
            <i class="fa-solid fa-shop"></i>
            <span>Quản lý Shop</span>
        </a>
        <ul>
            <li class="subitem"><a href="">Hồ sơ Shop</a></li>
            <li class="subitem"><a href="">Trang trí Shop</a></li>
            <li class="subitem"><a href="">Thiết lập Shop</a></li>
        </ul>
    </div>
</div>

<div class="container">
    <div class="content">
        <div class="button_content">
            <div class="button_container">
                <div class="btn_shop ">Tất cả</div>
            </div>
            <div class="button_container">
                <div class="btn_shop ">Đang hoạt động</div>
            </div>
            <div class="button_container">
                <div class="btn_shop ">Vi phạm</div>
            </div>
            <div class="button_container">
                <div class="btn_shop ">Chờ duyệt</div>
            </div>
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
                <input type="button" value="Áp dụng" class="search_btn">
            </div>
        </div>

        <div class="table_content">
            <table class="product_content">
                <thead>
                <td style="width: 30px;"><input type="checkbox" name="" id=""></td>
                <td style="width: 30px;">STT</td>
                <td style="width: 200px;">Tên sản phẩm</td>
                <td style="width: 100px;">Doanh số</td>
                <td style="width: 50px;">Giá</td>
                <td style="width: 50px;">Kho Hàng</td>
                <td style="width: 50px;">Trạng thái</td>
                </thead>
                <tbody>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>1</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>2</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>3</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>4</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>5</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>6</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>7</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>8</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>9</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                <tr>
                    <td><input type="checkbox" name="" id=""></td>
                    <td>10</td>
                    <td>Áo Thun</td>
                    <td>20000000</td>
                    <td>200000</td>
                    <td>300</td>
                    <td>Đang bán</td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="page_content">
            <div class="page_number">1</div>
            <div class="page_number">2</div>
            <div class="page_number">3</div>
            <div class="page_number">4</div>
        </div>

        <div class="modify_content">
            <div class="notice_span">
                    <span class="notice">
                        <i class="fa fa-asterisk"></i> Chỉ chọn 1 sản phẩm khi sửa thông tin
                    </span>
                <span class="notice">
                        <i class="fa fa-asterisk"></i> Có thể chọn nhiều sản phẩm khi xóa sản phẩm
                    </span>
            </div>

            <div class="modify_button">
                <input type="button" value="Sửa thông tin" class="action_btn btn_update">
                <input type="button" value="Xóa sản phẩm" class="action_btn btn_delete">
            </div>
        </div>
    </div>
</div>

</body>
</html>

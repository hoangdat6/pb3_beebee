<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý người dùng</title>
    <script src="https://kit.fontawesome.com/609bda8d38.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="./adminCommon/adminCommon.js"></script>
    <link rel="stylesheet" href="../CommonCSS.css">
    <link rel="stylesheet" href="./adminCommon/assets/css/adminCommon.css">
</head>

<body>
    <%@ include file="./adminCommon/adminCommon.jsp" %>
    <div id="wrap">

        <main class="container">
            <nav>
                <div class="customer nav_item">
                    Người mua
                </div>
                <div class="seller nav_item">
                    Người bán
                </div>
            </nav>
            <div class="content">
                <div class="search">
                    <div class="status">
                        Trạng thái
                        <select name="status" id="status">
                            <option value="all">Tất cả</option>
                            <option value="active">Đang hoạt động</option>
                            <option value="inactive">Ngưng hoạt động</option>
                        </select>
                    </div>

                    <div class="search_bar">
                        Tìm kiếm
                        <input type="search" name="user_search" id="user_search">
                        <button>Tìm kiếm</button>
                    </div>
                </div>

                <div class="search_result">
                    <h3>Kết quả tìm kiếm</h3>
                    <table id="table">
                        <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên tài khoản</th>
                                <th>Email</th>
                                <th>Trạng thái</th>
                                <th>Tổng chi tiêu/năm</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Nguyễn Văn A</td>
                                <td>vulinhtruong79@gmail.com</td>
                                <td>Đang hoạt động</td>
                                <td>2.000.000 VND</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Nguyễn Văn A</td>
                                <td>vulinhtruong79@gmail.com</td>
                                <td>Đang hoạt động</td>
                                <td>2.000.000 VND</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Nguyễn Văn A</td>
                                <td>vulinhtruong79@gmail.com</td>
                                <td>Đang hoạt động</td>
                                <td>2.000.000 VND</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Nguyễn Văn A</td>
                                <td>vulinhtruong79@gmail.com</td>
                                <td>Đang hoạt động</td>
                                <td>2.000.000 VND</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Nguyễn Văn A</td>
                                <td>vulinhtruong79@gmail.com</td>
                                <td>Đang hoạt động</td>
                                <td>2.000.000 VND</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
    <script type="text/javascript">
        generateSidebar('user');
    </script>
</body>

</html>
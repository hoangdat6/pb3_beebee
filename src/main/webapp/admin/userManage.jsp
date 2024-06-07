<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý người dùng</title>
  <link rel="stylesheet" type="text/css" href='<c:url value="/font-awesome-6-pro/css/all.css"/>' />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="<c:url value="adminCommon/adminCommon.js"/>"></script>
    <link rel="stylesheet" href="../CommonCSS.css">
    <link rel="stylesheet" href="<c:url value="adminCommon/assets/css/adminCommon.css"/>">
    <script src="<c:url value="userManageAJAX.js"/>" type="text/javascript"></script>
</head>

<body>

    <%@ include file="./adminCommon/adminCommon.jsp" %>
    <div id="wrap">
        <main id="#mainContainer" class="container customer">
            <nav>
                <div id="customer" class="customer nav_item">
                    Người mua
                </div>
                <div id="seller" class="seller nav_item">
                    Người bán
                </div>
            </nav>
            <div class="content">
                    <div class="search">
                        <div class="status">
                            Trạng thái
                            <select name="status" id="status">
                                <option value="-1">Tất cả</option>
                                <option value="1">Đang hoạt động</option>
                                <option value="0">Ngưng hoạt động</option>
                            </select>
                        </div>

                        <form method="get" class="search_bar" action="<c:url value="/searchCustomer"/>">
                                Tìm kiếm
                                <input type="text" name="user_search" id="user_search">
                                <button id="search_customer">Tìm kiếm</button>
                        </form>
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
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
    <script type="text/javascript">
        generateSidebar('user');
            let buttonClicked = $("#customer");
            buttonClicked.css("color", "red");
            buttonClicked.css("borderBottomColor", "red");
            let URL = "/getAllCustomer";
            getDataByURL(URL).then(data => {
                rerenderTable(data, ["STT", "Tên", "Email", "Trạng thái", "Chi tiêu/năm"]);
            });
    </script>
</body>

</html>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/admin/adminCommon/adminCommon.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="statistic.css"/>">
    <script src="<c:url value="/admin/adminCommon/adminCommon.js"/>"></script>
    <title>Thống kê</title>
</head>

<body>
<%@ include file="adminCommon/adminCommon.jsp" %>
<fmt:setLocale value = "vi_VN"/>
<div id="wrap">
    <main id="#content">
    <nav>
        <a href="" id="overview">Tổng quan</a>
    </nav>
    <div class="wrap">
        <div id="time">
            <h4 class="title">Khung thời gian</h4>
            <select name="" id="time_type">
                <option value="0">Tuần</option>
                <option value="1">Tháng</option>
                <option value="2">Năm</option>
            </select>
        </div>

        <div class="statistic">
            <h4 class="title">Tổng quan</h4>
            <div id="statistic_info">
                <div class="statis_card">
                    <h4 class="card_title">Doanh số</h4>
                    <p class="card_value"></p>
                    <div class="card_compare">
                        <p>So với tuần trước</p>
                        <div class="card_compare_value"></div>
                    </div>
                    <i class="card_help fa-regular fa-circle-question"></i>
                </div>

                <div class="statis_card">
                    <h4 class="card_title">Đơn hàng</h4>
                    <p class="card_value"></p>
                    <div class="card_compare">
                        <p>So với tuần trước</p>
                        <div class="card_compare_value"></div>
                    </div>
                    <i class="card_help fa-regular fa-circle-question"></i>
                </div>

                <div class="statis_card">
                    <h4 class="card_title">Sản phẩm mới</h4>
                    <p class="card_value"></p>
                    <div class="card_compare">
                        <p>So với tuần trước</p>
                        <div class="card_compare_value"></div>
                    </div>
                    <i class="card_help fa-regular fa-circle-question"></i>
                </div>

                <div class="statis_card">
                    <h4 class="card_title">Người bán mới</h4>
                    <p class="card_value"></p>
                    <div class="card_compare">
                        <p>So với tuần trước</p>
                        <div class="card_compare_value"></div>
                    </div>
                    <i class="card_help fa-regular fa-circle-question"></i>
                </div>

                <div class="statis_card">
                    <h4 class="card_title">Khách hàng mới</h4>
                    <p class="card_value"></p>
                    <div class="card_compare">
                        <p>So với tuần trước</p>
                        <div class="card_compare_value"></div>
                    </div>
                    <i class="card_help fa-regular fa-circle-question"></i>
                </div>

                <div class="statis_card">
                    <h4 class="card_title">Lượt truy cập</h4>
                    <p class="card_value"></p>
                    <div class="card_compare">
                        <p>So với tuần trước</p>
                        <div class="card_compare_value"></div>
                    </div>
                    <i class="card_help fa-regular fa-circle-question"></i>
                </div>
            </div>
        </div>

        <div class="chart">
            <div class="chart_title">
                <h3 class="title">Biểu đồ</h3>
                <select name="chart_year" id="chart_year">
                    <%
                        // Lấy năm hiện tại
                        java.util.Calendar calendar = java.util.Calendar.getInstance(java.util.TimeZone.getDefault(), java.util.Locale.getDefault());
                        int currentYear = calendar.get(java.util.Calendar.YEAR);

                        // Lấy năm từ Attribute
                        int year = (Integer) request.getAttribute("year");
                    %>

                    <% for(int i = currentYear; i >= year; i--) { %>
                    <option value="<%=i%>"><%=i%></option>
                    <% } %>
                </select>
            </div>
            <canvas id="myChart"></canvas>
        </div>
    </div>
</main>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script src="<c:url value="statistic.js"/>"></script>
<script>
    generateSidebar('statistic');
</script>
</body>

</html>
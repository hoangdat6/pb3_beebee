<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ include file="../../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/seller/common/SellerCommon.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/CommonCSS.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="statistic/assets/css/statistic.css"/>">
    <script src="<c:url value="/seller/common/SellerCommon.js"/>"></script>
    <title>Thống kê</title>
</head>

<body>
    <%@ include file="../common/SellerCommon.jsp" %>
    <fmt:setLocale value = "vi_VN"/>
    <main id="#content">
        <nav>
            <a href="" id="overview">Tổng quan</a>
        </nav>
        <div class="wrap">
            <div id="time">
                <h4 class="title">Khung thời gian</h4>
                <select name="" id="time_type">
                    <option value="">Tuần</option>
                    <option value="">Tháng</option>
                    <option value="">Năm</option>
                </select>
            </div>

            <div class="statistic">
                <h4 class="title">Tổng quan</h4>
                <div id="statistic_info">
                    <div class="statis_card">
                        <h4 class="card_title">Doanh số</h4>
                        <p class="card_value">2.033.555 VNĐ</p>
                        <div class="card_compare">
                            <p>So với tuần trước</p>
                            <div class="card_compare_value">-3.2%</div>
                        </div>
                        <i class="card_help fa-regular fa-circle-question"></i>
                    </div>

                    <div class="statis_card">
                        <h4 class="card_title">Doanh số</h4>
                        <p class="card_value">100</p>
                        <div class="card_compare">
                            <p>So với tuần trước</p>
                            <div class="card_compare_value">-3.2%</div>
                        </div>
                        <i class="card_help fa-regular fa-circle-question"></i>
                    </div>

                    <div class="statis_card">
                        <h4 class="card_title">Doanh số</h4>
                        <p class="card_value">100</p>
                        <div class="card_compare">
                            <p>So với tuần trước</p>
                            <div class="card_compare_value">-3.2%</div>
                        </div>
                        <i class="card_help fa-regular fa-circle-question"></i>
                    </div>

                    <div class="statis_card">
                        <h4 class="card_title">Doanh số</h4>
                        <p class="card_value">100</p>
                        <div class="card_compare">
                            <p>So với tuần trước</p>
                            <div class="card_compare_value">-3.2%</div>
                        </div>
                        <i class="card_help fa-regular fa-circle-question"></i>
                    </div>
                </div>
            </div>

            <div class="chart">
                <div class="chart_title">
                    <h3 class="title">Biểu đồ</h3>
                    <select name="" id="">
                        <option value="2020">2020</option>
                        <option value="2021">2021</option>
                        <option value="2022">2022</option>
                        <option value="2023">2023</option>
                        <option value="2024">2024</option>
                    </select>
                </div>
                <canvas id="myChart"></canvas>
                <script>

                </script>
            </div>
        </div>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="<c:url value="statistic/statistic.js"/>"></script>
</body>

</html>
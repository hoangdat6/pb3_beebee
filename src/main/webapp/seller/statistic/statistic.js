
const ctx = document.getElementById('myChart').getContext('2d');
const myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Tháng 1', 'Tháng 2', 'Tháng 3', 'Tháng 4', 'Tháng 5', 'Tháng 6', 'Tháng 7', 'Tháng 8', 'Tháng 9', 'Tháng 10', 'Tháng 11', 'Tháng 12'],
        datasets: [
            {
                label: 'Doanh số (Nghìn VND)',
                data: [15000000, 5000000, 10000000, 8000000, 9000000, 20000000, 3000000, 5000000, 18000000, 6000000, 7000000, 14000000],
                backgroundColor: 'rgba(54, 162, 235, 0.6)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1,
                yAxisID: 'y',
            },
            {
                label: 'Lượt truy cập',
                data: [800, 1200, 900, 700, 1000, 1500, 200, 300, 1700, 500, 600, 1300],
                backgroundColor: 'rgba(75, 192, 192, 0.6)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1,
                yAxisID: 'y1',
            }
        ]
    },
    options: {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
            y: {
                type: 'linear',
                position: 'left',
                title: {
                    display: true,
                    text: 'Doanh số (Nghìn VND)'
                },
                ticks: {
                    beginAtZero: true
                }
            },
            y1: {
                type: 'linear',
                position: 'right',
                title: {
                    display: true,
                    text: 'Lượt truy cập'
                },
                ticks: {
                    beginAtZero: true
                },
                grid: {
                    drawOnChartArea: false,
                }
            }
        }
    }
});

function updateChart(revenue, access) {
    myChart.data.datasets[0].data = revenue;
    myChart.data.datasets[1].data = access;
    myChart.update();
}


/*Xử lí sự kiện*/
let timeType = document.getElementById('time_type');
let chartYear = document.getElementById('chart_year');

/*
type = 0: week,
type = 1: month,
type = 2: year
 */

let OverviewStatisticsAWeekAgo = [
    {
        type: 0,
        totalRevenue: 0,
        totalOrder: 0,
        totalAccesses: 0,
        conversionRate: 0,
        isHasValue: false
    }
    ,
    {
        type: 0,
        totalRevenue: 0,
        totalOrder: 0,
        totalAccesses: 0,
        conversionRate: 0,
        isHasValue: false
    }
    ,
    {
        type: 0,
        totalRevenue: 0,
        totalOrder: 0,
        totalAccesses: 0,
        conversionRate: 0,
        isHasValue: false
    }
]

let OverviewStatistics = [
    {
        type: 0,
        totalRevenue: 0,
        totalOrder: 0,
        totalAccesses: 0,
        conversionRate: 0,
        isHasValue: false
    }
    ,
    {
        type: 1,
        totalRevenue: 0,
        totalOrder: 0,
        totalAccesses: 0,
        conversionRate: 0,
        isHasValue: false
    }
    ,
    {
        type: 2,
        totalRevenue: 0,
        totalOrder: 0,
        totalAccesses: 0,
        conversionRate: 0,
        isHasValue: false
    }
]

function calculateIncreasePercent(currentStats, previousStats) {
    let properties = ['totalRevenue', 'totalOrder', 'conversionRate', 'totalAccesses'];
    let result = properties.map(property => {
        let value = currentStats[property];
        let increasePercent = -1;
        if (previousStats[property] != 0) {
            increasePercent = parseFloat(value - previousStats[property]) / Math.max(previousStats[property], 1) * 100;
        }
        return { value, increasePercent };
    });

    return result;
}
timeType.addEventListener('change', () => {
    AJAXGetAndUpdateOverviewStatistic();
});

function AJAXGetAndUpdateChart() {
    let timeTypeValue = timeType.value;
    let chartYearValue = chartYear.value;
    let url = '/PBL3_1_war_exploded/seller/statistic/chart';

    $.ajax({
        url: url,
        type: 'GET',
        data: {
            year: chartYearValue
        },
        success: function(data) {
            const dataObject = JSON.parse(data);
            const revenue = dataObject.map(element =>  element.totalRevenue);
            const access = dataObject.map(element => element.totalAccesses);
            updateChart(revenue, access);
        },
        error: function() {
            alert('Error');
        }
    });
}

chartYear.addEventListener('change', () => {
    AJAXGetAndUpdateChart();
});

function AJAXGetAndUpdateOverviewStatistic() {
    let timeTypeValue = timeType.value;
    if (OverviewStatistics[timeTypeValue].isHasValue) {
        updateOverviewStatistic(OverviewStatistics[timeTypeValue], OverviewStatisticsAWeekAgo[timeTypeValue]);
        return;
    }

    let url = '/PBL3_1_war_exploded/seller/statistic/overview';

    $.ajax({
        url: url,
        type: 'GET',
        data: {
            timeType: timeTypeValue
        },
        success: function(data) {
            const dataObject = JSON.parse(data);
            OverviewStatistics[timeType.value] = dataObject.currentStats;
            OverviewStatistics[timeType.value].isHasValue = true;
            OverviewStatisticsAWeekAgo[timeType.value] = dataObject.previousStats;
            OverviewStatisticsAWeekAgo[timeType.value].isHasValue = true;
            updateOverviewStatistic(OverviewStatistics[timeType.value], OverviewStatisticsAWeekAgo[timeType.value]);
        },
        error: function() {
            alert('Error');
        }
    });
}

function updateOverviewStatistic(currentStats, previousStats) {
    let statisticCard = document.querySelectorAll('.statis_card');

    let result = calculateIncreasePercent(currentStats, previousStats);
    let selectedOptionText = timeType.options[timeType.selectedIndex].innerText.toLowerCase();
    for (let i = 0; i < result.length; i++) {
        let value = result[i].value;
        let increasePercent = result[i].increasePercent;
        if(i == 0){
            statisticCard[i].querySelector('.card_value').innerText = formatCurrency(value >= 1 ? value : (value * 100) + '%', 'VND');
        }else {
            statisticCard[i].querySelector('.card_value').innerText = value >= 1 ? value : (value * 100) + '%';
        }
        statisticCard[i].querySelector('.card_compare_value').innerText = (increasePercent != -1 ? increasePercent  + '%' : 'Dữ liệu ' + selectedOptionText + ' trước là 0');

        statisticCard[i].querySelector('.card_compare p').innerText = 'So với ' + selectedOptionText + ' trước';
    }
}

document.addEventListener('DOMContentLoaded', () => {
    AJAXGetAndUpdateOverviewStatistic();
    AJAXGetAndUpdateChart();
});


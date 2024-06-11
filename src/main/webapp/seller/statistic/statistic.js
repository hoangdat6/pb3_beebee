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
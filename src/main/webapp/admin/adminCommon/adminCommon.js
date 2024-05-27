const items = [
    {
        class: 'user_nav',
        name: 'Quản lý người dùng',
        icon: 'fa-user',
        href: 'http://localhost:8080/PBL3_1_war_exploded/admin/usermanage'
    },
    {
        class: 'statis_nav',
        name: 'Dữ liệu thống kê',
        icon: 'fa-chart-pie',
        href: ''
    },
    {
        class: 'verify_nav',
        name: 'Kiểm duyệt',
        icon: 'fa-user',
        href: 'fa-circle-check'
    },
    {
        class: 'product_nav',
        name: 'Quản lý người dùng',
        icon: 'fa-box',
        href: ''
    },
]

const generateSidebar = (option) => {
    const sidebar = document.createElement('aside')
    sidebar.classList.add('sidebar', `sidebar--${option}`);
    items.forEach(item => {
        const a = document.createElement('a')
        a.classList.add(item.class)
        a.href = item.href
        a.innerHTML = `<i class="fa-solid ${item.icon}"></i> ${item.name}`
        sidebar.appendChild(a)
    })

    document.getElementById('wrap').prepend(sidebar);
    document.querySelector(`.${option}_nav`).style.color = "red";
}
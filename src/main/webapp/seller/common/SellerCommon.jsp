<%@ include file="../../common/taglib.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="status">
Chào mừng bạn đến với <span style="font-weight: 500;">Kênh người bán!</span> <a href="<c:url value="/home"/> ">
    <span style="color: #EA580C;">Về lại giao diện mua hàng?</span>
</a>
</div>

<div class="Main_Header_wrap">
    <div class="Main_Header">
        <div class="left">
            <img src="../../img/Logo/Logo Ispum.png" alt="">
            <h3 class="title" style="color:#EA580C;">Kênh người bán</h3>
        </div>
        <div class="right">
            <div class="item btn">
                <i class="fa-regular fa-bookmark"></i>
                <span>Đăng bài</span>
            </div>
            <div class="item btn">
                <i class="fa-regular fa-bell"></i>
                <span>Thông báo</span>
            </div>
            <div class="Account_option btn">
                <c:if test="${sessionScope.get('USERMODEL') != null}">
                    <c:if test="${sessionScope.get('USERMODEL').avatar != null}">
                        <img src="${sessionScope.get("USERMODEL").avatar}" alt="">
                    </c:if>

                    <c:if test="${sessionScope.get('USERMODEL').avatar == null}">
                        <img src="<c:url value="/img/Logo/Avatar.png"/>" alt="">
                    </c:if>

                    <span>${sessionScope.get("USERMODEL").username}</span>
                </c:if>


                <i class="fa-solid fa-chevron-down"></i>
            </div>
        </div>
    </div>
</div>
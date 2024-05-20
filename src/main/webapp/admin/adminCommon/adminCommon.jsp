<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<link rel="stylesheet" href="./adminCommon/adminCommon.css">

<div class="Main_Header_wrap">
    <div class="Main_Header">
        <div class="left">
            <img src="../img/Logo/Logo Ispum.png" alt="">
            <h3 class="title" style="color:#EA580C;">ADMIN</h3>
        </div>
        <div class="right">
            <div class="item btn">
                <i class="fa-regular fa-bell"></i>
                <span>Thông báo</span>
            </div>
            <div class="Account_option btn">
                <c:if test="${sessionScope.get('USERMODEL') != null}">
                    <c:if test="${sessionScope.get('USERMODEL').avatar != null}">
                        <img src="${sessionScope.get(" USERMODEL").avatar}" alt="">
                    </c:if>

                    <c:if test="${sessionScope.get('USERMODEL').avatar == null}">
                        <img src="<c:url value=" /img/Logo/Avatar.png" />" alt="">
                    </c:if>

                    <span>${sessionScope.get("USERMODEL").username}</span>
                </c:if>


                <i class="fa-solid fa-chevron-down"></i>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="./adminCommon.js"></script>
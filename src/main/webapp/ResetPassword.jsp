<%--
  Created by IntelliJ IDEA.
  User: dathv1612
  Date: 3/30/24
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CommonPassword.css">
    <title>Document</title>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <form action='<c:url value="/resetpass"/>' method="post">
            <h1>Thay đổi mật khẩu</h1>
            <label for="pw">Mật khẩu</label>
            <input class="box_input pw" type="password" value='<c:if test="${sessionScope.get('rspass') != null}">${sessionScope.get('rspass')}</c:if>' name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\S{8,}" required>
            <label for="confirm_pw">Xác nhận mật khẩu</label>
            <input class="box_input confirm_pw" type="password" value='<c:if test="${sessionScope.get('rscfpass') != null}">${sessionScope.get('rscfpass')}</c:if>' name="confirmpass" required>
            <c:if test="${sessionScope.get('rsstatus') == false}">
                <span style="color: red;">*Mật khẩu không trùng khớp</span>
            </c:if>
            <input class="btn" type="submit" value="Xác nhận">
        </form>
    </div>
</div>
</body>
</html>

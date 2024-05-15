<%--
  Created by IntelliJ IDEA.
  User: dathv1612
  Date: 3/29/24
  Time: 5:16 PM
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
    <title>Xác nhận tài khoản</title>
</head>
<body>
<div class="wrapper">
    <div class="container">
        <form action= '<c:url value="/confirmemail"/>' method="post" >
            <h1>Xác nhận Email</h1>
            <input class="box_input" type="text" id="code" name = "code" placeholder="Nhập mã xác nhận" pattern="[0-9]{6}" required  >
            <c:if test="${sessionScope.get('codestatus') == false}">
                <span style="color: red;">*Sai mã xác nhận</span>
            </c:if>
            <input class="btn" type="submit" value="Xác nhận">
        </form>
    </div>
</div>
<script>
    document.getElementById('code').addEventListener('input', function() {
        if (this.value.length > 6) {
            this.value = this.value.slice(0, 6);
        }
    });
</script>
</body>
</html>

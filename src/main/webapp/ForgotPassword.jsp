<%--
  Created by IntelliJ IDEA.
  User: dathv1612
  Date: 3/30/24
  Time: 8:15 PM
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
    <title>Quên mật khẩu</title>
</head>
    <body>
        <div class="wrapper">
            <div class="container">
            <h1>Quên mật khẩu</h1>
            <form action='<c:url value="/forgotpass"/>' method="POST">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="exam@gmail.com">
                <input class="btn" type="submit" name="submit" value="Xác nhận">
            </form>
            </div>
        </div>
    </body>
</html>

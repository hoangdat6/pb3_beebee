<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/15/2024
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="common/taglib.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Valiate</title>
</head>
<body>
    <form action='<c:url value="/confirmcode"/>' method = "post">
        <input id = "confirmcode" name="confirmcode" type="text">
        <button type="submit">Gửi</button>
    </form>
</body>
</html>

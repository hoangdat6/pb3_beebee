<%--
  Created by IntelliJ IDEA.
  User: dathv1612
  Date: 3/29/24
  Time: 5:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="ConfirmationEmail.css">
    <title>Document</title>
</head>
<body>
<div class="wrapper">
    <form class="container" action="#" method="post" >
        <h1>Xác nhận Email</h1>
        <input class="box_input" type="text" id="code" placeholder="Nhập mã xác nhận" pattern="[0-9]{6}">
        <input class="btn_convert" type="submit" value="Xác nhận">
    </form>
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

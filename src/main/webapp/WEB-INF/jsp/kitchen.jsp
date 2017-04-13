<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Евгений
  Date: 07.04.2017
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>MyPage</title>
    <link rel="stylesheet" type="text/css" href="static/css/resetCSS_kitchen.css">
    <link rel="stylesheet" type="text/css" href="static/css/style_kitchen.css">
    <link rel="shortcut icon" href="#" type="image/x-icon">
</head>

<body>
<div class="wrapper">
    <!-- ///////////// header /////////////////// -->
    <header class="header">
        <ul class="header-block">
            <li class="header-line"><a href="#">Шеф</a></li>
            <li class="header-line header-line-border"><a href="#">Automatisation Inc.</a></li>
            <li class="header-line">
                <a href="#"><img src="static/img/lock.png" alt="LOCK"></a>
            </li>
        </ul>
    </header>
    <!-- //////////////bilds////////////// -->
    <div class="bildsContainer">
        <c:forEach items="${bills}" var="bill" varStatus="count">
            <div id="${bill.id}" class="bild">
                <h3 class="bildNumber">${bill.id}</h3>
                <table class="bild-table">
                    <tr class="bild-table-nomber">
                        <th>${bill.comment}</th>
                        <th>Count</th>
                    </tr>
                    <tr>
                        <th>burger</th>
                        <th>120</th>
                    <tr>
                        <th>burger</th>
                        <th>120</th>
                    <tr>
                        <th>burger</th>
                        <th>120</th>
                    <tr>
                        <th>burger</th>
                        <th>120</th>
                </table>
                <div class="timeBox">
                    <span class="time">
					22:00
				</span>
                </div>
                <div class="button">
                    <input type="button" value="Готово" id="button-sub" onclick="del(this)">
                </div>
            </div>
        </c:forEach>
    </div>
</div>
<!-- //////////////bilds////////////// -->
</div>
<script type="text/javascript">
    function del(obj) {
        // body...
        var a = obj.parentNode.parentNode.id;
        var b = document.getElementById(a);
        b.parentNode.removeChild(b);
    }

</script>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Евгений
  Date: 07.04.2017
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Kitchen</title>
</head>
<body>
<div class="bildsContainer">
    <c:forEach items="${}" var="bill" varStatus="count">
        <div id="${bill}" class="bild">
            <h3 class="bildNumber">${bill.id}</h3>
            <table class="bild-table">
                <tr class="bild-table-nomber">
                    <th>Name</th>
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
</body>
</html>

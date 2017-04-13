<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>Menu</title>
    <style>
        #container {
            margin: 0 auto; /* Выравнивание по центру */
        }
        #content {
            padding-top: 15px;
            text-align: center;
            width: 85%;
        }
    </style>
</head>
<body>
<div id="container">
<div id="content" class="row">
    <c:forEach items="${dishes}" var="dish" varStatus="count">
        <div class="col-md-2">
            <input type="image" src="${dish.url}" class="dish-button" id=${dish.name}, name=${dish.id}>
            <p><strong>${dish.name}</strong></p>
            <p>${dish.weight}g. / ${dish.price}$</p>
        </div>
    </c:forEach>
</div>
</div>
</body>
</html>

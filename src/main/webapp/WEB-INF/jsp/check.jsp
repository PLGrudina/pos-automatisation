<%--
  Created by IntelliJ IDEA.
  User: Man
  Date: 31.03.2017
  Time: 1:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>Check</title>
    <style>
        #container {
            margin: 0 auto; /* Выравнивание по центру */
        }

        #aside {
            background: darkgrey;
            width: 30%; /* Ширина правой колонки */
            float: right;
        }

    </style>
</head>
<body>
<div id="container">
    <div id="aside">
        <table class="table table-hover" id="check">
            <thead>
            <tr>
                <th>Title</th>
                <th>Weight</th>
                <th>Price</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>${dish.name}</td>
                <td>${dish.weight}</td>
                <td>${dish.price}</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>

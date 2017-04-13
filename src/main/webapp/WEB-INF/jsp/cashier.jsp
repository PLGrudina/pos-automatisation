<%--
  Created by IntelliJ IDEA.
  User: Man
  Date: 21.03.2017
  Time: 16:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="../../static/js/cashier.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>Cashier</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Lobster');
        @import url('https://fonts.googleapis.com/css?family=Bitter');

        #header {
            margin-top: -1px;
            border: 2px solid white;
            background: #f6ca47;
            text-align: center;
            border-bottom-right-radius: 15px;
            border-bottom-left-radius: 15px;
            margin-bottom: -1px;
        }

        #header-cashier, #header-bill {

            font-family: Bitter, serif;
            font-size: x-large;
            text-shadow: 1px 1px 1px black;

        }

        #corporation-name {
            font-family: Lobster, cursive;
            font-size: xx-large;
        }

        #container {
            margin: 0 auto; /* Выравнивание по центру */
        }

        #nav {
            text-align: center;
            padding-top: 20px;
            width: 15%; /* Ширина левой колонки */
            float: left;
            height: 100%;
            border-right: 5px;
            border-color: black;
        }

        #aside {
            background: darkgrey;
            width: 24%; /* Ширина правой колонки */
            float: right;

        }

        #content {
            padding-top: 30px;
            padding-left: 45px;
            text-align: center;
            width: 80%;
            margin: 0px;
            padding-left: 29%;
        }

        .category-button {
            border-radius: 5px;
            width: 45%;
            height: 70px;
        }

        .dish-button {
            width: 150px;
            height: 110px;
            text-align: center;
        }
        .table-hover {
            background: white;
        }
        #pay-button {
            width: 150px;
            height: 40px;
            float: right;
        }
        #bonus-button{
            width: 70px;
            height: 40px;
            text-transform: uppercase;
        }
        #function-button {
            width: 70px;
            height: 40px;

        }
        .col-md-2{
            padding: 0px;
            width: initial;
        }

    </style>
</head>
<body>
<table class="table table-bordered" id="header">
    <tr>
        <td id="header-cashier">Cashier</td>
        <td id="corporation-name">Automatisation Inc.</td>
        <td id="header-bill">Check №</td>
    </tr>
</table>
<div id="container">
    <div id="nav" class=".col-md-3">
        <c:forEach items= "${dishTypes}" var="dishType" varStatus="count">
            <input type="image" src="/static/img/${dishType}.jpg" class="category-button" id="${dishType}" value=${dishType}>
            <p><strong>${dishType}</strong></p>
        </c:forEach>
    </div>
    <div id="aside" class=".col-md-3">
        <table class="table table-hover" id="check">
            <thead>
            <tr>
                <th>Title</th>
                <th>Weight</th>
                <th>Price</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>

        <button type="submit" class="btn btn-default" id="function-button"><strong>...</strong></button>
        <button type="submit" class="btn btn-default" id="bonus-button"><strong>%</strong></button>
        <button type="submit" class="btn btn-success" id="pay-button"><strong>Pay</strong></button>
    </div>
    <div id="content" class="row">
        <c:forEach items="${sandwiches}" var="dish" varStatus="count">
            <div class="col-md-2">
                <input type="image" src="${dish.url}" class="dish-button" name=${dish.name}, id=${dish.id}>
                <p><strong>${dish.name}</strong></p>
                <p>${dish.weight}g. / ${dish.price}$</p>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>

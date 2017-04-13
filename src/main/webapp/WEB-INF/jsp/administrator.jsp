<%--
  Created by IntelliJ IDEA.
  User: PavelGrudina
  Date: 05.04.2017
  Time: 21:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <title>Administrator</title>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Lobster');
        @import url('https://fonts.googleapis.com/css?family=Bitter');

        #header {
            margin-top: -1px;
            border: 2px solid #f0ffd4;
            background: #ff6347;
            text-align: center;
            border-bottom-right-radius: 15px;
            border-bottom-left-radius: 15px;
            margin-bottom: -1px;
        }

        #header-cashier, header-dishes, header-ingredients {

            font-family: Bitter, serif;
            font-size: xx-large;
            text-shadow: 1px 1px 1px grey;
            width: 50%;

        }

        #corporation-name {
            text-align: center;
            font-family: Lobster, cursive;
            font-size: xx-large;
            width: 50%;
        }

        #containerDish {
            font-family: Bitter, serif;
            font-size: x-large;
            text-shadow: 1px 1px 1px grey;
            width: 50%;
            float: left;
        }

        #containerIngr {
            font-family: Bitter, serif;
            font-size: x-large;
            text-shadow: 1px 1px 1px grey;
            width: 50%;
            float: right;
        }

        #up {
            margin-left: 1%;
            float: left;
        }

        #back {
            padding-left: 1%;
            padding-right: 3%;
            float: left;
        }

        #profit {
            font-family: Bitter, serif;
            font-size: x-large;
            text-shadow: 1px 1px 1px grey;
            width: 100%;
        }

        #nav {
            text-align: center;
            background: darkgrey;
            width: 15%; /* Ширина левой колонки */
            float: left;
        }

        #aside {
            background: darkgrey;
            width: 30%; /* Ширина правой колонки */
            float: right;
        }

        #content {
            padding-top: 30px;
            padding-left: 37px;
            text-align: center;
            width: 70%;
        }

        .category-button {
            border-radius: 5px;
            width: 110px;
            height: 60px;
        }

        .deleteButton {
            border-radius: 1px;
            width: 10px;
            height: 7px;
        }

        .table-hover {
            background: white;
        }

        #pay-button {
            width: 150px;
            height: 40px;
            float: right;
        }

        #bonus-button {
            width: 70px;
            height: 40px;
            text-transform: uppercase;
        }

        #function-button {
            width: 70px;
            height: 40px;

        }

    </style>
</head>
<body>
<table class="table table-bordered" id="header">
    <tr>
        <td id="header-cashier"><a href="/"><img id="back" src="/static/img/backS.png"></a>Administrator
        </td>

        <td id="corporation-name">Tomato</td>
    </tr>
    <%--<h3 id="profit">Today we received: ${administratorService.billSumByDate(dateNow)}</h3>--%>

</table>

<table class="table table-bordered" id="containerDish">
    <tr>
        <td id="header-dishes">Dishes

            <c:url value="/dish" var="createDish"/>
            <a href="${createDish}" class="btn btn-success" role="button">Add new Dish</a><br>

            <table class="table table-striped">
                <thead>
                <tr>
                    <th>№</th>
                    <th>Name</th>
                    <th>Weight</th>
                    <th>Price</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${dishList}" var="dish" varStatus="count">
                <tr>
                    <th scope="row">${count.index + 1}</th>
                    <td>
                        <c:url value="/dish?id=${dish.id}" var="DishUrl"/>
                        <a href="${DishUrl}">${dish.name}</a>
                    </td>
                    <td>${dish.weight}</td>
                    <td>${dish.price}</td>

                    <td>
                        <c:url value="/administrator" var="deleteUrl"/>
                        <form action="${deleteUrl}" method="post">
                            <button type="submit" name="id" value="${dish.id}">delete
                            </button>
                        </form>
                    </td>


                </tr>
                </c:forEach>
            </table>
        </td>

    </tr>
</table>

<table class="table table-bordered" id="containerIngr">
    <tr>
        <td id="header-ingredients">Ingredients

            <c:url value="/ingredient" var="createUrl"/>
            <a href="${createUrl}" class="btn btn-success" role="button">Add new Ingredient</a><br>

            <table class="table table-striped">
                <thead>
                <tr>
                    <th>№</th>
                    <th>Name</th>
                    <th>Weight</th>
                    <th>Date</th>
                    <th>Status</th>

                </tr>
                </thead>
                <tbody>
                <c:forEach items="${ingredientList}" var="ingredient" varStatus="count">
                <tr>
                    <th scope="row">${count.index + 1}</th>
                    <td>
                        <c:url value="/ingredient?id=${ingredient.id}" var="IngredientUrl"/>
                        <a href="${IngredientUrl}">${ingredient.name}</a>
                    </td>
                    <td>${ingredient.weight}</td>
                    <td>${ingredient.date}</td>
                    <td>${administratorService.getIngredientStatus(ingredient)}</td>

                    <td>
                        <c:url value="/administrator" var="deleteUrl"/>
                        <form action="${deleteUrl}" method="post">
                            <button type="submit" name="id" value="${ingredient.id}">delete
                                    <%--<img src="/static/img/deleteIcon.jpg">--%>
                            </button>
                        </form>
                    </td>


                </tr>
                </c:forEach>
            </table>
        </td>
    </tr>
</table>
<br>

<a href="#header">
    <img id="up" src="/static/img/up.png">
</a>
</body>
</html>

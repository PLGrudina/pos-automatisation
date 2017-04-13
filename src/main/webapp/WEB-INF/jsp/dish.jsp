<%@ page import="ua.automatisationInc.pos.models.Dish" %>
<%@ page import="java.util.List" %>
<%@ page import="ua.automatisationInc.pos.models.Ingredient" %><%--
  Created by IntelliJ IDEA.
  User: PavelGrudina
  Date: 09.04.2017
  Time: 2:50
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
            border: 2px solid white;
            background: #f6ca47;
            text-align: center;
            border-bottom-right-radius: 15px;
            border-bottom-left-radius: 15px;
            margin-bottom: -1px;
        }

        #header-cashier, #header-bill, header-dishes, header-ingredients  {

            font-family: Bitter, serif;
            font-size: x-large;
            text-shadow: 1px 1px 1px black;
            width: 50%;

        }

        #corporation-name {
            font-family: Lobster, cursive;
            font-size: xx-large;
            width: 50%;
        }

        #container {
            font-family: Bitter, serif;
            font-size: x-large;
            text-shadow: 1px 1px 1px black;
            width: 100%;
        }
        #profit {
            font-family: Bitter, serif;
            font-size: x-large;
            text-shadow: 1px 1px 1px black;
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

        .dish-button {
            border-radius: 5px;
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

    </style>
</head>
<body>
<table class="table table-bordered" id="header">
    <tr>
        <td id="header-cashier">Administrator</td>
        <td id="corporation-name">Automatisation Inc.</td>
    </tr>
</table>

<div class="container">
    <div class="col-xs-4 centered">
        <h3>Edit dish:</h3>

        <c:url value="/dish" var="editUrl"/>
        <form action="${editUrl}" method="post">

            <input type="hidden" name="id" value="${dish.id}">

            <div class="form-group">
                <label for="name">Name:</label>
                <input id="name" type="text" class="form-control" name="name" value="${dish.name}">
            </div>

            <div class="form-group">
                <label for="categorySANDWICH">Category:</label>
                <input id="categorySANDWICH" type="radio" name="category" value="SANDWICH" ${dish.category == "SANDWICH" ? "checked" : ""}/>SANDWICH
                <input id="categorySNACK" type="radio" name="category" value="SNACK" ${dish.category == "SNACK" ? "checked" : ""}/>SNACK
                <input id="categorySIDES" type="radio" name="category" value="SIDES" ${dish.category == "SIDES" ? "checked" : ""}/>SIDES
                <input id="categorySALAD" type="radio"  name="category" value="SALAD" ${dish.category == "SALAD" ? "checked" : ""}/>SALAD
                <input id="categoryDESSERT" type="radio" name="category" value="DESSERT" ${dish.category == "DESSERT" ? "checked" : ""}/>DESSERT
                <input id="categoryDRINK" type="radio" name="category" value="DRINK" ${dish.category == "DRINK" ? "checked" : ""}/>DRINK
            </div>

            <div class="form-group">
                <label for="price">Price:</label>
                <input id="price" type="text" class="form-control" name="price" value="${dish.price}">
            </div>

            <div class="form-group">
                <label for="url">Photo URL:</label>
                <input id="url" type="text" name="url" value="${dish.url}">
            </div>

            <div class="form-group">

                    <c:forEach items="${dish.ingredients}" var="ingredient" varStatus="count">
                    <tr>

                        <input id="ingredient" type="checkbox" checked name="ingredientName" value="${ingredient.name}"/>${ingredient.name}
                        <input id="weight" type="text" class="form-control" name="ingredientWeight" value="${ingredient.weight}"/>
                    </tr>
                    </c:forEach>

            </div>


            <input type="submit" class="btn btn-success" value="Submit">
        </form>
    </div>
</div>

</body>
</html>

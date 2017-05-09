<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Menu</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/static/css/cashierPage.css">

    <style>
        @import url('https://fonts.googleapis.com/css?family=Lobster');
        @import url('https://fonts.googleapis.com/css?family=Bitter');

        #header-bill {
            font-family: Bitter, serif;
            font-size: x-large;
            text-shadow: 1px 1px 1px black;
        }

        #container {
            margin: 0 auto;
        }

        #nav {
            text-align: center;
            padding-top: 2%;
            width: 15%;
            float: left;
            height: 100%;
        }

        #aside {
            padding-top: 2%;
            padding-right: 2%;
            width: 24%;
            float: right;
        }

        #content {
            padding-top: 2%;
            text-align: center;
            width: 70%;
            margin: 0px;
            padding-left: 17%;
        }

        .category-button {
            border-radius: 5px;
            width: 45%;
            height: 45%;
        }

        #img {
            width: 40%;
        }

        #describe {
            width: 40%;
        }

        #price {
            width: 20%;
        }

        /*.table {*/
        /*background-color: white;*/
        /*border: none;*/
        /*}*/

        .dish-button {
            width: auto;
            height: 12%;
            text-align: center;
        }

        .table-hover {
            background: white;
            width: 100%;
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

        .col-md-2 {
            padding: 0px;
            width: initial;
        }
    </style>
</head>
<body>
<div id="container">
<div id="content" class="row">
    <c:forEach items="${dishes}" var="dish" varStatus="count">
        <table class="table-hover">
            <tr>
                <td id="img">
                    <input type="image" src="${dish.url}" class="dish-button" name=${dish.name}, id=${dish.id}>
                </td>

                <td id="describe">
                    <strong>${dish.name}</strong>

                    <p>
                        <c:forEach items="${dish.ingredients}" var="ingr">
                            ${ingr.name} &nbsp
                        </c:forEach>
                    </p>

                </td>

                <td id="price"><strong>${dish.weight}g. / ${dish.price}$<strong></td>

            </tr>
        </table>
        <br>
    </c:forEach>
</div>
</div>
</body>
</html>

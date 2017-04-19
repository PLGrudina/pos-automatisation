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
    <title>Kitchen</title>
    <link rel="stylesheet" type="text/css" href="/static/css/kitchenPage.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <%--<link rel="shortcut icon" href="#" type="image/x-icon">--%>
</head>

<div id="mainContainer">
    <table class="table" id="header">
        <tr>
            <td id="backButton">
                <a href="/"><img src="/static/img/backS.png"></a>
            </td>
            <td id="header-kitchen">Kitchen</td>

            <td id="corporation-name">Tomato code</td>
        </tr>

    </table>

    <div class="bildsContainer">

        <c:forEach items="${bills}" var="bill" varStatus="count">

            <div id="${bill.id}" class="bild">
                <h3 class="bildNumber">${bill.number}</h3>
                <hr class="line">
                <table class="bild-table">
                    <tr>
                        <th>${bill.comment}</th>
                    </tr>

                    <c:forEach items="${bill.dishList}" var="dish">
                        <tr>
                            <th>${dish.name}</th>
                            <th>${dish.weight}</th>
                        </tr>
                    </c:forEach>

                </table>
                <hr class="line">
                <div class="button">
                    <input type="button" class="btn btn-success" value="Done" onclick="del(this)">
                </div>
            </div>
        </c:forEach>
    </div>
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

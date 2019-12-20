<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>管理员插入订单</title>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <style>
        input{
            margin-top: 15px;
        }

    </style>
</head>
<body>


    <form action="${app}/user_orderController/addUser_order" method="post" >
        <audio id="sound" autoplay="autoplay"></audio>

        编&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:<input type="text" name="id" id="id"><br/>
        酒店昵称:<input type="text" name="admin_name" id="admin_name"><br/>
        客户姓名:<input type="text" name="user_name" id="user_name"><br/>
        价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格:<input type="text" name="price" id="price"><br/>
        房&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型:<input type="text" name="room" id="room"><br/>
        酒店编号:<input type="text" name="admin_id" id="admin_id"><br/>
        用户编号:<input type="text" name="user_id" id="user_id"><br/>
        手&nbsp;&nbsp;机&nbsp;&nbsp;号:<input type="text" name="phone" id="phone"><br/>
        时&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;间:<input type="text" name="date" id="date"><br/>
        数&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;量:<input type="text" name="count" id="count"><br/>
        天&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数:<input type="text" name="day" id="day"><br/>
        状&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;态:<input type="text" name="state" id="state"><br/>
        结算状态:<input type="text" name="price_state" id="price_state"><br/>
        工&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:<input type="text" name="nuber" id="nuber"><br/>
        <input type="submit" value="插入订单" class="btn btn-info">
    </form>

</body>
</html>

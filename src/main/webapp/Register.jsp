<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>登录主接口</title>

    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${app}/js/jquery-1.8.3.min.js"></script>
    <style>
        h1{
            text-align: center;
        }
        input{
            border-color: #00a2d4;
            height: 90px;
            width: 300px;
        }
        div{
            background-color: #6b7d86;
        }
    </style>
</head>
<body>
    <div class="">
        <h1>登录入口</h1><br/>
        <br/>
    <a href="${app}/login.jsp"><h1><input type="button" value="酒店管理员登录" class="btn btn-danger"></h1></a>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <a href="${app}/ShopPingCenter.jsp"><h1><input type="button" value="商城管理员登录" class="btn btn-danger"></h1></a>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <a href="${app}"><h1><input type="button" value="登录" class="btn btn-danger"></h1></a>
    </div>
</body>
</html>

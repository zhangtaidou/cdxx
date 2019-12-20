<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link href="${app}/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${app}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${app}/css/animate.css" rel="stylesheet">
    <link href="${app}/css/style.css?v=4.1.0" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

    <!-- 全局js -->
    <script src="${app}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${app}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${app}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${app}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${app}/js/plugins/layer/layer.min.js"></script>
    <!-- 自定义js -->
    <script src="${app}/js/hAdmin.js?v=4.1.0"></script>
    <script type="text/javascript" src="${app}/js/index.js"></script>
    <!-- 第三方插件 -->
    <script src="${app}/js/plugins/pace/pace.min.js"></script>
</head>
<body>
<script type="text/javascript">

</script>
<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal" style="height: 40px"
        onclick="selectRoom()">
    +新价格类型
</button>


</body>
</html>
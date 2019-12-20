<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">
    <style  type="text/css">
    </style>
    <title id="titlee">货物页面</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html" />
    <![endif]-->
    <link rel="shortcut icon" href="favicon.ico">
    <link href="${app}/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${app}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${app}/css/animate.css" rel="stylesheet">
    <link href="${app}/css/style.css?v=4.1.0" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <style>
        table {
            border-color: #00a2d4;
            height: 60px;
            text-align: center;
        }
        #table tr td{
            text-align: center;
            height: 60px;
        }
        th{
            text-align:center;
        }
        td{
            text-align: center;
        }
    </style>
</head>
<body>
<table table width="100%" border="2"cellpadding="2" cellspacing="1">
    <tr>
        <th>商品名称</th>
        <th>商品数量</th>
        <th>商品价格</th>
        <th>购买时间</th>
        <th>用户姓名</th>
        <th>手机号</th>
        <th>用户住址</th>
        <th>订单状态</th>
    </tr>
    <tbody id="table">

    </tbody>
</table>
<script>
    $(function () {
        var id=${sessionScope.Specialty.id}
            $("#table").empty();
        $.ajax({
            url:"${app}/Speciality_orderController/selectAllSpeciality_order",
            data:{"admin_specialty_id":id},
            dataType:"json",
            type:"post",
            success:function (data){
                if(data==""){
                    alert("暂无相应数据！！！");
                }else {
                    $.each(data, function (index, poem) {
                        if(poem.state=="1") {
                            var phone= $("<td>").html(poem.phone)
                            var username= $("<td>").html(poem.user_name)
                            var address= $("<td>").html(poem.address)
                            var name = $("<td>").html(poem.name)
                            var count = $("<td>").html(poem.count)
                            var price = $("<td>").html(poem.price)
                            var date = $("<td>").html(poem.date)
                            var state=$("<td>").html("已发货")
                            var tr = $("<tr id='tr'>").append(name).append(price).append(date).append(count).append(username).append(phone).append(address).append(state)
                            $("#table").append(tr)
                        }else if(poem.state=="2"){
                            var phone= $("<td>").html(poem.phone)
                            var username= $("<td>").html(poem.user_name)
                            var address= $("<td>").html(poem.address)
                            var name = $("<td>").html(poem.name)
                            var count = $("<td>").html(poem.count)
                            var price = $("<td>").html(poem.price)
                            var date = $("<td>").html(poem.date)
                            var state=$("<td>").html("未发货")
                            var tr = $("<tr id='tr'>").append(name).append(price).append(date).append(count).append(username).append(phone).append(address).append(state)
                            $("#table").append(tr)
                        }else if(poem.state=="3"){
                            var phone= $("<td>").html(poem.phone)
                            var username= $("<td>").html(poem.user_name)
                            var address= $("<td>").html(poem.address)
                            var name = $("<td>").html(poem.name)
                            var count = $("<td>").html(poem.count)
                            var price = $("<td>").html(poem.price)
                            var date = $("<td>").html(poem.date)
                            var state=$("<td>").html("已取消")
                            var tr = $("<tr id='tr'>").append(name).append(price).append(date).append(count).append(username).append(phone).append(address).append(state)
                            $("#table").append(tr)
                        }
                    })
                }
            },
            error:function () {
                alert("数据异常！请联系管理员！！！");
            }
        })
    })
</script>
</body>
</html>

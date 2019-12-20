<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <title>所有订单</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
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

<table table width="100%" border="2"cellpadding="2" cellspacing="1" >
    <tr>
        <th>商品名称</th>
        <th>商品数量</th>
        <th>商品价格</th>
        <th>购买时间</th>
        <th>用户姓名</th>
        <th>手机号</th>
        <th>用户住址</th>
        <th>操作</th>

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
                            var phone= $("<td>").html(poem.phone)
                            var username= $("<td>").html(poem.user_name)
                            var address= $("<td>").html(poem.address)
                            var name = $("<td>").html(poem.name)
                            var count = $("<td>").html(poem.count)
                            var price = $("<td>").html(poem.price)
                            var date = $("<td>").html(poem.date)
                            var operate = $("<input type='button' id='input'data-target='#myModal' onclick='update("+poem.id+")' value='处理' class='btn btn-danger'>")
                            var tr = $("<tr id='tr'>").append(name).append(price).append(date).append(count).append(username).append(phone).append(address).append(operate)
                            $("#table").append(tr)
                    })
                }
            },
            error:function () {
                alert("数据异常！请联系管理员！！！");
            }
        })
    })
    function update(id) {
        $.ajax({
            url:"${app}/Merchandise_orderController/updateByIdState",
            data:{"id":id},
            dataType:"json",
            type:"post",
        })
        location.href="${app}/NoHandle.jsp";
        alert("处理成功！")
    }
</script>


</body>
</html>
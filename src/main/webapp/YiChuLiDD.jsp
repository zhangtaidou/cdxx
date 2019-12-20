<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>GG</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <style>
        #TB{
            border-color: #0E9AEF;
            height: 70px;
        }
        th{
            color: #00B7EE;
            text-align: center;
        }
        .bt1{
            width: 300px;
            height: 40px;
        }
        .bt2{
            width: 300px;
            height: 40px;
        }
        #Sou{
            margin-left: 800px;
        }
        td{
            text-align: center;
            color: #00B7EE;
        }
        #GG{
            color: red;
        }
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<div id='eve'>
    <div>
        <table id="TB" class="table"  width="100%" border="2"cellpadding="2" cellspacing="1"  >
            <tr>
                <th>选项</th>

                <th>房号</th>

                <th>时间</th>

                <th>备注</th>

                <th>操作</th>
            </tr>

            <tbody id="ty">

            </tbody>
        </table>

    </div>
</div>
</body>
<script>
    $(function () {
        var id = ${sessionScope.admin.id};
        $.ajax({
            "url":"${app}/ServeController/selectService",
            "type":"get",
            "data":{"admin_id":id},
            "dataType":"json",
            "success":function (data) {
                $(data).each(function () {
                    if(this.state==2){
                        $("#ty").append("<tr><td>"+this.option+"</td>"+
                            "<td>"+this.number+"</td>" +
                            "<td>"+this.date+"</td>" +
                            "<td>"+this.remarks+"</td>" +
                            "<td><input type='button' value='已处理' class='btn btn-info'></td></tr>"
                        )
                    }
                })
            },
            "error":function () {
                alert("数据异常！请联系管理员！！！");
            }
        })
    })
</script>
</html>
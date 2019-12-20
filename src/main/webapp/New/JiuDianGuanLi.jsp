<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<html lang="en">
<head>
    <link rel="stylesheet" href="${app}/css/bootstrap.min.css">
    <script src="${app}/js/jquery.min.js"></script>
    <script src="${app}/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $.ajax({
                url:"${app}/superAdmin/superman",
                datatype:"json",
                type:"get",
                success:function (data) {
                    $.each(data, function (i, p) {
                        var option=$("<option>").html(p.name);
                        option.attr('value',p.password);
                        option.attr('name',p.account);
                        $("#kind").append(option);
                    })
                }
            })
        });


        function change(val)
        {
            var val1=$("#kind").find("option:selected").attr("name");
            window.location.href="${app}/adminController/selectByPwd?account="+val1+"&password="+val;
        }

        function change1() {
            $.ajax({
                url:"${app}/adminController/selectByPwd",
                datatype:"json",
                type:"post",
                data:{"account":"123456",
                      "password":"111111"
                },
                error:function () {
                    alert("GG");
                }
            });
            location.hreF="${app}/Index.jsp";
        }
    </script>
</head>
<body>
        <div class="page-header">
            <h1>欢迎光临 <small>Subtext for header</small></h1>
        </div>
        <div class="jumbotron">
            <h1>客店桥齐均科技</h1>
        </div>
        <select name="kind" id="kind" onchange="change(this.value)">
            <option value="">选择酒店</option>
        </select>
        <br><br>
</body>
</html>
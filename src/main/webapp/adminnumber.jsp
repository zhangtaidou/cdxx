<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <!-- 全局js -->
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="${app}/js/jquery.min.js?v=2.1.4"></script>
    <script src="${app}/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="${app}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${app}/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${app}/js/plugins/layer/layer.min.js"></script>
    <!-- 自定义js -->
    <script src="${app}/js/hAdmin.js?v=4.1.0"></script>
    <!-- 第三方插件 -->
    <script src="${app}/js/plugins/pace/pace.min.js"></script>
    <title>Title</title>
</head>
<body>
个人账户:<input type="radio" value="个人账户" name="个人账户" id="inputOn">
公司账户：<input type="radio" value="个人账户" name="个人账户" id="inputTow">
           <input type="button" value="清空选项" name="清空选项" id="inputTowTow">
<form action="${app}/accountMapper/addAccount" type="post">
    <div id="div">
        <p id="p1">
        </p>
        <p id="p2">
        </p>
        <p id="p3">
        </p>
        <p id="p4">
        </p>
        <p id="p5">
        </p>
        <p id="p6">
        </p>
        <p id="p7">
        </p>
    </div>
</form>
    <script>
        $("#inputOn").click(function(){
            $("#p1").html("银行卡账户：");
            $("#p2").html("开户银行：");
            $("#p3").html("收款人姓名：");
            $("#p4").empty();
            $("#p5").empty();
            $("#p6").empty();
            $("#p7").empty();
            var inputOn = $("<input type='text' id='inputOn1' name='number' value='银行卡账户'>")
            var inputOnOn = $("<input type='text' id='inputOn2' name='name' value='开户银行'>")
            var inputOnOnOn = $("<input type='text' id='inputOn3' name='username' value='收款人姓名'>")
            $("#p1").append(inputOn)
            $("#p2").append(inputOnOn)
            $("#p3").append(inputOnOnOn)
            var sub=$("<input type=\"submit\" value=\"发送\" name=\"发送\" id=\"sub\">");
            $("#p7").append(sub)
        })

        $("#inputTow").click(function(){
            $("#p1").html("开户支行：");
            $("#p2").html("所在省份");
            $("#p3").html("所在市");
            $("#p4").html("账户名称：");
            $("#p5").html("银行账户：");
            $("#p6").html("确认账户：");
            $("#p7").empty();
            var inputOn1 = $("<input type='text' id='inputOn1' name='name' value='开户支行'>")
            var inputOn2 = $("<input type='text' id='inputOn2' name='ctitys' value='所在省份'>")
            var inputOn3 = $("<input type='text' id='inputOn3' name='ctityss' value='所在市'>")
            var inputOn4 = $("<input type='text' id='inputOn4' name='username' value='账户名称'>")
            var inputOn5 = $("<input type='text' id='inputOn5' name='number' value='银行账户'>")
            var inputOn6 = $("<input type='text' id='inputOn6' name='numbercopy' value='确认账户'>")
            $("#p1").append(inputOn1)
            $("#p2").append(inputOn2)
            $("#p3").append(inputOn3)
            $("#p4").append(inputOn4)
            $("#p5").append(inputOn5)
            $("#p6").append(inputOn6)
            var sub=$("<input type=\"submit\" value=\"发送\" name=\"发送\" id=\"sub\">");
            $("#p7").append(sub)
        })


        $("#inputTowTow").click(function(){
           $("#div").remove()
        })

        $("#sub").click(function(){
            alert("发送成功！")
        })
    </script>
</body>
</html>

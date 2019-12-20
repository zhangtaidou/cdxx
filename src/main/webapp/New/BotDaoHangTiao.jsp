<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="${app}/css/bootstrap.min.css">
	<script src="${app}/js/jquery.min.js"></script>
	<script src="${app}/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid" style="background-color: #3e495f">
		<div class="navbar-header">
			<a class="navbar-brand" href="${app}/New/BotDaoHangTiao.jsp"><font color="white">超级管理员后台</font></a>
	</div>
	<div>
		<ul class="nav navbar-nav">
			<li><a href="#" onclick="G1()"><font color="white">酒店结算</font> </a></li>
			<li><a href="#" onclick="G2()"><font color="white">酒店管理员插入订单操作</font></a></li>
			<li><a href="#" onclick="G3()"><font color="white">酒店操作</font></a></li>
			<li><a href="#"></a></li>
		</ul>
	</div>
	</div>
	<div>
	   <iframe align="center" id="G" width="100%" height="1000"  src="${app}/Hotel.jsp"  frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" hidden="hide" ></iframe>
	</div>
	
	<div>
		<iframe align="center" id="J_iframe1" width="100%" height="1000" src="${app}/adminprice.jsp" frameborder="no"
				border="0" marginwidth="0" marginheight="0" scrolling="no" hidden="hide"></iframe>
	</div>
	
	<div>
		<iframe align="center" id="J_iframe" width="100%" height="1000" src="${app}/New/JiuDianGuanLi.jsp"
				frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no" hidden="hide"></iframe>
	</div>

</nav>

<div>
	<iframe align="center" id="GG" width="100%" height="500" src="${app}/ZhanShi.jsp" frameborder="no " border="0"
			marginwidth="0" marginheight="0" scrolling="no"></iframe>
</div>
<div id="testyasuo">

</div>
</body>
<script>
		function G1(){
			$("#G").show();
				$("#J_iframe").hide();
			$("#J_iframe1").hide();
				$("#G1").hide();
			$("#GG").hide();
		}
		function G2(){
			$("#J_iframe1").show();
			$("#G").hide();
			$("#G1").hide();
			$("#J_iframe").hide();
		}
		function G3(){
			$("#J_iframe").show();
			$("#J_iframe1").hide();
			$("#G").hide();
			$("#G1").hide();
		}
	
	</script>
</html>
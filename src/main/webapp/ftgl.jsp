<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>房态管理</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <!--[if lt IE 9]>
    <meta http-equiv="refresh" content="0;ie.html"/>
    <![endif]-->
    <link rel="shortcut icon" href="favicon.ico">
    <link href="${app}/css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
    <link href="${app}/css/font-awesome.min.css?v=4.4.0" rel="stylesheet">
    <link href="${app}/css/animate.css" rel="stylesheet">
    <link href="${app}/css/style.css?v=4.1.0" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>

    <script>

        $(function () {
            $.ajax({
                url: "${app}/datetime/selectbyid",
                datatype: "json",
                type: "get",
                success: function (data) {
                    $.each(data, function (i, p) {
                        var td = $("<td onclick='selectKind(p.name)'>").append(p.name);
                        var tr = $("<tr>");
                        tr.append(td);
                        $("#tbody").append(tr)

                        /*     $.each(data, function (i, p) {
                                 var dan = $("<a class=\"J_menuItem\" href=\"\">")
                                 var li = $("<li>");
                                 li.append(dan);
                                 var ul = $("<ul class=\"nav nav-second-level\">");
                                 ul.append(li)
                                 var a = $("<a>");
                                 var span = $("<span class=\"nav-label employee\">").html(p.name);
                                 a.append(span)
                                 var li1= $("<li>");
                                 li1.append(ul).append(a)
                                 var aaa= $("#side-menu").append(li1)
                                 var td = $("<td>");
                                 td.append(aaa)
                                 var tr = $("<tr>");
                                 tr.append(td)
                                 $("#tbody").append(tr)
                             */
                    })
                }
            })

            /*
            * 根据房型查找kind
            * */
            function selectKind(name) {
                $.ajax({
                    url: "${app}/datetime/selectByKind",
                    datatype: "json",
                    type: "get",
                    data: {"name": name},
                    success: function (data) {
                        $.each(data, function (i, p) {
                            alert(p.kind)
                        })
                    }
                })
            }
        })
    </script>
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
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2">
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="nav-close"><i class="fa fa-times-circle"></i>
                </div>
                <%-- sidebar-collapse   panel-collapse collapse--%>
                <div class="sidebar-collapse" data-toggle="dropdown" id="aaa">
                    <ul class="nav" id="side-menu">

                    </ul>
                </div>
            </nav>

        </div>


        <table class="table table-bordered">
            <tr>
                <th style="width: 12.5%">日期</th>
                <th id="zy">周一</th>
                <th id="ze">周二</th>
                <th id="zhs">周三</th>
                <th id="zs">周四</th>
                <th id="zw">周五</th>
                <th id="zl">周六</th>
                <th id="zr">周日</th>
            </tr>
            <tbody id="tbody">
            </tbody>
        </table>
    </div>
</div>


</body>
</html>

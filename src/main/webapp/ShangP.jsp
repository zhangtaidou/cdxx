<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="app" value="${pageContext.request.contextPath}"></c:set>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        #TB {
            border-color: #00a2d4;
            height: 60px;
        }
        #TB tr th{
            text-align: center;
            height: 60px;
        }

        td{
            text-align: center;
        }
        a{
            text-decoration:none;
            color: #00a2d4;
        }
        #Sou{
            margin-left: 1000px;
        }
        #inp{
            height:35px;
            width:200px;
        }
        h2{
            margin-top: 20px;
            margin-left: 50px;
            text-align: center;
        }
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div id="eve">
    <h2>====================${sessionScope.admin.name}住房管理系统======================</h2>
    <div id='Sou'>
        <form>
            <input type="text" name='state' id='states' placeholder="请输入房态类型" class="bt1">
            <input type="button"   value="查询" class="btn btn-info" onclick="sels()">
            <input type='button' value='添加房间' data-toggle='modal' data-target='#myModal' class='btn btn-info'>
        </form>
    </div>

<table id="TB" table width="100%" border="2"cellpadding="2" cellspacing="1" >
    <tr>
        <th>房间房型</th>
        <th>房间价钱（无早）</th>
        <th>房间价钱（双早）</th>
        <th>房间价钱（单早）</th>
        <th>房间图片</th>
        <th>房型评分</th>
        <th>房间介绍</th>
        <th>房型剩余</th>
        <th>房态</th>
        <th colspan="3">操作</th>
    </tr>
    <tbody id="ty">

    </tbody>
</table>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">
                        添加房间
                    </h4>
                </div>
                <form action="${app}/roomController/addUser" method="post" enctype="multipart/form-data">
                <div class="modal-body">
                    房间类型：<input type="text" name='name' id='room'/>
                    房间价格：<input type="text" name='price' id='price'><br/>
                    房间房态：<input type="text" name='state' id='state'>
                    房间介绍：<input type="text" name='introduce' id='introduce'><br/>
                    房间库存：<input type="text" name='count' id='count'>
                    房间图片：<input type="file" name='files' id='img'>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        关闭
                    </button>
                    <button type="submit" class="btn btn-primary" >
                        确认
                    </button>
                </div>
                </form>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</div>

        <div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
             <div class="modal-dialog">
                  <div class="modal-content">
                          <div class="modal-header">
                                 <button type="submit" class="close" data-dismiss="modal" aria-hidden="true">
                                          &times;
                                         </button>
                                     <h4 class="modal-title" id="myModalLabel1">
                                修改房间
                </h4>
            </div>
            <form action="${app}/roomController/updateRoom" method="post" enctype="multipart/form-data">
                <div class="modal-body">
                    <input type="hidden" id="id" name="id" value="">
                    <input type="hidden" id="admin_id" name="admin_id" value="${sessionScope.admin.id}">
                    房间类型：<input type="text" name='name' id='rooms'/>
                    房间价格：<input type="text" name='price' id='prices'><br/>
                    房间介绍：<input type="text" name='introduce' id='introduces'><br/>
                    房间库存：<input type="text" name='count' id='counts'>
                    房间图片：<input type="file" name='files' id='imgs'>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        关闭
                    </button>
                    <button type="submit" class="btn btn-primary" >
                        确认
                    </button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
</body>
<script>

    $("#myModa2").modal("hide");
    function values(id) {
        $("#id").val(id);
    }
    function show(){
        var id = ${sessionScope.admin.id};
        $.ajax({
            "url":"${app}/roomController/selectRoom",
            "type":"get",
            "data":{"id":id},
            "dataType":"json",
            "success":function (data) {
                $(data).each(function () {
                    if(this.state==0){
                        if(this.towprice==0){
                                $("#ty").append("<tr id='td1'><td>" + this.name + "</td>" +
                                    "<td>" + this.price + "</td>" +
                                    "<td>无</td>" +
                                    "<td>"+this.onwprice+"</td>" +
                                    "<td><img  style=\"height:30px;width:40px;\" src=" + this.img + "></td>" +
                                    "<td>" + this.grade + "</td>" +
                                    "<td>" + this.introduce + "</td>" +
                                    "<td>" + this.count + "</td>" +
                                    "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='关房'></td>" +
                                    "<td><input type='button' value='删除' onclick='del("+this.id+")' class='btn btn-info'></td>"+
                                    "<td><input type='button' value='修改' data-toggle='modal' data-target='#myModa2' onclick='values("+this.id+")' class='btn btn-info'></td>"+
                                    "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                                )
                        }else if(this.towprice!=0){
                                $("#ty").append("<tr id='td1'><td>" + this.name + "</td>" +
                                    "<td>" + this.price + "</td>" +
                                    "<td>"+this.towprice+"</td>" +
                                    "<td>"+this.onwprice+"</td>" +
                                    "<td><img  style=\"height:30px;width:40px;\" src=" + this.img + "></td>" +
                                    "<td>" + this.grade + "</td>" +
                                    "<td>" + this.introduce + "</td>" +
                                    "<td>" + this.count + "</td>" +
                                    "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='关房'></td>" +
                                    "<td><input type='button' value='删除' onclick='del("+this.id+")' class='btn btn-info'></td>"+
                                    "<td><input type='button' value='修改' data-toggle='modal' data-target='#myModa2' onclick='values("+this.id+")' class='btn btn-info'></td>"+
                                    "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                                )
                        }else if(this.onwprice==0){
                            $("#ty").append("<tr id='td1'><td>" + this.name + "</td>" +
                                "<td>" + this.price + "</td>" +
                                "<td>"+this.towprice+"</td>" +
                                "<td>无</td>" +
                                "<td><img  style=\"height:30px;width:40px;\" src=" + this.img + "></td>" +
                                "<td>" + this.grade + "</td>" +
                                "<td>" + this.introduce + "</td>" +
                                "<td>" + this.count + "</td>" +
                                "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='关房'></td>" +
                                "<td><input type='button' value='删除' onclick='del("+this.id+")' class='btn btn-info'></td>"+
                                "<td><input type='button' value='修改' data-toggle='modal' data-target='#myModa2' onclick='values("+this.id+")' class='btn btn-info'></td>"+
                                "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                            )
                        }else if(this.onwprice!=0){
                            $("#ty").append("<tr id='td1'><td>" + this.name + "</td>" +
                                "<td>" + this.price + "</td>" +
                                "<td>"+this.towprice+"</td>" +
                                "<td>"+this.onwprice+"</td>" +
                                "<td><img  style=\"height:30px;width:40px;\" src=" + this.img + "></td>" +
                                "<td>" + this.grade + "</td>" +
                                "<td>" + this.introduce + "</td>" +
                                "<td>" + this.count + "</td>" +
                                "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='关房'></td>" +
                                "<td><input type='button' value='删除' onclick='del("+this.id+")' class='btn btn-info'></td>"+
                                "<td><input type='button' value='修改' data-toggle='modal' data-target='#myModa2' onclick='values("+this.id+")' class='btn btn-info'></td>"+
                                "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                            )
                        }
                    }else if(this.state==1){
                        if(this.towprice==0){
                                $("#ty").append("<tr id='td1'><td>" + this.name + "</td>" +
                                    "<td>" + this.price + "</td>" +
                                    "<td>无</td>"+
                                    "<td>"+this.onwprice+"</td>" +
                                    "<td><img  style=\"height:30px;width:40px;\" src=" + this.img + "></td>" +
                                    "<td>" + this.grade + "</td>" +
                                    "<td>" + this.introduce + "</td>" +
                                    "<td>" + this.count + "</td>" +
                                    "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='开房'></td>" +
                                    "<td><input type='button' value='删除' onclick='del(" + this.id + ")' class='btn btn-info'></td>" +
                                    "<td><input type='button' value='修改' data-toggle='modal' data-target='#myModa2' onclick='values(" + this.id + ")' class='btn btn-info'></td>" +
                                    "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                                )
                        }else if(this.towprice!=0){
                                $("#ty").append("<tr id='td1'><td>" + this.name + "</td>" +
                                    "<td>" + this.price + "</td>" +
                                    "<td>"+this.towprice+"</td>" +
                                    "<td>"+this.onwprice+"</td>" +
                                    "<td><img  style=\"height:30px;width:40px;\" src=" + this.img + "></td>" +
                                    "<td>" + this.grade + "</td>" +
                                    "<td>" + this.introduce + "</td>" +
                                    "<td>" + this.count + "</td>" +
                                    "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='开房'></td>" +
                                    "<td><input type='button' value='删除' onclick='del(" + this.id + ")' class='btn btn-info'></td>" +
                                    "<td><input type='button' value='修改' data-toggle='modal' data-target='#myModa2' onclick='values(" + this.id + ")' class='btn btn-info'></td>" +
                                    "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                                )
                        }else if(this.onwprice==0){
                            $("#ty").append("<tr id='td1'><td>" + this.name + "</td>" +
                                "<td>" + this.price + "</td>" +
                                "<td>"+this.towprice+"</td>" +
                                "<td>无</td>" +
                                "<td><img  style=\"height:30px;width:40px;\" src=" + this.img + "></td>" +
                                "<td>" + this.grade + "</td>" +
                                "<td>" + this.introduce + "</td>" +
                                "<td>" + this.count + "</td>" +
                                "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='开房'></td>" +
                                "<td><input type='button' value='删除' onclick='del(" + this.id + ")' class='btn btn-info'></td>" +
                                "<td><input type='button' value='修改' data-toggle='modal' data-target='#myModa2' onclick='values(" + this.id + ")' class='btn btn-info'></td>" +
                                "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                            )
                        }else if(this.onwprice!=0){
                            $("#ty").append("<tr id='td1'><td>" + this.name + "</td>" +
                                "<td>" + this.price + "</td>" +
                                "<td>"+this.towprice+"</td>" +
                                "<td>"+this.onwprice+"</td>" +
                                "<td><img  style=\"height:30px;width:40px;\" src=" + this.img + "></td>" +
                                "<td>" + this.grade + "</td>" +
                                "<td>" + this.introduce + "</td>" +
                                "<td>" + this.count + "</td>" +
                                "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='开房'></td>" +
                                "<td><input type='button' value='删除' onclick='del(" + this.id + ")' class='btn btn-info'></td>" +
                                "<td><input type='button' value='修改' data-toggle='modal' data-target='#myModa2' onclick='values(" + this.id + ")' class='btn btn-info'></td>" +
                                "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                            )
                        }
                    }
                        //'./images/1.jpg'

                })
            },
            "error":function () {
                alert("数据异常！请联系管理员！！！");
            }
        })
    }
    function sels() {
        var id = ${sessionScope.admin.id};
        var state=$("#states").val();
        $.ajax({
            "url":"${app}/roomController/selectByState",
            "data":{"state":state,"admin_id":id},
            "type":"get",
            "dataType":"json",
            "success":function (data) {
                $("#ty").text(" ");
                $(data).each(function (){
                    if(this.state==0){
                        $("#ty").append("<tr><td>" + this.name+ "</td>" +
                            "<td>" + this.price + "</td>" +
                            "<td><img  style=\"height:30px;width:40px;\" src="+this.img+"></td>"+
                            "<td>" + this.grade + "</td>" +
                            "<td>" + this.introduce + "</td>" +
                            "<td>" + this.count + "</td>" +
                            "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='关房'></td>" +
                            "<td><input type='button' value='删除' onclick='del("+this.id+")' class='btn btn-info'></td>"+
                            "<td><input type='button' value='修改' data-toggle='moda1' data-target='#myModa1' onclick='values("+this.id+")' class='btn btn-info'></td>"+
                            "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                        )
                    }else if(this.state==1){
                        $("#ty").append("<tr><td>" + this.name + "</td>" +
                            "<td>" + this.price + "</td>" +
                            "<td><img  style=\"height:30px;width:40px;\" src="+this.img+"></td>" +
                            "<td>" + this.grade + "</td>" +
                            "<td>" + this.introduce + "</td>" +
                            "<td>" + this.count + "</td>" +
                            "<td><input type='button'  id='btn' onclick='updstate(" + this.id + ")' class='btn btn-info' value='开房'></td>" +
                            "<td><input type='button' value='删除' onclick='del("+this.id+")' class='btn btn-info'></td>"+
                            "<td><input type='button' value='修改'data-toggle='moda1' data-target='#myModa1' onclick='values("+this.id+")'  class='btn btn-info'></td>"+
                            "<td><input type='button' value='添加' data-toggle='modal' data-target='#myModal' class='btn btn-info'></td>"
                        )
                    }

                })
            },
            "error":function () {
                alert("数据库异常请联系管理员");
            }
        })
    }
    $(function () {
        show()
    })
    function updstate(id){
        alert(id);
            $.ajax({
                "url":"${app}/roomController/updateState",
                "type":"post",
                "data":{"id":id},
                "dataType":"json",
                "error":function () {
                    alert("数据库异常请联系管理员");
                }
            })
        location.href="${app}/ShangP.jsp";
    }



    function del(id){
        $.ajax({
            "url":"${app}/roomController/deleteRoom",
            "type":"post",
            "data":{"id":id},
            "dataType":"json",
            "error":function () {
                alert("数据库异常请联系管理员");
            }
        })
        alert("删除成功")
        location.href="${app}/ShangP.jsp";
    }

    function upd(id){

        $.ajax({
            "url":"${app}/roomController/updateRoom",
            "type":"post",
            "data":{"id":id},
            "dataType":"json",
            "error":function () {
                alert("数据库异常请联系管理员");
            }
        })
    }
</script>
</html>
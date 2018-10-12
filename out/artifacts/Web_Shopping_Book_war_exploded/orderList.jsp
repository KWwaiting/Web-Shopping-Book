<%--
  Created by IntelliJ IDEA.
  User: hkw
  Date: 2018/6/16
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.itheima.po.User" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="UTF-8">
    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>


    <style type="text/css">

        .table {
            width: 100%;
            margin-top: 10px;
        }
       .fm{
           margin-top: 10px;
       }
        th {
            font: bold 12px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif;
            color: #4f6b72;
            border-right: 1px solid #C1DAD7;
            border-bottom: 1px solid #C1DAD7;
            border-top: 1px solid #C1DAD7;
            letter-spacing: 2px;
            text-transform: uppercase;
            text-align: left;
            padding: 6px 6px 6px 12px;
            background: #CAE8EA no-repeat;
            text-align: center;
        }

        td {
            border-right: 1px solid #C1DAD7;
            border-bottom: 1px solid #C1DAD7;
            background: #fff;
            font-size: 14px;
            padding: 6px 6px 6px 12px;
            color: #4f6b72;
        }

        td.alt {
            background: #F5FAFA;
            color: #797268;
        }

        th.spec,
        td.spec {
            border-left: 1px solid #C1DAD7;
        }
        /*---------for IE 5.x bug*/

        html>body td {
            font-size: 14px;
        }

        tr.select th,
        tr.select td {
            background-color: #CAE8EA;
            color: #797268;
        }
    </style>
</head>
<body>
<form class="fm" action="/selectOrderList" method="get">
     买家名称:<input type="text" name="username" />
     买家地址:<input type="text" name="address" />
     图书名称:<input type="text" name="bookname" />
    <button class="btn btn-primary btn-sm">查询</button>
    <button class="btn btn-primary btn-sm" data-toggle="modal"  data-target="#addOrderModal">
        添加订单
    </button>
</form>
<table class="table"  cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series" >
    <thead>
    <tr>
        <th>订单序号</th>
        <th>图书编号</th>
        <th>图书名称</th>
        <th>图书价格</th>
        <th>图片</th>
        <th>买家名称</th>
        <th>买家地址</th>
        <th>操作</th>
    </tr>
    </thead>
  <c:forEach items="${os}" var="o">
    <tr>
        <td class="alt">${o.order_id}</td>
        <td class="alt">${o.ISBN}</td>
        <td class="alt">${o.bookname}</td>
        <td class="alt">${o.price}</td>
        <td class="alt"><img src="images/bookPhoto/${o.photo}" width="45" height="45" /></td>
        <td class="alt">${o.username}</td>
        <td class="alt">${o.address}</td>
        <td class="alt">
            <a class="btn btn-primary btn-sm" data-toggle="modal"  data-target="#editOrderModal" onclick="editOrder(${o.order_id})">编辑</a>
            <a  class="btn btn-primary btn-sm"  onclick="deleteOrder(${o.order_id})">删除</a>
        </td>
    </tr>
  </c:forEach>
</table>


<!-- 添加 -->
<form method="post" action="/doAddOrder" class="form-horizontal" role="form" id="form_data" onsubmit="return check_form()" style="margin: 20px;">
    <div class="modal fade" id="addOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel" style="text-align: center">
                        添加订单
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form">

                        <div class="form-group">
                            <label for="ISBN" class="col-sm-3 control-label">图书编号</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="ISBN" value="" id="ISBN"
                                       placeholder="图书编号">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="bookname" class="col-sm-3 control-label">图书名称</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="bookname" value="" id="bookname"
                                       placeholder="图书名称">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="price" class="col-sm-3 control-label">图书价格</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="price" value="" id="price"
                                       placeholder="图书价格">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="photo" class="col-sm-3 control-label">图片</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control" name="photo" value="" id="photo"
                                       placeholder="图片">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="username" class="col-sm-3 control-label">买家名称</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="username" value="" id="username"
                                       placeholder="买家名称">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="address" class="col-sm-3 control-label">收货地址</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="address" value="" id="address"
                                       placeholder="收货地址">
                            </div>
                        </div>
                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button type="submit" class="btn btn-primary tj">
                        提交
                    </button><span id="tip"> </span>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</form>

<!-- 编辑 -->
<form method="post" action="/updateOrder" class="form-horizontal" role="form" id="form_edit" onsubmit="return check_form()" style="margin: 20px;">
    <div class="modal fade" id="editOrderModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabels" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabels" style="text-align: center">
                        编辑订单
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form">

                        <div class="form-group">
                            <div class="col-sm-9">
                                <input type="hidden" class="form-control" name="order_id" value=""  id="order_id"
                                       placeholder="订单序号">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_ISBN" class="col-sm-3 control-label">图书编号</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="ISBN" value=""  id="edit_ISBN"
                                       placeholder="图书编号">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="edit_bookname" class="col-sm-3 control-label">图书名称</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="bookname" value="" id="edit_bookname"
                                       placeholder="图书名称">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_price" class="col-sm-3 control-label">图书价格</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="price"  value="" id="edit_price"
                                       placeholder="图书价格">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_photo" class="col-sm-3 control-label">图片</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control" name="photo"  value="" id="edit_photo"
                                       placeholder="图片">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_username" class="col-sm-3 control-label">买家名称</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="username"  value="" id="edit_username"
                                       placeholder="买家名称">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_address" class="col-sm-3 control-label">买家地址</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="address"  value="" id="edit_address"
                                       placeholder="买家地址">
                            </div>
                        </div>

                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="submit" class="btn btn-primary bj " >提交</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</form>

</body>
</html>
<script>
    $(function () {


        $('#addnew').click(function(){

            window.location.href="add.html";
        });

    });


    $(function () {
        $('.tj').click(function () {
            alert("添加成功！")
            window.location.reload();
        });
    });

    $(function () {
        $('.bj').click(function () {
            alert("修改成功！")
            window.location.reload();
        });
    });


    function deleteOrder(order_id) {
        if(confirm('确定要删除订单吗？')){
            $.get("/deleteOrder",{"order_id":order_id},function (data) {
                if(data =true){
                    alert("订单删除成功！");
                    window.location.reload();
                }else {
                    alert("订单删除失败！");
                    window.location.reload();
                }
            });
        }
    }

    function editOrder(order_id) {
        $.ajax({
            type:"get",
            url:"/findOrderById",
            data:{"order_id":order_id},
            success:function (data ) {
             $("#order_id").val(data.order_id);
             $("#edit_ISBN").val(data.ISBN);
             $("#edit_bookname").val(data.bookname);
             $("#edit_price").val(data.price);
             $("#edit_photo").val(data.photo);
             $("#edit_username").val(data.username);
             $("#edit_address").val(data.address);
            }
        });
    }
</script>

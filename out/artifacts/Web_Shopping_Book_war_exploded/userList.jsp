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
<form class="fm" action="/selectUserList" method="get">
     用户名称:<input type="text" name="username" />
     用户地址:<input type="text" name="address" />
    <button class="btn btn-primary btn-sm">查询</button>
    <button class="btn btn-primary btn-sm" data-toggle="modal"  data-target="#addUserModal">
        添加用户
    </button>
</form>
<table class="table"  cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series" >
    <thead>
    <tr>
        <th>用户id</th>
        <th>用户名称</th>
        <th>密码</th>
        <th>地址</th>
        <th>联系电话</th>
        <th>邮箱</th>
        <th>操作</th>
    </tr>
    </thead>
  <c:forEach items="${us}" var="u">
    <tr>
        <td class="alt">${u.id}</td>
        <td class="alt">${u.username}</td>
        <td class="alt">${u.psw}</td>
        <td class="alt">${u.address}</td>
        <td class="alt">${u.phone}</td>
        <td class="alt">${u.email}</td>
        <td class="alt">
            <a class="btn btn-primary btn-sm" data-toggle="modal"  data-target="#editUserModal" onclick="editUser(${u.id})">编辑</a>
            <a href="#" class="btn btn-primary btn-sm"  onclick="deleteUser(${u.id})">删除</a>
        </td>
    </tr>
  </c:forEach>
</table>


<!-- 添加 -->
<form method="post" action="/doAddUser" class="form-horizontal" role="form" id="form_data" onsubmit="return check_form()" style="margin: 20px;">
    <div class="modal fade" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel" style="text-align: center">
                        添加用户
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                            <label for="username" class="col-sm-3 control-label">用户名</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="username" value="" id="username"
                                       placeholder="用户名">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="psw" class="col-sm-3 control-label">密码</label>
                            <div class="col-sm-9">
                                <input type="password" class="form-control" name="psw" value="" id="psw"
                                       placeholder="密码">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="address" class="col-sm-3 control-label">地址</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="address" value="" id="address"
                                       placeholder="地址">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="phone" class="col-sm-3 control-label">电话</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="phone" value="" id="phone"
                                       placeholder="电话">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="email" class="col-sm-3 control-label">邮箱</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="email" value="" id="email"
                                       placeholder="邮箱">
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
<form method="post" action="/updateUser" class="form-horizontal" role="form" id="form_edit" onsubmit="return check_form()" style="margin: 20px;">
    <div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabels" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabels" style="text-align: center">
                        编辑用户
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form">

                        <div class="form-group">
                            <div class="col-sm-9">
                                <input type="hidden" class="form-control" name="id" value=""  id="edit_id"
                                       placeholder="用户名">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_username" class="col-sm-3 control-label">用户名</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="username" value=""  id="edit_username"
                                       placeholder="用户名">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="edit_psw" class="col-sm-3 control-label">密码</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="psw" value="" id="edit_psw"
                                       placeholder="密码">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_address" class="col-sm-3 control-label">地址</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="address"  value="" id="edit_address"
                                       placeholder="地址">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_phone" class="col-sm-3 control-label">电话</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="phone"  value="" id="edit_phone"
                                       placeholder="电话">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_email" class="col-sm-3 control-label">邮箱</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="email"  value="" id="edit_email"
                                       placeholder="邮箱">
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


    function deleteUser(id) {
        if(confirm('确定要删除用户吗？')){
            $.get("/deleteUser",{"id":id},function (data) {
                if(data =true){
                    alert("客户删除成功！");
                    window.location.reload();
                }else {
                    alert("客户删除失败！");
                    window.location.reload();
                }
            });
        }
    }

    function editUser(edit_id) {
        $.ajax({
            type:"get",
            url:"/findUserById",
            data:{"id":edit_id},
            success:function (data ) {
             $("#edit_id").val(data.id);
             $("#edit_username").val(data.username);
             $("#edit_psw").val(data.psw);
             $("#edit_address").val(data.address);
             $("#edit_phone").val(data.phone);
             $("#edit_email").val(data.email   );
            }
        });
    }
</script>

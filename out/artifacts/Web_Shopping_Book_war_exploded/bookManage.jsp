<%--
  Created by IntelliJ IDEA.
  User: hkw
  Date: 2018/6/16
  Time: 14:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.itheima.po.Book" %>
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
<form class="fm" action="/selectBookList" method="get">
     图书名称:<input type="text" name="bookname" />
     图书类别:<input type="text" name="category" />
    <button class="btn btn-primary btn-sm">查询</button>
    <button class="btn btn-primary btn-sm" data-toggle="modal"  data-target="#addBookModal">
        添加图书
    </button>
</form>
<table class="table"  cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series" >
    <thead>
    <tr>
        <th>序号</th>
        <th>图书编号</th>
        <th>图书名称</th>
        <th>图书价格</th>
        <th>图书类别</th>
        <th>图书简介</th>
        <th>图片</th>
        <th>操作</th>
    </tr>
    </thead>
  <c:forEach items="${bs}" var="b">
    <tr>
        <td class="alt">${b.id}</td>
        <td class="alt">${b.ISBN}</td>
        <td class="alt">${b.bookname}</td>
        <td class="alt">${b.price}</td>
        <td class="alt">${b.category}</td>
        <td class="alt">${b.content}</td>
        <td class="alt"><img src="images/bookPhoto/${b.photo}" width="45" height="45" /></td>
        <td class="alt">
            <a class="btn btn-primary btn-sm" data-toggle="modal"  style="font-size: 10px;" data-target="#editBookModal" onclick="editBook(${b.id})">编辑</a>
            <a href="" class="btn btn-primary btn-sm"  style="font-size: 10px;margin-top: 8px" onclick="deleteBook(${b.id})">删除</a>
        </td>
    </tr>
  </c:forEach>
</table>


<!-- 添加  enctype="multipart/form-data" -->
<form method="post" action="/doAddBook"  class="form-horizontal" role="form" id="form_data" onsubmit="return check_form()" style="margin: 20px;">
    <div class="modal fade" id="addBookModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel" style="text-align: center">
                        添加图书
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form">

                        <div class="form-group">
                            <label for="add_ISBN" class="col-sm-3 control-label">图书编号</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="ISBN" value="" id="add_ISBN"
                                       placeholder="图书编号">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="add_bookname" class="col-sm-3 control-label">图书名称</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="bookname" value="" id="add_bookname"
                                       placeholder="图书名称">
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="add_price" class="col-sm-3 control-label">图书价格</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="price" value="" id="add_price"
                                       placeholder="图书价格">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="add_category" class="col-sm-3 control-label">图书类别</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="category" value="" id="add_category"
                                       placeholder="图书类别">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="add_content" class="col-sm-3 control-label">图书简介</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="content" value="" id="add_content"
                                       placeholder="图书简介">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="add_photo" class="col-sm-3 control-label">图片</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control" name="photo"  value="" id="add_photo">
                            </div>
                        </div>
                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button type="submit" class="btn btn-primary ">
                        提交
                    </button><span id="tip"> </span>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</form>

<!-- 编辑 -->
<form method="post" action="/updateBook"  class="form-horizontal" role="form" id="form_edit" onsubmit="return check_form()" style="margin: 20px;">
    <div class="modal fade" id="editBookModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalEdit" style="text-align: center">
                        编辑图书
                    </h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" role="form">

                        <div class="form-group">
                            <div class="col-sm-9">
                                <input type="hidden" class="form-control" name="id" value="" id="edit_id">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_ISBN" class="col-sm-3 control-label">图书编号</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="ISBN" value="" id="edit_ISBN">
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
                                <input type="text" class="form-control" name="price" value="" id="edit_price"
                                       placeholder="图书价格">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_category" class="col-sm-3 control-label">图书类别</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="category" value="" id="edit_category"
                                       placeholder="图书类别">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_content" class="col-sm-3 control-label">图书简介</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="content" value="" id="edit_content"
                                       placeholder="图书简介">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="edit_photo" class="col-sm-3 control-label">图片</label>
                            <div class="col-sm-9">
                                <input type="file" class="form-control" name="photo"  value="" id="edit_photo">
                            </div>
                        </div>
                    </form>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button type="submit" class="btn btn-primary ">
                        提交
                    </button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</form>

</body>
</html>
<script>


    $(function () {
        $('.tj').click(function () {
            confirm("添加成功")
        })
    })


    function deleteBook(id) {
        if(confirm('确定要删除书籍吗？')){
            $.get("/deleteBook",{"id":id},function (data) {
                if(data =true){
                    alert("书籍删除成功！");
                    window.location.reload();
                }else {
                    alert("客户删除失败！");
                    window.location.reload();
                }
            });
        }
    }

    function editBook(edit_id) {
        $.ajax({
            type:"get",
            url:"/findBookById",
            data:{"id":edit_id},
            success:function (data) {
                $("#edit_id").val(data.id);
                $("#edit_ISBN").val(data.ISBN);
                $("#edit_bookname").val(data.bookname);
                $("#edit_price").val(data.price);
                $("#edit_category").val(data.category);
                $("#edit_content").val(data.content);
                $("#edit_photo").val(data.photo);
            }
        });
    }
</script>

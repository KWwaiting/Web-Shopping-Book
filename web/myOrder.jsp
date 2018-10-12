<%--
  Created by IntelliJ IDEA.
  User: hkw
  Date: 2018/6/16
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  import="com.itheima.po.Book" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>

    <script src="js/jquery-latest.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" type="text/css" href="css/stylepc.css">
    <link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" />
    <script type="text/JavaScript" src="js/slimbox2.js"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jquery.timers-1.2.js" type="text/javascript"></script>

    <script type="text/javascript">

        ddsmoothmenu.init({
            mainmenuid: "templatemo_menu", //menu DIV id
            orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
            classname: 'ddsmoothmenu', //class added to menu's outer DIV
            contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
        })

    </script>

    <link rel="stylesheet" type="text/css" media="all" href="css/jquery.dualSlider.0.2.css" />
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
    <script type="text/javascript" src="js/ddsmoothmenu.js"></script>

    <style>
        .for-p{
            font-size: 15px;
        }
        table.gridtable {
            font-family: verdana,arial,sans-serif;
            font-size:15px;
            color:#333333;
            border-width: 1px;
            border-color: #666666;
            border-collapse: collapse;
        }
        table.gridtable th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #dedede;
        }
        table.gridtable td {
            width: 120px;
            height: 60px;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #ffffff;
            text-align: center;
        }

        .idpd{
            background-color:#F4F1E2;
            border: none;
            margin-top: 12px;
            margin-left: 14px;
            margin-right: 13px;
            cursor: pointer;
            font-family: Verdana, Arial, Helvetica, sans-serif;
        }
        .idpd:hover{
            cursor: pointer;
            color: red;
        }
    </style>
</head>
<body>
<div id="templatemo_header_wrapper">
    <div id="templatemo_header">
        <div id="site_title"><a href="http://sc.chinaz.com/">Free CSS Templates</a></div>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <%--<a href="userLogin.jsp"  style="float: right;color: red;font-size: 14px">${msga}</a>--%>
            <%--<li><a href=""style="float: right;color: red;font-size: 14px">${msg}</a></li>--%>
            <ul>
                <li><a href="shopping%20homepage.jsp">主页</a></li>
                <li><a href="">书籍分类</a>
                    <ul>
                        <li><span class="top"></span><span class="bottom"></span></li>
                        <li><a href="/computerBook">计算机</a></li>
                        <li><a href="">小说</a></li>
                        <li><a href="">传记</a></li>
                    </ul>
                </li>
                <li><a href="/bookSelect" >热销书籍</a>
                    <ul>
                        <li><span class="top"></span><span class="bottom"></span></li>
                    </ul>
                </li>
                <li><a href="userLogin.jsp">用户登陆</a></li>

                <li><form method="post" action="/selectOne">
                    <input type="hidden" id="idpd" name="username" value="${username}"/>
                    <input type="submit" value="个人信息" class="idpd"/>
                </form></li>

                <li><a href="/loginOut">退出登陆</a></li>

            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
        <div class="clear"></div>
    </div> <!-- END of header -->
</div> <!-- END of header wrapper -->

<div class="container">
    <div class="menu">
        <h3><i class="q-menu-img positionIicon"></i>我的信息</h3>
        <ul class="ulmenu1">
            <li><a class="selected" href="#tab1">信息详情</a></li>
            <li><a   href=" #tab2">我的订单</a></li>
        </ul>

        <h3><i class="q-menu-doit positionIicon"></i>产品手册</h3>
        <ul class="ulmenu2">
        </ul>

        <h3><i class="q-menu-three positionIicon"></i>常见问题</h3>
        <ul class="ulmenu3">
        </ul>
    </div>

    <div class="content">
        <div class="menu1 menu_tab">
            <div id="tab1" class="tab active">
                <form action="" method="post">
                     <p class="for-p">用户名：${username}</p>
                     <p class="for-p">联系电话：${phone}</p>
                     <p class="for-p">电子邮箱：${email}</p>
                      <p class="for-p">收货地址：${address}</p>
                    <button type="submit" id="edit">修改信息</button>
                </form>
            </div>

            <div  id="tab2" class="tab">
                <table  class="gridtable"  >
                    <thead>
                    <tr>
                        <th>图书编号</th>
                        <th>图书名称</th>
                        <th>图书价格</th>
                        <th>图书图片</th>
                        <th>买家名称</th>
                        <th>收货地址</th>
                        <th>操作</th>
                    </tr>
                    </thead>
         <c:forEach items="${us}" var="u">
             <tr>
                <td class="tt">${u.orders.ISBN}</td>
                <td class="tt">${u.orders.bookname}</td>
                <td class="tt">${u.orders.price}</td>
                <td class="tt"><img src="images/bookPhoto/${u.orders.photo}"  width="110" height="80" /></td>
                <td class="tt">${u.username}</td>
                <td class="tt">${u.address}</td>
                 <td> <a href="#" class="btn btn-primary btn-sm" onclick="deleteId(${u.orders.order_id})" >删除订单</a></td>
              </tr>
         </c:forEach>

                </table>
            </div>



        </div>

        <div class="menu2 menu_tab">

        <div class="menu3 menu_tab">

    </div>
        </div>


<script type="text/javascript" src="js/pc.js"></script>

      <script>
          function deleteId(order_id) {
              if(confirm('确定要删除订单吗？')){
                  $.get("/deleteId",{"order_id":order_id},function (data) {
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

     </script>
</body>
</html>

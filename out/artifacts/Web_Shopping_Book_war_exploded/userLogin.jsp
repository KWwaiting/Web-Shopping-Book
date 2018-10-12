<%--
  Created by IntelliJ IDEA.
  User: hkw
  Date: 2018/6/14
  Time: 10:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" href="./css/login.css">
    <title>Title</title>
    <style>
        .pt1{
            background: url("images/icon/user.png")  no-repeat;
            width:90px;
            height: 90px;
            background-size:32px 32px;
            position: absolute;
            padding: 0;
            left: 400px;
           margin-top: -185px;
           margin-left: 230px;
        }
        .pt2{
            background: url("images/icon/password.png")  no-repeat;
            width:90px;
            height: 90px;
            background-size:32px 32px;
            position: absolute;
            padding: 0;
            left: 400px;
            margin-top: -105px;
            margin-left: 230px;
        }
    </style>
</head>

<body id="body">

   <div id="frame">
       <form action="/login" >
           <a style="text-decoration: none;font-size: 13px;color:red;padding-left: 10px" href="">${msg}</a></li>
       <div>
           <label class="lb">
               <%--<i class="layui-icon layui-icon-username"></i>--%>
               <input type="text"   name="username" id="d1" placeholder="请输入用户名"/>
           </label>

       </div>

       <div>
           <label class="lb">
               <%--<i class="layui-icon layui-icon-password"></i>--%>
               <input type="password" name="psw" id="d2" placeholder="请输入密码"/>
           </label>
       </div>
           <input type="submit" class="btn" value="登陆"/><br>
           <div class="d-footer">
              <a href="" class="a1">忘记密码</a>
              <a href="" class="a1">忘记用户名</a>
               <span class="pt1"></span>
               <span class="pt2"></span>
              <a href="register.jsp" class="a1">免费注册</a>
           </div>
       </form>

   </div>
</body>
</html>

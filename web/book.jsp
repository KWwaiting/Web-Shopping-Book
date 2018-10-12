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
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/card.css">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/ddsmoothmenu.js"></script>

    <script type="text/javascript">

        ddsmoothmenu.init({
            mainmenuid: "templatemo_menu", //menu DIV id
            orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
            classname: 'ddsmoothmenu', //class added to menu's outer DIV
            contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
        })

    </script>


    <script src="http://apps.bdimg.com/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jquery.timers-1.2.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" />
    <script type="text/JavaScript" src="js/slimbox2.js"></script>
    <style type="text/css">
        #body{
            background-color: #FFFFFF;
        }
        .col-btn{
            width: 115px;
            height: 25px;
            cursor:pointer;
            color:#fff;
            padding: 3px 25px;
            margin: 15px 0 0 0;
            float: right;
            background-color: #FF0036;
            box-shadow: 2px 4px 6px #ccc;
        }
        .col-btn:hover{
            color: #F4511E;
            background-color: #FFFFFF;
        }
        .idpd{
            background-color:#F4F1E2;
            border: none;
            margin-top: 12px;
            margin-left: 13px;
            margin-right: 13px;
            cursor: pointer;
            font-size: 13px;

        }
        .idpd:hover{
            cursor: pointer;
            color: red;
        }
    </style>
</head>
<body id="body">
<div id="templatemo_header_wrapper">
    <div id="templatemo_header">
        <div id="site_title"><a href="http://sc.chinaz.com/">Free CSS Templates</a></div>
        <div id="templatemo_menu" class="ddsmoothmenu">
            <a href="userLogin.jsp"  style="float: right;color: red;font-size: 14px">${msga}</a>
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
                <li><a href="/bookSelect">热销书籍</a>
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
<div>

    <div style="width: 960px;height: 450px;margin: 0 auto">

  <c:forEach items="${bs}" var="b">
        <div class="">
            <div class="" style="float: left">
               <a href="images/bookPhoto/${b.photo}" rel="lightbox[portfolio]"><img src="images/bookPhoto/${b.photo}" width="220" height="180" style="margin-left: 80px;margin-top: 50px" /></a>
            </div>
            <p style="font-size: 30px;padding-top: 75px;padding-left: 450px">${b.bookname}</p>
            <p style="font-size: 24px;padding-top: 50px;padding-left: 450px"> ￥：${b.price}</p>

          <div style="margin-top: 20px">
            <h4 style="padding-left: 450px;font-size: 24px;padding-top: 50px">内容简介</h4>
            <p style="margin: 30px 0 0 100px;font-size: 18px">${b.content}</p>
         </div>

            <button class="btn btn-success add-button col-btn" data-price="${b.price}" data-proid="3" data-proname="${b.bookname}" data-proimg="images/bookPhoto/${b.photo}">加入购物车</button>
        </div>
  </c:forEach>

        </div>

    </div>

</div> <!-- END of main -->

<div id="templatemo_footer_wrapper" style="margin-top: 220px">
    <div id="tmall-ensure" >
        <a href="//pages.tmall.com/wow/seller/act/newpinzhibaozhang"></a>
        <a href="//www.tmall.com/wow/seller/act/seven-day"></a>
        <a href="//www.tmall.com/wow/seller/act/special-service"></a>
        <a href="//service.tmall.com/support/tmall/tmallHelp.htm"></a>
    </div>

    <div id="tmall-copyright" class="footer-copyright">
        <a href=""  >关于购物</a>
        <a href="" target="_blank">帮助中心</a>
        <a href="" target="_blank">开放平台</a>
        <a href="" target="_blank">诚聘英才</a>
        <a href="" target="_blank">联系我们</a>
        <a href="" target="_blank">网站合作</a>
        <a href="" target="_blank">法律声明</a>
        <a href="" target="_blank">隐私权政策</a>
        <a href="" target="_blank">知识产权</a>
        <a href="" target="_blank">廉正举报</a>
        <a href="" target="_blank">规则意见征集</a>

        <p>@2018  hkw版权所有</p>
    </div>


</div> <!-- END of footer wrapper -->



<div class="cd-cart-container empty">
    <a href="#0" class="cd-cart-trigger">
        购物车
        <ul class="count"> <!-- cart items count -->
            <li>0</li>
            <li>0</li>
        </ul> <!-- .count -->
    </a>

    <div class="cd-cart">
        <div class="wrapper">
            <header>
                <h2>购物车</h2>
                <span class="undo">已删除 <a href="#0">恢复</a></span>
            </header>

            <div class="body">
                <ul>
                    <!-- products added to the cart will be inserted here using JavaScript -->
                </ul>
            </div>
    <footer>
    <form action="/addOrder" method="post">
         <c:forEach items="${bs}" var="b">

             <input type="hidden" name="ISBN" value="${b.ISBN}"/>
             <input type="hidden" name="bookname" value="${b.bookname}"/>
             <input type="hidden" name="price" value="${b.price}"/>
             <input type="hidden" name="photo" value="${b.photo}"/>
             <input type="hidden" name="username" value="${username}"/>
             <input type="hidden" name="address" value="${address}"/>
         </c:forEach>
             <button  type="submit" name="bookname"  class="checkout"><em>结算 - ￥<span>0</span></em></button>

                </form>
            </footer>
         </div>
      </div> <!-- .cd-cart -->
  </div>



   <script>


   </script>
<script src="js/main.js"></script>
<script type="text/javascript" src="js/common.js"></script>
</body>
</html>

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

    <link rel="stylesheet" type="text/css" media="all" href="css/jquery.dualSlider.0.2.css" />

    <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jquery.timers-1.2.js" type="text/javascript"></script>
    <link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" />
    <script type="text/JavaScript" src="js/slimbox2.js"></script>

    <style type="text/css">
        #body{
            background-color: #FFFFFF;
        }
        .col-p{
            text-align: center;
            font-size: 14px;
            margin: 5px 0 5px 0;
        }
        #body h4{
            text-align: center;
            margin: 10px 0 10px 0;
        }
        .col-btn{
            width: 120px;
            height: 30px;
            cursor:pointer;
            color:#fff;
            padding: 3px 30px;
            margin: 0 0 0 60px;
            background-color: #FF0036;
            box-shadow: 2px 4px 6px #ccc;
        }
        .col-btn:hover{
            color: #F4511E;
            background-color: #FFFFFF;
        }

        #gallery{
            margin-left: 60px;
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
                <li><a href="about.html" class="selected">书籍分类</a>
                    <ul>
                        <li><span class="top"></span><span class="bottom"></span></li>
                        <li><a href="/computerBook" class="selected">计算机</a></li>
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
<div id="templatemo_main">

    <div id="gallery">
        <form action="/selectBook" method="post">
  <c:forEach items="${bs}" var="b">
        <div class="col one_third gallery_box">
            <div class="img_frame img_frame_13 img_nom"><span></span>
               <a href="images/bookPhoto/${b.photo}" rel="lightbox[portfolio]"><img src="images/bookPhoto/${b.photo}" width="200" height="160" />></a>
            </div>
            <h4>${b.bookname}</h4>
            <p class="col-p">￥：${b.price}</p>
            <button type="submit"  class="col-btn" name="bookname" value="${b.bookname}">详细信息</button>
        </div>
  </c:forEach>
        </form>
        </div>

    </div>
    <div class="clear"></div>


</div> <!-- END of main -->
<div id="templatemo_footer_wrapper">
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

   <script>

   </script>
</body>
</html>

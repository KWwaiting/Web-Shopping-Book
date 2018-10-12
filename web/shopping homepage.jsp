<%--
  Created by IntelliJ IDEA.
  User: hkw
  Date: 2018/6/13
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            //customtheme: ["#1c5a80", "#18374a"],
            contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
        })

    </script>

    <link rel="stylesheet" type="text/css" media="all" href="css/jquery.dualSlider.0.2.css" />

    <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jquery.timers-1.2.js" type="text/javascript"></script>
    <script src="js/jquery.dualSlider.0.3.min.js" type="text/javascript"></script>

    <script type="text/javascript">

        $(document).ready(function() {

            $("#carousel").dualSlider({
                auto:true,
                autoDelay: 6000,
                easingCarousel: "swing",
                easingDetails: "easeOutBack",
                durationCarousel: 1000,
                durationDetails: 600
            });

        });


    </script>

    <link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

    <link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" />
    <script type="text/JavaScript" src="js/slimbox2.js"></script>

    <style type="text/css">
        div.search {padding: 15px 0;}

        .form1 {
            position: relative;
            width: 220px;
            margin: 0 auto;

        }

        .inputbk, .buttonbk {
            border: none;
            outline: none;
        }

        .inputbk {
            width: 100%;
            height: 33px;
            padding-left: 13px;
        }

        .buttonbk {
            height: 35px;
            width: 35px;
            cursor: pointer;
            position: absolute;
        }
        .bar3 form {background: #fff;}
        .bar3 input, .bar3 button {
            background: transparent;
        }
        .bar3 button {
            top: 0;
            right: 0;
        }
        .bar3 button:before {
            content: "\f002";
            font-family: FontAwesome;
            font-size: 16px;
            color: #000000;
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
        <div id="site_title"><a href=""></a></div>
        <a href="userLogin.jsp"  style="float: right;color: red;font-size: 14px">${msga}</a>
        <li><a href="myOrder.jsp"style="float: right;color: red;font-size: 14px">${msg}</a></li>

        <div class="search bar3">
        <form action="/selectBook" method="post" class="form1">
            <input class="inputbk" type="text" name="bookname" placeholder="请输入您要搜索的书籍..." />
            <button class="buttonbk" type="submit" ></button>
        </form>
        </div>

        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="shopping%20homepage.jsp" class="selected">主页</a></li>
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
        <div id="templatemo_slider_wrapper">
            <div id="templatemo_slider">
                <div id="carousel">
                    <div class="panel">

                        <div class="details_wrapper">

                            <div class="details">

                                <div class="detail">
                                    <h3 style="text-align: center"><a href="#">浮生六记</a></h3>
                                    <p style="text-indent:2em;">《浮生六记》是清代文人沈复写作的自传散文。因其以真言述真情，从不刻意造作，得以浑然天成，独树一帜，达“乐而不淫，哀而不伤”之境界，深为后世文人所推崇，流传至今，已成经典。.</p>
                                    <a href="#" title="Read more" class="more"style="background-color: #F8F8F8">详情</a>
                                </div><!-- /detail -->

                                <div class="detail">
                                    <h3 style="text-align: center"><a href="#">小王子</a></h3>
                                    <p style="text-indent:2em;">遥远星球上的小王子，与美丽而骄傲的玫瑰吵架负气出走，在各星球漫游中，小王子遇到了傲慢的国王、酒鬼、惟利是图的商人，死守教条的地理学家，后来来到地球上，试图找到治愈孤独和痛苦的良方。 这时，他遇到一只奇怪的狐狸，于是奇妙而令人惊叹的事情发生了…… 《小王子》犹如透亮的镜子，照出了荒唐的成人世界。</p>
                                    <a href="#" title="Read more" class="more"style="background-color: #F8F8F8">详情</a>
                                </div><!-- /detail -->

                                <div class="detail">
                                    <h3 style="text-align: center"><a href="#">自在独行</a></h3>
                                    <p style="text-indent:2em;">这本书写情感、聊爱好、谈社会、说人生。有俗世的智慧，也有生活的趣味。对于匆匆的路人，平凹先生这部文集只是用来附庸风雅的玩物。但这本书却要写给生命的行者。愿他们能懂得孤独的真义，在生活里多一些从容潇洒。</p>
                                    <a href="#" title="Read more" class="more" style="background-color: #F8F8F8">详情</a>
                                </div><!-- /detail -->

                            </div><!-- /details -->

                        </div><!-- /details_wrapper -->

                        <div class="paging">
                            <div id="numbers"></div>
                            <a href="javascript:void(0);" class="previous" title="Previous" >Previous</a>
                            <a href="javascript:void(0);" class="next" title="Next">Next</a>
                        </div><!-- /paging -->

                        <a href="javascript:void(0);" class="play" title="Turn on autoplay">Play</a>
                        <a href="javascript:void(0);" class="pause" title="Turn off autoplay">Pause</a>

                    </div><!-- /panel -->

                    <div id="slider-image-frame">
                        <div class="backgrounds">

                            <div class="item item_1">
                                <img src="images/lb1.png" alt="Slider 01" width="280" height="305" />
                            </div><!-- /item -->

                            <div class="item item_2">
                                <img src="images/lb2.jpg" alt="Slider 02" width="280" height="305" />
                            </div><!-- /item -->

                            <div class="item item_3">
                                <img src="images/lb3.jpg" width="280" height="305" alt="Slider 03" />
                            </div><!-- /item -->

                        </div><!-- /backgrounds -->
                    </div>
                </div>
            </div> <!-- END of templatemo_slider -->
        </div> <!-- END of templatemo_slider_wrapper -->
    </div> <!-- END of header -->
</div> <!-- END of header wrapper -->
<div class="inner_copyright">Collect from <a href="http://www.cssmoban.com/" target="_blank" title="网页模板">网页模板</a></div>
<div id="templatemo_main">
    <div class="half left">
        <h2 style="text-align: center">追风筝的人</h2>

        <div class="img_frame img_frame_14 img_fl"><span></span>
            <img src="images/home4.jpg" alt="Image 01" style="width: 200px; height: 150px;" />
        </div>
        <p><em>这本小说太令人震撼，很长一段时日，让我所读的一切都相形失色。文学与生活中的所有重要主题，都交织在这部惊世之作里：爱、恐惧、愧疚、赎罪……

            　　——伊莎贝尔·阿连德</em></p>
        <p>许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的，因为往事会自行爬上来。回首前尘，我意识到在过去二十六年里，自己始终在窥视着那荒芜的小径。” 12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟随父亲逃往美国。 成年后的阿米尔始终无法原谅自己当年对哈桑的背叛。为了赎罪，阿米尔再度踏上暌违二十多年的故乡，希望能为不幸的好友尽一点心力，却发现一个惊天谎言，儿时的噩梦再度重演，阿米尔该如何抉择？</p>
        <a href="#" class="more">详情</a>
    </div>

    <div class="half right">
         <h2 style="text-align: center">岛上书店</h2>

        <div class="img_frame img_frame_14 img_fl"><span></span>
            <img src="images/home5.jpg" alt="Image 01" style="width: 200px; height: 150px;" />
        </div>
        <p><em>岛上书店是间维多利亚风格的小屋，门廊上挂着褪色的招牌，上面写着： 没有谁是一座孤岛，每本书都是一个世界  </em></p>
        <p> A．J．费克里，人近中年，在一座与世隔绝的小岛上，经营一家书店。命运从未眷顾过他，爱妻去世，书店危机，就连值钱的宝贝也遭窃。他的人生陷入僵局，他的内心沦为荒岛。就在此时，一个神秘的包袱出现在书店中，意外地拯救了陷于孤独绝境中的A．J．，成为了连接他和妻姐伊斯梅、警长兰比亚斯、出版社女业务员阿米莉娅之间的纽带，为他的生活带来了转机。小岛上的几个生命紧紧相依，走出了人生的困境，而所有对书和生活的热爱都周而复始，愈加汹涌。 </p>
        <a href="#" class="more">详情</a>
    </div>

    <div class="clear h40"></div>
    <div class="col one_third" style="margin: 0 30px 30px 60px">
        <div class="img_frame img_frame_13 img_nom"><span></span>
            <img src="images/home1.jpg" width="230px" height="170px"  alt="Image 01" />
        </div>
        <h5>好看的皮囊千篇一律有趣的灵魂万里挑一</h5>
        <p style="text-indent:2em;">25个鲜活主题，50个酸爽故事。让你看到“无聊人生”和“无敌人生”的不同，让你知道“平庸无奇”到“闪闪发光”的差距。提醒你“如果真的有什么是值得去赢的，那应该是尊重，而非苟同”；奉劝你“确实不需要为了谁而改变自己，但也不能惯着自己一无是处”；嘱咐你“内向的人，不必羡慕别人的哗众取宠”；拆穿你“游手好闲不等于文艺青年，生活无聊是因为缺少仪式感”。</p>
        <a href="#" class="more">详情</a>
    </div>
    <div class="col one_third">
        <div class="img_frame img_frame_13 img_nom"><span></span>
            <img src="images/home2.jpg" width="230px" height="170px" alt="Image 02" />
        </div>
        <h5 style="text-align: center">格局</h5>
        <p style="text-indent:2em;">格局指一个人的眼界、胸襟、胆识等心理要素的内在布局。再大的烙饼也大不过烙它的锅。只会盯着树皮里的虫子不放的鸟儿是不可能飞到白云之上的，只有眼里和心中装满了山河天地的雄鹰才能自由地在天地间翱翔！ 其实人生的格局就在你怎么看自己，在你所认识的人，在你说的每句话，在你给人的感觉，在你做事的态度，在你经历的遭遇，在你的每个念头，在你的所作所为。</p>
        <a href="#" class="more">详情</a>
    </div>
    <div class="col one_third no_margin_right">
        <div class="img_frame img_frame_13 img_nom"><span></span>
            <img src="images/home3.jpg" width="230px" height="170px" alt="Image 03" />
        </div>
        <h5 style="text-align: center">乌合之众</h5>
        <p style="text-indent:2em;">这本书提出了惊世骇俗的“暴民理论”，颠覆了人们对群体的通常认识。首先，群体是一种新的生命体。当不同的个体聚集成群体，就仿佛变成了一个独立的生物，它有自己的性格、情绪、行为模式。第二，群体会抑制个人的理性反思能力。一个人无论多么聪明、理性，一旦进入群体，就会变得盲目、冲动。他会不加怀疑地接受群体提供的意见、想法和信念，盲目地模仿群体中其他人的行为和态度。</p>
        <a href="#" class="more">详情</a>
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
</body>
</html>

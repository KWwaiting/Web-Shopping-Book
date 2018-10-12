/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.20-log : Database - bookstone
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookstone` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bookstone`;

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` int(20) NOT NULL,
  `bookname` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `content` varchar(800) DEFAULT NULL,
  `photo` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `book` */

insert  into `book`(`id`,`ISBN`,`bookname`,`price`,`category`,`content`,`photo`) values (3,3001,'活着',22.2,'热销书籍','  《活着》是一部充满血泪的小说。余华通过一位中国农民的苦难生活 讲述了人如何去承受巨大的苦难；讲述了眼泪的丰富和宽广；讲述了*望 的不存在：讲述了人是为了活着本身而活着…… 《活着》这部小说荣获意大利格林扎纳·卡佛文学奖*高奖项(1998年 )，台湾《中国时报》10本好书奖(1994年)，香港“博益”15本好书奖 (1990年)；并入选香港《亚洲周刊》评选的“20世纪中文小说百年百强” ；入选中国百位批评家和文学编辑评选的“九十年代*有影响的10部作品 ”。','rx1.jpg'),(4,3002,'摆渡人',30,'热销书籍','单亲女孩迪伦，15岁的世界一片狼藉：与母亲总是无话可说，在学校里经常受到同学的捉弄，*谈得来的好友也因为转学离开了。这一切都让迪伦感到无比痛苦。','rx2.jpg'),(5,3003,'天才在左疯子在右',22.7,'热销书籍','这本书，是一群误入歧途的天才的故事，也是一群入院治疗的疯子的故事。','rx3.jpg'),(6,3004,'嫌疑人X的献身',35,'热销书籍','《嫌疑人X的献身》是日本天王作家东野圭吾“迄今为止*杰作”，创造了日本推理小说史上*的奇迹，将第134届直木奖、第6届本格推理小说大奖及日本3大推理小说排行榜年度总*一并收入囊中。','rx4.jpg'),(7,3005,'解忧杂货店',39.5,'热销书籍','日本著名作家东野圭吾的《解忧杂货店》，出版当年即获中央公论文艺奖。作品超越推理小说的范围，却比推理小说更加扣人心弦。','rx5.jpg'),(8,3008,'时间简史',37.5,'热销书籍','史蒂芬·霍金生于1942年，他的生日恰好与伽利略去世的纪念日是同一天。他现任剑桥大学卢卡斯数学系教授教席（这一职位曾由艾萨克·牛顿担任）。他被誉为继爱因斯坦后*杰出的理论物理学家。他于1993年出版了《霍金讲演录——黑洞、婴儿宇宙及其他》。这本书是理论物理学方面的经典著作，其中的内容已被许多科学论文和书籍引用。','rx6.jpg'),(9,4001,'Python编程从入门到实践',69.8,'计算机','本书是一本针对所有层次的Python读者而作的Python入门书。全书分两部分：首部分介绍用Python 编程所必须了解的基本概念，包括matplotlib、NumPy和Pygal等强大的Python库和工具介绍，以及列表、字典、if语句、类、文件与异常、代码测试等内容；第二部分将理论付诸实践，讲解如何开发三个项目，包括简单的Python 2D游戏开发，如何利用数据生成交互式的信息图，以及创建和定制简单的Web应用，并帮读者解决常见编程问题和困惑。','computer1.jpg'),(10,4002,'利用Python进行数据分析 ',70,'计算机','本书讲的是利用Python进行数据控制、处理、整理、分析等方面的具体细节和基本要点。同时，它也是利用Python进行科学计算的实用指南（专门针对数据密集型应用）。本书重点介绍了用于高效解决各种数据分析问题的Python语言和库。《利用Python进行数据分析》没有阐述如何利用Python实现具体的分析方法。','computer2.jpg'),(11,4003,'Java从入门到精通(第4版)',48.86,'计算机','由浅入深，循序渐进。本书以初、中级程序员为对象，先从Java语言基础学起，再学习Java的核心技术，然后学习Swing的高级应用，*后学习开发一个完整项目。讲解过程中步骤详尽，版式新颖，在操作的内容图片上以uvw……的编号 内容的方式进行标注，使读者在阅读时一目了然，从而快速掌握书中内容。','computer3.jpg'),(12,4004,'C++ Primer Plus ',69.3,'计算机','《C++ Primer Plus(第6版)中文版》针对C++初学者，书中从C语言基础知识开始介绍，然后在此基础上详细阐述C++新增的特性，因此不要求读者有C语言方面的背景知识。本书可作为高等院校教授C++课程的教材，也可供初学者自学C++时使用。','computer4.jpg'),(13,4005,'WPS商务办公从新手到高手',34.4,'计算机','第01~04章：介绍了Word文档的编辑方法、图文混排功能的应用、表格的编辑与应用、SmartArt图表的应用、样式与模板的应用等。第05~08章：介绍了Excel表格的编辑与美化，函数与公式的应用，数据的排序、筛选与分类汇总，图表的创建与美化，数据透视图/表的应用等。','computer5.jpg'),(14,4006,'adobe photoshop cc 2017',78.2,'计算机','《Adobe Photoshop CC 2017经典教程（彩色版）》由Adobe公司的专家编写，是Adobe Photoshop CC 2017软件的正规学习用书。 《Adobe Photoshop CC 2017经典教程（彩色版）》包括15课，涵盖了照片的校正，修饰和修复，选区的建立方法，图层，蒙版和通道的用法， 文字设计，绘制矢量，视频制作，混合器画笔，打印3D对象以及生成和打印一致的颜色等内容。 《Adobe Photoshop CC 2017经典教程（彩色版）》语言通俗易懂并配以大量的图示，特别适合 Photoshop 新手阅读 ；有一定使用经验的用户 从中也可学到大量高级功能和 Photoshop CC 2017 新增的功能。本书也适合各类培训班学员及广大自学人员参考。','computer6.jpg');

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `ISBN` int(11) DEFAULT NULL,
  `bookname` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `photo` varchar(256) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`order_id`,`ISBN`,`bookname`,`price`,`photo`,`username`,`address`) values (2,3001,'活着,',22.2,'rx1.jpg','张三','南京');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `psw` varchar(20) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`psw`,`address`,`phone`,`email`) values (21,'root','123456','武汉','15098931','12345@qq.com'),(23,'hkw','123','北京','12345678901','12345@qq.com'),(24,'张三','1234','南京','150335698','123@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

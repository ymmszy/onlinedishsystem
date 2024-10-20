/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm9r4jz
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm9r4jz` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm9r4jz`;

/*Table structure for table `canpinfenlei` */

DROP TABLE IF EXISTS `canpinfenlei`;

CREATE TABLE `canpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canpinfenlei` varchar(200) NOT NULL COMMENT '餐品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `canpinfenlei` (`canpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1611112457281 DEFAULT CHARSET=utf8 COMMENT='餐品分类';

/*Data for the table `canpinfenlei` */

insert  into `canpinfenlei`(`id`,`addtime`,`canpinfenlei`) values (1611111925531,'2021-01-20 11:05:25','热菜'),(1611111939392,'2021-01-20 11:05:39','小吃'),(1611111968078,'2021-01-20 11:06:07','汤'),(1611112457280,'2021-01-20 11:14:16','肉菜');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm9r4jz/upload/1611112628554.jpg'),(2,'picture2','http://localhost:8080/ssm9r4jz/upload/1611112202262.jpg'),(3,'picture3','http://localhost:8080/ssm9r4jz/upload/1611112213712.jpg'),(6,'homepage','http://localhost:8080/ssm9r4jz/upload/1611112221652.jpg');

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canpinbianhao` varchar(200) DEFAULT NULL COMMENT '餐品编号',
  `canpinmingcheng` varchar(200) DEFAULT NULL COMMENT '餐品名称',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611112321312 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`canpinbianhao`,`canpinmingcheng`,`jiage`,`shuliang`,`zongjine`,`yonghuzhanghao`,`yonghuxingming`,`xiadanshijian`,`tupian`,`ispay`,`userid`) values (31,'2021-01-20 10:28:39','餐品编号1','餐品名称1',1,1,1,'用户账号1','用户姓名1','2021-01-20 10:28:39','http://localhost:8080/ssm9r4jz/upload/dingdanxinxi_tupian1.jpg','未支付',1),(32,'2021-01-20 10:28:39','餐品编号2','餐品名称2',2,2,2,'用户账号2','用户姓名2','2021-01-20 10:28:39','http://localhost:8080/ssm9r4jz/upload/dingdanxinxi_tupian2.jpg','未支付',2),(33,'2021-01-20 10:28:39','餐品编号3','餐品名称3',3,3,3,'用户账号3','用户姓名3','2021-01-20 10:28:39','http://localhost:8080/ssm9r4jz/upload/dingdanxinxi_tupian3.jpg','未支付',3),(34,'2021-01-20 10:28:39','餐品编号4','餐品名称4',4,4,4,'用户账号4','用户姓名4','2021-01-20 10:28:39','http://localhost:8080/ssm9r4jz/upload/dingdanxinxi_tupian4.jpg','未支付',4),(35,'2021-01-20 10:28:39','餐品编号5','餐品名称5',5,5,5,'用户账号5','用户姓名5','2021-01-20 10:28:39','http://localhost:8080/ssm9r4jz/upload/dingdanxinxi_tupian5.jpg','未支付',5),(36,'2021-01-20 10:28:39','餐品编号6','餐品名称6',6,6,6,'用户账号6','用户姓名6','2021-01-20 10:28:39','http://localhost:8080/ssm9r4jz/upload/dingdanxinxi_tupian6.jpg','未支付',6),(1611112321311,'2021-01-20 11:12:01','1611112390552','莲藕汤',152,4,608,'123','胡月','2021-01-20 11:18:34','http://localhost:8080/ssm9r4jz/upload/1611112024606.jpg','已支付',1611112298278);

/*Table structure for table `huodongdingdan` */

DROP TABLE IF EXISTS `huodongdingdan`;

CREATE TABLE `huodongdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canpinbianhao` varchar(200) DEFAULT NULL COMMENT '餐品编号',
  `canpinmingcheng` varchar(200) DEFAULT NULL COMMENT '餐品名称',
  `huodongjiage` int(11) DEFAULT NULL COMMENT '活动价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `zongjine` int(11) DEFAULT NULL COMMENT '总金额',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611112339553 DEFAULT CHARSET=utf8 COMMENT='活动订单';

/*Data for the table `huodongdingdan` */

insert  into `huodongdingdan`(`id`,`addtime`,`canpinbianhao`,`canpinmingcheng`,`huodongjiage`,`shuliang`,`zongjine`,`tupian`,`yonghuzhanghao`,`yonghuxingming`,`xiadanshijian`,`ispay`,`userid`) values (61,'2021-01-20 10:28:39','餐品编号1','餐品名称1',1,1,1,'http://localhost:8080/ssm9r4jz/upload/huodongdingdan_tupian1.jpg','用户账号1','用户姓名1','2021-01-20 10:28:39','未支付',1),(62,'2021-01-20 10:28:39','餐品编号2','餐品名称2',2,2,2,'http://localhost:8080/ssm9r4jz/upload/huodongdingdan_tupian2.jpg','用户账号2','用户姓名2','2021-01-20 10:28:39','未支付',2),(63,'2021-01-20 10:28:39','餐品编号3','餐品名称3',3,3,3,'http://localhost:8080/ssm9r4jz/upload/huodongdingdan_tupian3.jpg','用户账号3','用户姓名3','2021-01-20 10:28:39','未支付',3),(64,'2021-01-20 10:28:39','餐品编号4','餐品名称4',4,4,4,'http://localhost:8080/ssm9r4jz/upload/huodongdingdan_tupian4.jpg','用户账号4','用户姓名4','2021-01-20 10:28:39','未支付',4),(65,'2021-01-20 10:28:39','餐品编号5','餐品名称5',5,5,5,'http://localhost:8080/ssm9r4jz/upload/huodongdingdan_tupian5.jpg','用户账号5','用户姓名5','2021-01-20 10:28:39','未支付',5),(66,'2021-01-20 10:28:39','餐品编号6','餐品名称6',6,6,6,'http://localhost:8080/ssm9r4jz/upload/huodongdingdan_tupian6.jpg','用户账号6','用户姓名6','2021-01-20 10:28:39','未支付',6),(1611112339552,'2021-01-20 11:12:18','1611112457609','东波肉',50,2,100,'http://localhost:8080/ssm9r4jz/upload/1611112064387.jpg','123','胡月','2021-01-20 11:18:53','已支付',1611112298278);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611112601690 DEFAULT CHARSET=utf8 COMMENT='餐厅资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (71,'2021-01-20 10:28:39','标题1','http://localhost:8080/ssm9r4jz/upload/1611112145948.jpeg','<p>内容1</p>'),(72,'2021-01-20 10:28:39','标题2','http://localhost:8080/ssm9r4jz/upload/1611112153789.jpeg','<p>内容2</p>'),(73,'2021-01-20 10:28:39','标题3','http://localhost:8080/ssm9r4jz/upload/1611112162198.jpeg','<p>内容3</p>'),(1611112136224,'2021-01-20 11:08:55','安全资讯','http://localhost:8080/ssm9r4jz/upload/1611112129470.jpg','<p>发的都是范德萨富士达<img src=\"http://localhost:8080/ssm9r4jz/upload/1611112135308.jpg\"></p>'),(1611112601689,'2021-01-20 11:16:41','餐厅资讯','http://localhost:8080/ssm9r4jz/upload/1611112595537.jpeg','<p>范德萨范德萨范德萨放大<img src=\"http://localhost:8080/ssm9r4jz/upload/1611112600678.jpg\"></p>');

/*Table structure for table `tejiacanpin` */

DROP TABLE IF EXISTS `tejiacanpin`;

CREATE TABLE `tejiacanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canpinbianhao` varchar(200) DEFAULT NULL COMMENT '餐品编号',
  `canpinmingcheng` varchar(200) DEFAULT NULL COMMENT '餐品名称',
  `canpinfenlei` varchar(200) DEFAULT NULL COMMENT '餐品分类',
  `yuanjiage` int(11) DEFAULT NULL COMMENT '原价格',
  `huodongjiage` int(11) DEFAULT NULL COMMENT '活动价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangqing` longtext COMMENT '详情',
  `reversetime` datetime DEFAULT NULL COMMENT '倒计结束时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `canpinbianhao` (`canpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611112569488 DEFAULT CHARSET=utf8 COMMENT='特价餐品';

/*Data for the table `tejiacanpin` */

insert  into `tejiacanpin`(`id`,`addtime`,`canpinbianhao`,`canpinmingcheng`,`canpinfenlei`,`yuanjiage`,`huodongjiage`,`shuliang`,`tupian`,`xiangqing`,`reversetime`) values (51,'2021-01-20 10:28:39','餐品编号1','餐品名称1','餐品分类1',1,1,1,'http://localhost:8080/ssm9r4jz/upload/tejiacanpin_tupian1.jpg','详情1','2021-01-21 00:00:00'),(52,'2021-01-20 10:28:39','餐品编号2','餐品名称2','餐品分类2',2,2,2,'http://localhost:8080/ssm9r4jz/upload/tejiacanpin_tupian2.jpg','详情2','2021-01-21 00:00:00'),(53,'2021-01-20 10:28:39','餐品编号3','餐品名称3','餐品分类3',3,3,3,'http://localhost:8080/ssm9r4jz/upload/tejiacanpin_tupian3.jpg','详情3','2021-01-21 00:00:00'),(54,'2021-01-20 10:28:39','餐品编号4','餐品名称4','餐品分类4',4,4,4,'http://localhost:8080/ssm9r4jz/upload/tejiacanpin_tupian4.jpg','详情4','2021-01-21 00:00:00'),(55,'2021-01-20 10:28:39','餐品编号5','餐品名称5','餐品分类5',5,5,5,'http://localhost:8080/ssm9r4jz/upload/tejiacanpin_tupian5.jpg','详情5','2021-01-21 00:00:00'),(56,'2021-01-20 10:28:39','餐品编号6','餐品名称6','餐品分类6',6,6,6,'http://localhost:8080/ssm9r4jz/upload/tejiacanpin_tupian6.jpg','详情6','2021-01-21 00:00:00'),(1611112110572,'2021-01-20 11:08:29','1611112457609','东波肉','热菜',56,50,78,'http://localhost:8080/ssm9r4jz/upload/1611112064387.jpg','<p>范德萨范德萨范德萨范德萨<img src=\"http://localhost:8080/ssm9r4jz/upload/1611112108591.jpg\"></p>','2021-01-22 16:00:00'),(1611112569487,'2021-01-20 11:16:09','1611112919698','扬州炒饭','热菜',56,40,5,'http://localhost:8080/ssm9r4jz/upload/1611112538907.jpg','<p>范德萨范德萨范德萨<img src=\"http://localhost:8080/ssm9r4jz/upload/1611112568506.jpg\"></p>','2021-01-23 18:00:00');

/*Table structure for table `tesecanpin` */

DROP TABLE IF EXISTS `tesecanpin`;

CREATE TABLE `tesecanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `canpinbianhao` varchar(200) DEFAULT NULL COMMENT '餐品编号',
  `canpinmingcheng` varchar(200) DEFAULT NULL COMMENT '餐品名称',
  `canpinfenlei` varchar(200) DEFAULT NULL COMMENT '餐品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`),
  UNIQUE KEY `canpinbianhao` (`canpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611112494591 DEFAULT CHARSET=utf8 COMMENT='特色餐品';

/*Data for the table `tesecanpin` */

insert  into `tesecanpin`(`id`,`addtime`,`canpinbianhao`,`canpinmingcheng`,`canpinfenlei`,`tupian`,`jiage`,`shuliang`,`xiangqing`) values (21,'2021-01-20 10:28:39','餐品编号1','餐品名称1','餐品分类1','http://localhost:8080/ssm9r4jz/upload/tesecanpin_tupian1.jpg',1,1,'详情1'),(22,'2021-01-20 10:28:39','餐品编号2','餐品名称2','餐品分类2','http://localhost:8080/ssm9r4jz/upload/tesecanpin_tupian2.jpg',2,2,'详情2'),(23,'2021-01-20 10:28:39','餐品编号3','餐品名称3','餐品分类3','http://localhost:8080/ssm9r4jz/upload/tesecanpin_tupian3.jpg',3,3,'详情3'),(24,'2021-01-20 10:28:39','餐品编号4','餐品名称4','餐品分类4','http://localhost:8080/ssm9r4jz/upload/tesecanpin_tupian4.jpg',4,4,'详情4'),(25,'2021-01-20 10:28:39','餐品编号5','餐品名称5','餐品分类5','http://localhost:8080/ssm9r4jz/upload/tesecanpin_tupian5.jpg',5,5,'详情5'),(26,'2021-01-20 10:28:39','餐品编号6','餐品名称6','餐品分类6','http://localhost:8080/ssm9r4jz/upload/tesecanpin_tupian6.jpg',60,60,'<p>详情6</p>'),(1611112037603,'2021-01-20 11:07:16','1611112390552','莲藕汤','汤','http://localhost:8080/ssm9r4jz/upload/1611112024606.jpg',152,52,'<p>范德萨范德萨范德萨范德萨<img src=\"http://localhost:8080/ssm9r4jz/upload/1611112036151.jpg\"></p>'),(1611112494590,'2021-01-20 11:14:54','1611112862386','辣子鸡','肉菜','http://localhost:8080/ssm9r4jz/upload/1611112472426.jpg',88,85,'<p>范德萨范德萨f\'dfd<img src=\"http://localhost:8080/ssm9r4jz/upload/1611112492803.jpg\"></p>');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','5b6ezfb21i6lwdczeow972p7hqvw3ti5','2021-01-20 11:04:54','2021-01-25 11:14:46'),(2,1611112298278,'123','yonghu','用户','2kwutl4hiijnt2o52hudclx87t6r8cm4','2021-01-20 11:11:46','2021-01-20 12:11:46');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-20 10:28:39');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611112298279 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`nianling`,`lianxidianhua`,`dianziyouxiang`) values (41,'2021-01-20 10:28:39','用户1','用户姓名1','123456','男',1,'13823888881','773890001@qq.com'),(42,'2021-01-20 10:28:39','用户2','用户姓名2','123456','男',2,'13823888882','773890002@qq.com'),(43,'2021-01-20 10:28:39','用户3','用户姓名3','123456','男',3,'13823888883','773890003@qq.com'),(44,'2021-01-20 10:28:39','用户4','用户姓名4','123456','男',4,'13823888884','773890004@qq.com'),(45,'2021-01-20 10:28:39','用户5','用户姓名5','123456','男',5,'13823888885','773890005@qq.com'),(46,'2021-01-20 10:28:39','用户6','用户姓名6','123456','男',6,'13823888886','773890006@qq.com'),(1611112298278,'2021-01-20 11:11:38','123','胡月','123','女',36,'13513513525','1524545@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

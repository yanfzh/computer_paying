/*
Navicat MySQL Data Transfer

Source Server         : CC网上商城
Source Server Version : 80020
Source Host           : localhost:3306
Source Database       : store

Target Server Type    : MYSQL
Target Server Version : 80020
File Encoding         : 65001

Date: 2020-08-13 08:55:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birthday` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户';

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('1', 'yanfzh', '000', 'PuTian', '13860903441', '1556179200000');
INSERT INTO `customers` VALUES ('123456', '小张', '123456', '福建', '15027653983', '936806400000');
INSERT INTO `customers` VALUES ('3186016009', '张艳烽', '123456', 'PuTian', '13959623870', '966873600000');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` float DEFAULT NULL COMMENT '单价',
  `description` varchar(200) DEFAULT NULL COMMENT '产品描述',
  `brand` varchar(30) DEFAULT NULL COMMENT '电脑品牌',
  `cpu_brand` varchar(30) DEFAULT NULL COMMENT 'CPU品牌',
  `cpu_type` varchar(30) DEFAULT NULL COMMENT 'CPU型号',
  `memory_capacity` varchar(30) DEFAULT NULL COMMENT '内存容量',
  `hd_capacity` varchar(30) DEFAULT NULL COMMENT '硬盘容量',
  `card_model` varchar(30) DEFAULT NULL COMMENT '显卡型号',
  `displaysize` varchar(30) DEFAULT NULL COMMENT '显示器尺寸',
  `image` varchar(100) DEFAULT NULL COMMENT '电脑图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '戴尔(DELL)成就3470高性能商用办公台式电脑整机', '3399', '戴尔(DELL)成就3470高性能商用办公台式电脑整机(八代i3-8100 8G 1T 四年上门 有线键鼠 FHD宽屏)21.5英寸 ', ' 酷耶（Cooyes）', 'Intel ', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '21.5英寸', '5ae00211N25afad2c.jpg');
INSERT INTO `goods` VALUES ('2', '酷耶（Cooyes） i5四核/GTX1050ti独显4G/台式机', '2499', '酷耶（Cooyes） i5四核/GTX1050ti独显4G/台式机电脑主机整机全套组装家用办公游戏 GTX750独显主机+23英寸显示器 ', ' 酷耶（Cooyes）', 'Intel ', 'Intel i5', '4G', '1T', 'GTX 9系/7系', '23-24英寸', '5b1a332dN83700a7c.jpg');
INSERT INTO `goods` VALUES ('3', '联想天逸510S', '3099', '联想（Lenovo）天逸510S商用台式办公电脑整机（i3-7100 4G 1T 集显 WiFi 蓝牙 三年上门 win10）19.5英寸', '联想（Lenovo）', 'Intel ', 'Intel i3', '4G', '1T', '集成显卡', '21.5英寸', '5a6e946eNd622e938.jpg');
INSERT INTO `goods` VALUES ('4', '戴尔Vostro 3668-R2938', '6699', '戴尔(DELL)成就3668商用办公台式电脑整机(i7-7700 8G 1T GTX745 4G独显 DVD 三年上门 硬盘保留)23英寸 ', '戴尔（DELL） ', 'Intel ', 'Intel i7', '8G', '1T', 'GTX 9系/7系', '23-24英寸', '5ac482c0Nfbfc2b4e.jpg');
INSERT INTO `goods` VALUES ('5', '联想天逸510 Pro', '4899', '联想（Lenovo）天逸510 Pro商用台式电脑整机（英特尔八代酷睿i5-8400 8G 1T GT730 2G独显 ）23英寸 ', '联想（Lenovo） ', 'Intel', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '23-24英寸', '5b0fd9dbNeadc1b8d.jpg');
INSERT INTO `goods` VALUES ('6', '宏碁SQX4650 140N', '2099', '宏碁(Acer) 商祺SQX4650 140N 台式商用电脑整机（G3930 4G 1T 集显 win10 键鼠 三年上门）19.5英寸 ', '宏碁（acer） ', 'Intel', 'Intel奔腾 赛扬', '4G', '1T', 'GTX 9系/7系', '18.5-19.5英寸', '5b0fd9dbNeadc1b8d.jpg');
INSERT INTO `goods` VALUES ('7', '狄派 4G独显/绝地求生', '1999', '狄派 4G独显/绝地求生吃鸡台式机电脑酷睿i5-8400/i7级六核办公游戏电脑主机四核台式整机全套 电脑主机+显示器 套餐二（双核+500G机械盘+4G独显）', '狄派 ', 'AMD', 'AMD', '8G', '500G', 'AMD芯片', '23-24英寸', '5b36109aNe26f1c28.jpg');
INSERT INTO `goods` VALUES ('8', '海尔天越Y3', '1888', '海尔（Haier）天越Y3 商用台式办公电脑整机(Intel四核J3160 4G 500G 键鼠 WIFI 正版Win10)20.7英寸', '海尔（Haier） ', 'Intel', 'Intel奔腾 赛扬', '4G', '1T', 'GTX 9系/7系', '20-20.7英寸', '5b31a164Nb58f4bee.jpg');
INSERT INTO `goods` VALUES ('9', '清华同方精锐S710', '2099', '清华同方(THTF)精锐S710商用办公电脑整机(八代G4900 4G 1T 内置wifi win10）19.5英寸', '清华同方（THTF） ', 'Intel', 'Intel奔腾 赛扬', '4G', '1T', 'GTX 9系/7系', '18.5-19.5英寸', '5b431c4bN240eba11.jpg');
INSERT INTO `goods` VALUES ('10', '惠普690-076ccn', '6488', '惠普（HP）光影精灵II代 吃鸡游戏台式电脑主机(八代i7-8700 高频8G 128GSSD+1TB GTX1060 6G独显 WiFi蓝牙) ', '惠普（HP） ', 'Intel ', 'Intel i7', '8G', '1T', 'GTX1060 3G/6G', '21.5英寸', '5ae14568N12a4a954.jpg');
INSERT INTO `goods` VALUES ('11', '佐瀚（zuohan） AMD双', '4769', '佐瀚（zuohan） AMD双/四核/4G独显/台式电脑主机家用办公游戏电脑整机 ADM 双核/4G/500G-办公家用型 ', '佐瀚（zuohan） ', 'AMD', 'AMD', '4G', '1T', 'GTX 9系/7系', '21.5英寸', '5aa0831bN8b987edd.jpg');
INSERT INTO `goods` VALUES ('12', '联想扬天M4000e (PLUS)', '5599', '联想（Lenovo）扬天M4000e(PLUS)商用台式电脑整机(I5-7400 8G 1T+128GSSD 1G独显WIN10 4年上门)21.5英寸', '联想（Lenovo） ', 'Intel ', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '21.5英寸', '5af2b6d4Nf39e88c3.jpg');
INSERT INTO `goods` VALUES ('13', '戴尔Vostro 3470-R1328R', '3399', '戴尔(DELL)成就3470高性能商用办公台式电脑整机(八代i3-8100 8G 1T 四年上门 有线键鼠 FHD宽屏)21.5英寸 ', '戴尔（DELL） ', 'Intel ', 'Intel i3', '8G', '1T', 'GTX 9系/7系', '21.5英寸', '5ae00211N25afad2c.jpg');
INSERT INTO `goods` VALUES ('14', '戴尔Inspiron 3670-R1847S', '5299', '戴尔(DELL)灵越3670高性能台式电脑整机(八代i5-8400 8G 1T 2G独显 Win10 有线键鼠 三年上门)23.6英寸 ', '戴尔（DELL） ', 'Intel ', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '23-24英寸', '5ae0031cN51fcf335.jpg');
INSERT INTO `goods` VALUES ('15', '亚当贝尔 酷睿i5-8400/i7', '1650', '亚当贝尔 酷睿i5-8400/i7独显GTX1060家用商务办公游戏吃鸡台式电脑主机整机全 单主机 套餐一（酷睿I5+8G+GTX750独显） ', '亚当贝尔 ', 'Intel ', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '21.5英寸', '57d3998bNed48e1f1.jpg');
INSERT INTO `goods` VALUES ('16', '外星人AuroraR7-R3948S', '22699', '外星人Alienware Aurora水冷游戏台式电脑主机(八代i7-8700K 16G 256GSSD+2T GTX1080Ti 11G独显) ', '外星人（Alienware） ', 'Intel ', 'Intel i7', '16G', '1T', '1080TI 11G/GTX1080 8G', '21.5英寸', '5b5a8c43Nf234ed02.jpg');
INSERT INTO `goods` VALUES ('17', '宏碁SQX4650 340N', '2499', '宏碁(Acer) 商祺SQX4650 340N 台式商用电脑整机（G4560 4G 1T 集显 win10 Wifi 键鼠 三年上门）19.5英寸 ', ' 宏碁（acer） ', 'Intel', 'Intel奔腾 赛扬', '4G', '1T', 'GTX 9系/7系', '18.5-19.5英寸', '5a672a4eNc8467acf.jpg');
INSERT INTO `goods` VALUES ('18', '机械革命MR LX900-600', '9999', '机械革命(MECHREVO)MR LX900吃鸡游戏台式电脑主机(i7-8700K 16G 128GSSD+1T GTX1070*8G独显） ', '机械革命（MECHREVO）', 'Intel ', 'Intel i7', '16G', '1T', 'GTX 9系/7系', 'GTX1070 8G', '5b03e639N695b29a5.jpg');
INSERT INTO `goods` VALUES ('19', '亚当贝尔 四核/酷睿I5/i7级六核独显', '1399', '亚当贝尔 四核/酷睿I5/i7级六核独显GTX1060可选家用办公游戏吃鸡台式机电脑主机 电脑主机+19英寸显示器 配置一 英特尔四核+4G内存+128固态 ', '亚当贝尔 ', 'Intel', 'Intel奔腾 赛扬', '4G', '1T', 'GTX 9系/7系', '18.5-19.5英寸', '58c8fd52N19cbf7dd.jpg');
INSERT INTO `goods` VALUES ('20', '玖嘉久 酷睿i5/I7/六核1050TI', '2780', ' 玖嘉久 酷睿i5/I7/六核1050TI独显家用商务办公吃鸡大型游戏台式机电脑主机整机 电脑主机+24英寸曲面显示器(整套全套) 套餐三（酷睿i5+4G独显+固态+500G双硬盘） ', '玖嘉久 ', 'Intel ', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '23-24英寸', '5aa64e06N4287db6f.jpg');
INSERT INTO `goods` VALUES ('21', '宏硕（hongshuo） i7四', '2599', '宏硕（hongshuo） i7四核/GTX1050Ti 4G独显/台式机电脑整机办公游戏吃鸡电脑主机 套餐一（酷睿i5/120G/GTX750Ti）吃鸡 主机+显示器', '宏硕（hongshuo） ', 'Intel ', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '23-24英寸', '5b3984c1N261bafef.jpg');
INSERT INTO `goods` VALUES ('22', '酷耶（Cooyes） 酷耶 i5', '4398', '酷耶（Cooyes） 酷耶 i5 8400六核/16G/GTX1060独显台式机电脑主机家用吃鸡游戏 主机+24英寸曲面显示器 8G内存/120G/GTX1050独显2G ', '酷耶（Cooyes） ', 'Intel ', 'Intel i5', '16G', '1T', 'GTX1050Ti 4G/ GTX1050 2G', '23-24英寸', '5ae2fd44Nd496df02.jpg');
INSERT INTO `goods` VALUES ('23', '戴尔（DELL） Optiplex3050MT ', '2699', '戴尔（DELL） Optiplex3050MT 办公台式电脑主机 商用台式机办公电脑整机全套 带21.5英寸显示器 E2216HV G3930 4G 500G 标机 ', '戴尔（DELL） ', 'Intel', 'Intel奔腾 赛扬', '4G', '500G', 'GTX 9系/7系', '21.5英寸', '5b5a85b7Naf67e3e1.jpg');
INSERT INTO `goods` VALUES ('24', '宏碁SQX4650 746N', '4099', '宏碁(Acer) 商祺SQX4650 746N台式商用电脑整机(i5-7400 4G 1T GT720 2G win10 Wifi 键鼠 三年上门)21.5英寸 ', ' 宏碁（acer） ', 'Intel ', 'Intel i5', '4G', '1T', 'GTX 9系/7系', '21.5英寸', '5a672fbaN7fdae887.jpg');
INSERT INTO `goods` VALUES ('25', '梵泰（FOTEN） 英特尔', '1399', '梵泰（FOTEN） 英特尔四核办公家用台式电脑整机 主机+21.5显示器 【特价】四核+2G内存+60G固态硬盘 ', '梵泰（FOTEN） ', 'Intel', 'Intel奔腾 赛扬', '8G', '1T', 'GTX 9系/7系', '21.5英寸', '5afcf52dN88b989ea.jpg');
INSERT INTO `goods` VALUES ('26', 'AOC215A73440', '2098', 'AOC AIO734 21.5英寸超薄高清一体机台式电脑(升级Intel四核J3160 4G 120G固态 内置WiFi 三年质保 送键鼠) ', 'AOC ', 'Intel', 'Intel奔腾 赛扬', '4G', '1T', 'GTX 9系/7系', '20-21.5英寸', '5b4701a1Ncb117214.jpg');
INSERT INTO `goods` VALUES ('27', '七喜悦祺H10-4A41T', '1798', '七喜（HEDY）N20商用办公台式迷你电脑整机（Intel四核J3160 4G 500G 核显 WIFI USB3.0 送键鼠 ）19.5英寸 ', '七喜（HEDY） ', 'Intel', 'Intel奔腾 赛扬', '4G', '500G', 'GTX 9系/7系', '18.5-19.5英寸', '5aaa131cN604bedd9.jpg');
INSERT INTO `goods` VALUES ('28', '清华同方（THTF） 真爱', '2699', '清华同方（THTF） 真爱S710 台式迷你办公电脑整机原装家用商用主机显示器全套 【热卖】4G/128固态+1T/19.5显示器 ', '清华同方（THTF） ', '', 'Intel i5', '4G', '1T', 'GTX 9系/7系', '18.5-19.5英寸', '5b459bd6N343e561b.png');
INSERT INTO `goods` VALUES ('29', '戴尔（DELL） OptiPlex7050MT', '7099', '戴尔（DELL） OptiPlex7050MT商用台式电脑主机 i7高配定制版 电脑整机 配23英寸显示器-E2316H i7-7700 16G1T+128G固态 4G独显 ', ' 戴尔（DELL） ', 'Intel ', 'Intel i5', '4G', '1T', 'GTX 9系/7系', '21.5英寸', '5a3745b9Nfed5ebd5.jpg');
INSERT INTO `goods` VALUES ('30', '博仑帅（BOLUNSHUAI', '1468', '博仑帅（BOLUNSHUAI） 18.5-27英寸一体机电脑办公家用游戏台式主机整机 高速办公）18.5英寸酷睿i3 4G/64G固态 ', ' 博仑帅（BOLUNSHUAI）', 'Intel ', 'Intel i5', '4G', '1T', 'GTX 9系/7系', '19.5英寸及以下', '5b519c26N022e8587.jpg');
INSERT INTO `goods` VALUES ('31', '苹果（Apple） iMac 21.', '7618', '苹果（Apple） iMac 21.5英寸一体机 台式电脑 新款/双核I5/8GB/1TB/MMQA2CH/A ', '苹果（Apple） ', '', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '21.5英寸', '5b43f269N75f44475.jpg');
INSERT INTO `goods` VALUES ('32', 'AppleMNE92CH/A', '12688', 'Apple iMac 27英寸一体机（2017款四核Core i5/8GB内存/1TB Fusion Drive/RP570显卡/5K屏 MNE92CH/A） ', 'Apple ', 'Intel ', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '27英寸及以上', '5a694954Nb38893a3.jpg');
INSERT INTO `goods` VALUES ('33', '神舟（HASEE） 新梦K80 ', '3899', '神舟（HASEE） 新梦K80 D2台式机（I5 4G 1TB 2G 21.5英寸液晶） ', '神舟（HASEE） ', '', 'Intel i5', '4G', '1T', 'GTX 9系/7系', '21.5英寸', '56f8fbebN8caaec73.jpg');
INSERT INTO `goods` VALUES ('34', '华硕（ASUS） 台式机电', '3699', '华硕（ASUS） 台式机电脑S340MC办公家用商务团购无线wifi学生游戏电脑整机 高配8G/1T+256G定制【21.5显示器】 ', '华硕（ASUS） ', '', 'Intel i5', '8G', '1T', 'GTX 9系/7系', '21.5英寸', '5b20f41eNd56a5b75.jpg');

-- ----------------------------
-- Table structure for orderlineitems
-- ----------------------------
DROP TABLE IF EXISTS `orderlineitems`;
CREATE TABLE `orderlineitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `goodsid` int NOT NULL,
  `orderid` varchar(20) NOT NULL,
  `quantity` int DEFAULT NULL,
  `sub_total` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Relationship_3` (`orderid`),
  KEY `FK_Relationship_4` (`goodsid`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`goodsid`) REFERENCES `goods` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orderlineitems
-- ----------------------------
INSERT INTO `orderlineitems` VALUES ('7', '1', '159189762098228', '1', '3399');
INSERT INTO `orderlineitems` VALUES ('8', '1', '159189764098312', '1', '3399');
INSERT INTO `orderlineitems` VALUES ('9', '1', '159464304921862', '3', '10197');
INSERT INTO `orderlineitems` VALUES ('10', '11', '159464304921862', '10', '7690');
INSERT INTO `orderlineitems` VALUES ('11', '16', '159464304921862', '1', '22699');
INSERT INTO `orderlineitems` VALUES ('12', '28', '159464304921862', '1', '2699');
INSERT INTO `orderlineitems` VALUES ('13', '2', '159464304921862', '1', '2499');
INSERT INTO `orderlineitems` VALUES ('14', '7', '159470174435084', '0', '0');
INSERT INTO `orderlineitems` VALUES ('15', '10', '159470174435084', '2', '12976');
INSERT INTO `orderlineitems` VALUES ('16', '1', '159494177892945', '9', '30591');
INSERT INTO `orderlineitems` VALUES ('17', '5', '159494532531175', '2', '9798');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `order_date` bigint DEFAULT NULL,
  `status` int DEFAULT '1' COMMENT '1 代表待确认 0 代表已确认',
  `total` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('159189762098228', '1591897620982', '1', '3399');
INSERT INTO `orders` VALUES ('159189764098312', '1591897640983', '1', '3399');
INSERT INTO `orders` VALUES ('159464304921862', '1594643049218', '1', '45784');
INSERT INTO `orders` VALUES ('159470174435084', '1594701744350', '1', '12976');
INSERT INTO `orders` VALUES ('159494177892945', '1594941778929', '1', '30591');
INSERT INTO `orders` VALUES ('159494532531175', '1594945325311', '1', '9798');

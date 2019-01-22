/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : ckew

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2019-01-11 18:12:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `answer`
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` varchar(255) NOT NULL default '',
  `userid` varchar(255) default NULL,
  `examid` varchar(255) default NULL,
  `context` varchar(255) default NULL,
  `score` varchar(255) default NULL,
  `testid` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('201901111702171176', '201901091724211493', '在微机中，bit的中文含义是____。\r\n\r\n　　**A)二进制位 **B)字节\r\n\r\n　　**C)字 **D)双字', 'C', 'A', null);
INSERT INTO `answer` VALUES ('201901111702171484', '201901091724211493', '在微机中，应用最普遍的字符编码是____。\r\n\r\n　　**A)ASCII码**B)BCD码\r\n\r\n　　**C)汉字编码 **D)补码', 'D', 'A', null);
INSERT INTO `answer` VALUES ('201901111702171533', '201901091724211493', '反映计算机存储容量的基本单位是____。\r\n\r\n　　**A)二进制位 **B)字节\r\n\r\n　　**C)字 **D)双字', 'D', 'B', null);
INSERT INTO `answer` VALUES ('201901111702171791', '201901091724211493', '.一个字节的二进制位数是____。\r\n\r\n　　**A)2 **B)4\r\n\r\n　　**C)8 **D)16', 'B', 'C', null);
INSERT INTO `answer` VALUES ('201901111702171855', '201901091724211493', '微型计算机的运算器、控制器及内存储器的总称是____。\r\n\r\n　　**A)CPU **B)ALU\r\n\r\n　　**C)MPU **D)主机', 'B', 'D', null);
INSERT INTO `answer` VALUES ('201901111702171928', '201901091724211493', '一个完整的计算机系统包括____。**A主机、键盘、显示器 **B计算机及其外部设备**C系统软件与应用软件 **D计算机的硬件系统和软件系统', 'A', 'D', null);
INSERT INTO `answer` VALUES ('201901111741091234', '201901091724211493', '.世界上公认的第一台电子计算机诞生在____。\r\n\r\n　　**A)1945年 **B)1946年\r\n\r\n　　**C)1948年 **D)1952年', 'C', 'B', null);
INSERT INTO `answer` VALUES ('201901111741091320', '201901091724211493', '计算机内部使用的数是____。\r\n\r\n　　**A)二进制数 **B)八进制数\r\n\r\n　　**C)十进制数 **D)十六进制数', 'B', 'A', null);
INSERT INTO `answer` VALUES ('201901111741091391', '201901091724211493', '一个完整的计算机系统包括____。**A主机、键盘、显示器 **B计算机及其外部设备**C系统软件与应用软件 **D计算机的硬件系统和软件系统', 'C', 'D', null);
INSERT INTO `answer` VALUES ('201901111741091404', '201901091724211493', '在微机中，应用最普遍的字符编码是____。\r\n\r\n　　**A)ASCII码**B)BCD码\r\n\r\n　　**C)汉字编码 **D)补码', 'B', 'A', null);
INSERT INTO `answer` VALUES ('201901111741091411', '201901091724211493', '.一个字节的二进制位数是____。\r\n\r\n　　**A)2 **B)4\r\n\r\n　　**C)8 **D)16', 'A', 'C', null);
INSERT INTO `answer` VALUES ('201901111741091579', '201901091724211493', '微型计算机的运算器、控制器及内存储器的总称是____。\r\n\r\n　　**A)CPU **B)ALU\r\n\r\n　　**C)MPU **D)主机', 'B', 'D', null);
INSERT INTO `answer` VALUES ('201901111741091934', '201901091724211493', '微型计算机的发展是以____的发展为表征的。\r\n\r\n　　**A)微处理器**B)软件\r\n\r\n　　**C)主机 **D)控制器', 'B', 'A', null);
INSERT INTO `answer` VALUES ('201901111743251338', '201901091724211493', '反映计算机存储容量的基本单位是____。\r\n\r\n　　**A)二进制位 **B)字节\r\n\r\n　　**C)字 **D)双字', 'D', 'B', null);
INSERT INTO `answer` VALUES ('201901111743261417', '201901091724211493', '在微型计算机中，微处理器的主要功能是进行____。\r\n\r\n　　**A)算术逻辑运算及全机的控制**B)逻辑运算\r\n\r\n　　**C)算术逻辑运算**D)算术运算', 'C', 'A', null);
INSERT INTO `answer` VALUES ('201901111743261701', '201901091724211493', '世界上第一台计算机诞生于（）年**A.1593**B.1946**C.1964**D.1956', 'C', 'B', null);
INSERT INTO `answer` VALUES ('201901111743261732', '201901091724211493', '通常，在微机中所指的80486是____。\r\n\r\n　　**A)微机名称 **B)微处理器型号\r\n\r\n　　**C)产品型号**D)主频', 'B', 'D', null);
INSERT INTO `answer` VALUES ('201901111743261748', '201901091724211493', '微型计算机的发展是以____的发展为表征的。\r\n\r\n　　**A)微处理器**B)软件\r\n\r\n　　**C)主机 **D)控制器', 'B', 'A', null);
INSERT INTO `answer` VALUES ('201901111743261803', '201901091724211493', '.世界上公认的第一台电子计算机诞生在____。\r\n\r\n　　**A)1945年 **B)1946年\r\n\r\n　　**C)1948年 **D)1952年', 'D', 'B', null);
INSERT INTO `answer` VALUES ('201901111743261828', '201901091724211493', '一个完整的计算机系统包括____。**A主机、键盘、显示器 **B计算机及其外部设备**C系统软件与应用软件 **D计算机的硬件系统和软件系统', 'A', 'D', null);
INSERT INTO `answer` VALUES ('201901111743261918', '201901091724211493', '世界上第一台计算机的英文缩写命为（）**A.ENIAC**B.ENABC**C.EDSAC**D.MARK-11', 'nullBC', '**A', null);
INSERT INTO `answer` VALUES ('201901111806481908', '201901091724211493', null, '你好', '留言', null);

-- ----------------------------
-- Table structure for `exam`
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `id` varchar(255) NOT NULL default '',
  `title` varchar(255) default NULL,
  `answer` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `mark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam
-- ----------------------------
INSERT INTO `exam` VALUES ('201901111032051015', '一个完整的计算机系统包括____。**A主机、键盘、显示器 **B计算机及其外部设备**C系统软件与应用软件 **D计算机的硬件系统和软件系统', 'D', '选择题', null);
INSERT INTO `exam` VALUES ('201901111032051197', '世界上第一台计算机诞生于（）年**A.1593**B.1946**C.1964**D.1956', 'B', '选择题', null);
INSERT INTO `exam` VALUES ('201901111032051283', '世界上第一台计算机的英文缩写命为（）**A.ENIAC**B.ENABC**C.EDSAC**D.MARK-11', '**A', '多选题', null);
INSERT INTO `exam` VALUES ('201901111034051008', '“长城386微机”中的“386”指的是____。\r\n\r\n　　**A)CPU的型号 **B)CPU的速度\r\n\r\n　　**C)内存的容量 **D)运算器的速度', 'A', '选择题', null);
INSERT INTO `exam` VALUES ('201901111034051118', '微型计算机的运算器、控制器及内存储器的总称是____。\r\n\r\n　　**A)CPU **B)ALU\r\n\r\n　　**C)MPU **D)主机', 'D', '选择题', null);
INSERT INTO `exam` VALUES ('201901111034061188', '在微型计算机中，微处理器的主要功能是进行____。\r\n\r\n　　**A)算术逻辑运算及全机的控制**B)逻辑运算\r\n\r\n　　**C)算术逻辑运算**D)算术运算', 'A', '选择题', null);
INSERT INTO `exam` VALUES ('201901111034061735', '在微机中，应用最普遍的字符编码是____。\r\n\r\n　　**A)ASCII码**B)BCD码\r\n\r\n　　**C)汉字编码 **D)补码', 'A', '选择题', null);
INSERT INTO `exam` VALUES ('201901111034061866', '反映计算机存储容量的基本单位是____。\r\n\r\n　　**A)二进制位 **B)字节\r\n\r\n　　**C)字 **D)双字', 'B', '选择题', null);
INSERT INTO `exam` VALUES ('201901111036411203', '.世界上公认的第一台电子计算机诞生在____。\r\n\r\n　　**A)1945年 **B)1946年\r\n\r\n　　**C)1948年 **D)1952年', 'B', '选择题', null);
INSERT INTO `exam` VALUES ('201901111036411561', '通常，在微机中所指的80486是____。\r\n\r\n　　**A)微机名称 **B)微处理器型号\r\n\r\n　　**C)产品型号**D)主频', 'D', '选择题', null);
INSERT INTO `exam` VALUES ('201901111036411569', '个人计算机属于____。\r\n\r\n　　**A)小巨型机 **B)中型机\r\n\r\n　　**C)小型机 **D)微机', 'D', '选择题', null);
INSERT INTO `exam` VALUES ('201901111036411614', '微型计算机的发展是以____的发展为表征的。\r\n\r\n　　**A)微处理器**B)软件\r\n\r\n　　**C)主机 **D)控制器', 'A', '选择题', null);
INSERT INTO `exam` VALUES ('201901111036411823', 'DRAM存储器的中文含义是____。\r\n\r\n　　**A)静态随机存储器**B)动态只读存储器\r\n\r\n　　**C)静态只读存储器**D)动态随机存储器', 'D', '选择题', null);
INSERT INTO `exam` VALUES ('201901111036421046', '在微机中，bit的中文含义是____。\r\n\r\n　　**A)二进制位 **B)字节\r\n\r\n　　**C)字 **D)双字', 'A', '选择题', null);
INSERT INTO `exam` VALUES ('201901111036421054', '.一个字节的二进制位数是____。\r\n\r\n　　**A)2 **B)4\r\n\r\n　　**C)8 **D)16', 'C', '选择题', null);
INSERT INTO `exam` VALUES ('201901111036421127', '计算机内部使用的数是____。\r\n\r\n　　**A)二进制数 **B)八进制数\r\n\r\n　　**C)十进制数 **D)十六进制数', 'A', '选择题', null);
INSERT INTO `exam` VALUES ('201901111036421171', '在微机中，存储容量为5MB，指的是____。\r\n\r\n　　**A)5×lO00×1000个字节 **B)5×1000×1024个字节\r\n\r\n　　**C)5×1024×1000个字节 **D)5×1024×1024个字节', 'D', '选择题', null);

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` varchar(255) NOT NULL default '',
  `userid` varchar(255) default NULL,
  `score` varchar(255) default NULL,
  `mark` varchar(255) default NULL,
  `time` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1111', '201901091724211493', 'C', null, '2019-01-09 17:58:55');
INSERT INTO `test` VALUES ('123123', '201901091724211493', 'A', null, '2019-01-09 17:58:43');
INSERT INTO `test` VALUES ('201901111118381834', '201901091724211493', 'B', null, '2019-01-11 11:18:38');
INSERT INTO `test` VALUES ('201901111702181014', '201901091724211493', 'D', null, '2019-01-11 17:02:18');
INSERT INTO `test` VALUES ('201901111741091416', '201901091724211493', 'D', null, '2019-01-11 17:41:09');
INSERT INTO `test` VALUES ('201901111743261922', '201901091724211493', 'D', null, '2019-01-11 17:43:26');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL default '',
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `mark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('20151612204', 'admin', 'admin', 'admin', null);
INSERT INTO `user` VALUES ('201901091724211493', 'asdd', '123', null, null);

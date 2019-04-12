/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : school_donation

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2019-04-10 22:23:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(200) NOT NULL auto_increment COMMENT 'id',
  `pubdate` varchar(50) collate utf8_bin NOT NULL COMMENT '发布时间',
  `content` varchar(220) collate utf8_bin NOT NULL COMMENT '内容',
  `picture` varchar(100) collate utf8_bin default NULL COMMENT '图片',
  `activitydate` varchar(50) collate utf8_bin default NULL COMMENT '活动进行时间',
  `tel` varchar(11) collate utf8_bin default NULL COMMENT '联系方式',
  `pubusername` varchar(50) collate utf8_bin default NULL COMMENT '发布人',
  `title` varchar(100) collate utf8_bin default NULL COMMENT '标题',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '123', 'Lorem Ipsum是印刷排版行业的虚拟文本。Lorem Ipsum一直是行业标准的虚拟tex', '\\donation_pub\\pubimages\\aa.png', '123', '123', '123', '与普遍的看法相反');
INSERT INTO `activity` VALUES ('2', '2019-01-02 14:22', 'Lorem Ipsum是印刷排版行业的虚拟文本。Lorem Ipsum一直是行业标准的虚拟tex', '\\donation_pub\\pubimages\\one.png', '2019-02-02 14:22', '234', '234', '助力留守家庭欢聚，加康加年味');
INSERT INTO `activity` VALUES ('3', '123', 'Lorem Ipsum是印刷排版行业的虚拟文本。Lorem Ipsum一直是行业标准的虚拟tex', '\\donation_pub\\pubimages\\two.png', null, null, null, '一年产生79亿笔爱心捐赠 淘宝成全球最大互联网公益参与平台');
INSERT INTO `activity` VALUES ('4', '324', 'Lorem Ipsum是印刷排版行业的虚拟文本。Lorem Ipsum一直是行业标准的虚拟tex', '\\donation_pub\\pubimages\\aa.png', null, '234', '234', '324');

-- ----------------------------
-- Table structure for donation
-- ----------------------------
DROP TABLE IF EXISTS `donation`;
CREATE TABLE `donation` (
  `did` int(255) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` varchar(255) default NULL,
  `picture` varchar(255) default NULL,
  `pubdate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `dcode` int(5) default NULL,
  PRIMARY KEY  (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of donation
-- ----------------------------

-- ----------------------------
-- Table structure for dt
-- ----------------------------
DROP TABLE IF EXISTS `dt`;
CREATE TABLE `dt` (
  `donationtitle` varchar(50) collate utf8_bin NOT NULL COMMENT '所捐助项目标题',
  `username` varchar(50) collate utf8_bin default NULL COMMENT '姓名',
  `sid` varchar(20) collate utf8_bin NOT NULL COMMENT '学号',
  `tel` varchar(11) collate utf8_bin default NULL COMMENT '联系方式',
  `denationtype` varchar(30) collate utf8_bin default NULL COMMENT '捐助类型',
  `denationdate` varchar(30) collate utf8_bin default NULL COMMENT '捐助时间',
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dt
-- ----------------------------

-- ----------------------------
-- Table structure for dtliuyan
-- ----------------------------
DROP TABLE IF EXISTS `dtliuyan`;
CREATE TABLE `dtliuyan` (
  `donationtitle` varchar(50) collate utf8_bin NOT NULL COMMENT '所捐助项目标题',
  `username` varchar(50) collate utf8_bin default NULL COMMENT '姓名',
  `sid` varchar(20) collate utf8_bin NOT NULL COMMENT '学号',
  `content` varchar(2000) collate utf8_bin default NULL COMMENT '内容',
  `replydate` varchar(30) collate utf8_bin default NULL COMMENT '回复时间',
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of dtliuyan
-- ----------------------------

-- ----------------------------
-- Table structure for gx
-- ----------------------------
DROP TABLE IF EXISTS `gx`;
CREATE TABLE `gx` (
  `id` int(50) NOT NULL auto_increment COMMENT 'id',
  `title` varchar(100) collate utf8_bin NOT NULL COMMENT '标题',
  `pubdate` varchar(30) collate utf8_bin default NULL COMMENT '发布时间',
  `content` varchar(2000) collate utf8_bin default NULL COMMENT '内容',
  `pciture` varchar(1000) collate utf8_bin default NULL COMMENT '图片',
  `username` varchar(50) collate utf8_bin default NULL COMMENT '发布人',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gx
-- ----------------------------

-- ----------------------------
-- Table structure for gxliuyan
-- ----------------------------
DROP TABLE IF EXISTS `gxliuyan`;
CREATE TABLE `gxliuyan` (
  `title` varchar(100) collate utf8_bin NOT NULL COMMENT '共享时间标题',
  `username` varchar(30) collate utf8_bin NOT NULL COMMENT '姓名',
  `sid` varchar(20) collate utf8_bin NOT NULL COMMENT '学号',
  `content` varchar(2000) collate utf8_bin default NULL COMMENT '内容',
  `replydate` varchar(50) collate utf8_bin default NULL COMMENT '回复时间',
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gxliuyan
-- ----------------------------

-- ----------------------------
-- Table structure for publicben
-- ----------------------------
DROP TABLE IF EXISTS `publicben`;
CREATE TABLE `publicben` (
  `pid` int(255) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `id` int(255) default NULL,
  `content` varchar(255) default NULL,
  `pic` varchar(255) default NULL,
  `pubDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `benCode` int(255) default NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of publicben
-- ----------------------------
INSERT INTO `publicben` VALUES ('1', '1', '36', '1', 'en_logo.jpg', '2019-04-06 19:49:56', '1');
INSERT INTO `publicben` VALUES ('12', '111', '36', '<p>11</p>', '8c59a9ea-140f-476c-8548-en_logo.jpg', '2019-04-07 16:55:27', '1');
INSERT INTO `publicben` VALUES ('13', '爱心公益报名', '36', '<p>1111</p>', 'en_logo.jpg', '2019-04-06 19:31:51', '0');

-- ----------------------------
-- Table structure for signup
-- ----------------------------
DROP TABLE IF EXISTS `signup`;
CREATE TABLE `signup` (
  `id` int(200) NOT NULL auto_increment COMMENT 'id',
  `acttitle` varchar(50) collate utf8_bin NOT NULL COMMENT '所报项目标题',
  `sid` varchar(20) collate utf8_bin NOT NULL COMMENT '学号',
  `username` varchar(30) collate utf8_bin NOT NULL COMMENT '姓名',
  `college` varchar(100) collate utf8_bin default NULL COMMENT '学院',
  `sclass` varchar(30) collate utf8_bin default NULL COMMENT '班级',
  `polstatus` varchar(50) collate utf8_bin default NULL COMMENT '政治面貌',
  `tel` varchar(11) collate utf8_bin default NULL COMMENT '联系方式',
  `enrolldate` varchar(30) collate utf8_bin default NULL COMMENT '报名时间',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of signup
-- ----------------------------
INSERT INTO `signup` VALUES ('8', '助力留守家庭欢聚，加康加年味', '20150502911', 'hucong', '信息科技学院', '物联网152班', '党员', '15088689280', '2019-03-03 11:13:47');
INSERT INTO `signup` VALUES ('9', '助力留守家庭欢聚，加康加年味', '20150502911', 'hucong', '信息科技学院', '物联网152班', '党员', '15088689280', '2019-03-03 14:18:53');
INSERT INTO `signup` VALUES ('10', '助力留守家庭欢聚，加康加年味', '20150502911', 'hucong', '信息科技学院', '物联网152班', '党员', '15088689280', '2019-03-16 20:25:57');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(200) NOT NULL auto_increment COMMENT 'id',
  `sid` varchar(12) collate utf8_bin NOT NULL COMMENT '学号',
  `username` varchar(30) collate utf8_bin default NULL COMMENT '姓名',
  `password` varchar(20) collate utf8_bin default NULL COMMENT '密码',
  `college` varchar(100) collate utf8_bin default NULL COMMENT '学院',
  `sclass` varchar(30) collate utf8_bin default NULL COMMENT '班级',
  `polstatus` varchar(50) collate utf8_bin default NULL COMMENT '政治面貌',
  `tel` varchar(11) collate utf8_bin default NULL COMMENT '联系方式',
  `resdate` varchar(50) collate utf8_bin default NULL COMMENT '注册日期',
  `code` int(4) default '0' COMMENT '状态码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', '20150502911', 'hucong', 'q', '信息科技学院', '物联网152班', '党员', '15088689280', '2019-02-26 12:35:58', '1');
INSERT INTO `user` VALUES ('36', '201505021617', 'sjt', '12345678', '信息科技学院', '物联网152班', '团员', '15958135311', '2019-03-16 12:35:58', '1');
INSERT INTO `user` VALUES ('37', '11', '23', '3', '4', '5', '6', '7', '8', '0');
INSERT INTO `user` VALUES ('38', '12', '42', '3', '4', '5', '6', '7', '8', '0');
INSERT INTO `user` VALUES ('43', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `user` VALUES ('44', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `user` VALUES ('45', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `user` VALUES ('46', '11', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `user` VALUES ('47', '11', '1', '1', '11', '1', '1', '1', '1', '1');
INSERT INTO `user` VALUES ('48', '1', '1', '1', '1', '1', '1', '1', '1', '0');
INSERT INTO `user` VALUES ('49', '1', '1', '1', '1', '1', '1', '11', '1', '0');

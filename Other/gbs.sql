/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : gbs

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2015-05-23 19:47:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for guestbook
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(20) NOT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(40) DEFAULT NULL,
  `TITLE` varchar(80) NOT NULL,
  `CONTENT` varchar(2000) DEFAULT NULL,
  `CREATED_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO `guestbook` VALUES ('13', '墨韵', '18649738430', '578797748@qq.com', '第一个留言', '<p>第一个留言</p>', '2015-05-23 19:41:56');
INSERT INTO `guestbook` VALUES ('14', '一一', '110', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:45:30');
INSERT INTO `guestbook` VALUES ('15', 'OO', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:45:39');
INSERT INTO `guestbook` VALUES ('16', 'cv', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:45:48');
INSERT INTO `guestbook` VALUES ('17', 'Dfds', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:45:52');
INSERT INTO `guestbook` VALUES ('18', 'a862538', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:45:57');
INSERT INTO `guestbook` VALUES ('19', 'secasd', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:02');
INSERT INTO `guestbook` VALUES ('20', 's234567', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:06');
INSERT INTO `guestbook` VALUES ('21', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:11');
INSERT INTO `guestbook` VALUES ('22', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:18');
INSERT INTO `guestbook` VALUES ('23', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:18');
INSERT INTO `guestbook` VALUES ('24', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:18');
INSERT INTO `guestbook` VALUES ('25', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:19');
INSERT INTO `guestbook` VALUES ('26', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:19');
INSERT INTO `guestbook` VALUES ('27', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:19');
INSERT INTO `guestbook` VALUES ('28', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:19');
INSERT INTO `guestbook` VALUES ('29', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:19');
INSERT INTO `guestbook` VALUES ('30', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:20');
INSERT INTO `guestbook` VALUES ('31', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:20');
INSERT INTO `guestbook` VALUES ('32', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:20');
INSERT INTO `guestbook` VALUES ('33', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:20');
INSERT INTO `guestbook` VALUES ('34', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:20');
INSERT INTO `guestbook` VALUES ('35', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:21');
INSERT INTO `guestbook` VALUES ('36', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:21');
INSERT INTO `guestbook` VALUES ('37', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:21');
INSERT INTO `guestbook` VALUES ('38', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:21');
INSERT INTO `guestbook` VALUES ('39', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:21');
INSERT INTO `guestbook` VALUES ('40', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:22');
INSERT INTO `guestbook` VALUES ('41', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:22');
INSERT INTO `guestbook` VALUES ('42', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:22');
INSERT INTO `guestbook` VALUES ('43', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:22');
INSERT INTO `guestbook` VALUES ('44', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:22');
INSERT INTO `guestbook` VALUES ('45', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:23');
INSERT INTO `guestbook` VALUES ('46', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:23');
INSERT INTO `guestbook` VALUES ('47', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:23');
INSERT INTO `guestbook` VALUES ('48', '!dfggerg', '558', '852952@gmail.com', '标题党', '<p>内容内容</p>', '2015-05-23 19:46:23');

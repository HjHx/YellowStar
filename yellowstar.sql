/*
 Navicat Premium Data Transfer

 Source Server         : brew.mysql
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : yellowstar

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 07/01/2019 21:24:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yw_houses
-- ----------------------------
DROP TABLE IF EXISTS `yw_houses`;
CREATE TABLE `yw_houses` (
  `hid` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '房产号',
  `username` varchar(20) NOT NULL COMMENT '房产持有人',
  `house_type` varchar(20) NOT NULL COMMENT '房产类型',
  `area` double unsigned NOT NULL COMMENT '住房面积',
  `buy_date` date NOT NULL COMMENT '购房时间',
  `building_no` varchar(20) NOT NULL COMMENT '楼号',
  `unit` varchar(10) NOT NULL COMMENT '小区单元',
  `card_id` int(10) unsigned NOT NULL COMMENT '门牌号',
  `phone` varchar(13) NOT NULL COMMENT '手机号码',
  `car_id` varchar(10) DEFAULT NULL COMMENT '停车区域编号',
  PRIMARY KEY (`hid`),
  UNIQUE KEY `building_no` (`building_no`),
  UNIQUE KEY `car_id` (`car_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yw_houses
-- ----------------------------
BEGIN;
INSERT INTO `yw_houses` VALUES (1, '阮福民', '三室一厅', 100, '2019-01-01', '1号楼', '一单元', 902, '15855069177', NULL);
INSERT INTO `yw_houses` VALUES (2, '黄鑫', '三室二厅二卫', 130, '2017-01-01', '8号楼', '二单元', 102, '15252069127', NULL);
INSERT INTO `yw_houses` VALUES (3, '冠希', '一室一厅', 50, '2018-01-01', '9号楼', '一单元', 401, '15455369167', NULL);
COMMIT;

-- ----------------------------
-- Table structure for yw_users
-- ----------------------------
DROP TABLE IF EXISTS `yw_users`;
CREATE TABLE `yw_users` (
  `uid` int(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'UID',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码：md5加密',
  `user_type` tinyint(3) unsigned NOT NULL COMMENT '用户类型',
  `create_time` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yw_users
-- ----------------------------
BEGIN;
INSERT INTO `yw_users` VALUES (1, 'user1', '123456', 1, '2018-11-01');
INSERT INTO `yw_users` VALUES (2, 'user2', '123456', 2, '2018-12-01');
INSERT INTO `yw_users` VALUES (3, 'user3', '123456', 3, '2018-12-30');
INSERT INTO `yw_users` VALUES (4, 'user4', '123456', 1, '2019-01-06');
INSERT INTO `yw_users` VALUES (5, 'test', '123456', 3, '2019-01-06');
INSERT INTO `yw_users` VALUES (6, 'admin', 'admin', 1, '2019-01-06');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;

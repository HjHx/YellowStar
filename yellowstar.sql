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

 Date: 06/01/2019 17:44:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for yw_users
-- ----------------------------
DROP TABLE IF EXISTS `yw_users`;
CREATE TABLE `yw_users` (
  `uid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT 'UID',
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

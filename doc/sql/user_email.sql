/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : social_work

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-07-12 23:11:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user_email`
-- ----------------------------
DROP TABLE IF EXISTS `user_email`;
CREATE TABLE `user_email` (
  `ue_id` varchar(64) DEFAULT NULL COMMENT '主键,邮件ID',
  `email_sender` varchar(64) DEFAULT NULL COMMENT '邮件发送者ID',
  `email_receiver` varchar(64) DEFAULT NULL COMMENT '邮件接收者ID',
  `email_title` varchar(512) DEFAULT NULL COMMENT '邮件标题',
  `email_content` varchar(1024) DEFAULT NULL COMMENT '邮件内容',
  `created_time` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `updated_time` varchar(32) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_email
-- ----------------------------

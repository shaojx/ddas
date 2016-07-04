/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : social_work

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-07-03 18:19:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user_friend`
-- ----------------------------
DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend` (
  `uf_id` varchar(64) DEFAULT NULL COMMENT '用户好友表的主键ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '关联的用户ID',
  `friend_id` varchar(32) DEFAULT NULL COMMENT '关联的好友ID',
  `friend_name` varchar(256) DEFAULT NULL COMMENT '好友名字',
  `group_id` varchar(64) DEFAULT NULL COMMENT '分组ID',
  `status` varchar(64) DEFAULT NULL COMMENT '0表示在申请列表中，非0用1表示是好友通过，拒绝就删掉该条好友记录',
  `created_time` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `updated_time` varchar(32) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_friend
-- ----------------------------
INSERT INTO `user_friend` VALUES ('1', '1', '2', 'zhangsan', '1', '1', null, null);
INSERT INTO `user_friend` VALUES ('2', '1', '3', 'Lily', '1', '1', null, null);
INSERT INTO `user_friend` VALUES ('3', '1', '4', 'LilyA', '1', '1', null, null);
INSERT INTO `user_friend` VALUES ('4', '1', '5', 'zhangsan3', '1', '1', null, null);
INSERT INTO `user_friend` VALUES ('5', '1', '6', 'Lily5', '1', '1', null, null);
INSERT INTO `user_friend` VALUES ('6', '1', '7', 'LilyA4', '1', '1', null, null);
INSERT INTO `user_friend` VALUES ('7', '1', '8', 'zhangsan2', '1', '1', null, null);
INSERT INTO `user_friend` VALUES ('8', '1', '9', 'Lily2', '1', '1', null, null);
INSERT INTO `user_friend` VALUES ('9', '1', '10', 'Lily1', '1', '1', null, null);
INSERT INTO `user_friend` VALUES ('10', '1', '2', 'zhangsan', '1', '0', null, null);
INSERT INTO `user_friend` VALUES ('11', '1', '2', 'zhangsan', '1', '0', null, null);
INSERT INTO `user_friend` VALUES ('12', '1', '3', 'Lily', '1', '0', null, null);
INSERT INTO `user_friend` VALUES ('13', '1', '4', 'LilyA', '1', '0', null, null);
INSERT INTO `user_friend` VALUES ('14', '1', '5', 'zhangsan3', '1', '0', null, null);
INSERT INTO `user_friend` VALUES ('15', '1', '6', 'Lily5', '1', '0', null, null);
INSERT INTO `user_friend` VALUES ('16', '1', '7', 'LilyA4', '1', '0', null, null);
INSERT INTO `user_friend` VALUES ('17', '1', '8', 'zhangsan2', '1', '0', null, null);
INSERT INTO `user_friend` VALUES ('18', '1', '9', 'Lily2', '1', '0', null, null);
INSERT INTO `user_friend` VALUES ('19', '1', '10', 'Lily1', '1', '0', null, null);

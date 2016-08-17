/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : social_work

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-08-17 23:22:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user_photo_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_photo_group`;
CREATE TABLE `user_photo_group` (
  `group_id` varchar(64) NOT NULL DEFAULT '' COMMENT '日志分组的主键ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `group_name` varchar(64) DEFAULT NULL COMMENT '组名',
  `cover` varchar(128) DEFAULT NULL COMMENT '相册组的封面',
  `privilege` varchar(8) DEFAULT NULL COMMENT '权限,"0"表示自己可见,"1"表示好友可见,"2"表示所有人可见',
  `description` varchar(512) DEFAULT NULL COMMENT '相册组描述',
  `created_time` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `updated_time` varchar(32) DEFAULT NULL COMMENT '更新时间',
  `tags` varchar(1500) DEFAULT NULL COMMENT '相册的标签',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_photo_group
-- ----------------------------
INSERT INTO `user_photo_group` VALUES ('df1a40b4d478ffc4', '039bbb50491faff0', '一只美丽的逗B', '/upload/5418a404480653d0.jpg', '0', 'aaa', '2016-08-16 22:16:48', '2016-08-16 23:13:00', 'aa');

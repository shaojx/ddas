/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : social_work

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-07-11 20:36:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user_photo_group`
-- ----------------------------
DROP TABLE IF EXISTS `user_photo_group`;
CREATE TABLE `user_photo_group` (
  `group_id` varchar(64) DEFAULT NULL COMMENT '日志分组的主键ID',
  `user_id` varchar(32) DEFAULT NULL COMMENT '用户ID',
  `group_name` varchar(64) DEFAULT NULL COMMENT '组名',
  `cover` varchar(128) DEFAULT NULL COMMENT '相册组的封面',
  `privilege` varchar(8) DEFAULT NULL COMMENT '权限,"0"表示自己可见,"1"表示好友可见,"2"表示所有人可见',
  `description` varchar(512) DEFAULT NULL COMMENT '相册组描述',
  `created_time` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `updated_time` varchar(32) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_photo_group
-- ----------------------------
INSERT INTO `user_photo_group` VALUES ('aebf4ea69b758baf', '1', '相册名称', null, '1', '相册描述', '2016-07-09 20:22:17', '2016-07-09 20:22:17');
INSERT INTO `user_photo_group` VALUES ('10ad54ee3b5fded6', '1', '一只美丽的逗B', null, '1', '一只美丽的逗B一只美丽的逗B', '2016-07-09 22:03:45', '2016-07-09 22:03:45');

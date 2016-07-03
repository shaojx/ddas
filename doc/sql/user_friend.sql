DROP TABLE IF EXISTS `user_friend`;
CREATE TABLE `user_friend` (
  `uf_id` varchar(64) DEFAULT NULL COMMENT '用户好友表的主键ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '关联的用户ID',
  `friend_id` varchar(32) DEFAULT NULL COMMENT '关联的好友ID',
  `friend_name` varchar(256) DEFAULT NULL COMMENT '好友名字',
  `group_id` varchar(64) DEFAULT NULL COMMENT '分组ID',
  `created_time` varchar(32) DEFAULT NULL COMMENT '创建时间',
  `updated_time` varchar(32) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_friend
-- ----------------------------
INSERT INTO `user_friend` VALUES (null, '1', '2', 'zhangsan', '1', null, null);

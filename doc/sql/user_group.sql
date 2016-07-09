DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `group_id` varchar(64) DEFAULT NULL COMMENT '用户分组表的主键ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `group_name` varchar(64) DEFAULT NULL COMMENT '组名',
  `use_property` varchar(16) DEFAULT NULL COMMENT '使用属性(1是好友分组,2是日志分组)',
  `cover` varchar(128) DEFAULT NULL COMMENT '相册组的封面',
  `description` varchar(256) DEFAULT NULL COMMENT '相册组描述',
  `created_time` varchar(64) DEFAULT NULL COMMENT '创建时间',
  `updated_time` varchar(64) DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_group
-- ----------------------------
